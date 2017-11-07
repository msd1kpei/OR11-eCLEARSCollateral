<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:write="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/OR11_eCLEARSCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns0="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/schema/OnlineCollateral.001" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl ns1 tns wsdl ns0 inp1 out1 write xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="reference_getXMLData_OutputVariable.reply"/>
   <xsl:template match="/">
      <write:kpeiInbound>
         <write:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:Collateral/inp1:header/@id"/>
            </xsl:attribute>
            <write:asAt>
               <xsl:value-of select="/inp1:Collateral/inp1:header/inp1:asAt"/>
            </write:asAt>
            <write:sourceSystem>
               <xsl:value-of select="/inp1:Collateral/inp1:header/inp1:source"/>
            </write:sourceSystem>
         </write:header>
         <write:body>
            <write:content>
               <write:scheme>
                  <xsl:value-of select="/inp1:Collateral/inp1:body/inp1:content/inp1:scheme"/>
               </write:scheme>
               <xsl:for-each select="/inp1:Collateral/inp1:body/inp1:content/inp1:deal">
                  <write:deal>
                     <write:dealHeader>
                        <write:dealId>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealId"/>
                        </write:dealId>
                        <write:dealType>
                           <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[1.0]/ns1:Value"/>
                        </write:dealType>
                        <write:dealDate>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealDate"/>
                        </write:dealDate>
                        <write:status>
                           <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[2.0]/ns1:Value"/>
                        </write:status>
                     </write:dealHeader>
                     <write:trade>
                        <write:tradeHeader>
                           <write:tradeId>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeId"/>
                           </write:tradeId>
                           <write:tradeDate>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeDate"/>
                           </write:tradeDate>
                           <write:tradeType>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeType"/>
                           </write:tradeType>
                           <write:counterparty>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:counterparty"/>
                           </write:counterparty>
                           <write:internalUnit>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[3.0]/ns1:Value"/>
                           </write:internalUnit>
                           <write:buySell>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[4.0]/ns1:Value"/>
                           </write:buySell>
                           <write:status>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[5.0]/ns1:Value"/>
                           </write:status>
                        </write:tradeHeader>
                        <write:product>
                           <write:cashPayment>
                              <write:paymentDate>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:paymentDate"/>
                              </write:paymentDate>
                              <write:amount>
                                 <xsl:attribute name="ccy">
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:amount/@ccy"/>
                                 </xsl:attribute>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:amount"/>
                              </write:amount>
                           </write:cashPayment>
                           <write:equity>
                              <write:instrumentId>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:instrumentId"/>
                              </write:instrumentId>
                              <write:numberShares>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:numberShares"/>
                              </write:numberShares>
                              <write:exchangeCode>
                                 <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[6.0]/ns1:Value"/>
                              </write:exchangeCode>
                              <write:currency>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:currency"/>
                              </write:currency>
                              <write:paymentAmount>
                                 <write:paymentType>
                                    <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[7.0]/ns1:Value"/>
                                 </write:paymentType>
                                 <write:paymentAmount>
                                    <write:currency>
                                       <xsl:attribute name="xsi:type">
                                          <xsl:text disable-output-escaping="no">xsd:string</xsl:text>
                                       </xsl:attribute>
                                       <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[8.0]/ns1:Value"/>
                                    </write:currency>
                                    <write:amount>
                                       <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[9.0]/ns1:Value"/>
                                    </write:amount>
                                 </write:paymentAmount>
                              </write:paymentAmount>
                           </write:equity>
                           <write:bond>
                              <write:position>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:position"/>
                              </write:position>
                              <write:exInterestDays>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:exInterestDays"/>
                              </write:exInterestDays>
                              <write:issuer>
                                 <xsl:attribute name="href">
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:issuer/@href"/>
                                 </xsl:attribute>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:issuer"/>
                              </write:issuer>
                              <write:securityId>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:securityId"/>
                              </write:securityId>
                              <write:bondStream>
                                 <write:payerPartyReference>
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:payerPartyReference/@href"/>
                                    </xsl:attribute>
                                 </write:payerPartyReference>
                                 <write:receiverPartyReference>
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:receiverPartyReference/@href"/>
                                    </xsl:attribute>
                                 </write:receiverPartyReference>
                                 <write:calculationPeriodDates>
                                    <xsl:attribute name="id">
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/@id"/>
                                    </xsl:attribute>
                                    <write:effectiveDate>
                                       <write:unadjustedDate>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:effectiveDate/inp1:unadjustedDate"/>
                                       </write:unadjustedDate>
                                       <write:dateAdjustments>
                                          <write:businessDayConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:effectiveDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                          </write:businessDayConvention>
                                       </write:dateAdjustments>
                                    </write:effectiveDate>
                                    <write:terminationDate>
                                       <write:unadjustedDate>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:terminationDate/inp1:unadjustedDate"/>
                                       </write:unadjustedDate>
                                       <write:dateAdjustments>
                                          <write:businessDayConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:terminationDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                          </write:businessDayConvention>
                                       </write:dateAdjustments>
                                    </write:terminationDate>
                                    <write:calculationPeriodDatesAdjustments>
                                       <write:businessDayConvention>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodDatesAdjustments/inp1:businessDayConvention"/>
                                       </write:businessDayConvention>
                                    </write:calculationPeriodDatesAdjustments>
                                    <write:calculationPeriodFrequency>
                                       <write:periodMultiplier>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:periodMultiplier"/>
                                       </write:periodMultiplier>
                                       <write:period>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:period"/>
                                       </write:period>
                                       <write:rollConvention>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:rollConvention"/>
                                       </write:rollConvention>
                                    </write:calculationPeriodFrequency>
                                 </write:calculationPeriodDates>
                                 <write:paymentDates>
                                    <write:paymentFrequency>
                                       <write:periodMultiplier>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentFrequency/inp1:periodMultiplier"/>
                                       </write:periodMultiplier>
                                       <write:period>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentFrequency/inp1:period"/>
                                       </write:period>
                                    </write:paymentFrequency>
                                    <write:paymentDatesAdjustments>
                                       <write:businessDayConvention>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentDatesAdjustments/inp1:businessDayConvention"/>
                                       </write:businessDayConvention>
                                    </write:paymentDatesAdjustments>
                                 </write:paymentDates>
                                 <write:calculationPeriodAmount>
                                    <write:calculation>
                                       <write:notionalSchedule>
                                          <write:notionalStepSchedule>
                                             <write:initialValue>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:notionalSchedule/inp1:notionalStepSchedule/inp1:initialValue"/>
                                             </write:initialValue>
                                             <write:currency>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:notionalSchedule/inp1:notionalStepSchedule/inp1:currency"/>
                                             </write:currency>
                                          </write:notionalStepSchedule>
                                       </write:notionalSchedule>
                                       <write:dayCountFraction>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:dayCountFraction"/>
                                       </write:dayCountFraction>
                                       <write:fixedRateSchedule>
                                          <write:initialValue>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:initialValue"/>
                                          </write:initialValue>
                                          <write:step>
                                             <write:stepDate>
                                                <xsl:attribute name="id">
                                                   <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepDate/@id"/>
                                                </xsl:attribute>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepDate"/>
                                             </write:stepDate>
                                             <write:stepValue>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepValue"/>
                                             </write:stepValue>
                                          </write:step>
                                       </write:fixedRateSchedule>
                                    </write:calculation>
                                 </write:calculationPeriodAmount>
                                 <write:principalExchanges>
                                    <write:initialExchange>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:initialExchange"/>
                                    </write:initialExchange>
                                    <write:finalExchange>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:finalExchange"/>
                                    </write:finalExchange>
                                    <write:intermediateExchange>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:intermediateExchange"/>
                                    </write:intermediateExchange>
                                 </write:principalExchanges>
                              </write:bondStream>
                              <write:paymentAmount>
                                 <write:receiverPartyReference>
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:receiverPartyReference/@href"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:receiverPartyReference"/>
                                 </write:receiverPartyReference>
                                 <write:payerPartyReference>
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:payerPartyReference/@href"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:payerPartyReference"/>
                                 </write:payerPartyReference>
                                 <write:paymentAmount>
                                    <write:currency>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentAmount/inp1:currency"/>
                                    </write:currency>
                                    <write:amount>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentAmount/inp1:amount"/>
                                    </write:amount>
                                 </write:paymentAmount>
                                 <write:paymentDate>
                                    <write:unadjustedDate>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentDate/inp1:unadjustedDate"/>
                                    </write:unadjustedDate>
                                    <write:dateAdjustments>
                                       <write:businessDayConvention>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                       </write:businessDayConvention>
                                    </write:dateAdjustments>
                                 </write:paymentDate>
                                 <write:adjustedPaymentDate>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:adjustedPaymentDate"/>
                                 </write:adjustedPaymentDate>
                                 <write:paymentType>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentType"/>
                                 </write:paymentType>
                              </write:paymentAmount>
                           </write:bond>
                        </write:product>
                        <write:extensions>
                           <xsl:for-each select="inp1:trade/inp1:extensions/inp1:extension">
                              <write:extension>
                                 <write:name>
                                    <xsl:value-of select="inp1:name"/>
                                 </write:name>
                                 <write:value>
                                    <xsl:value-of select="inp1:value"/>
                                 </write:value>
                              </write:extension>
                           </xsl:for-each>
                        </write:extensions>
                     </write:trade>
                  </write:deal>
               </xsl:for-each>
            </write:content>
         </write:body>
      </write:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
