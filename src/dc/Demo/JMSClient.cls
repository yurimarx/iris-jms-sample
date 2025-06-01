Class dc.Demo.JMSClient Extends %RegisteredObject
{

/// Description
ClassMethod MethodName() As %Status
{
    Set sc = $$$OK
    
    Set settings = ##class(%External.Messaging.JMSSettings).%New()
    Set settings.url = "tcp://activemq:61616"
    Set settings.connectionFactoryName = "ConnectionFactory"
    Set settings.initialContextFactoryName = "org.apache.activemq.jndi.ActiveMQInitialContextFactory"
    Set settings.username = "admin"
    Set settings.password = "admin"

    Set rset = ##class(%External.Messaging.JMSReceiveSettings).%New()
    Set rset.receiveTimeout = 200
    

    Set client = ##class(%External.Messaging.Client).CreateClient(settings, .tSC, "/home/irisowner/dev/activemq-all-5.15.12.jar")

    Set msg = ##class(%External.Messaging.JMSMessage).%New()
    set msg.destination = "dynamicQueues/FOO.BAR"
    set msg.type = "Text"
    set msg.textBody = "teste"
    #dim messages As %ListOfObjects
    set json = {}
    set json.receiveTimeout = 200
    Set tSC = client.SendMessage(msg)
    
    If $$$ISERR(tSC) {
        //handle error scenario
    }

    Return sc
}

}
