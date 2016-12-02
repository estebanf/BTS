﻿-- External variable database definition for MySQL 5.7
-- Generated 12/2/16 12:02 PM
-- Descriptor: Metrics/BTS_metrics.xvar (currently edited)
-- External variable BTS_Request
DROP TABLE IF EXISTS BTS_Request;
CREATE TABLE BTS_Request (REQUESTID VARCHAR(250), CUSTOMERID INTEGER, EVENTTYPE VARCHAR(250), EVENTDATETIME DATETIME, EVENTDURATION INTEGER, REQUESTTYPE VARCHAR(250), LOCATION VARCHAR(250), STATUS VARCHAR(250), ASSIGNEDROUTE VARCHAR(250), ROUTERCOST NUMERIC, HSANREQUIRED BOOLEAN, HSANCOST NUMERIC, EXTERNALRESOURCEREQUIRED BOOLEAN, APPROVALNEEDED BOOLEAN, APPROVED BOOLEAN, CREATED_ON DATETIME, UPDATED_ON DATETIME, PROCESS_ID VARCHAR(250), INSTANCE_ID INTEGER) ENGINE = innodb;
CREATE INDEX BTS_Request_KEYS ON BTS_Request (REQUESTID);
