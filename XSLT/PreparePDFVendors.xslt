<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:BTS_metrics="http://test.com/xvar/example" xmlns:BTSimplicitPartner="http://bts.com/Processes/Core/ContentTransmissionBooking/BTSimplicitPartner" xmlns:HSAN_Coordinator="http://bts.com/Processes/Core/ContentTransmissionBooking/HSAN_Coordinator" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS" xmlns:EmailActivityWSDL="http://bpms.intalio.com/tools/webservices/email" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:Customer1="__project:///Schemas/Customer.xsd" xmlns:ax214="http://externaldependencies.rules.bts/bre" xmlns:BTS="http://www.example.org/BTS" xmlns:ax213="http://externaldependencies.rules.bts/xsd" xmlns:ns="http://externaldependencies.rules.bts" xmlns:ContentTransmissionBooking="http://bts.com/Processes/Core/ContentTransmissionBooking" xmlns:Customer="http://bts.com/Services/REST/Customer.rest" xmlns:RouterAssignment-process="http://bts.com/Processes/Integrations/RouterAssignment/process" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:CalculateRequestUrgency-process="http://bts.com/Processes/Integrations/CalculateRequestUrgency/process" xmlns:ns0="http://bpms.intalio.com/tools/webservices/javainternalservices/pdf/_uMx0MLy4Eea8DveVMuPLZg" xmlns:Client="http://bts.com/Processes/Core/ContentTransmissionBooking/Client" xmlns:Vendor_coordinator="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinator">
  <!--XSL Skeleton generated on Wed Dec 07 16:48:26 EST 2016
 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm
   pool:BTS
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/PreparePDFVendors.xslt", $RequestOperation)
 Input document as defined in the mapper: $RequestOperation-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/BTS:RequestOperation">
    <PDFVendors xmlns="http://www.example.org/BTS">
	<xsl:if test="BTS:ExternalResourcesRequired ='true'">
	<xsl:for-each select="BTS:ExternalResources">
		<vendors>
			<Resource><xsl:value-of select="BTS:Resource" /></Resource>
			<Vendor><xsl:value-of select="BTS:Vendor" /></Vendor>
			<Cost><xsl:value-of select="BTS:Cost" /></Cost>
		</vendors>
	</xsl:for-each>
	</xsl:if>
    </PDFVendors>
  </xsl:template>
</xsl:stylesheet>
