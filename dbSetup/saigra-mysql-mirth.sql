-- MySQL dump 10.17  Distrib 10.3.17-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: saigra_mirthdb
-- ------------------------------------------------------
-- Server version	10.3.17-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALERT`
--

DROP TABLE IF EXISTS `ALERT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALERT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ALERT` longtext NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALERT`
--

LOCK TABLES `ALERT` WRITE;
/*!40000 ALTER TABLE `ALERT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ALERT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHANNEL`
--

DROP TABLE IF EXISTS `CHANNEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHANNEL` (
  `ID` char(36) NOT NULL,
  `NAME` varchar(40) NOT NULL,
  `REVISION` int(11) DEFAULT NULL,
  `CHANNEL` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHANNEL`
--

LOCK TABLES `CHANNEL` WRITE;
/*!40000 ALTER TABLE `CHANNEL` DISABLE KEYS */;
INSERT INTO `CHANNEL` VALUES ('1a126bcb-14ce-474c-b09d-c87426fcd745','AddDeviceToCinch',2,'<channel version=\"3.8.1\">\n  <id>1a126bcb-14ce-474c-b09d-c87426fcd745</id>\n  <nextMetaDataId>2</nextMetaDataId>\n  <name>AddDeviceToCinch</name>\n  <description></description>\n  <revision>2</revision>\n  <sourceConnector version=\"3.8.1\">\n    <metaDataId>0</metaDataId>\n    <name>sourceConnector</name>\n    <properties class=\"com.mirth.connect.connectors.http.HttpReceiverProperties\" version=\"3.8.1\">\n      <pluginProperties>\n        <com.mirth.connect.plugins.httpauth.NoneHttpAuthProperties version=\"3.8.1\">\n  <authType>NONE</authType>\n        </com.mirth.connect.plugins.httpauth.NoneHttpAuthProperties>\n      </pluginProperties>\n      <listenerConnectorProperties version=\"3.8.1\">\n        <host>0.0.0.0</host>\n        <port>6001</port>\n      </listenerConnectorProperties>\n      <sourceConnectorProperties version=\"3.8.1\">\n        <responseVariable>None</responseVariable>\n        <respondAfterProcessing>true</respondAfterProcessing>\n        <processBatch>false</processBatch>\n        <firstResponse>false</firstResponse>\n        <processingThreads>1</processingThreads>\n        <resourceIds class=\"linked-hash-map\">\n          <entry>\n            <string>Default Resource</string>\n            <string>[Default Resource]</string>\n          </entry>\n        </resourceIds>\n        <queueBufferSize>1000</queueBufferSize>\n      </sourceConnectorProperties>\n      <xmlBody>false</xmlBody>\n      <parseMultipart>true</parseMultipart>\n      <includeMetadata>false</includeMetadata>\n      <binaryMimeTypes>application/.*(?&lt;!json|xml)$|image/.*|video/.*|audio/.*</binaryMimeTypes>\n      <binaryMimeTypesRegex>true</binaryMimeTypesRegex>\n      <responseContentType>application/json</responseContentType>\n      <responseDataTypeBinary>false</responseDataTypeBinary>\n      <responseStatusCode></responseStatusCode>\n      <responseHeaders class=\"linked-hash-map\"/>\n      <charset>DEFAULT_ENCODING</charset>\n      <contextPath>/cinch/addDevice/save</contextPath>\n      <timeout>30000</timeout>\n      <staticResources/>\n    </properties>\n    <transformer version=\"3.8.1\">\n      <elements/>\n      <inboundDataType>JSON</inboundDataType>\n      <outboundDataType>JSON</outboundDataType>\n      <inboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n        <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n          <splitType>JavaScript</splitType>\n          <batchScript></batchScript>\n        </batchProperties>\n      </inboundProperties>\n      <outboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n        <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n          <splitType>JavaScript</splitType>\n          <batchScript></batchScript>\n        </batchProperties>\n      </outboundProperties>\n    </transformer>\n    <filter version=\"3.8.1\">\n      <elements/>\n    </filter>\n    <transportName>HTTP Listener</transportName>\n    <mode>SOURCE</mode>\n    <enabled>true</enabled>\n    <waitForPrevious>true</waitForPrevious>\n  </sourceConnector>\n  <destinationConnectors>\n    <connector version=\"3.8.1\">\n      <metaDataId>1</metaDataId>\n      <name>Destination 1</name>\n      <properties class=\"com.mirth.connect.connectors.jdbc.DatabaseDispatcherProperties\" version=\"3.8.1\">\n        <pluginProperties/>\n        <destinationConnectorProperties version=\"3.8.1\">\n          <queueEnabled>false</queueEnabled>\n          <sendFirst>false</sendFirst>\n          <retryIntervalMillis>10000</retryIntervalMillis>\n          <regenerateTemplate>false</regenerateTemplate>\n          <retryCount>0</retryCount>\n          <rotate>false</rotate>\n          <includeFilterTransformer>false</includeFilterTransformer>\n          <threadCount>1</threadCount>\n          <threadAssignmentVariable></threadAssignmentVariable>\n          <validateResponse>false</validateResponse>\n          <resourceIds class=\"linked-hash-map\">\n            <entry>\n              <string>Default Resource</string>\n              <string>[Default Resource]</string>\n            </entry>\n          </resourceIds>\n          <queueBufferSize>1000</queueBufferSize>\n          <reattachAttachments>true</reattachAttachments>\n        </destinationConnectorProperties>\n        <driver>com.mysql.cj.jdbc.Driver</driver>\n        <url></url>\n        <username></username>\n        <password></password>\n        <query>var dbConn;\n\ntry {\n	dbConn = DatabaseConnectionFactory.createDatabaseConnection(&apos;com.mysql.cj.jdbc.Driver&apos;,&apos;jdbc:mysql://localhost:3306/saigra_cinchdb&apos;,&apos;saigra_cinch&apos;,&apos;saigra_cinch&apos;);\n\n} finally {\n	if (dbConn) { \n		dbConn.close();\n	}\n}</query>\n        <useScript>true</useScript>\n      </properties>\n      <transformer version=\"3.8.1\">\n        <elements/>\n        <inboundDataType>JSON</inboundDataType>\n        <outboundDataType>JSON</outboundDataType>\n        <inboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n          <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n            <splitType>JavaScript</splitType>\n            <batchScript></batchScript>\n          </batchProperties>\n        </inboundProperties>\n        <outboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n          <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n            <splitType>JavaScript</splitType>\n            <batchScript></batchScript>\n          </batchProperties>\n        </outboundProperties>\n      </transformer>\n      <responseTransformer version=\"3.8.1\">\n        <elements/>\n        <inboundDataType>JSON</inboundDataType>\n        <outboundDataType>JSON</outboundDataType>\n        <inboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n          <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n            <splitType>JavaScript</splitType>\n            <batchScript></batchScript>\n          </batchProperties>\n        </inboundProperties>\n        <outboundProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONDataTypeProperties\" version=\"3.8.1\">\n          <batchProperties class=\"com.mirth.connect.plugins.datatypes.json.JSONBatchProperties\" version=\"3.8.1\">\n            <splitType>JavaScript</splitType>\n            <batchScript></batchScript>\n          </batchProperties>\n        </outboundProperties>\n      </responseTransformer>\n      <filter version=\"3.8.1\">\n        <elements/>\n      </filter>\n      <transportName>Database Writer</transportName>\n      <mode>DESTINATION</mode>\n      <enabled>true</enabled>\n      <waitForPrevious>true</waitForPrevious>\n    </connector>\n  </destinationConnectors>\n  <preprocessingScript>// Modify the message variable below to pre process data\nreturn message;</preprocessingScript>\n  <postprocessingScript>// This script executes once after a message has been processed\n// Responses returned from here will be stored as &quot;Postprocessor&quot; in the response map\nreturn;</postprocessingScript>\n  <deployScript>// This script executes once when the channel is deployed\n// You only have access to the globalMap and globalChannelMap here to persist data\nreturn;</deployScript>\n  <undeployScript>// This script executes once when the channel is undeployed\n// You only have access to the globalMap and globalChannelMap here to persist data\nreturn;</undeployScript>\n  <properties version=\"3.8.1\">\n    <clearGlobalChannelMap>true</clearGlobalChannelMap>\n    <messageStorageMode>DEVELOPMENT</messageStorageMode>\n    <encryptData>false</encryptData>\n    <removeContentOnCompletion>false</removeContentOnCompletion>\n    <removeOnlyFilteredOnCompletion>false</removeOnlyFilteredOnCompletion>\n    <removeAttachmentsOnCompletion>false</removeAttachmentsOnCompletion>\n    <initialState>STARTED</initialState>\n    <storeAttachments>true</storeAttachments>\n    <metaDataColumns>\n      <metaDataColumn>\n        <name>SOURCE</name>\n        <type>STRING</type>\n        <mappingName>mirth_source</mappingName>\n      </metaDataColumn>\n      <metaDataColumn>\n        <name>TYPE</name>\n        <type>STRING</type>\n        <mappingName>mirth_type</mappingName>\n      </metaDataColumn>\n    </metaDataColumns>\n    <attachmentProperties version=\"3.8.1\">\n      <type>None</type>\n      <properties/>\n    </attachmentProperties>\n    <resourceIds class=\"linked-hash-map\">\n      <entry>\n        <string>Default Resource</string>\n        <string>[Default Resource]</string>\n      </entry>\n    </resourceIds>\n  </properties>\n</channel>');
/*!40000 ALTER TABLE `CHANNEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHANNEL_GROUP`
--

DROP TABLE IF EXISTS `CHANNEL_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHANNEL_GROUP` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `REVISION` int(11) DEFAULT NULL,
  `CHANNEL_GROUP` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHANNEL_GROUP`
--

LOCK TABLES `CHANNEL_GROUP` WRITE;
/*!40000 ALTER TABLE `CHANNEL_GROUP` DISABLE KEYS */;
/*!40000 ALTER TABLE `CHANNEL_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CODE_TEMPLATE`
--

DROP TABLE IF EXISTS `CODE_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CODE_TEMPLATE` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `REVISION` int(11) DEFAULT NULL,
  `CODE_TEMPLATE` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CODE_TEMPLATE`
--

LOCK TABLES `CODE_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `CODE_TEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CODE_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CODE_TEMPLATE_LIBRARY`
--

DROP TABLE IF EXISTS `CODE_TEMPLATE_LIBRARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CODE_TEMPLATE_LIBRARY` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `REVISION` int(11) DEFAULT NULL,
  `LIBRARY` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CODE_TEMPLATE_LIBRARY`
--

LOCK TABLES `CODE_TEMPLATE_LIBRARY` WRITE;
/*!40000 ALTER TABLE `CODE_TEMPLATE_LIBRARY` DISABLE KEYS */;
/*!40000 ALTER TABLE `CODE_TEMPLATE_LIBRARY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONFIGURATION`
--

DROP TABLE IF EXISTS `CONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CONFIGURATION` (
  `CATEGORY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`CATEGORY`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONFIGURATION`
--

LOCK TABLES `CONFIGURATION` WRITE;
/*!40000 ALTER TABLE `CONFIGURATION` DISABLE KEYS */;
INSERT INTO `CONFIGURATION` VALUES ('core','channelMetadata','<map>\n  <entry>\n    <string>1a126bcb-14ce-474c-b09d-c87426fcd745</string>\n    <com.mirth.connect.model.ChannelMetadata>\n      <enabled>true</enabled>\n      <lastModified>\n        <time>1580644365571</time>\n        <timezone>Asia/Calcutta</timezone>\n      </lastModified>\n      <pruningSettings>\n        <archiveEnabled>true</archiveEnabled>\n      </pruningSettings>\n    </com.mirth.connect.model.ChannelMetadata>\n  </entry>\n</map>'),('core','server.queuebuffersize','1000'),('core','server.resetglobalvariables','1'),('core','smtp.auth','0'),('core','smtp.secure','0'),('core','smtp.timeout','5000'),('core','stats.enabled','1'),('core','stats.time','1583036104851'),('Data Pruner','archiveEnabled','<boolean>false</boolean>'),('Data Pruner','archiverBlockSize','50'),('Data Pruner','archiverOptions','<com.mirth.connect.util.messagewriter.MessageWriterOptions>\n  <destinationContent>false</destinationContent>\n  <encrypt>false</encrypt>\n  <includeAttachments>false</includeAttachments>\n  <passwordEnabled>false</passwordEnabled>\n</com.mirth.connect.util.messagewriter.MessageWriterOptions>'),('Data Pruner','enabled','false'),('Data Pruner','includeAttachments','<boolean>false</boolean>'),('Data Pruner','maxEventAge',''),('Data Pruner','pollingProperties','<com.mirth.connect.donkey.model.channel.PollConnectorProperties version=\"3.8.1\">\n  <pollingType>INTERVAL</pollingType>\n  <pollOnStart>false</pollOnStart>\n  <pollingFrequency>3600000</pollingFrequency>\n  <pollingHour>0</pollingHour>\n  <pollingMinute>0</pollingMinute>\n  <cronJobs/>\n  <pollConnectorPropertiesAdvanced>\n    <weekly>true</weekly>\n    <inactiveDays>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n      <boolean>false</boolean>\n    </inactiveDays>\n    <dayOfMonth>1</dayOfMonth>\n    <allDay>true</allDay>\n    <startingHour>8</startingHour>\n    <startingMinute>0</startingMinute>\n    <endingHour>17</endingHour>\n    <endingMinute>0</endingMinute>\n  </pollConnectorPropertiesAdvanced>\n</com.mirth.connect.donkey.model.channel.PollConnectorProperties>'),('Data Pruner','pruneEvents','false'),('Data Pruner','pruningBlockSize','1000');
/*!40000 ALTER TABLE `CONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_CHANNELS`
--

DROP TABLE IF EXISTS `D_CHANNELS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_CHANNELS` (
  `LOCAL_CHANNEL_ID` bigint(20) NOT NULL,
  `CHANNEL_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`LOCAL_CHANNEL_ID`),
  UNIQUE KEY `UNIQUE_CHANNEL_ID` (`CHANNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_CHANNELS`
--

LOCK TABLES `D_CHANNELS` WRITE;
/*!40000 ALTER TABLE `D_CHANNELS` DISABLE KEYS */;
INSERT INTO `D_CHANNELS` VALUES (1,'1a126bcb-14ce-474c-b09d-c87426fcd745');
/*!40000 ALTER TABLE `D_CHANNELS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_M1`
--

DROP TABLE IF EXISTS `D_M1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_M1` (
  `ID` bigint(20) NOT NULL,
  `SERVER_ID` varchar(36) NOT NULL,
  `RECEIVED_DATE` timestamp NULL DEFAULT NULL,
  `PROCESSED` tinyint(1) NOT NULL DEFAULT 0,
  `ORIGINAL_ID` bigint(20) DEFAULT NULL,
  `IMPORT_ID` bigint(20) DEFAULT NULL,
  `IMPORT_CHANNEL_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `D_M1_INDEX1` (`ID`,`SERVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_M1`
--

LOCK TABLES `D_M1` WRITE;
/*!40000 ALTER TABLE `D_M1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_M1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MA1`
--

DROP TABLE IF EXISTS `D_MA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MA1` (
  `ID` varchar(255) NOT NULL,
  `MESSAGE_ID` bigint(20) NOT NULL,
  `TYPE` varchar(40) DEFAULT NULL,
  `SEGMENT_ID` int(11) NOT NULL,
  `ATTACHMENT_SIZE` int(11) NOT NULL,
  `CONTENT` longblob DEFAULT NULL,
  KEY `D_MA1_INDEX1` (`ID`),
  KEY `D_MA1_FKI` (`MESSAGE_ID`),
  CONSTRAINT `D_MA1_FKEY` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `D_M1` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MA1`
--

LOCK TABLES `D_MA1` WRITE;
/*!40000 ALTER TABLE `D_MA1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_MA1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MC1`
--

DROP TABLE IF EXISTS `D_MC1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MC1` (
  `METADATA_ID` int(11) NOT NULL,
  `MESSAGE_ID` bigint(20) NOT NULL,
  `CONTENT_TYPE` int(11) NOT NULL,
  `CONTENT` longtext DEFAULT NULL,
  `IS_ENCRYPTED` tinyint(1) NOT NULL,
  `DATA_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`,`METADATA_ID`,`CONTENT_TYPE`),
  KEY `D_MC1_FKI` (`MESSAGE_ID`,`METADATA_ID`),
  CONSTRAINT `D_MC1_FKEY` FOREIGN KEY (`MESSAGE_ID`, `METADATA_ID`) REFERENCES `D_MM1` (`MESSAGE_ID`, `ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MC1`
--

LOCK TABLES `D_MC1` WRITE;
/*!40000 ALTER TABLE `D_MC1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_MC1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MCM1`
--

DROP TABLE IF EXISTS `D_MCM1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MCM1` (
  `METADATA_ID` int(11) NOT NULL,
  `MESSAGE_ID` bigint(20) NOT NULL,
  `SOURCE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MESSAGE_ID`,`METADATA_ID`),
  CONSTRAINT `D_MCM1_FKEY` FOREIGN KEY (`MESSAGE_ID`, `METADATA_ID`) REFERENCES `D_MM1` (`MESSAGE_ID`, `ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MCM1`
--

LOCK TABLES `D_MCM1` WRITE;
/*!40000 ALTER TABLE `D_MCM1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_MCM1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MM1`
--

DROP TABLE IF EXISTS `D_MM1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MM1` (
  `ID` int(11) NOT NULL,
  `MESSAGE_ID` bigint(20) NOT NULL,
  `SERVER_ID` varchar(36) NOT NULL,
  `RECEIVED_DATE` timestamp NULL DEFAULT NULL,
  `STATUS` char(1) NOT NULL,
  `CONNECTOR_NAME` longtext DEFAULT NULL,
  `SEND_ATTEMPTS` int(11) NOT NULL DEFAULT 0,
  `SEND_DATE` timestamp NULL DEFAULT NULL,
  `RESPONSE_DATE` timestamp NULL DEFAULT NULL,
  `ERROR_CODE` int(11) NOT NULL DEFAULT 0,
  `CHAIN_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  PRIMARY KEY (`MESSAGE_ID`,`ID`),
  KEY `D_MM1_INDEX1` (`MESSAGE_ID`,`ID`,`STATUS`),
  KEY `D_MM1_INDEX2` (`MESSAGE_ID`,`SERVER_ID`,`ID`),
  KEY `D_MM1_INDEX3` (`ID`,`STATUS`,`SERVER_ID`),
  KEY `D_MM1_FKI` (`MESSAGE_ID`),
  CONSTRAINT `D_MM1_FKEY` FOREIGN KEY (`MESSAGE_ID`) REFERENCES `D_M1` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MM1`
--

LOCK TABLES `D_MM1` WRITE;
/*!40000 ALTER TABLE `D_MM1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_MM1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MS1`
--

DROP TABLE IF EXISTS `D_MS1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MS1` (
  `METADATA_ID` int(11) DEFAULT NULL,
  `SERVER_ID` varchar(36) NOT NULL,
  `RECEIVED` bigint(20) NOT NULL DEFAULT 0,
  `RECEIVED_LIFETIME` bigint(20) NOT NULL DEFAULT 0,
  `FILTERED` bigint(20) NOT NULL DEFAULT 0,
  `FILTERED_LIFETIME` bigint(20) NOT NULL DEFAULT 0,
  `SENT` bigint(20) NOT NULL DEFAULT 0,
  `SENT_LIFETIME` bigint(20) NOT NULL DEFAULT 0,
  `ERROR` bigint(20) NOT NULL DEFAULT 0,
  `ERROR_LIFETIME` bigint(20) NOT NULL DEFAULT 0,
  KEY `D_MS1_INDEX1` (`METADATA_ID`,`SERVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MS1`
--

LOCK TABLES `D_MS1` WRITE;
/*!40000 ALTER TABLE `D_MS1` DISABLE KEYS */;
/*!40000 ALTER TABLE `D_MS1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `D_MSQ1`
--

DROP TABLE IF EXISTS `D_MSQ1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_MSQ1` (
  `ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `D_MSQ1`
--

LOCK TABLES `D_MSQ1` WRITE;
/*!40000 ALTER TABLE `D_MSQ1` DISABLE KEYS */;
INSERT INTO `D_MSQ1` VALUES (1);
/*!40000 ALTER TABLE `D_MSQ1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT`
--

DROP TABLE IF EXISTS `EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATED` timestamp NULL DEFAULT NULL,
  `NAME` longtext NOT NULL,
  `EVENT_LEVEL` varchar(40) NOT NULL,
  `OUTCOME` varchar(40) NOT NULL,
  `ATTRIBUTES` longtext DEFAULT NULL,
  `USER_ID` int(11) NOT NULL,
  `IP_ADDRESS` varchar(40) DEFAULT NULL,
  `SERVER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
INSERT INTO `EVENT` VALUES (1,'2020-02-02 11:16:34','Server startup','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(2,'2020-02-02 11:21:35','Login','INFORMATION','SUCCESS','<map>\n  <entry>\n    <string>username</string>\n    <string>admin</string>\n  </entry>\n</map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(3,'2020-02-02 11:21:42','Get resources','INFORMATION','SUCCESS','<linked-hash-map/>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(4,'2020-02-02 11:21:42','Get libraries invoked through Directory Resource','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>resourceId</string>\n    <string>Default Resource\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(5,'2020-02-02 11:22:02','Update a user\'s password','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>userId</string>\n    <string>1\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(6,'2020-02-02 11:22:02','Update user','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>userId</string>\n    <string>1\n</string>\n  </entry>\n  <entry>\n    <string>user</string>\n    <string>User[id=1,username=admin]\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(7,'2020-02-02 11:22:03','Set user preference','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>name</string>\n    <string>firstlogin\n</string>\n  </entry>\n  <entry>\n    <string>userId</string>\n    <string>1\n</string>\n  </entry>\n  <entry>\n    <string>value</string>\n    <string>false\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(8,'2020-02-02 11:22:07','Set user preferences','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>userId</string>\n    <string>1\n</string>\n  </entry>\n  <entry>\n    <string>properties</string>\n    <string>{showNotificationPopup=false, checkForNotifications=true}\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(9,'2020-02-02 11:51:48','Create channel','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>channel</string>\n    <string>Channel[id=1a126bcb-14ce-474c-b09d-c87426fcd745,name=CinchSaveData]\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(10,'2020-02-02 11:52:47','Update channel','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>channel</string>\n    <string>Channel[id=1a126bcb-14ce-474c-b09d-c87426fcd745,name=CinchSaveData]\n</string>\n  </entry>\n  <entry>\n    <string>override</string>\n    <string>false\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(11,'2020-02-02 16:45:12','Set user preferences','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>userId</string>\n    <string>1\n</string>\n  </entry>\n  <entry>\n    <string>properties</string>\n    <string>{initialTagsDashboard=, initialTagsChannels=}\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(12,'2020-02-02 16:45:12','Logout','INFORMATION','SUCCESS','<linked-hash-map/>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(13,'2020-02-02 16:45:42','Server shutdown','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(14,'2020-03-01 04:13:28','Server startup','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(15,'2020-03-01 04:13:38','Server shutdown','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(16,'2020-03-01 04:14:47','Server startup','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(17,'2020-03-01 04:15:38','Login','INFORMATION','SUCCESS','<map>\n  <entry>\n    <string>username</string>\n    <string>admin</string>\n  </entry>\n</map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(18,'2020-03-01 04:15:45','Get resources','INFORMATION','SUCCESS','<linked-hash-map/>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(19,'2020-03-01 04:15:45','Get libraries invoked through Directory Resource','INFORMATION','SUCCESS','<linked-hash-map>\n  <entry>\n    <string>resourceId</string>\n    <string>Default Resource\n</string>\n  </entry>\n</linked-hash-map>',1,'192.168.1.16','32c9513b-0946-44ee-a21a-15dcf068e9e7'),(20,'2020-03-01 04:43:19','Server shutdown','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7'),(21,'2020-03-01 04:57:43','Server startup','INFORMATION','SUCCESS','<linked-hash-map/>',0,NULL,'32c9513b-0946-44ee-a21a-15dcf068e9e7');
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(40) NOT NULL,
  `FIRSTNAME` varchar(40) DEFAULT NULL,
  `LASTNAME` varchar(40) DEFAULT NULL,
  `ORGANIZATION` varchar(255) DEFAULT NULL,
  `INDUSTRY` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONENUMBER` varchar(40) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_LOGIN` timestamp NULL DEFAULT NULL,
  `GRACE_PERIOD_START` timestamp NULL DEFAULT NULL,
  `STRIKE_COUNT` int(11) DEFAULT NULL,
  `LAST_STRIKE_TIME` timestamp NULL DEFAULT NULL,
  `LOGGED_IN` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON`
--

LOCK TABLES `PERSON` WRITE;
/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
INSERT INTO `PERSON` VALUES (1,'admin','','','',NULL,'','','','2020-03-01 04:15:38',NULL,0,NULL,'\0');
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON_PASSWORD`
--

DROP TABLE IF EXISTS `PERSON_PASSWORD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON_PASSWORD` (
  `PERSON_ID` int(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `PASSWORD_DATE` timestamp NULL DEFAULT NULL,
  KEY `PERSON_ID_PP_FK` (`PERSON_ID`),
  CONSTRAINT `PERSON_ID_PP_FK` FOREIGN KEY (`PERSON_ID`) REFERENCES `PERSON` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON_PASSWORD`
--

LOCK TABLES `PERSON_PASSWORD` WRITE;
/*!40000 ALTER TABLE `PERSON_PASSWORD` DISABLE KEYS */;
INSERT INTO `PERSON_PASSWORD` VALUES (1,'d8jrzBn/gf/xIJOGzo5pGh7vIPb3Lr8uAffF+9J/8jSuX3GvjWcZLA==\r\n','2020-02-02 11:22:02');
/*!40000 ALTER TABLE `PERSON_PASSWORD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON_PREFERENCE`
--

DROP TABLE IF EXISTS `PERSON_PREFERENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSON_PREFERENCE` (
  `PERSON_ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  KEY `PERSON_PREFERENCE_INDEX1` (`PERSON_ID`),
  CONSTRAINT `PERSON_ID_PERSON_PREF_FK` FOREIGN KEY (`PERSON_ID`) REFERENCES `PERSON` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON_PREFERENCE`
--

LOCK TABLES `PERSON_PREFERENCE` WRITE;
/*!40000 ALTER TABLE `PERSON_PREFERENCE` DISABLE KEYS */;
INSERT INTO `PERSON_PREFERENCE` VALUES (1,'firstlogin','false'),(1,'checkForNotifications','true'),(1,'showNotificationPopup','false'),(1,'initialTagsDashboard',''),(1,'initialTagsChannels','');
/*!40000 ALTER TABLE `PERSON_PREFERENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCHEMA_INFO`
--

DROP TABLE IF EXISTS `SCHEMA_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHEMA_INFO` (
  `VERSION` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCHEMA_INFO`
--

LOCK TABLES `SCHEMA_INFO` WRITE;
/*!40000 ALTER TABLE `SCHEMA_INFO` DISABLE KEYS */;
INSERT INTO `SCHEMA_INFO` VALUES ('3.8.1');
/*!40000 ALTER TABLE `SCHEMA_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCRIPT`
--

DROP TABLE IF EXISTS `SCRIPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCRIPT` (
  `GROUP_ID` varchar(40) NOT NULL,
  `ID` varchar(40) NOT NULL,
  `SCRIPT` longtext DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCRIPT`
--

LOCK TABLES `SCRIPT` WRITE;
/*!40000 ALTER TABLE `SCRIPT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCRIPT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01  5:56:52
