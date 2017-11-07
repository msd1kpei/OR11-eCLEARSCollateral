<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/COLLCASH" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/OR11_eCLEARSCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.kpei.co.id/razor/trigger/e-CLEARSCollateral" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/schema/OnlineCollateral.001" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 xsd ns0 tns wsdl inp1 out1 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="ReturnCollCash_processResponse_InputVariable.payload"/>
   <xsl:template match="/">
      <inp1:Collateral>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:TriggerElement/ns0:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/ns0:TriggerElement/ns0:header/ns0:asAt"/>
            </inp1:asAt>
            <inp1:source>
               <xsl:value-of select="/ns0:TriggerElement/ns0:header/ns0:source"/>
            </inp1:source>
         </inp1:header>
         <inp1:collateralType>
            <xsl:value-of select="/ns0:TriggerElement/ns0:collateralType"/>
         </inp1:collateralType>
         <inp1:messageType>
            <xsl:value-of select="/ns0:TriggerElement/ns0:messageType"/>
         </inp1:messageType>
         <inp1:body>
            <inp1:content>
               <xsl:for-each select="$ReturnCollCash_processResponse_InputVariable.payload/ns1:COLLCASHOutputCollection/ns1:COLLCASHOutput">
                  <inp1:deal>
                     <inp1:dealHeader>
                        <inp1:dealId>
                           <xsl:value-of select="ns1:DEALID"/>
                        </inp1:dealId>
                        <inp1:dealDate>
                           <xsl:value-of select="ns1:DEALDATE"/>
                        </inp1:dealDate>
                     </inp1:dealHeader>
                     <inp1:trade>
                        <inp1:tradeHeader>
                           <inp1:tradeId>
                              <xsl:value-of select="ns1:TRADEID"/>
                           </inp1:tradeId>
                           <inp1:tradeDate>
                              <xsl:value-of select="ns1:TRADEDATE"/>
                           </inp1:tradeDate>
                           <inp1:tradeType>
                              <xsl:value-of select="ns1:TRADETYPE"/>
                           </inp1:tradeType>
                           <inp1:counterparty>
                              <xsl:value-of select="ns1:COUNTERPARTY"/>
                           </inp1:counterparty>
                        </inp1:tradeHeader>
                        <inp1:product>
                           <inp1:cashPayment>
                              <inp1:paymentDate>
                                 <xsl:value-of select="ns1:PAYMENTDATE"/>
                              </inp1:paymentDate>
                              <inp1:amount>
                                 <xsl:attribute name="ccy">
                                    <xsl:text disable-output-escaping="no">IDR</xsl:text>
                                 </xsl:attribute>
                              </inp1:amount>
                           </inp1:cashPayment>
                           <inp1:equity>
                              <inp1:instrumentId>
                                 <xsl:value-of select="ns1:INSTRUMENTID"/>
                              </inp1:instrumentId>
                              <inp1:numberShares>
                                 <xsl:value-of select="ns1:NUMBERSHARES"/>
                              </inp1:numberShares>
                              <inp1:currency>
                                 <xsl:value-of select="ns1:CURRENCY"/>
                              </inp1:currency>
                              <inp1:paymentAmount>
                                 <inp1:paymentType>
                                    <xsl:value-of select="ns1:PAYMENTTYPE"/>
                                 </inp1:paymentType>
                                 <inp1:paymentAmount>
                                    <inp1:currency>
                                       <xsl:value-of select="ns1:PAYCURRENCY"/>
                                    </inp1:currency>
                                    <inp1:amount>
                                       <xsl:value-of select="ns1:PAYAMOUNT"/>
                                    </inp1:amount>
                                 </inp1:paymentAmount>
                                 <inp1:adjustedPaymentDate>
                                    <xsl:value-of select="ns1:PAYMENTDATE"/>
                                 </inp1:adjustedPaymentDate>
                              </inp1:paymentAmount>
                           </inp1:equity>
                        </inp1:product>
                        <inp1:extensions>
                           <inp1:extension>
                              <inp1:name>
                                 <xsl:value-of select="ns1:EXTACC"/>
                              </inp1:name>
                              <inp1:value>
                                 <xsl:value-of select="ns1:EXTACCVAL"/>
                              </inp1:value>
                           </inp1:extension>
                           <inp1:extension>
                              <inp1:name>
                                 <xsl:value-of select="ns1:EXTMRKT"/>
                              </inp1:name>
                              <inp1:value>
                                 <xsl:value-of select="ns1:VALMRKT"/>
                              </inp1:value>
                           </inp1:extension>
                        </inp1:extensions>
                     </inp1:trade>
                  </inp1:deal>
               </xsl:for-each>
            </inp1:content>
         </inp1:body>
      </inp1:Collateral>
   </xsl:template>
</xsl:stylesheet>
