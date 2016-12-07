<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" 
	xmlns:BTS="http://www.example.org/BTS"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
>
	<!--XSL Skeleton generated on Wed Dec 07 16:10:26 EST 2016 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm 
		pool:BTS activity: Empty_Intermediate_Event Complete doXslTransform: bpel:doXslTransform("../../XSLT/PreparePDFData.xslt", 
		$RequestOperation) Input document as defined in the mapper: $RequestOperation -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/BTS:RequestOperation">
		<PDFReqData xmlns="http://www.example.org/BTS">
			<id><xsl:value-of select="BTS:Request/BTS:RequestId" /></id>
			<requestType><xsl:value-of select="BTS:Request/BTS:Information/BTS:RequestType" /></requestType>
			<eventType><xsl:value-of select="BTS:Request/BTS:Information/BTS:EventType" /></eventType>
			<eventDate><xsl:value-of select="BTS:Request/BTS:Information/BTS:EventDateTime" /></eventDate>
			<eventDuration><xsl:value-of select="BTS:Request/BTS:Information/BTS:EventDuration" /></eventDuration>
			<eventLocation><xsl:value-of select="BTS:Request/BTS:Information/BTS:Location" /></eventLocation>
			<routerCost><xsl:value-of select="BTS:RouterCost" /></routerCost>
			<hsan><xsl:value-of select="BTS:HSANRequired" /></hsan>
			<hsanCost><xsl:value-of select="BTS:HSANCost" /></hsanCost>
			<external><xsl:value-of select="BTS:ExternalResourcesRequired" /></external>
		</PDFReqData>
	</xsl:template>
</xsl:stylesheet>
