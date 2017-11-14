<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Query_COLLEQUITY" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 xsd xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="collEquity_Query_COLLEQUITY_OutputVariable.Query_COLLEQUITYOutputCollection"/>
   <xsl:template match="/">
      <ns0:Query_COLLEQUITYOutputCollection>
         <xsl:for-each select="$collEquity_Query_COLLEQUITY_OutputVariable.Query_COLLEQUITYOutputCollection/ns0:Query_COLLEQUITYOutputCollection/ns0:Query_COLLEQUITYOutput">
            <ns0:Query_COLLEQUITYOutput>
               <ns0:ROWNUM>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:ROWNUM/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:ROWNUM"/>
               </ns0:ROWNUM>
               <ns0:HEADERID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:HEADERID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:HEADERID"/>
               </ns0:HEADERID>
               <ns0:ASAT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:ASAT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:ASAT"/>
               </ns0:ASAT>
               <ns0:SOURCESYSTEM>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:SOURCESYSTEM/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:SOURCESYSTEM"/>
               </ns0:SOURCESYSTEM>
               <ns0:DEALID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALID"/>
               </ns0:DEALID>
               <ns0:DEALTYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALTYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALTYPE"/>
               </ns0:DEALTYPE>
               <ns0:DEALDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALDATE"/>
               </ns0:DEALDATE>
               <ns0:DSTATUS>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DSTATUS/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DSTATUS"/>
               </ns0:DSTATUS>
               <ns0:TRADEID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADEID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADEID"/>
               </ns0:TRADEID>
               <ns0:TRADEDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADEDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADEDATE"/>
               </ns0:TRADEDATE>
               <ns0:TRADETYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADETYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADETYPE"/>
               </ns0:TRADETYPE>
               <ns0:COUNTERPARTY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:COUNTERPARTY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:COUNTERPARTY"/>
               </ns0:COUNTERPARTY>
               <ns0:INTERNALUNIT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:INTERNALUNIT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:INTERNALUNIT"/>
               </ns0:INTERNALUNIT>
               <ns0:BUYSELL>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:BUYSELL/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:BUYSELL"/>
               </ns0:BUYSELL>
               <ns0:TSTATUS>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TSTATUS/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TSTATUS"/>
               </ns0:TSTATUS>
               <ns0:INSTRUMENTID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:INSTRUMENTID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:INSTRUMENTID"/>
               </ns0:INSTRUMENTID>
               <ns0:NUMBERSHARES>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:NUMBERSHARES/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:NUMBERSHARES"/>
               </ns0:NUMBERSHARES>
               <ns0:EXCHANGECODE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXCHANGECODE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXCHANGECODE"/>
               </ns0:EXCHANGECODE>
               <ns0:CURRENCY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:CURRENCY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:CURRENCY"/>
               </ns0:CURRENCY>
               <ns0:PAYMENTTYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYMENTTYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYMENTTYPE"/>
               </ns0:PAYMENTTYPE>
               <ns0:PAYCURRENCY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYCURRENCY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYCURRENCY"/>
               </ns0:PAYCURRENCY>
               <ns0:PAYAMOUNT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYAMOUNT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYAMOUNT"/>
               </ns0:PAYAMOUNT>
               <ns0:PAYMENTDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYMENTDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYMENTDATE"/>
               </ns0:PAYMENTDATE>
               <ns0:EXTACC>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTACC/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTACC"/>
               </ns0:EXTACC>
               <ns0:EXTACCVAL>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTACCVAL/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTACCVAL"/>
               </ns0:EXTACCVAL>
               <ns0:EXTMRKT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTMRKT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTMRKT"/>
               </ns0:EXTMRKT>
               <ns0:VALMRKT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:VALMRKT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:VALMRKT"/>
               </ns0:VALMRKT>
            </ns0:Query_COLLEQUITYOutput>
         </xsl:for-each>
         <xsl:for-each select="/ns0:Query_COLLEQUITYOutputCollection/ns0:Query_COLLEQUITYOutput">
            <ns0:Query_COLLEQUITYOutput>
               <ns0:ROWNUM>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:ROWNUM/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:ROWNUM"/>
               </ns0:ROWNUM>
               <ns0:HEADERID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:HEADERID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:HEADERID"/>
               </ns0:HEADERID>
               <ns0:ASAT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:ASAT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:ASAT"/>
               </ns0:ASAT>
               <ns0:SOURCESYSTEM>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:SOURCESYSTEM/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:SOURCESYSTEM"/>
               </ns0:SOURCESYSTEM>
               <ns0:DEALID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALID"/>
               </ns0:DEALID>
               <ns0:DEALTYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALTYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALTYPE"/>
               </ns0:DEALTYPE>
               <ns0:DEALDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DEALDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DEALDATE"/>
               </ns0:DEALDATE>
               <ns0:DSTATUS>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:DSTATUS/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:DSTATUS"/>
               </ns0:DSTATUS>
               <ns0:TRADEID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADEID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADEID"/>
               </ns0:TRADEID>
               <ns0:TRADEDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADEDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADEDATE"/>
               </ns0:TRADEDATE>
               <ns0:TRADETYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TRADETYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TRADETYPE"/>
               </ns0:TRADETYPE>
               <ns0:COUNTERPARTY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:COUNTERPARTY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:COUNTERPARTY"/>
               </ns0:COUNTERPARTY>
               <ns0:INTERNALUNIT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:INTERNALUNIT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:INTERNALUNIT"/>
               </ns0:INTERNALUNIT>
               <ns0:BUYSELL>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:BUYSELL/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:BUYSELL"/>
               </ns0:BUYSELL>
               <ns0:TSTATUS>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:TSTATUS/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:TSTATUS"/>
               </ns0:TSTATUS>
               <ns0:INSTRUMENTID>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:INSTRUMENTID/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:INSTRUMENTID"/>
               </ns0:INSTRUMENTID>
               <ns0:NUMBERSHARES>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:NUMBERSHARES/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:NUMBERSHARES"/>
               </ns0:NUMBERSHARES>
               <ns0:EXCHANGECODE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXCHANGECODE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXCHANGECODE"/>
               </ns0:EXCHANGECODE>
               <ns0:CURRENCY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:CURRENCY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:CURRENCY"/>
               </ns0:CURRENCY>
               <ns0:PAYMENTTYPE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYMENTTYPE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYMENTTYPE"/>
               </ns0:PAYMENTTYPE>
               <ns0:PAYCURRENCY>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYCURRENCY/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYCURRENCY"/>
               </ns0:PAYCURRENCY>
               <ns0:PAYAMOUNT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYAMOUNT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYAMOUNT"/>
               </ns0:PAYAMOUNT>
               <ns0:PAYMENTDATE>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:PAYMENTDATE/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:PAYMENTDATE"/>
               </ns0:PAYMENTDATE>
               <ns0:EXTACC>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTACC/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTACC"/>
               </ns0:EXTACC>
               <ns0:EXTACCVAL>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTACCVAL/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTACCVAL"/>
               </ns0:EXTACCVAL>
               <ns0:EXTMRKT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:EXTMRKT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:EXTMRKT"/>
               </ns0:EXTMRKT>
               <ns0:VALMRKT>
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="ns0:VALMRKT/@xsi:nil"/>
                  </xsl:attribute>
                  <xsl:value-of select="ns0:VALMRKT"/>
               </ns0:VALMRKT>
            </ns0:Query_COLLEQUITYOutput>
         </xsl:for-each>
      </ns0:Query_COLLEQUITYOutputCollection>
   </xsl:template>
</xsl:stylesheet>