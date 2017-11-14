<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns2="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/OR11_eCLEARSCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns0="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/schema/OnlineCollateral.001" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 xsd tns wsdl ns0 inp1 out1 ns2 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="reference_getXMLData_OutputVariable.reply"/>
   <xsl:template match="/">
      <ns2:kpeiInbound>
         <ns2:body>
            <xsl:if test="count(/inp1:Collateral/inp1:body) > 2">
               <ns2:content>
                  <ns2:scheme>
                     <xsl:value-of select="/inp1:Collateral/inp1:body/inp1:content/inp1:scheme"/>
                  </ns2:scheme>
               </ns2:content>
            </xsl:if>
         </ns2:body>
      </ns2:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>