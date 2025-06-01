Class dc.Demo.FileService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
   set tsc=$$$OK 
   set content = pInput.Read()
   set msg = ##class(EnsLib.JMSPEX.Message).%New()
   set msg.destination = "dynamicQueues/FOO.BAR"
   set msg.type = "Text"
   set msg.textBody = content

   Set tSC = ..SendRequestSync("JMSBO", msg, .pResponse)
   Set pOutput = pResponse
   Quit tsc
}

}
