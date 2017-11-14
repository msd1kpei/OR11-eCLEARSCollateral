<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns="http://www.kpei.co.id/razor/e-CLEARSCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 xsd bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <kpeiInbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:sourceSystem"/>
            </sourceSystem>
         </header>
         <body>
            <content>
               <xsl:for-each select="/ns0:kpeiInbound/ns0:body/ns0:content/ns0:deal">
                  <deal>
                     <dealHeader>
                        <dealId>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealId"/>
                        </dealId>
                        <dealType>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealType"/>
                        </dealType>
                        <dealDate>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealDate"/>
                        </dealDate>
                        <status>
                           <xsl:value-of select="ns0:dealHeader/ns0:status"/>
                        </status>
                     </dealHeader>
                     <trade>
                        <tradeHeader>
                           <tradeId>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeId"/>
                           </tradeId>
                           <tradeDate>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeDate"/>
                           </tradeDate>
                           <tradeType>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeType"/>
                           </tradeType>
                           <counterparty>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:counterparty"/>
                           </counterparty>
                           <internalUnit>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:internalUnit"/>
                           </internalUnit>
                           <buySell>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:buySell"/>
                           </buySell>
                           <status>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:status"/>
                           </status>
                        </tradeHeader>
                        <product>
                           <cashPayment>
                              <paymentDate>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:paymentDate"/>
                              </paymentDate>
                              <amount>
                                 <xsl:if test="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount/@ccy">
                                    <xsl:attribute name="ccy">
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount/@ccy"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:cashPayment/ns0:amount"/>
                              </amount>
                           </cashPayment>
                           <equity>
                              <instrumentId>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:instrumentId"/>
                              </instrumentId>
                              <numberShares>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:numberShares"/>
                              </numberShares>
                              <exchangeCode>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:exchangeCode"/>
                              </exchangeCode>
                              <currency>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:currency"/>
                              </currency>
                              <paymentAmount>
                                 <paymentType>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentType"/>
                                 </paymentType>
                                 <paymentAmount>
                                    <currency/>
                                    <amount>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                                    </amount>
                                 </paymentAmount>
                                 <adjustedPaymentDate>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                                 </adjustedPaymentDate>
                              </paymentAmount>
                           </equity>
                           <bond>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:position">
                                 <position>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:position"/>
                                 </position>
                              </xsl:if>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:exInterestDays">
                                 <exInterestDays>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:exInterestDays"/>
                                 </exInterestDays>
                              </xsl:if>
                              <issuer>
                                 <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:issuer/@href">
                                    <xsl:attribute name="href">
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:issuer/@href"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:issuer"/>
                              </issuer>
                              <securityId>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:securityId"/>
                              </securityId>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream">
                                 <bondStream>
                                    <payerPartyReference>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference/@href">
                                          <xsl:attribute name="href">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference/@href"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:payerPartyReference"/>
                                    </payerPartyReference>
                                    <receiverPartyReference>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference/@href">
                                          <xsl:attribute name="href">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference/@href"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:receiverPartyReference"/>
                                    </receiverPartyReference>
                                    <calculationPeriodDates>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/@id">
                                          <xsl:attribute name="id">
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/@id"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <effectiveDate>
                                          <unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:unadjustedDate"/>
                                          </unadjustedDate>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:dateAdjustments">
                                             <dateAdjustments>
                                                <businessDayConvention>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:effectiveDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                                </businessDayConvention>
                                             </dateAdjustments>
                                          </xsl:if>
                                       </effectiveDate>
                                       <terminationDate>
                                          <unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:unadjustedDate"/>
                                          </unadjustedDate>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:dateAdjustments">
                                             <dateAdjustments>
                                                <businessDayConvention>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:terminationDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                                </businessDayConvention>
                                             </dateAdjustments>
                                          </xsl:if>
                                       </terminationDate>
                                       <calculationPeriodDatesAdjustments>
                                          <businessDayConvention>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodDatesAdjustments/ns0:businessDayConvention"/>
                                          </businessDayConvention>
                                       </calculationPeriodDatesAdjustments>
                                       <calculationPeriodFrequency>
                                          <periodMultiplier>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:periodMultiplier"/>
                                          </periodMultiplier>
                                          <period>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:period"/>
                                          </period>
                                          <rollConvention>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodDates/ns0:calculationPeriodFrequency/ns0:rollConvention"/>
                                          </rollConvention>
                                       </calculationPeriodFrequency>
                                    </calculationPeriodDates>
                                    <paymentDates>
                                       <paymentFrequency>
                                          <periodMultiplier>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentFrequency/ns0:periodMultiplier"/>
                                          </periodMultiplier>
                                          <period>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentFrequency/ns0:period"/>
                                          </period>
                                       </paymentFrequency>
                                       <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentDatesAdjustments">
                                          <paymentDatesAdjustments>
                                             <businessDayConvention>
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:paymentDates/ns0:paymentDatesAdjustments/ns0:businessDayConvention"/>
                                             </businessDayConvention>
                                          </paymentDatesAdjustments>
                                       </xsl:if>
                                    </paymentDates>
                                    <calculationPeriodAmount>
                                       <calculation>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule">
                                             <notionalSchedule>
                                                <notionalStepSchedule>
                                                   <initialValue>
                                                      <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule/ns0:notionalStepSchedule/ns0:initialValue"/>
                                                   </initialValue>
                                                   <currency>
                                                      <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:notionalSchedule/ns0:notionalStepSchedule/ns0:currency"/>
                                                   </currency>
                                                </notionalStepSchedule>
                                             </notionalSchedule>
                                          </xsl:if>
                                          <dayCountFraction>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:dayCountFraction"/>
                                          </dayCountFraction>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule">
                                             <fixedRateSchedule>
                                                <initialValue>
                                                   <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:initialValue"/>
                                                </initialValue>
                                                <step>
                                                   <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate">
                                                      <stepDate>
                                                         <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate/@id">
                                                            <xsl:attribute name="id">
                                                               <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate/@id"/>
                                                            </xsl:attribute>
                                                         </xsl:if>
                                                         <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepDate"/>
                                                      </stepDate>
                                                   </xsl:if>
                                                   <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepValue">
                                                      <stepValue>
                                                         <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:calculationPeriodAmount/ns0:calculation/ns0:fixedRateSchedule/ns0:step/ns0:stepValue"/>
                                                      </stepValue>
                                                   </xsl:if>
                                                </step>
                                             </fixedRateSchedule>
                                          </xsl:if>
                                       </calculation>
                                    </calculationPeriodAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges">
                                       <principalExchanges>
                                          <initialExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:initialExchange"/>
                                          </initialExchange>
                                          <finalExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:finalExchange"/>
                                          </finalExchange>
                                          <intermediateExchange>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:bondStream/ns0:principalExchanges/ns0:intermediateExchange"/>
                                          </intermediateExchange>
                                       </principalExchanges>
                                    </xsl:if>
                                 </bondStream>
                              </xsl:if>
                              <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount">
                                 <paymentAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference">
                                       <receiverPartyReference>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference/@href">
                                             <xsl:attribute name="href">
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference/@href"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:receiverPartyReference"/>
                                       </receiverPartyReference>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference">
                                       <payerPartyReference>
                                          <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference/@href">
                                             <xsl:attribute name="href">
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference/@href"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:payerPartyReference"/>
                                       </payerPartyReference>
                                    </xsl:if>
                                    <paymentAmount>
                                       <currency>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentAmount/ns0:currency"/>
                                       </currency>
                                       <amount>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                                       </amount>
                                    </paymentAmount>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate">
                                       <paymentDate>
                                          <unadjustedDate>
                                             <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate/ns0:unadjustedDate"/>
                                          </unadjustedDate>
                                          <dateAdjustments>
                                             <businessDayConvention>
                                                <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentDate/ns0:dateAdjustments/ns0:businessDayConvention"/>
                                             </businessDayConvention>
                                          </dateAdjustments>
                                       </paymentDate>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:adjustedPaymentDate">
                                       <adjustedPaymentDate>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                                       </adjustedPaymentDate>
                                    </xsl:if>
                                    <xsl:if test="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentType">
                                       <paymentType>
                                          <xsl:value-of select="ns0:trade/ns0:product/ns0:bond/ns0:paymentAmount/ns0:paymentType"/>
                                       </paymentType>
                                    </xsl:if>
                                 </paymentAmount>
                              </xsl:if>
                           </bond>
                        </product>
                        <xsl:if test="ns0:trade/ns0:extensions">
                           <extensions>
                              <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                                 <extension>
                                    <name>
                                       <xsl:value-of select="ns0:name"/>
                                    </name>
                                    <value>
                                       <xsl:value-of select="ns0:value"/>
                                    </value>
                                 </extension>
                              </xsl:for-each>
                              <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension[ns0:name = 'ProductId']">
                                 <xsl:if test="oraext:compare-ignore-case(../../ns0:tradeHeader/ns0:tradeType,&quot;collbond&quot;) = 0.0">
                                    <extension>
                                       <name>
                                          <xsl:text disable-output-escaping="no">BondMarketPrice</xsl:text>
                                       </name>
                                       <xsl:variable name="v" select="oraext:lookup-table(&quot;BOND_PRICE&quot;,&quot;BOND_CODE&quot;,ns0:value,&quot;PRICE&quot;,&quot;jdbc/ds_kpeimid&quot;)"/>
                                       <xsl:choose>
                                          <xsl:when test="string-length($v) > 0">
                                             <value>
                                                <xsl:value-of select="$v"/>
                                             </value>
                                          </xsl:when>
                                          <xsl:otherwise>
                                             <value>
                                                <xsl:text disable-output-escaping="no">100</xsl:text>
                                             </value>
                                          </xsl:otherwise>
                                       </xsl:choose>
                                    </extension>
                                 </xsl:if>
                              </xsl:for-each>
                           </extensions>
                        </xsl:if>
                     </trade>
                  </deal>
               </xsl:for-each>
            </content>
         </body>
      </kpeiInbound>
   </xsl:template>
</xsl:stylesheet>