<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tns="http://everteam.com/xvar/example" xmlns:BTS="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:attachments="http://www.intalio.com/BTS/Webcontents/ExternalVendorInquiry/index.html/attachments" xmlns:insert_vendor_quote="urn:intalio.com:connectors:database:bts:insert_vendor_quoteservice" xmlns:BTS1="http://www.example.org/BTS" xmlns:ax261="http://taskprioritization.rules.bts/xsd" xmlns:index="http://www.intalio.com/BTS/Webcontents/ExternalVendorInquiry/index.html" xmlns:ContentTransmissionBooking="http://bts.com/Processes/Core/ContentTransmissionBooking" xmlns:ax262="http://taskprioritization.rules.bts/bre" xmlns:ns="http://taskprioritization.rules.bts" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:delete_request_vendor_quotes="urn:intalio.com:connectors:database:bts:delete_request_vendor_quotesservice" xmlns:Vendor_coordinatorimplicitPartner="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinatorimplicitPartner" xmlns:db="urn:intalio.com:connectors:database:bts:select_existing_vendor_quotesservice" xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinator">
  <!--XSL Skeleton generated on Tue Dec 06 09:57:57 EST 2016
 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm
   pool:Vendor coordinator
   activity: Copy existing vendors
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/CopyQuotesToInquiry.xslt", $select_existing_vendor_quotesSelect_existing_vendor_quotesResponse1Msg.parameters)
 Input document as defined in the mapper: $select_existing_vendor_quotesSelect_existing_vendor_quotesResponse1Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/db:select_existing_vendor_quotesResultSet">
    <BTS1:ExternalVendorInquiry>
      <BTS1:Request>
        <BTS1:RequestId></BTS1:RequestId>
        <BTS1:Information>
          <BTS1:CustomerId></BTS1:CustomerId>
          <BTS1:EventDateTime></BTS1:EventDateTime>
          <BTS1:EventDuration></BTS1:EventDuration>
          <BTS1:EventType></BTS1:EventType>
          <BTS1:RequestType></BTS1:RequestType>
          <BTS1:Location></BTS1:Location>
        </BTS1:Information>
        <BTS1:Urgency></BTS1:Urgency>
      </BTS1:Request>
      <xsl:apply-templates />
    </BTS1:ExternalVendorInquiry>
  </xsl:template>
  <xsl:template match= "db:rows/db:row">
      <BTS1:Vendors>
        <BTS1:Resource><xsl:value-of select="db:Resource" /></BTS1:Resource>
        <BTS1:Vendor><xsl:value-of select="db:Vendor" /></BTS1:Vendor>
        <BTS1:Cost><xsl:value-of select="db:Cost" /></BTS1:Cost>
      </BTS1:Vendors>  
  </xsl:template>
</xsl:stylesheet>
