<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:BTS_metrics="http://test.com/xvar/example" xmlns:BTSimplicitPartner="http://bts.com/Processes/Core/ContentTransmissionBooking/BTSimplicitPartner" xmlns:HSAN_Coordinator="http://bts.com/Processes/Core/ContentTransmissionBooking/HSAN_Coordinator" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:Customer1="__project:///Schemas/Customer.xsd" xmlns:ax214="http://externaldependencies.rules.bts/bre" xmlns:BTS="http://www.example.org/BTS" xmlns:ax213="http://externaldependencies.rules.bts/xsd" xmlns:ns="http://externaldependencies.rules.bts" xmlns:ContentTransmissionBooking="http://bts.com/Processes/Core/ContentTransmissionBooking" xmlns:Customer="http://bts.com/Services/REST/Customer.rest" xmlns:RouterAssignment-process="http://bts.com/Processes/Integrations/RouterAssignment/process" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:CalculateRequestUrgency-process="http://bts.com/Processes/Integrations/CalculateRequestUrgency/process" xmlns:Client="http://bts.com/Processes/Core/ContentTransmissionBooking/Client" xmlns:Vendor_coordinator="http://bts.com/Processes/Core/ContentTransmissionBooking/Vendor_coordinator">
  <!--XSL Skeleton generated on Wed Dec 07 14:34:43 EST 2016
 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm
   pool:BTS
   activity: Calculate total
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/CalculateTotal.xslt", $RequestOperation)
 Input document as defined in the mapper: $RequestOperation-->
  <xsl:output/>
  <xsl:template match="/BTS:RequestOperation">
	  <xsl:variable name="hcost">
		  	<xsl:choose>
		  		<xsl:when test="BTS:HSANRequired ='true'">
			  		<xsl:value-of select="BTS:HSANCost" />
			  	</xsl:when>
			  	<xsl:otherwise>0</xsl:otherwise>
		  	</xsl:choose>	  
	  </xsl:variable>
	  <xsl:variable name="ecost">
		  	<xsl:choose>
		  		<xsl:when test="BTS:ExternalResourcesRequired ='true'">
			  		<xsl:value-of select="sum(BTS:ExternalResources/BTS:Cost)" />
			  	</xsl:when>
			  	<xsl:otherwise>0</xsl:otherwise>
		  	</xsl:choose>	  
	  </xsl:variable>    
	 <BTS:ProposalTotal>
      <BTS:Amount><xsl:value-of select="BTS:RouterCost/text() + $hcost + $ecost" /></BTS:Amount>
    </BTS:ProposalTotal>
  </xsl:template>
</xsl:stylesheet>
