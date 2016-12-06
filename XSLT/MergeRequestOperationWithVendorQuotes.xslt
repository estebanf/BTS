<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="2.0" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:BTS="http://www.example.org/BTS" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS">
  <xsl:output/>
  <xsl:param name="obj"/>
  <xsl:variable name="doc" select="$obj" />
  <xsl:template match="/this:Receive_external_vendor_costsRequest">
    <BTS:RequestOperation>
	  <xsl:copy-of select="$doc/BTS:Request" />
	  <xsl:copy-of select="$doc/BTS:AssignedRouter" />
	  <xsl:copy-of select="$doc/BTS:RouterCost" />
	  <xsl:copy-of select="$doc/BTS:HSANRequired" />
	  <xsl:copy-of select="$doc/BTS:HSANCost" />
	  <xsl:copy-of select="$doc/BTS:ExternalResourcesRequired" />
	  <xsl:apply-templates />
	  <xsl:copy-of select="$doc/BTS:ApprovalNeeded" />
	  <xsl:copy-of select="$doc/BTS:Approved" />
    </BTS:RequestOperation>
  </xsl:template>
  <xsl:template match="BTS:Vendors">
  	<BTS:ExternalResources>
		<BTS:Resource><xsl:value-of select="BTS:Resource" /></BTS:Resource>
		<BTS:Vendor><xsl:value-of select="BTS:Vendor" /></BTS:Vendor>
		<BTS:Cost><xsl:value-of select="BTS:Cost" /></BTS:Cost>
	</BTS:ExternalResources>
  </xsl:template>
</xsl:stylesheet>
