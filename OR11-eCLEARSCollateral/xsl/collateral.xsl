<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR11-eCLEARSCollateral/OR11_eCLEARSCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns0="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:inp1="http://www.kpei.co.id/schema/OnlineCollateral.001" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl ns1 tns wsdl ns0 inp1 out1 write xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="reference_getXMLData_OutputVariable.reply"/>
   <xsl:template match="/">
      <kpeiInbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:Collateral/inp1:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="/inp1:Collateral/inp1:header/inp1:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="/inp1:Collateral/inp1:header/inp1:source"/>
            </sourceSystem>
         </header>
         <body>
            <content>
               <xsl:if test="string-length(string(/inp1:Collateral/inp1:body/inp1:content/inp1:scheme)) > 0">
                  <scheme>
                     <xsl:value-of select="/inp1:Collateral/inp1:body/inp1:content/inp1:scheme"/>
                  </scheme>
               </xsl:if>
               <xsl:for-each select="/inp1:Collateral/inp1:body/inp1:content/inp1:deal">
                  <deal>
                     <dealHeader>
                        <dealId>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealId"/>
                        </dealId>
                        <dealType>
                           <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[1.0]/ns1:Value"/>
                        </dealType>
                        <dealDate>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealDate"/>
                        </dealDate>
                        <status>
                           <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[2.0]/ns1:Value"/>
                        </status>
                     </dealHeader>
                     <trade>
                        <tradeHeader>
                           <tradeId>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeId"/>
                           </tradeId>
                           <tradeDate>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeDate"/>
                           </tradeDate>
                           <tradeType>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeType"/>
                           </tradeType>
                           <counterparty>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:counterparty"/>
                           </counterparty>
                           <internalUnit>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[3.0]/ns1:Value"/>
                           </internalUnit>
                           <buySell>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[4.0]/ns1:Value"/>
                           </buySell>
                           <status>
                              <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[5.0]/ns1:Value"/>
                           </status>
                        </tradeHeader>
                        <product>
                           <cashPayment>
                              <paymentDate>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:paymentDate"/>
                              </paymentDate>
                              <amount>
                                 <xsl:attribute name="ccy">
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:amount/@ccy"/>
                                 </xsl:attribute>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:cashPayment/inp1:amount"/>
                              </amount>
                           </cashPayment>
                           <equity>
                              <instrumentId>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:instrumentId"/>
                              </instrumentId>
                              <numberShares>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:numberShares"/>
                              </numberShares>
                              <exchangeCode>
                                 <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[6.0]/ns1:Value"/>
                              </exchangeCode>
                              <currency>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:currency"/>
                              </currency>
                              <paymentAmount>
                                 <paymentType>
                                    <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[7.0]/ns1:Value"/>
                                 </paymentType>
                                 <paymentAmount>
                                    <currency>
                                       <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[8.0]/ns1:Value"/>
                                    </currency>
                                    <amount>
                                       <xsl:value-of select="$reference_getXMLData_OutputVariable.reply/ns1:getXMLDataReply/ns1:xmlData[9.0]/ns1:Value"/>
                                    </amount>
                                 </paymentAmount>
                                 <adjustedPaymentDate>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:adjustedPaymentDate"/>
                                 </adjustedPaymentDate>
                              </paymentAmount>
                           </equity>
                           <bond>
                              <xsl:if test="string-length(string(inp1:trade/inp1:product/inp1:bond/inp1:position)) > 0">
                                 <position>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:position"/>
                                 </position>
                              </xsl:if>
                              <xsl:if test="string-length(string(inp1:trade/inp1:product/inp1:bond/inp1:exInterestDays)) > 0">
                                 <exInterestDays>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:exInterestDays"/>
                                 </exInterestDays>
                              </xsl:if>
                              <issuer>
                                 <xsl:attribute name="href">
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:issuer/@href"/>
                                 </xsl:attribute>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:issuer"/>
                              </issuer>
                              <securityId>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:securityId"/>
                              </securityId>
                              <xsl:if test="count(inp1:trade/inp1:product/inp1:bond/inp1:bondStream) > 0">
                                 <bondStream>
                                    <payerPartyReference>
                                       <xsl:attribute name="href">
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:payerPartyReference/@href"/>
                                       </xsl:attribute>
                                    </payerPartyReference>
                                    <receiverPartyReference>
                                       <xsl:attribute name="href">
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:receiverPartyReference/@href"/>
                                       </xsl:attribute>
                                    </receiverPartyReference>
                                    <calculationPeriodDates>
                                       <xsl:attribute name="id">
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/@id"/>
                                       </xsl:attribute>
                                       <effectiveDate>
                                          <unadjustedDate>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:effectiveDate/inp1:unadjustedDate"/>
                                          </unadjustedDate>
                                          <dateAdjustments>
                                             <businessDayConvention>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:effectiveDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                             </businessDayConvention>
                                          </dateAdjustments>
                                       </effectiveDate>
                                       <terminationDate>
                                          <unadjustedDate>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:terminationDate/inp1:unadjustedDate"/>
                                          </unadjustedDate>
                                          <dateAdjustments>
                                             <businessDayConvention>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:terminationDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                             </businessDayConvention>
                                          </dateAdjustments>
                                       </terminationDate>
                                       <calculationPeriodDatesAdjustments>
                                          <businessDayConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodDatesAdjustments/inp1:businessDayConvention"/>
                                          </businessDayConvention>
                                       </calculationPeriodDatesAdjustments>
                                       <calculationPeriodFrequency>
                                          <periodMultiplier>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:periodMultiplier"/>
                                          </periodMultiplier>
                                          <period>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:period"/>
                                          </period>
                                          <rollConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodDates/inp1:calculationPeriodFrequency/inp1:rollConvention"/>
                                          </rollConvention>
                                       </calculationPeriodFrequency>
                                    </calculationPeriodDates>
                                    <paymentDates>
                                       <paymentFrequency>
                                          <periodMultiplier>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentFrequency/inp1:periodMultiplier"/>
                                          </periodMultiplier>
                                          <period>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentFrequency/inp1:period"/>
                                          </period>
                                       </paymentFrequency>
                                       <paymentDatesAdjustments>
                                          <businessDayConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:paymentDates/inp1:paymentDatesAdjustments/inp1:businessDayConvention"/>
                                          </businessDayConvention>
                                       </paymentDatesAdjustments>
                                    </paymentDates>
                                    <calculationPeriodAmount>
                                       <calculation>
                                          <notionalSchedule>
                                             <notionalStepSchedule>
                                                <initialValue>
                                                   <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:notionalSchedule/inp1:notionalStepSchedule/inp1:initialValue"/>
                                                </initialValue>
                                                <currency>
                                                   <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:notionalSchedule/inp1:notionalStepSchedule/inp1:currency"/>
                                                </currency>
                                             </notionalStepSchedule>
                                          </notionalSchedule>
                                          <dayCountFraction>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:dayCountFraction"/>
                                          </dayCountFraction>
                                          <fixedRateSchedule>
                                             <initialValue>
                                                <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:initialValue"/>
                                             </initialValue>
                                             <step>
                                                <stepDate>
                                                   <xsl:attribute name="id">
                                                      <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepDate/@id"/>
                                                   </xsl:attribute>
                                                   <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepDate"/>
                                                </stepDate>
                                                <stepValue>
                                                   <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:calculationPeriodAmount/inp1:calculation/inp1:fixedRateSchedule/inp1:step/inp1:stepValue"/>
                                                </stepValue>
                                             </step>
                                          </fixedRateSchedule>
                                       </calculation>
                                    </calculationPeriodAmount>
                                    <principalExchanges>
                                       <initialExchange>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:initialExchange"/>
                                       </initialExchange>
                                       <finalExchange>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:finalExchange"/>
                                       </finalExchange>
                                       <intermediateExchange>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:bondStream/inp1:principalExchanges/inp1:intermediateExchange"/>
                                       </intermediateExchange>
                                    </principalExchanges>
                                 </bondStream>
                              </xsl:if>
                              <xsl:if test="count(inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount) > 0">
                                 <paymentAmount>
                                    <receiverPartyReference>
                                       <xsl:attribute name="href">
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:receiverPartyReference/@href"/>
                                       </xsl:attribute>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:receiverPartyReference"/>
                                    </receiverPartyReference>
                                    <payerPartyReference>
                                       <xsl:attribute name="href">
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:payerPartyReference/@href"/>
                                       </xsl:attribute>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:payerPartyReference"/>
                                    </payerPartyReference>
                                    <paymentAmount>
                                       <currency>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentAmount/inp1:currency"/>
                                       </currency>
                                       <amount>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentAmount/inp1:amount"/>
                                       </amount>
                                    </paymentAmount>
                                    <paymentDate>
                                       <unadjustedDate>
                                          <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentDate/inp1:unadjustedDate"/>
                                       </unadjustedDate>
                                       <dateAdjustments>
                                          <businessDayConvention>
                                             <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentDate/inp1:dateAdjustments/inp1:businessDayConvention"/>
                                          </businessDayConvention>
                                       </dateAdjustments>
                                    </paymentDate>
                                    <adjustedPaymentDate>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:adjustedPaymentDate"/>
                                    </adjustedPaymentDate>
                                    <paymentType>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:bond/inp1:paymentAmount/inp1:paymentType"/>
                                    </paymentType>
                                 </paymentAmount>
                              </xsl:if>
                           </bond>
                        </product>
                        <extensions>
                           <xsl:for-each select="inp1:trade/inp1:extensions/inp1:extension">
                              <extension>
                                 <name>
                                    <xsl:value-of select="inp1:name"/>
                                 </name>
                                 <value>
                                    <xsl:value-of select="inp1:value"/>
                                 </value>
                              </extension>
                           </xsl:for-each>
                        </extensions>
                     </trade>
                  </deal>
               </xsl:for-each>
            </content>
         </body>
      </kpeiInbound>
   </xsl:template>
</xsl:stylesheet>