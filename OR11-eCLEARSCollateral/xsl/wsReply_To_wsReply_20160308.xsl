<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/Collateral" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/OR11_eCLEARSCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/schema/OnlineCollateral.001" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd tns wsdl inp1 out1 ns0 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
   <xsl:template match="/">
      <out1:wsReply>
         <out1:receiveDateTime>
            <xsl:value-of select="/out1:wsReply/out1:receiveDateTime"/>
         </out1:receiveDateTime>
         <out1:status>
            <xsl:value-of select="/out1:wsReply/out1:status"/>
         </out1:status>
         <out1:description>
            <xsl:value-of select="/out1:wsReply/out1:description"/>
         </out1:description>
      </out1:wsReply>
   </xsl:template>
</xsl:stylesheet>