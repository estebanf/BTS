<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tns="http://everteam.com/xvar/example" xmlns:BTS="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:attachments="http://www.intalio.com/BTS/Webcontents/ExternalVendorInquiry/index.html/attachments" xmlns:insert_vendor_quote="urn:intalio.com:connectors:database:bts:insert_vendor_quoteservice" xmlns:BTS1="http://www.example.org/BTS" xmlns:ax261="http://taskprioritization.rules.bts/xsd" xmlns:index="http://www.intalio.com/BTS/Webcontents/ExternalVendorInquiry/index.html" xmlns:ContentTransmissionBooking="http://bts.com/Processes/Core/ContentTransmissionBooking" xmlns:ax262="http://taskprioritization.rules.bts/bre" xmlns:ns="http://taskprioritization.rules.bts" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Vendor_coordinatorimplicitPartner="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinatorimplicitPartner" xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinator">
  <!--XSL Skeleton generated on Tue Dec 06 09:01:09 EST 2016
 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm
   pool:Vendor coordinator
   activity: Message_End_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/BuildVendorQuoteResponse.xslt", $indexCreateTaskSingleActivityResponse1Msg.root/index:taskOutput/BTS1:ExternalVendorInquiry)
 Input document as defined in the mapper: $indexCreateTaskSingleActivityResponse1Msg.root/index:taskOutput/BTS1:ExternalVendorInquiry-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/BTS1:ExternalVendorInquiry">
    <BTS:Receive_external_vendor_costsRequest>
		<xsl:apply-templates />
    </BTS:Receive_external_vendor_costsRequest>
  </xsl:template>
  <xsl:template match="BTS1:Request">
      <BTS1:RequestId><xsl:value-of select="BTS1:RequestId" /></BTS1:RequestId>
  </xsl:template>
  <xsl:template match="BTS1:Vendors">
	<xsl:copy-of select="." /> 
  </xsl:template>
</xsl:stylesheet>
