<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR11_eCLEARSCollateral/ColCashHelper" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/JMSTrigger" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:imp1="http://www.kpei.co.id/razor/trigger/e-CLEARSCollateral" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns plt xsd wsdl imp1 client xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <imp1:TriggerElement>
         <imp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/imp1:TriggerElement/imp1:header/@id"/>
            </xsl:attribute>
            <imp1:asAt>
               <xsl:value-of select="/imp1:TriggerElement/imp1:header/imp1:asAt"/>
            </imp1:asAt>
            <imp1:source>
               <xsl:value-of select="/imp1:TriggerElement/imp1:header/imp1:source"/>
            </imp1:source>
         </imp1:header>
         <imp1:collateralType>
            <xsl:value-of select="/imp1:TriggerElement/imp1:collateralType"/>
         </imp1:collateralType>
         <imp1:messageType>
            <xsl:value-of select="/imp1:TriggerElement/imp1:messageType"/>
         </imp1:messageType>
         <imp1:numberOfBAtch>
            <xsl:value-of select="/imp1:TriggerElement/imp1:numberOfBAtch"/>
         </imp1:numberOfBAtch>
      </imp1:TriggerElement>
   </xsl:template>
</xsl:stylesheet>
