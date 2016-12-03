<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:BTS_metrics="http://test.com/xvar/example" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bts.com/Processes/Core/ContentTransmissionBooking/BTS" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:BTS="http://www.example.org/BTS" xmlns:ContentTransmissionBooking="http://bts.com/Processes/Core/ContentTransmissionBooking" xmlns:Client="http://bts.com/Processes/Core/ContentTransmissionBooking/Client">
  <!--XSL Skeleton generated on Thu Dec 01 16:16:08 EST 2016
 for F/BTS/Processes/Core/ContentTransmissionBooking.bpm
   pool:BTS
   activity: Save request data
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/NewRequest.xslt", $thisReceive_requestRequest1Msg.body, "pid", $ode:pid)
 Input document as defined in the mapper: $thisReceive_requestRequest1Msg.body-->
  <xsl:output/>
  <xsl:param name="pid">
    <error>Parameter pid no initialized</error>
  </xsl:param>
  <xsl:param name="urgency">
    <error>Parameter pid no initialized</error>
  </xsl:param>
  <xsl:template match="/this:Receive_requestRequest">
    <BTS:RequestOperation>
      <BTS:Request>
        <BTS:RequestId><xsl:value-of select="concat(year-from-dateTime(current-dateTime()),month-from-dateTime(current-dateTime()),day-from-dateTime(current-dateTime()),'-',$pid)" /></BTS:RequestId>
        <BTS:Information><xsl:copy-of select="BTS:RequestInfo/child::*" /></BTS:Information>
        <BTS:Urgency><xsl:value-of select="$urgency" /></BTS:Urgency>
      </BTS:Request>
      <BTS:AssignedRouter></BTS:AssignedRouter>
      <BTS:RouterCost>0</BTS:RouterCost>
      <BTS:HSANRequired>false</BTS:HSANRequired>
      <BTS:HSANCost>0</BTS:HSANCost>
      <BTS:ExternalResourcesRequired>false</BTS:ExternalResourcesRequired>
      <BTS:ApprovalNeeded>false</BTS:ApprovalNeeded>
      <BTS:Approved>false</BTS:Approved>
    </BTS:RequestOperation>
  </xsl:template>
</xsl:stylesheet>
