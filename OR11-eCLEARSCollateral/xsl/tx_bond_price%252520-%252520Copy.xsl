<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 xsd bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:kpeiInbound>
         <ns0:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/@id"/>
            </xsl:attribute>
            <ns0:asAt>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:asAt"/>
            </ns0:asAt>
            <ns0:sourceSystem>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:sourceSystem"/>
            </ns0:sourceSystem>
         </ns0:header>
         <ns0:body>
            <ns0:content>
               <xsl:for-each select="/ns0:kpeiInbound/ns0:body/ns0:content/ns0:deal">
                  <ns0:deal>
                     <ns0:dealHeader>
                        <ns0:dealId>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealId"/>
                        </ns0:dealId>
                        <ns0:dealType>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealType"/>
                        </ns0:dealType>
                        <ns0:dealDate>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealDate"/>
                        </ns0:dealDate>
                        <ns0:status>
                           <xsl:value-of select="ns0:dealHeader/ns0:status"/>
                        </ns0:status>
                     </ns0:dealHeader>
                     <ns0:trade>
                        <ns0:tradeHeader>
                           <ns0:tradeId>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeId"/>
                           </ns0:tradeId>
                           <ns0:tradeDate>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeDate"/>
                           </ns0:tradeDate>
                           <ns0:tradeType>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeType"/>
                           </ns0:tradeType>
                           <ns0:counterparty>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:counterparty"/>
                           </ns0:counterparty>
                           <ns0:internalUnit>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:internalUnit"/>
                           </ns0:internalUnit>
                           <ns0:buySell>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:buySell"/>
                           </ns0:buySell>
                           <ns0:status>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:status"/>
                           </ns0:status>
                        </ns0:tradeHeader>
                        <ns0:product>
                           <ns0:cashPayment>
                              <ns0:paymentDate>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:paymentDate"/>
                              </ns0:paymentDate>
                              <ns0:amount>
                                 <xsl:if test="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount/@ccy">
                                    <xsl:attribute name="ccy">
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount/@ccy"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount"/>
                              </ns0:amount>
                           </ns0:cashPayment>
                           <ns0:equity>
                              <ns0:instrumentId>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:instrumentId"/>
                              </ns0:instrumentId>
                              <ns0:numberShares>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:numberShares"/>
                              </ns0:numberShares>
                              <ns0:exchangeCode>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:exchangeCode"/>
                              </ns0:exchangeCode>
                              <ns0:currency>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:currency"/>
                              </ns0:currency>
                              <ns0:paymentAmount>
                                 <ns0:paymentType>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentType"/>
                                 </ns0:paymentType>
                                 <ns0:paymentAmount>
                                    <ns0:currency/>
                                    <ns0:amount>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                                    </ns0:amount>
                                 </ns0:paymentAmount>
                                 <ns0:adjustedPaymentDate>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                                 </ns0:adjustedPaymentDate>
                              </ns0:paymentAmount>
                           </ns0:equity>
                           <ns0:bond>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:position">
                                 <ns0:position>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:position"/>
                                 </ns0:position>
                              </xsl:if>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:exInterestDays">
                                 <ns0:exInterestDays>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:exInterestDays"/>
                                 </ns0:exInterestDays>
                              </xsl:if>
                              <ns0:issuer>
                                 <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:issuer/@href">
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:issuer/@href"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:issuer"/>
                              </ns0:issuer>
                              <ns0:securityId>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:securityId"/>
                              </ns0:securityId>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream">
                                 <ns0:bondStream>
                                    <ns0:payerPartyReference>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference/@href">
                                          <xsl:attribute name="href">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference/@href"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference"/>
                                    </ns0:payerPartyReference>
                                    <ns0:receiverPartyReference>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference/@href">
                                          <xsl:attribute name="href">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference/@href"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference"/>
                                    </ns0:receiverPartyReference>
                                    <ns0:calculationPeriodDates>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/@id">
                                          <xsl:attribute name="id">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/@id"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <ns0:effectiveDate>
                                          <ns0:unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:unadjustedDate"/>
                                          </ns0:unadjustedDate>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:dateAdjustments">
                                             <ns0:dateAdjustments>
                                                <ns0:businessDayConvention>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                                </ns0:businessDayConvention>
                                             </ns0:dateAdjustments>
                                          </xsl:if>
                                       </ns0:effectiveDate>
                                       <ns0:terminationDate>
                                          <ns0:unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:unadjustedDate"/>
                                          </ns0:unadjustedDate>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:dateAdjustments">
                                             <ns0:dateAdjustments>
                                                <ns0:businessDayConvention>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                                </ns0:businessDayConvention>
                                             </ns0:dateAdjustments>
                                          </xsl:if>
                                       </ns0:terminationDate>
                                       <ns0:calculationPeriodDatesAdjustments>
                                          <ns0:businessDayConvention>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodDatesAdjustments/ns0:businessDayConvention"/>
                                          </ns0:businessDayConvention>
                                       </ns0:calculationPeriodDatesAdjustments>
                                       <ns0:calculationPeriodFrequency>
                                          <ns0:periodMultiplier>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:periodMultiplier"/>
                                          </ns0:periodMultiplier>
                                          <ns0:period>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:period"/>
                                          </ns0:period>
                                          <ns0:rollConvention>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:rollConvention"/>
                                          </ns0:rollConvention>
                                       </ns0:calculationPeriodFrequency>
                                    </ns0:calculationPeriodDates>
                                    <ns0:paymentDates>
                                       <ns0:paymentFrequency>
                                          <ns0:periodMultiplier>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentFrequency/ns0:periodMultiplier"/>
                                          </ns0:periodMultiplier>
                                          <ns0:period>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentFrequency/ns0:period"/>
                                          </ns0:period>
                                       </ns0:paymentFrequency>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentDatesAdjustments">
                                          <ns0:paymentDatesAdjustments>
                                             <ns0:businessDayConvention>
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentDatesAdjustments/ns0:businessDayConvention"/>
                                             </ns0:businessDayConvention>
                                          </ns0:paymentDatesAdjustments>
                                       </xsl:if>
                                    </ns0:paymentDates>
                                    <ns0:calculationPeriodAmount>
                                       <ns0:calculation>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule">
                                             <ns0:notionalSchedule>
                                                <ns0:notionalStepSchedule>
                                                   <ns0:initialValue>
                                                      <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule/ns0:notionalStepSchedule/ns0:initialValue"/>
                                                   </ns0:initialValue>
                                                   <ns0:currency>
                                                      <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule/ns0:notionalStepSchedule/ns0:currency"/>
                                                   </ns0:currency>
                                                </ns0:notionalStepSchedule>
                                             </ns0:notionalSchedule>
                                          </xsl:if>
                                          <ns0:dayCountFraction>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:dayCountFraction"/>
                                          </ns0:dayCountFraction>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule">
                                             <ns0:fixedRateSchedule>
                                                <ns0:initialValue>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:initialValue"/>
                                                </ns0:initialValue>
                                                <ns0:step>
                                                   <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate">
                                                      <ns0:stepDate>
                                                         <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate/@id">
                                                            <xsl:attribute name="id">
                                                               <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate/@id"/>
                                                            </xsl:attribute>
                                                         </xsl:if>
                                                         <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate"/>
                                                      </ns0:stepDate>
                                                   </xsl:if>
                                                   <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepValue">
                                                      <ns0:stepValue>
                                                         <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepValue"/>
                                                      </ns0:stepValue>
                                                   </xsl:if>
                                                </ns0:step>
                                             </ns0:fixedRateSchedule>
                                          </xsl:if>
                                       </ns0:calculation>
                                    </ns0:calculationPeriodAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges">
                                       <ns0:principalExchanges>
                                          <ns0:initialExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:initialExchange"/>
                                          </ns0:initialExchange>
                                          <ns0:finalExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:finalExchange"/>
                                          </ns0:finalExchange>
                                          <ns0:intermediateExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:intermediateExchange"/>
                                          </ns0:intermediateExchange>
                                       </ns0:principalExchanges>
                                    </xsl:if>
                                 </ns0:bondStream>
                              </xsl:if>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount">
                                 <ns0:paymentAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference">
                                       <ns0:receiverPartyReference>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference/@href">
                                             <xsl:attribute name="href">
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference/@href"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference"/>
                                       </ns0:receiverPartyReference>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference">
                                       <ns0:payerPartyReference>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference/@href">
                                             <xsl:attribute name="href">
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference/@href"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference"/>
                                       </ns0:payerPartyReference>
                                    </xsl:if>
                                    <ns0:paymentAmount>
                                       <ns0:currency>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentAmount/ns0:currency"/>
                                       </ns0:currency>
                                       <ns0:amount>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                                       </ns0:amount>
                                    </ns0:paymentAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate">
                                       <ns0:paymentDate>
                                          <ns0:unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate/ns0:unadjustedDate"/>
                                          </ns0:unadjustedDate>
                                          <ns0:dateAdjustments>
                                             <ns0:businessDayConvention>
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                             </ns0:businessDayConvention>
                                          </ns0:dateAdjustments>
                                       </ns0:paymentDate>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:adjustedPaymentDate">
                                       <ns0:adjustedPaymentDate>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                                       </ns0:adjustedPaymentDate>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentType">
                                       <ns0:paymentType>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentType"/>
                                       </ns0:paymentType>
                                    </xsl:if>
                                 </ns0:paymentAmount>
                              </xsl:if>
                           </ns0:bond>
                        </ns0:product>
                        <xsl:if test="ns0:trade/ns0:extensions">
                           <ns0:extensions>
                              <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                                 <ns0:extension>
                                    <ns0:name>
                                       <xsl:value-of select="ns0:name"/>
                                    </ns0:name>
                                    <ns0:value>
                                       <xsl:value-of select="ns0:value"/>
                                    </ns0:value>
                                 </ns0:extension>
                              </xsl:for-each>
                              <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                                 <xsl:if test="oraext:compare-ignore-case(../../ns0:tradeHeader/ns0:tradeType,&quot;collbond&quot;) = 0.0">
                                    <ns0:extension>
                                       <ns0:name>
                                          <xsl:text disable-output-escaping="no">BondMarketPrice</xsl:text>
                                       </ns0:name>
                                       <xsl:variable name="v" select="oraext:lookup-table(&quot;BOND_PRICE&quot;,&quot;BOND_CODE&quot;,ns0:value,&quot;PRICE&quot;,&quot;jdbc/ds_kpeimid&quot;)"/>
                                       <xsl:choose>
                                          <xsl:when test="string-length($v) > 0">
                                             <ns0:value>
                                                <xsl:value-of select="$v"/>
                                             </ns0:value>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <ns0:value>
                                                <xsl:text disable-output-escaping="no">100</xsl:text>
                                             </ns0:value>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </ns0:extension>
                                 </xsl:if>
                              </xsl:for-each>
                           </ns0:extensions>
                        </xsl:if>
                     </ns0:trade>
                  </ns0:deal>
               </xsl:for-each>
            </ns0:content>
         </ns0:body>
      </ns0:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
