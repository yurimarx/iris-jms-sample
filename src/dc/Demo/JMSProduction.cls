Class dc.Demo.JMSProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="dc.Demo.JMSProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="JMSBO" Category="" ClassName="EnsLib.JMSPEX.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ConnectionFactoryName">ConnectionFactory</Setting>
    <Setting Target="Adapter" Name="Credentials">jmscred</Setting>
    <Setting Target="Adapter" Name="ExtraClasspaths">/home/irisowner/dev/activemq-all-5.15.12.jar</Setting>
    <Setting Target="Adapter" Name="InitialContextFactoryName">org.apache.activemq.jndi.ActiveMQInitialContextFactory</Setting>
    <Setting Target="Adapter" Name="URL">tcp://activemq:61616</Setting>
    <Setting Target="Adapter" Name="ClientID">intersystems</Setting>
  </Item>
  <Item Name="FileService" Category="" ClassName="dc.Demo.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/tmp/processadas</Setting>
    <Setting Target="Adapter" Name="FilePath">/tmp/jms</Setting>
    <Setting Target="Adapter" Name="FileSpec">*.txt</Setting> 
    <Setting Target="Adapter" Name="WorkPath">/tmp/emprocessamento</Setting>
  </Item>
</Production>
}

}
