-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: iw2
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ACT_EVT_LOG`
--

DROP TABLE IF EXISTS `ACT_EVT_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_EVT_LOG` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_EVT_LOG`
--

LOCK TABLES `ACT_EVT_LOG` WRITE;
/*!40000 ALTER TABLE `ACT_EVT_LOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_EVT_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_GE_BYTEARRAY`
--

DROP TABLE IF EXISTS `ACT_GE_BYTEARRAY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_GE_BYTEARRAY` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_GE_BYTEARRAY`
--

LOCK TABLES `ACT_GE_BYTEARRAY` WRITE;
/*!40000 ALTER TABLE `ACT_GE_BYTEARRAY` DISABLE KEYS */;
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('10019',1,'Test.bpmn20.xml','10018','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/test\">\n  <collaboration id=\"Collaboration\">\n    <participant id=\"sid-5D93D567-01D1-4B87-A69C-8F9EE1F84B79\" processRef=\"process\"></participant>\n  </collaboration>\n  <process id=\"Test\" isExecutable=\"true\">\n    <laneSet id=\"laneSet_Test\">\n      <lane id=\"sid-E7E2022F-6D1F-454F-812B-28C8EB8CF167\" name=\"demandeur\n\">\n        <flowNodeRef>sid-D4A12E88-D084-4D15-811E-5780A39ED41D</flowNodeRef>\n        <flowNodeRef>sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E</flowNodeRef>\n        <flowNodeRef>sid-3889AA74-4FCD-450B-B866-3554146C5FB7</flowNodeRef>\n        <flowNodeRef>sid-AB330927-1FEE-4C77-82A4-168DEED8F795</flowNodeRef>\n      </lane>\n      <lane id=\"sid-E4C6D9E2-1303-4BF3-80BA-47AAF5717F24\" name=\"analyste\n\">\n        <flowNodeRef>sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA</flowNodeRef>\n        <flowNodeRef>sid-DCDB11C0-417A-4557-8F97-9E0630408470</flowNodeRef>\n      </lane>\n      <lane id=\"sid-6696D23F-6FAA-4613-B8DE-D4AC0095F89F\" name=\"valideur\n\">\n        <flowNodeRef>sid-5C232078-1245-473C-957A-555A5B3D3DB5</flowNodeRef>\n        <flowNodeRef>sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD</flowNodeRef>\n        <flowNodeRef>sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4</flowNodeRef>\n        <flowNodeRef>sid-0427E532-515F-407A-9388-0159D26B99BE</flowNodeRef>\n        <flowNodeRef>sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB</flowNodeRef>\n        <flowNodeRef>sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D</flowNodeRef>\n        <flowNodeRef>sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755</flowNodeRef>\n        <flowNodeRef>sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2</flowNodeRef>\n      </lane>\n    </laneSet>\n    <startEvent id=\"sid-D4A12E88-D084-4D15-811E-5780A39ED41D\"></startEvent>\n    <userTask id=\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\" name=\"Faire une demande\" activiti:assignee=\"demandeur\" activiti:formKey=\"2\"></userTask>\n    <userTask id=\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\" name=\"Analyser la demande\n\" activiti:assignee=\"analyste\" activiti:formKey=\"2\"></userTask>\n    <userTask id=\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\" name=\"Valider la demande\n\" activiti:assignee=\"valideur\" activiti:formKey=\"1\"></userTask>\n    <exclusiveGateway id=\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\"></exclusiveGateway>\n    <userTask id=\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\" name=\"Confirmer la validation\" activiti:assignee=\"valideur\" activiti:formKey=\"1\"></userTask>\n    <endEvent id=\"sid-0427E532-515F-407A-9388-0159D26B99BE\"></endEvent>\n    <sequenceFlow id=\"sid-3889AA74-4FCD-450B-B866-3554146C5FB7\" sourceRef=\"sid-D4A12E88-D084-4D15-811E-5780A39ED41D\" targetRef=\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"></sequenceFlow>\n    <sequenceFlow id=\"sid-AB330927-1FEE-4C77-82A4-168DEED8F795\" sourceRef=\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\" targetRef=\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\"></sequenceFlow>\n    <sequenceFlow id=\"sid-DCDB11C0-417A-4557-8F97-9E0630408470\" sourceRef=\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\" targetRef=\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\"></sequenceFlow>\n    <sequenceFlow id=\"sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB\" sourceRef=\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\" targetRef=\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\"></sequenceFlow>\n    <sequenceFlow id=\"sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D\" sourceRef=\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\" targetRef=\"sid-0427E532-515F-407A-9388-0159D26B99BE\"></sequenceFlow>\n    <sequenceFlow id=\"sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755\" name=\"non\" sourceRef=\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\" targetRef=\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${valider==\'non\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2\" name=\"oui\" sourceRef=\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\" targetRef=\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${valider==\'oui\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Collaboration\">\n    <bpmndi:BPMNPlane bpmnElement=\"Collaboration\" id=\"BPMNPlane_Collaboration\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-5D93D567-01D1-4B87-A69C-8F9EE1F84B79\" id=\"BPMNShape_sid-5D93D567-01D1-4B87-A69C-8F9EE1F84B79\">\n        <omgdc:Bounds height=\"750.0\" width=\"600.0\" x=\"0.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E7E2022F-6D1F-454F-812B-28C8EB8CF167\" id=\"BPMNShape_sid-E7E2022F-6D1F-454F-812B-28C8EB8CF167\">\n        <omgdc:Bounds height=\"250.0\" width=\"570.0\" x=\"30.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-D4A12E88-D084-4D15-811E-5780A39ED41D\" id=\"BPMNShape_sid-D4A12E88-D084-4D15-811E-5780A39ED41D\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"132.0\" y=\"546.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\" id=\"BPMNShape_sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"182.0\" y=\"521.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E4C6D9E2-1303-4BF3-80BA-47AAF5717F24\" id=\"BPMNShape_sid-E4C6D9E2-1303-4BF3-80BA-47AAF5717F24\">\n        <omgdc:Bounds height=\"250.0\" width=\"570.0\" x=\"30.0\" y=\"680.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\" id=\"BPMNShape_sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"182.0\" y=\"765.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6696D23F-6FAA-4613-B8DE-D4AC0095F89F\" id=\"BPMNShape_sid-6696D23F-6FAA-4613-B8DE-D4AC0095F89F\">\n        <omgdc:Bounds height=\"250.0\" width=\"570.0\" x=\"30.0\" y=\"930.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\" id=\"BPMNShape_sid-5C232078-1245-473C-957A-555A5B3D3DB5\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"250.00000000000006\" y=\"990.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\" id=\"BPMNShape_sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"423.0\" y=\"1010.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\" id=\"BPMNShape_sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"367.1058900173306\" y=\"1066.9104539426992\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-0427E532-515F-407A-9388-0159D26B99BE\" id=\"BPMNShape_sid-0427E532-515F-407A-9388-0159D26B99BE\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"512.1058900173306\" y=\"1124.0378175388792\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3889AA74-4FCD-450B-B866-3554146C5FB7\" id=\"BPMNEdge_sid-3889AA74-4FCD-450B-B866-3554146C5FB7\">\n        <omgdi:waypoint x=\"162.0\" y=\"561.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"182.0\" y=\"561.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D\" id=\"BPMNEdge_sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D\">\n        <omgdi:waypoint x=\"467.1058900173306\" y=\"1106.9104539426992\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"489.6058900173306\" y=\"1106.9104539426992\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"489.6058900173306\" y=\"1138.0378175388792\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"512.1058900173306\" y=\"1138.0378175388792\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-AB330927-1FEE-4C77-82A4-168DEED8F795\" id=\"BPMNEdge_sid-AB330927-1FEE-4C77-82A4-168DEED8F795\">\n        <omgdi:waypoint x=\"232.0\" y=\"601.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"232.0\" y=\"765.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB\" id=\"BPMNEdge_sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB\">\n        <omgdi:waypoint x=\"350.00000000000006\" y=\"1030.1742160278745\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"423.4300699300699\" y=\"1030.43006993007\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755\" id=\"BPMNEdge_sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755\">\n        <omgdi:waypoint x=\"443.5\" y=\"1010.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"443.5\" y=\"549.0040427739581\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"282.0\" y=\"549.0040427739581\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2\" id=\"BPMNEdge_sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2\">\n        <omgdi:waypoint x=\"438.3651871133211\" y=\"1045.365187113321\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"430.9229051616\" y=\"1066.9104539426992\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-DCDB11C0-417A-4557-8F97-9E0630408470\" id=\"BPMNEdge_sid-DCDB11C0-417A-4557-8F97-9E0630408470\">\n        <omgdi:waypoint x=\"244.0888888888889\" y=\"845.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"287.91111111111115\" y=\"990.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('10020',1,'Test.Test.png','10018','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0b\0\0¶\0\0\0çˇ\«~\0\0D[IDATx\⁄\Ï\›úúu}\ËˇI∑Ñõ\«RT¥U™ä§mä\rM¬©8y26ç*ë[è\’ ±\ƒKE´æ¸E$íj(U\√Ec.ê4û$ê`@H\“\‹ hÆ@àIL\».>ˇ\ﬂo2ª]ˆ:{ôgw≥\Ô˜\Îı}\Õ\Ó\Ãdwxfü˝}xfv&ó\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0®î\‘cå1\∆t˘îb\›Ä\0\0á\ÍÅ.!\0 ƒÑ\0 ƒÑ\0Ä\0bB\0@à\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\01\0\0!&\ƒ\0\0!&\ƒ\0\0Ñò\0Ñò\0b\0\0BLà\01\0\0!&\ƒ\0\0Ñ\0Äb\0\0B\0@à	1\0\0!\0 ƒÑ\0 ƒÑ\0Äb\0Äb\0\0B\0@à	1\0\0!\0 ƒÑ\0Ä\0bB\0@à\01!\0 \ƒ\0\0Ñò\0Ñò\0bB\0bB\0@à\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\01\0\0!&\ƒ\0\0Ñ\0Äb\0Äb\0\0BLà\0BLà\01\0\0!&\ƒ\0\0Ñ\0Äb\0\0B\0@à	1\0\0!\0 ƒÑ\0Ä\0bB\0bB\0@à	1\0@à	1\0\0!\0 ƒÑ\0Ä\0bB\0@à\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\0BLà\01!\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\01\0\0!&\ƒ\0\0Ñ\0Äb\0\0Briöx\Êôg~∞|˘Ú}ã-J,X`2ûÖæ≤xÒ\‚\Â\·\„Û¸DBLà—á¨[∑\Óéià±tˇ˛˝\È\À/øl2û∏\›7lÿê>¸\√˚\ƒ ƒÑ}»í%Kj6o\ﬁ,àz¿¨]ªvG±˝TBLà\—Gƒá\∆jjjÑP92\Óè\›~*!&\ƒ\ËC!&Çz\Œ\ƒ˚\√O% ƒÑB\ÏıGkˆ\ÏH7=vW∫\Ê°/\'~\œOB@àACl\ﬂ\Óm\È\ÍyüKü¸Ÿß^7ÒºxôÄb\0B*b[\÷<\–$\¬\Íf\Îöîb•\Îıs\“\’!∂v\—W[±xôÄb\0B\Ï\‡ı>\Ê(˜)]b´Lm1\ƒ\‚eJà±É\◊kn@à	1\0!&\ƒ\Ëç!ˇJ≤•ãó	(! ƒ†B!∂q\ÈÙC,^&†ÑÄsDå\nÖÿÆmO•´\Á\ﬂ\‘Ùa\…p^ºL@	1\0!&ƒ®Pà\≈yˆów7	±xûxb\0B¨©£\√\\!\ƒ\Ëí´≠M7.˚V”á%\√yÒ2%\ƒ\0ÑXSg1:bÒïÛ7,Ωµ\≈\Áà\≈Àº∫æbØ˜ZòWKßÒÛ\Ó_:bµµÈéç\”Us?\€bÑ\’MºNºÆ£cB†ØáX\√\Ÿf¨˚óˆÜX[G¡b\0B*b\Âk\ÌËò†b\0}1ƒÜ\∆u5L≠à£3!\÷\—´A%\ƒ\0˙bà›ük˙í~©\”\Ó3B@àµˇ˚\Ó…Ω˛/%\„õø\Ê˛Eà	1\0!V˘¯|òãK\◊\Ê\Îa~\„˛Eà	1\0!V˘¯ù\\”øú¸Ü˚!&\ƒ\0ÑX\Âo\‡qa\Ó≥3\Ãaæfê˚∑{=ˆ\ÿc\√gÕöı\„Ø}\ÌkøæÒ\∆˜^{ÌµØ\\}ı’øß/˝\”?˝\”Ûüˇ¸\Á˝\Á˛\Á´Û˘¸1B\Ã1@àı\ﬁ£ß¸D•\ÈÄ˘Û\ÁO˚\‚øXÛw˜w\È7ø˘\ÕÙ°áJ◊¨Yìn€∂-}\·Ö\“Õõ7ß´V≠J\ÁÕõó\ﬁ|Û\Õiuuı´7\‹p√ä$I\ŒbB@àıéK\À2¥d…í´BX\Ìˇ\‰\'?ô.^º8}\ÂïW\“r\‘\‘‘§s\Ê\ÃI\'Oû¸J¯∑sÚ˘¸\…BLàA7\Ëg ƒÑXØ4oﬁº\Ô_u\’U\ÈO˙”≤¨±ó^z)˝\·¯\⁄ƒâwVUUΩWà	1(7†Fè}l¯ü∏Sì$yWòÛ\¬\\4v\ÏÿèÖô\Ê˙07\nÖoÑ\”\ÔÜ\”{\√\Âs\√«èÑè◊Ñ\”-\·Ùw\·4c±é}\ﬂxΩqañfú\À\ËJ\”?˘\…O~#,>¸\ÿñ-[ñÜ\€~)˛çb\⁄∆è?\Ë≤\À.{S°wÜˇ;wÃò1>æ4Ñ\“\ƒ0◊Ü˘\Á0_øæ\Ê\ﬂ\√¸<\Ã\“0´\¬l≥\'Ã´aˆÖ\Ÿ\Z\Êø\¬<\Zf^òˇsg¯˜\ﬂßS\√\È\r\·k<ú\Ê\√˜˙p¯¯Üx;c‹∏qC\√W\n1b¯æ\»|o…£K3∂t6w\Ó\‹~\‚üHw\Ïÿëv•\r6§ó_~˘ûJbBåé5j\‘¿¯4Ç5\Êú0Û∑!n.ß◊Ñ˘?\·\„\rß\ﬂß≥\¬ı~>^Nü\nßøÛ\€R@\≈ˇ\È\⁄Æ≥.ú.ß\¬\Èè\√\È˜\¬¸\·\„/Ñ˘\ﬂa&á	ˇ<Nœè\œ)\r\ﬂˇ¥0\«Où:µW¸7	1ÑX«ø\Ôä\\”á%uˇV÷í%KÆü<yr∫n›∫¥ñ.]˙\ÍÑ	vT\Í9cB¨wÖ\ÿ\·\√dÒêı°Æ∫∫˙®Ò\„«ü∂\Âá6fÃòø\nQsIò	a¶Ñ˘l8˝j8˝VòÑ˘iò_Ñ˘Uòg\√\Ï\nÛ˚0\¬<f}ò\«\¬<\Ê\'afÑK8˝b8˝Tà©+\√\È\ÿΩ._\ÊO\√\«oÛÜ∞o÷ì∂çCàu¸˚æ5wmévó\Êæ0oqˇVéI”£n∫È¶ó\„_DV\“˜æ˜Ω¯ã˛.!÷∑C¨t¥%>ıÛæ∫œÖh9\"Ãê5o\€\·}aÜá\¬\Ê≤pzu8˝ß07á\ÀoßˇN\Áˇg8}\"ú>fgòW\¬‘Ñy>\Ã\∆0+\√uÜ\”˚\¬\‹\Ê\÷0ˇ\Ê\”aÆ\nS˛˝\»p˙\Á\·Ù=\·˚ø5¸\œ\—cä\€Xà!\ƒz\Œ˜•\r?ˇ˘\œg\ﬁp\√\rÈ´ØæZ\—ãO\‡èQV\‚•-ÑX\œ±∞ø=,é\∆≤4ãz€ær\≈W\„%FL<¢7fÃòøàqf\\òø/Eœó\√L/\≈På¢E1íJ±ÙBò\⁄0/ób\Í\È0èó\"+\∆\÷\ÃR|\≈˚L8˝Då≥0£\¬¸eå∂}Oé1Á∑óCàU\‚VÖŸûÛWìô\r˚\Ãg>Û\Ícè=ñfaˆ\Ï\ŸÒ®\ÿ±æb\’\’\’\'Ñ˚¸k•á¿\Í\",çGw≤˙9/=˙Ü}\ﬂNã´\≈? )teòÛ•¯0\\8˝~8ù]zx.>L∑°Ù∞›Å\“Q®\√lä\ÔÖ\Î..\≈e|\ÿ\Ôˆ0_)=&,=\\xv\—¯0\‚à#éÙõGà!\ƒzÚ\r|.\Á\Â+2≥p\·\¬	Ò	˙YâØ3ØΩ\Âæ\\\Ày.QO\r±∫üﬂæb1~b‰îé¸§\ÕÃ≥m›ØÒâ\€1\‰\‚π\„ë\‘5(=¡;	sE\Èâ\ﬂÒ	\‡\”\‚\√\ﬁÒâ\·a\n≥¢ÙÑÒa^*E\‡oKO,2\Ãˇ+=\·¸á\·Ùˇ\∆\'¢á\”\√\È\'KOPèOTø0>q=>Å=||R∏\rG˚ç!ƒ†/ÑXºﬁ∞0˝›ßï˜Ω\Ô}o\Ÿwø˚\›4K7\‹p\√˙¯\'\Ì\Â˛2-=i5\»*b-¸OÅkcæˇ˝Ôß•\◊tJ[ô}•ó\"à/I£p:øÙRk\√l+ΩÑ¡´•ó4¯M\ÈyeÒ•ÊÑπßÙÒH\€\Á\‚K#Ñ\”\Íp˙\—¯í	\·Ù\œB8Ω#æîB|I{∫!÷æõú;¯\“T\ÿ‘©S˜<˛¯„ôÜ\ÿ=˜\‹üÛ≠ˆÑX[AV\ÈÛpc˘S[[#,m¸PdsÆw]8˝ª¯bù\·\„Ö\”˜\«ÒßßîéözANÑB¨B\ÃCìπ\Êök~\ﬂ’Ø÷ñ+V¨äØ/‘ëk)»∫3\ƒ\ÍÆs\Ï±«¶\Áü~∫d…íˇ}sG\÷^|Ò\≈¯ñP\ÈI\'ùî¸Ò\È®Q£\“Mõ6ï}õ\⁄˙Ò\ÎŒú9≥˛Úˆ~øé\Ã¸˘Ûã˚l|8±Ù\“	5\Õ›èˆ@ÑBLàıi\’\’\’\≈\Áme\È\Ÿgüç;≠\ÍLà5≤û\–d|ÛÛx\Ÿgú\—f$\›~˚\Ì\≈#GÒºâ\'œõ={vÒù\‚\«^xa´∑©ˇ˛m~è\È”ß\◊ΩìO>π˛Úˆ~øÆ¯´\…\“ˆ\„_nitæ\≈^àCàı∞H∂ø¨≤∂s\Á\Œ\ÌmV{ßªéàÕù;76lX:h–†˙\ÎñI{˜\Ó≠?o\‡¡MB\Ô\»#èlı6v\ÿam~è={ˆ#ªÒ\Â\Ì˝~]˘:b•\'_\Zü,/\ƒb±ûy\œ≥&\ÃkéàU\ﬁeó]ˆáéæ±w\'éà\≈Wı^€ô#bÒ•\‚K\‘]ØªB\Ï\‘SO-^æt\È\“b\\\Â\ |ÿ∞\·\◊2dHÒº≠[∑ñ}õ\Íb/\∆V{øg{ø_•\ﬁ\‚(…åØáe/Dà!\ƒz\÷\r\\ñÛ\–df˛˛\Ôˇ˛\Â^x!\”{Ù\—Gˇ_π/\Ê\ŸVÄuwà\’EÕä+\“i”¶u(\ƒ&MöT<\Ô∫\ÎÆ{›ë≤ñ&>∑+^?l\«\‚Cú\Ì˝û\Ì˝~\ﬁk!}+\ƒˆÖyG\È˙GÖô\"\ƒ*\Á”ü˛Ù∂\'ü|2\”õ1c∆É!¶\ÓhOàµ`\›b≥f\Õ*>ˇ*\◊\¬s\»\ 	±]ªv•S¶LIáZ<\“\’\÷˜å/\rq\‚â\'v¯{∂˜˚	1ÑÙ≠´ª\ﬁKπÉØ\'v∂´ú\œ˛Ûˇd\ZbW\\q≈Ç¯ñ0\Â‹æ∂¨\“!fÑB˙jà=\ﬁ\‡ˇˆ∑ª+vD\Ï¸kØΩˆYEXX§∑Ü∞\⁄\›\’\œ\rbBÑB¨kø\ÔEa∂Ñy>Ã•\Ó\ﬂ πÚ\ +w≠Y≥&ìªÎÆª\‚{Ú˝º´ˇÑò!Ü\Îö\Ô˚±0\€rû¨üô´Æ∫jÚç7\ﬁ¯˚éÜ=](~\ﬂpπ∑ÜXÆΩ\“~w\ﬁV!ÜCàı\ﬁ€íÛWì\›qTl\ÎÚ\Â\À+\Zb_˛Úóø_Äµ∑_à	1b±Æ˘æØÑ9\”˝ô≠H\ÁUWW\◊l€∂≠\"ˆ\–C\›~1\Ó\»\ÁÛobBÑB¨g˚xòÅ\Ó\”lMú8Ò\„W_}u\Õ\Ô~˜ª.ç∞Mõ6˝<FXòV\Í∂W*\ƒ6lÿêû{\Óπiø~˝ö}©à∂ﬁ∑1\◊\Ë\»\Ó¿Å”≥\Œ:+=\Ì¥\”\“#é8¢¯˜\ﬁ{oªﬁ∑2\◊\¬{Hvˆ∂\n1Ñ±Ë©úá&ª\Õ¯Ò\„øx\’UW\Ì\Ì™#cã/ûQz¡Iïº›ï\n±+Ò\Á/œå3ö\ƒM[\Ô\€Xw˝\€nª≠¯¢Ø\r?_πreÒ\„SN9•]\Ô[\Ÿ\“{Hvˆ∂\n1Ñ±®VàuØB°p˘Ñ	ˆ?Ú\»#˚;\Z`Øæ˙\Íéi”¶\›~Ó¨™™˙p•os•B\ÏÑN®\ﬂ\∆›ªw∑˚}s\r\ﬁ˜Ò¿Åıü«Ø\’¯\·\√rﬂ∑≤•˜ê\Ï\Ïmb1bu\◊{Oò\√‹ß\›\'>g,\‘S\◊^{\Ìˆ’´Wø‹é\€}\ﬂ}˜\Õ\n1∑.æçQ8}g∑∑ªB¨≠˜mÃµ\„U\Ô;˚æïùΩ≠B!B¨\Ózì\√\Ì>\ÌA6.\ƒ\‘˙\Í\Í\Í\Ì”¶M[µb≈äßü{\Óπ\Í\ﬁ(¸¿Å[7o\ﬁ¸\‘¸˘Û\Á\\˝ıÑ_~[\√<ñ\≈Q∞,Bl\‰»ë≠>\‹\◊\÷˚6∂\'¶:˚æïùΩ≠B!B¨\Ózö\ÏaBXΩ7DŸç!\ Ñ_pœÜ©)Ω\‰æ0„ã¥Ü\À˛°R\Ÿ]!∂~˝˙Ùús\ŒiÒ	mΩoc{>\Ô\Ï˚Vvˆ∂\n1Ñ1!Fè\n1#\ƒb\–\◊BÑò!Ü\Î¶84Æ´πÉ=)\‚bBÑB,\√xÆ\È√ëv(Ñò!Ü\À\‡\Ó	svÉ\Î\Ê5˜/BLàÅCàU˛>\Ê\‚\“ıáÑ˘zòﬂ∏bBÑB¨Ú7;π¶1˘\r˜/BLàÅCàU˛\Ê\Œ0;√º\Ê\€aπbBÑB,ÉBLàÅCàew\”2Ñò!Üb1#\ƒbp\ËÑX\„\Îç3∞4\„ÑBLàÅCàesˇ˜°0Gófl\È<bBÑB¨\¬7pEÆ\È√íè∫bBÑB¨Ú7≠πÉos¥ª4˜Öyã˚!&\ƒ@à!\ƒ2∏Å ƒÑ1ÑòCà!Ü!BLàÅCà	1Ñòb1b ƒÑ1ÑòCà!ÜCà	1˙nà\’\÷÷ä†0˚ˆ\Ì{$\‹˚¸T\"\ƒbBå>bÒ\‚\≈{∑m\€&Ñz¿¨\\πrf±~*b1!F±p\·\¬Bå=∑eÀñ\Á\Îû	\€}\œ˙ı\Î\ÁÃü?KË∞øÒSâCà	1˙ê\0Wá\0\ÿ¶\Ï≠è\ﬁ|˚√¨\ns©üFÑBLàÅ\≈\ÏK ƒÑX<¿æÑb`Ò\0˚1¿\‚ˆ%Ñòãÿó@àÅ\≈\√\‚ˆ%Ñòãÿó@àÅ\≈∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%b`Ò\0\ÏK1!∞/!ƒÑX<¿æBLàÅ\≈\ÏK1!∞/Å,`_Bà	1∞xÄ}	ÑX<\Ï\'`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_!¿æÑb`Ò\0˚BLàÅ\≈\ÏK ƒÑX<¿æÑb`Ò\0˚1¿\‚ˆ%Ñòãÿó@àÅ\≈\√V\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_!¿æÑb`Ò\0˚1∞x\0ˆ%ÑòãÿóbB,`_!&\ƒ¿\‚ˆ%Ñòãÿó@à∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%b`Ò\0\ÏK1!∞/Åã`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK1!∞/Åb`Ò\0˚BLàÅ\≈\ÏK \ƒ\0ãÿóbB,`_!¿æÑb`Ò\0˚1∞x\0ˆ%Ñòãÿó@àÅ\≈∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%Ñòãÿó@à	1∞xÄ}	!&\ƒ¿\‚ˆ%bÄ\≈\ÏK1!∞/Åã`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_Bà	1∞x\0ˆ%Ñòãÿób=-ƒå1≠LiÒ0\∆ÿóL\ÔG\ƒ¿ˇ\≈ˆ%b`Ò\0˚BLàÅ\≈\ÏK \ƒ\0ãÿóbB,`_!X<¿æÑb`Ò\0˚1∞x\0ˆ%Ñòãÿó@àÅ\≈∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%Ñòãÿó\ÏK1!∞/!ƒÑX<¿æB∞xÄ}	!&\ƒ¿\‚ˆ%bÄ\≈\ÏK1!∞/Åã`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_Bà	1∞xÄ}…æÑb`Ò\0˚BLàÅ\≈\ÏK \ƒ\0ãÿóbB,`_!X<¿æÑb`Ò\0˚1∞x\0ˆ%Ñòãÿó@àÅ\≈∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%Ñòãÿó\ÏK1!∞/!ƒÑX<¿æB∞xÄ}	!&\ƒ¿\‚ˆ%bÄ\≈\ÏK1!∞/Åã`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_Bà	1∞xÄ}\…V@à	1∞xÄ}	!&\ƒ¿\‚ˆ%bÄ\≈\ÏK1!∞/Å,`_Bà	1∞xÄ}	ÑX<\0˚BLàÅ\≈\ÏK \ƒ¿\‚ÿóbB,`_!¿æÑb`Ò\0˚BLàÅ\≈\ÏK ƒÑX<¿æÑb`Ò\0˚1¿\‚ˆ%Ñòãÿó@à∞/!ƒÑX<¿æB,Ä}	!&\ƒ¿\‚ˆ%bp\ËHí‰â∏X¥1ãl)b1!]bóîb\√m)b1!ïâ±\'\r!Üb\–=!vâ£a \ƒbB∫/∆ûp4ÑBLàA˜Ñ\ÿ%éÜÅCà	1\Ëæ{\¬\—0b1!\›bó8\ZB!&ƒ†˚b\Ï	ã1ÑòÉ\Ó	±K, \ƒbBå\ﬁ˜”ü¶ûy\Êô,_æ|ﬂ¢Eã\“òåg\·¬ÖØ,^ºxy¯¯<?ë1Ñò£Y∑n\›!\“c\È˛˝˚”ó_~\Ÿd<qªoÿ∞!}¯\·á˜â1ÑBLà—á,Y≤§fÛ\ÊÕÇ®\Ã⁄µkwÑ{\–O%B!&\ƒ\Ë#\‚Cc555B®á˜\«n?ï1Ñò£Öò\Í9\Ô?ï1ÑòCàΩ˛hÕû\È¶\«\ÓJ\◊<ÙÖ\‚ƒè\„y\‚Ià!\ƒ@àACl\ﬂ\Óm\È\ÍyüKü¸Ÿß^7ÒºxôÄb1bP°€≤\ÊÅ&V7[\◊<(†ÑBÑT*\ƒ\÷.˙jã!/PB!B*b´Lm1\ƒ\‚eJà!\ƒ@àÅb \ƒbBåC+\ƒ\‚_I∂bÒ2%\ƒb ƒ†B!∂q\ÈÙC,^&†ÑBÑT(\ƒvm{*]=ˇ¶¶KÜÛ\‚eJà!\ƒ@àAÖB,Œ≥øºªIà\≈ÛƒìCàÅÉJÜXmm∫qŸ∑ö>,Œãó	(!Ü!±¯\ ˘ñ\ﬁ\⁄\‚s\ƒ\‚e^]_à!\ƒ@àAWÜXmm∫c\„\¬t\’\‹œ∂auØØ\Î\ËòCàÅÉNÜX[G¡b1bP°+\Á(XkG\«ïCàÅÉÜXG#¨nïCàÅÉÜòb1bB!&\ƒ@à!\ƒzMà\rç\ÎjòZáb \ƒb\Ÿ\ﬁ¿˚K\◊MÖBLàÅCàe{˜Ñ9ª¡ıè\nÛö˚!&\ƒ@à!\ƒ*üsq\È˙C\¬|=\Ão‹ø1!B!V˘¯ù\‹?4Y7\ﬂpˇ\"ƒÑ1ÑX\Âo\‡qa\Ó≥3\Ãaæfê˚!&\ƒ@à!\ƒ*\”tõbFà!ƒ†Oá\ÿP!Üb \ƒbïΩÅi+≥\”˝ãb \ƒbŸá\ÿ\ﬁ07∏bBÑB¨Ú7\–ŒÉb \ƒb\›bßÖy\"\Ã\÷0vˇ\"ƒÑ1ÑXv!ˆç\‹?<π\ ˝Ko±∫ü\Âær[ÑB!\÷{C\Ïï0Û\Î0/\Áæ\›\—+\Ó_*bw\ﬂ}w}§ƒèÖòCàA_±u•ä\◊ˇI7\ﬂf˙Pàç1\"0`@q.æ¯b!&\ƒb\–\'C\Ïos\ﬂo2>7\Ï}Bå,Bl˚ˆ\Ì\È\·áû~¯\√N/∫\Ë¢\‚\«Òº\∆ÒR7\'ùtR:s\Ê\Ãf\Á\ÿcèM\œ?ˇ¸t…í%\Õ\∆\œ˚\ﬂˇ˛\‚\«3f\Ã(~˛£˝®¯˘\\P¸¸\ﬁ{\ÔMˇ\‰O˛§x\ZG”ã/æòNû<π¯˝è?˛¯t‘®Q\È¶MõZºù\ÂÜXk∑]à!ƒ†oÖ\ÿ/\¬|\ƒ˝Iñ!v\À-∑C\‰˚\ﬂˇ~1ê\‚«∑\ﬁzkìPô>}z∫lŸ≤\‚\«\'ü|r≥_k’™U\≈\À\œ8\„åf\„\Á?¯AÒ\„ë#G?ü8qbÒÛ|∞¯˘ê!Cä6gŒú&_ªÓ∫≥gœÆø^xaì\Ôs˚Ì∑ßµµµ\Ì>\"\÷\‹mb1\Ë[!V∑P¨siò~\Ó[*b¯¿\“cé9&›Ω{wq\‚\«Òº\∆Ò≤gœû¥¶¶¶I\ÃÃù;76lX:h–†˙\À˙˜\Ô\ﬂl¸8p =\Ì¥\”\“#è<2}\Óπ\ÁäG∑\ﬁ˜æ˜\’_˜îSN)^˜\Õo~sz˝ı◊ø\Óà\◊\‡¡Éõıä_ßÒ˜Ÿªwo\ŸM∂u€ÖB˙Và]\Êªavî˛\ÕÖôfÄ˚òJÑ\ÿ∆ç\”~˝˙5	úx\ﬁ\”O?\›lº4˛¸\‘SO-~æt\È\“bµu˝˝\◊-~~\ÂïWO\Ôπ\Áû˙Àñ/_ûé=∫˛°\…˜º\Á=ıó≈£eÒº≠[∑v¯˘_\ÌΩ\ÌB!}+\ƒ\Íº!\Ã\Ìa˛P˙∑√º\ﬂ˝LWáÿóæÙ•bx$IR^¸8û/+\'\ƒ\Íi≈ä\È¥i\”⁄º˛Œù;ã\œ«ä±˜\Œwæ≥Ÿá}Ù\—\‚øy”õ\ﬁTﬁ§Iìä\Á]w\›u\Õı\ÍHàµu€ÖB˙VàçÛ@\Ó\‡KW\ƒÛªRê=\Ê7\Óg∫:\ƒ\ﬁ˝\Ów\√\„˛˚\ÔØ?/~\œ;Û\Ã3\À\n±Y≥fü3ñk\·\…Ú\Õ\≈M\›—∞;Ôº≥\ŸPäG\ƒ\ﬁıÆw•<@˝eªv\ÌJßLôí:¥¯a9ﬂß≠k\Î∂1ÑÙ≠´[~ù;¯ì«ï\Œ?&\ÁØ\'©@àu\«ƒ†z\Ô{ﬂõæ\ÌmoK_z\È%Ø¨B!\÷cn\‡#a∆Ñ9¨ô\À<Oå^b1º\‚˛èj˝\‚øG \ƒb\›~\”2ô#b\ﬁkÑBLà!\ƒzÒ+\‰˜\‰\€*\ƒb±\ﬁb ƒÑ1ÑX∏Å\ÁÖY\Ê5G\ƒbBÑB,\€∏,\Á°IzHàmÿ∞!=˜\‹sõº\‡kG\ﬂ˚q\‡¿Å\ÈYgùU|e˝#é8¢¯Ñ˝¯ﬁí\Ìyø\ \\\Ôw\Ÿ\Ÿ\€*\ƒb ƒ¢}a\ﬁQ∫˛Qa¶1∫+\ƒb¨ƒüø<u\ÔA\Ÿ0n\ }\Ô\«\€nª≠¯Ç©\r?_πreÒ\„¯ñF\Ìyø ñ\ﬁÔ≤≥∑Uà!\ƒ@à5º\ﬁKaÜÖ9[à\—]!v\¬	\'‘ø\«d|\ \∆qS\Ó{?\∆\ﬂc≤\ÓÛ¯µ\Z?|X\Ó˚U∂Ù~óùΩ≠B!B¨\·ıo∞`lwˇ\“C¨Ω\Ô˝\ÿ\⁄\Á\Ì}ø\ ˆÜX[∑Uà!\ƒ@à5tQò-aûs©˚ó\Ó±ë#G∂˙p_{\ﬂ˚±µ\œ\€˚~ïç?\Ô\Ïmb1b–£Bl˝˙ı\È9\Áú\”\‚\‡\€˚ﬁè≠}\ﬁ\ﬁ˜´l¸ygo´CàÅã™räÙWìt{à!ÜÉæb\œ\Âº|BLàÅCàu\À\rå◊ã-\Ÿ\ﬂ}äb \ƒbŸá\ÿ\‰0GªObBÑB,˚Û\–$BLàÅCà	1Ñòb1\Ë;!BLàÅCàu\”\r</Ãö0Ø9\"Üb \ƒb\Ÿ\ﬁ¿e9M\"ƒÑ1ÑX∑\‹¿}a\ﬁQ∫˛Qa¶1Ñò!Ü\À\Ê\÷]\Ô•\‹¡\◊;[à!ƒÑ1ÑX∂!ˆx\Óøñ\‹\Ó˛Eà	1b±n`\…Ea∂Ñy>Ã•\Ó_Ñò!Ü\À.\ƒ@à	1b1!Ü3B!BÑò!Üb1#\ƒb \ƒ@à	1b1!Ü3B!Üb1#\ƒb ƒÑBLàÅCà	1Ò´≠≠A=`ˆ\Ì\€˜H∏?ˆ˘©Dà!ƒÑ}\ƒ\‚≈ã˜n€∂MıÄYπr\Â\Ãb¸T\"\ƒbBå>b\·¬Ö7Ñ{nÀñ-\œ˜•#c˚˜\Ô\Ô1∑%l˜=\Î◊Øü3˛¸-°\√˛\∆O%B!&\ƒ\ËCB\0\\`c|ò≤/\Ã‹πs\”\Í\Í\ÍtŒú9=\Èv≠\n\„Ωab1!áæ$I\Ê\n\·B!&\ƒ k!\¬>ú∂1ÑòÉ\Ïõ?\n≥s\Í‘©˝m\rb1!Kí\‰âB°pÅ-B!&\ƒ c!\¬>bÏ´∂1ÑòÉåUUU\rã\ŒZ[ÑBLàAˆ˙ÖEg[≤?∂)@à!ƒÑd,Iíˇ[(˛¡ñ\0!Übê±™™™ã\√\¬Ûü∂1ÑòÉåUWWû=˘|˛\ÿ\Z \ƒbB2ñ$\…\ÏB°pô-B!&\ƒ ˚õü∑%@à!ƒÑdl¸¯Ò\'Ü\€}\≈Wnk ƒÑBLàAˆãœ≤B°![˚ÇCà	1\»Xí$ü	sã-Åb1!+\n\Ô–Øm	ÑòCà	1\Ëû\ËôdjK \ƒ@à	1\»Xí$\ﬂs£-Å!&\ƒ cc∆å˘´∞-∑%b ƒÑdl¯\·\¬\"¥+üœülk \ƒ@à	1\»~˙a°P¯∏-Å!&\ƒ cIíå\rÛÄ-Å!&\ƒ c\’\’\’\'ÑÖho>ü?\⁄\÷@àÅbê˝BÙp°PeK \ƒ@à	1\»Xí$◊Üπ√ñ@àÅbê±™™™\”\√b¥#|\ÿ\œ\÷@àÅ≥S@ˆã\—\Í0\Ô∑%b \ƒ\Ïê˝bÙ\ÂB°%[!B\ÃNˆ?ì$y ñ@àÅ≥S@∆¶Nù\⁄?,Hœáyã≠Å!dø \›Y(>iK \ƒ@àˆø\¬,∞%b ƒÄåç\Z5j`|ï˝q\„\∆gk \ƒ@à\Ÿ/J?-\ncl	Ñ1 c!¬ÆÛo∂BÑê˝¢tJòá>¿\÷@àÅ≤_ò+\niK \ƒ@à\Ÿ/Lü!ˆ\r[!B\»XUU\’{\√\‚¥—ñ@àÅ∫gq\⁄\\(\ﬁiK \ƒ@à\Ÿ/N\”Cà˝£-Å!d¨™™\Í\√aÅZbK \ƒ@à\À\ÁÛGÑjO°Plk \ƒ@à\Ÿ/PˇB\Ïr[!B\»Xí$\¬\"ıc[!B\»ÿÑ	\ﬁû1bƒë∂BÑê˝\"ıãB°[!B\»Xí$ü\n\’\Ì∂BÑê±|>ˇé∞Pm±%b ƒÄ\ÓY®÷áyü-Å!d,IíØá\≈\Í&[!B\»ÿò1c˛\",V+m	Ñ1 c˘|˛∞∞XΩNOµ5b ƒÄ\Ï´ôaÆ≤%b ƒÄå%Ií\÷[!B\»\ÿ\Ë—£è\r\÷\ﬁÒ\„\«≤5b ƒÄ\Ï¨˘a˛÷ñ@àÅ2ñ$…î∞h\›eK \ƒ@à´™™zsX¥ûü:uj[!B\»~\—˙UòÛm	Ñ1 ˚E\ÎãaæbK \ƒ@àKí\‰\œ\nÖ\¬\Z[!B\»^ø∞pmAˆ6õ!B\»~\·˙Nò\Îm	Ñ1 cIíå,\nm	Ñ1 c˘|˛\Ë¯*˚UUUo∞5b ƒÄ\ÏØ˚\√T\Ÿ1b@ˆã◊§0˜\ÿ1b@\∆\nÖ\¬Ia˚\ÌW\\q∏≠Å!døÄ=\ZÊÉ∂BÑê˝ˆ\Ÿ0\”l	Ñ1 cIíú±M∂BÑ\–=ãÿ¶d∂BÑê˝\"6->DiK \ƒ@à\Ÿ/bÛà-Å!d,æ|E|ã¯r∂BÑê˝BvO|ÅW[!B\»~!´\nsü-Å!d,æ˘w|\Í\Í\Í£l\rÑ1 ˚\≈lQí$#m	Ñ1 ˚\≈\Ï˙0ﬂ∂%b ƒÄå\ÂÛ˘∑ám{¯∞ü≠Å!dø†˝Wí$fK \ƒ@à\Ÿ/h_	Û[!Ω?ƒå1Ωlú~\‰#±-LØöRàìı8\"t≠©Sßˆã\⁄˘|˛4[Gƒ†wz\Á¢vWò´m	Ñ1 ˚E\Ìo\√Ã≥%b ƒÄåç?~P|ï˝—£Gkk \ƒ@à\Ÿ/lsí$\…\€1b@ˆ\€Ua\Ó∂%b ƒÄåç7nhX\‹^\Ã\ÁÛá\Ÿ\Z1b@ˆã\€\ 1c\∆¸Ö-Å!dø∏\›\Êk∂BÑê±$I\Œ\‹z[!B\ËûnK>üá-Å!dø¿\›\Ê\€1b@∆í$π_\ÿ1b@\∆FåqdX\‰ˆLò0·ç∂BÑê˝\"˜\„0\„m	Ñ1 cÖB\·Ú∞\–˝á-Å!d,ü\œIídw8=\¬\÷@àÅ≤_ËñÑª»ñ@àÅ2V(˛1,v\”m	Ñ1 cIíº+,vø±%b ƒÄ\ÓY\Ï6Ü {è-Å!d¨P(|#,xü≥%b ƒÄ\Ïª\·a≥%b ƒÄå\r>|@XvÖ9\≈\÷@à!ƒÑê±B°oa—ª¬ñ@à!ƒÑê˝ÇóÑ˘©-ÅCà	1 c˘|˛¯∞\Ë\Ì5j\‘@[!Üb@\∆\nÖ¬Ç$I.±%b1!dø\Ë]\ÊN[!Üb@ˆã\ﬁ[\¬<7u\Í\‘˛∂B!&ƒÄå%IÚTòÛl	ÑBLà\Ÿ/|ˇ\ÊÀ∂B!&ƒÄ\Ïæ˜áYmK \ƒbB\»^ø∞¯\Ì\»\ÁÛoµ)b1!dø¯}7Iíkm	ÑBLà\Ÿ/~£\√<lK \ƒbB\»X|u˝¯*˚Ò\’ˆm\rÑBLàKí\‰Å0cm	ÑBLà\Ÿ/Äì\√¸–ñ@à!ƒÑê±\À.ª\ÏMa\‹5|¯∂B!&ƒÄ\Ï¡\Âc∆å˘+[!Üb@ˆã\‡ˇIí‰õ∂B!&ƒÄå\nÖ?\r\·”∂B!&ƒÄ\ÓYù\œ\Áœ∞%b1!døﬁö$\…gl	ÑBLà+\n\nã\·2[!Üb@\∆Ú˘¸Ií\Ï?~¸â∂B!&ƒÄå\nÖ{CåM¥%b1!dbóÖõ_\‹5,å\√\„KZÑ\”o\Ÿ21Ñò*(ü\œ\¬\Î ∞ æN˜ƒÖ1é\◊Cà!ƒÑPô¯z{≠kÖ¬Ç∞˛æ.æ\ZN∏\ÏJ[\n!Üb@ëuAX\0˜5`\réàùgK!\ƒbB®Lå]\⁄\“—∞8\’\’\’\'\ÿJ1Ñò≤è±-∂B!&ƒÄ\ /Ñìö	±mÑBLààO\‹ob_≥Ub1!d∑ ~∫Aà]oã \ƒbB\»P\ÈÖ\\cà}\≈\÷@à!ƒÑê˝\¬¯`ò˘∂B!&\ƒ\‡\–˛mê¶ûy\Êô,_æ|ﬂ¢Eã\“òåg\·¬ÖØ,^ºxy¯\ÿ\Î¶	1ÑòÉæd›∫uwÑHCå•˚˜\ÔO_~˘eìÒ\ƒ\Ìæa√ÜÙ\·á\ﬁ\'∆ÑBLàA≤d…íöÕõ7¢0k◊Æ\›B\Ã\Àv1ÑòÉæ\">4VSS#Ñz»ë±p\ÏˆS)\ƒbB˙Pàâ†û3Ò˛S)\ƒbBÑ\ÿ\Îè\÷\ÏŸënz\ÏÆt\ÕC_(N¸8û\'ûÑò!T0\ƒˆ\ÌﬁñÆû˜πÙ…ü}\Íuœãó	(!&\ƒ@à\n±-khau≥uÕÉJà	1b@•BlÌ¢Ø∂bÒ2%ƒÑ1†B!∂z¡\‘C,^&†Ñò!1!ÜCà	18¥B,˛ïdK!/PBLàÅ*bóNo1\ƒ\‚eJà	1b@ÖBl◊∂ß\“\’Ûoj˙∞d8/^&†Ñò!T(\ƒ\‚<˚ÀªõÑX<O<	1!B®dà\’÷¶ó}´\È√í\·ºxôÄbBÑPÅãØúøa\È≠->G,^\Ê\’ıÖò!teà\’÷¶;6.LW\Õ˝lãV7Ò:Ò∫éé	1!B\Ëdàµu\Ã\—1!&\ƒ@à\n±réÇµvtLP	1!B\Ë`àu4\¬\ÍFP	±^\‰ÇRàΩ”¶@à	1\Ë!fÑX_â∞0;\¬\‹fãCà	1bB\Ã\Ôøl#\ÏÇ\“Áóä1Ñò!&\ƒ¸˛\À>\¬rb!&\ƒ@à!\÷}&\∆bBÑòb\›ab!&\ƒ@à	1∫1\¬\ƒBLàÅbtcÑâ1Ñò˚Ñò£#Lå!\ƒ\0!&\ƒ\Ë\∆c1@à	1∫1\¬\ƒBbBåNDXø0óóN€£Òøc1@à	1\⁄awñ÷ï;\€c-˝;1ÜÑò£åÀïéh•\r¶úkau3°¡\Âb!1!F\÷RTµc\Õ]ˇª\Õ\\_å!ƒÄC3\ƒ\Í¿ñ>o\Î˙ï∏\rB¨Úí$ô]UUı\ﬁ.å∞ˆ\∆Xπ&\∆b@\œ±wø˚\›\≈lﬁºyı\Á≈è\„ygûy¶b-\Z;vl\ZßùAV\Ó_G∂c\Ìç01Üz^à}\ÈK_*.b\◊\\sM˝yü¸\‰\'ã\Á\≈\À*AB\Ï\–\n±vY{_¢¢•\Î\ﬂ¡c1†gÖ\ÿ∆ç\”~˝˙•o{\€\€\Í\œ;˝Ù”ã\Á=˝Ù\”MB\Á\ÿcèM\œ?ˇ¸t…í%e€∞aCz\Óπ\Áøf\√≈≥\ÓÚ_|1ù<yrz\“I\'•\«|:j‘®t”¶MMæ^k±\’\‹e≠\›f!\÷ı!\÷FêuÙu¬öã±ıùà01ÜzNà\≈˘¿>P\\–ûz\Í©Ù\…\'ü,~\œkÓ∫´V≠*^~\∆gîb1¨\‚\Á3g\ŒLgÃò\—\‰Úâ\'?ü={v∫lŸ≤\‚\«^xaìØw˚Ì∑ßµµµ\Ì>\"\÷\‹mbï±fÇ¨≥/\÷\⁄\\åu&\¬\ƒB\Ë9!v\À-∑µØ|\Â+\È\Õ7\ﬂ\\¸¯\÷[o≠ø|\Ó‹π\È∞a\√\“AÉ\’/Ä˝˚˜/;\ƒN8\·Ñ\‚\Á{ˆ\ÏIw\Ô\ﬁ\›\‰Ú¡É7Y`è<Ú\»&_o\ÔﬁΩe?4\Ÿ\÷m\Ó™i+F˙˙|Ù£Mè8‚à∏˝/\Ô\‰è~ˇféÑ≠/ù\ﬂ7Ö\ŸfÄ\ﬂ.1†[Bl˚ˆ\Ì\È\·áû˛˘üˇyz¡?é\Á\’]~Í©ßæ•Kóc®≠joà\r2§¯˘÷≠[;¸¸Ø\∆\◊i\Î6;\"Vπ#bIí<\Êí.<Ú\‘\⁄±ˆº\Ëkc]˝∂J1!B¨c3bƒàÙ∞\√+\Œ\≈_¸∫\À\ÍBi≈ä\È¥i\”\⁄b#Gélı°\…Iì&?ø\Ó∫\Îö=\Í’ëk\Î6±Æ±f,\◊1V\Œs\ƒ:c\"!Ùúª˚\Óª\Î∂¯q\√\ÀfÕöïû|Ú\…->iæ≠\œ◊Ø_üûs\Œ9->Y◊Æ]\Èî)S“°Cá>ÃµÛ\Â0öªN[∑Yàu]àµ`ùâ±ñ^¢¢πøölOåâ0Ñ–≥B\Ã±ˆjGÄu$\∆\⁄zù∞ˆæøCàBLàQFåï˚b≠\Ìç1ÜÑò£ïk\Ô+\Êóc\"!Ùû\Àu\”+\’˜∂\€*ƒ∫<\∆.œµˇu¬öã±	\"!\÷¸ı˙π?Aà	1Zà±ÜQ’ûkm\Èﬂâ0ÑX£\Î}<\ÃQ\ÓSbBåVblB˛«ΩÒøa±fÆ\◊\‹\0\›b]˝~êL\œ:\Î¨Ù¥\”N+æ≤z|iä{ÔΩ∑]\Ô]Y7Ò{\∆\◊ \Î™\€*\ƒzEåuñCà	1\Ë=!\÷U\Ôy\€m∑_Dµ\·\Á+WÆ,~|\ )ß¥\ÎΩ+ßOü^ˇΩ\‚kÇu\’mbá|åâ0Ñ–ªB¨´\ﬁ2˛˚\‘øV\„á\À}\Ô\ ¯µjjj∫¸Ω+Ö\ÿ!c\"!\Êàz!\÷\ﬁ˜Él\ÌÛ\Ó~\ÔJ!v\»∆òCà	1\Ëù!\÷\’\Ô\Ÿ\⁄\Á\›˝ﬁïB¨˜\ƒÿ†AÉ˛TÑ!\ƒ*Û}èsÖÉûb]˝~ê≠}\ﬁ\›\Ô])\ƒzáaó}Ù£}≠åa±˛ª≥ÖÙå3B¨ßIíd\Ï\Ë—£ôk˝aJÜÀµ\Ô°\…\◊¬ºZ:MK; ƒÑØ3v\Ï\ÿ3)\◊Ús\∆DB¨!\÷p∂\«}\Õ˝BLà\—–à#éLídw°P\\:´qåâ0ÑX¯æ ƒå;Ö9v\Ï\ÿˇltv]å].\¬b˚æC\„:¶VƒÅb¥$DÿùaÆi\Ê¢cªEB¨c\ﬂ˜˛\\”ó¨KÑò£^>ü?,D\ÿ\ŒpzZW9¡VBàu\Ï˚\Ó…Ω˛/%\„õø\Ê˛!&\ƒhp4lxò\«l	ÑX\◊\ﬂ¿\Á\√\\\\∫˛ê0_Û˜/1!Fù$In	!ˆY[!\÷ı7;π¶9˘\r˜/1!FÉ#bõÖ\¬;m	ÑX\◊\ﬂ¿\„\¬\‹fgò\¬|;\Ã ˜/1!F\ÈhÿüÖ[kK \ƒ*t!&\ƒ(E\◊aæü(\r˚rò±ub]w\”2bB¨\ÔÖXå∞¥4;cò\nÖ-\·\„ÛmÑò!fÑXÖË∫≤Aà5ú}afÜ0ó\œÁè±•b]˜}\„ı∆ÖXöqBÑò\ÎõJ/Së∂2ø±v©-Ö\Î∫\Ô˚á\‹¡˜ñ<∫4cK\ÁBLàıΩ#bÉEB,\€∏\"\◊Ùa\…G›ø ƒÑX\ﬂ\ﬂ\ÿ[Ñ!ƒ≤ªÅo\Õ|õ£›•π/\Ã[‹ø ƒÑX\ﬂ¢\ÎëfBlí-É´\–\rÑò£Aà\›\’0¬í$π\÷VAàu\Ì\rl¯óë˛jÑò£^°P¯á∫3f\Ã?\ÿ\"1!B\Ã±å$IrI)\ƒ∑5b\‹@@à	±Fø@\”t¿3\œ<ÛÉ\ÂÀó\Ô[¥hQÒkölg\·¬ÖØ,^ºxy¯¯<øe8TèàyAW\Ë¢´≠≠A=`ˆ\Ì\€˜H∏?ˆuˆ>]∑n\›!\“c\È˛˝˚m\€nò∏\›7lÿê>¸\√˚\ƒBhQX∞˜n€∂\Õ\‚\Ÿf\Â ï3√¢Ω†≥˜\Èí%Kj6o\ﬁlõˆÄYªv\Ìépó>\Ë7\ráRà]h\·¬Ö7Ñ{nÀñ-\œ;2\÷=∂˚ûı\Î\◊œô?˛ñ∞hˇMWÂ¨©©±m{»ë±p\ÏˆõÜC5\ƒ\‚\·\ﬁ5a^sD:.¿\’a±\ÿ\Ëπ=\›:´\¬t…ãézﬁü?¿@àeuó\Â<4	–°€øgG∫È±ª\“5}°8Ò\„xûxb±røo|R\Î;J\◊?*\Ã!±∂Cl\ﬂ\Óm\È\ÍyüKü¸Ÿß^7ÒºxôÄb±ˆ\\\Ô•0\√¬ú-\ƒ\0!\÷vàmYÛ@ì´õ≠kPB!÷Æ\Î=û˚\Ôá%∑ª!\÷\∆_Û-˙jã!/PB!Vé7îN/\n≥%\ÃÛa.uˇB¨ı8XΩ`jã!/PB!Vé˝a¶áyª˚@à	1ÑX∂7\È\“u\„\ÀW\‹\Ê/‹∑Äk;\ƒ\‚_I∂bÒ2%\ƒb\Â\Ë&æ¯\·\‹0(˝ª_∫!\÷zl\\:Ω\≈ãó	(!ÜkØd˚r˛jbm\∆¡ÆmO•´\Á\ﬂ\‘Ùa\…p^ºL@	1ÑX9˙Öπ8\Ã\œ(?\ƒ\‚<˚ÀªõÑX<O<	1ÑXGû#vòøt\ﬂB¨å´≠M7.˚V”á%\√y/{\œQ!Ü+ÛzÒØ&oÛ\«\ÓSÄÚB,ær˛Ü•∑∂¯±xôW\◊b±rº¡}	Pfà\’÷¶;6.LW\Õ˝lãV7Ò:Ò∫éé	1Ñ\0ù±∂éÇ9:&\ƒbB†B!V\ŒQ∞÷éé	*!Ü†É!\÷\—´A%\ƒb\0t0ƒåCà	1\0!&\ƒ@à1#\ƒbB@à	1ÑòbFà!ƒÑÄb1! ƒåCà ƒÑBLà1#\ƒb\01!Üb\0B\Ã1ÑÄbB!&\ƒ\0Ñòb1\0!fÑBLàÙ\Õ˚Òèúû~˙\Èiˇ˛˝\„\Ô˜\‚y•\ﬂı=\ÍvV\‚6	1ÑÄku~ı´_•˚\ÿ\«\“!CÜ§á~xz\‚â\'¶˝\◊\›e1ÚGÙG\≈¿y\‚â\'*\Z=B!&\ƒ\0zUà=˙\Ë£\È†AÉä±4oﬁºtœû=\≈`Jí§GéCà	1Ä^b¸\‡ãÒÒ£˝®\≈\Î<˜\‹s\Èeó]ñ<∏8\„∆ç+û\◊8`\ÍÊ§ìNJgŒú\Ÿ\Ïeπöl\Ì:u3p\‡¿Ù¨≥\ŒJO;\Ì¥Ùà#éHáö\ﬁ{\ÔΩ\≈\Îæ¯\‚ã\È\‰…ìã\ﬂ˚¯\„èOGç\Zïn⁄¥©’Ø_Nà’ùw\Ï±«¶\Áü~∫d\…!Ü†kB,\rãøwÜU\„âØ\„j∆å≈è\„yçce˙Ù\È\È≤eÀäü|Ú\…eN\„\œoø˝ˆ¥∂∂ˆu\Á\›v\€m\Èä+^˜˘ ï+ãür\ )\≈\ÎNú8±¯˘\ÏŸ≥\Îo√Ö^\ÿ\Í\◊o\œ±U´V/;\„å3ÑBÄ\ÏB\Ïço|cÒ:Òa\À›ªw?éG\∆\ZLºº¶¶¶\≈\»*\'\ƒˆ\Ó\›\€\Ï\◊=p\‡@˝\ÁÒ64˛\ZÒˆ\‰\Zı:Ú\»#[˝˙mÖ\ÿ‹πs\”a√Ü\’o£8Ò⁄≥}«é[±Ò\”.ƒÑ@/±rö,7\ƒ\ ˝º´Æ\”Û¯áÒ\„≠[∑v¯˘_çØsÍ©ß?_∫ti1\‡rxY•éà	1!&\ƒ\0Å{\‰ëGäœΩäO÷ü?~˙\€\ﬂ˛∂¯0`\\\Ë\€˚\–dwÜÿ§Iìä_w\›u\Õı\ÍHà\’\≈]\‹”¶Mb1\0∫6\ƒ\‚ƒøíºÙ\“Kã\·1`¿Ä\‚∞ÜœØ™{≤~<?NKO\÷\Ô\Œ€µkW:e î\‚¯\Î^Ø¨≠Ø\ﬂVàÕö5´¯\\∑\\OÙb1\0º≤~ye}!&ƒÑÄ3B!Äb1! \ƒ\⁄ı<∞Æ~e˚\\{!Übádà\Â\ xÇøCà	1\0!\÷Æ/\ƒbB†WÑÿé;äØ/v˙\Èß◊ø%P|\’¸¯y<?^\ﬁ\÷{1∂uDl√Ü\r\ÈπÁûõˆ\Î◊Ø≈óáh\È\Î\Á\ |\ÀŒºO¶Cà\–mGƒÆ∫\Í™bú\‹ˇ˝\≈\œ\Ôª\Ôæ\‚\ÁÒ¸rﬁã±≠ãoÃùkÙB±πvº\◊cÆåá&;˚>ôB!@∑Ñÿö5kä/éz\—E?ˇ–á>T¸<û_\Œ{1∂b\'úpBì∑N µ\„Ω\À	±ŒæO¶Cà\–-!g\‰»ë≈á\„Q±x\Z?/˜Ω;b\Ì˝˙ù	±J=\ÔLà!\ƒ\0ÑXgC\"=\Êòcäß\rø~[\Ô\≈\ÿ\÷\Á1\Ír≠<4\Ÿ\÷\◊?\Ó∏„äü?˚Ï≥ù~hRà!ƒÑ@è±8gü}v1N\‚i\√Û\€z/∆∂>_ø~}z\Œ9\Á¥¯d˝∂æ˛\Õ7\ﬂ\\\ƒ+\◊∆ìı;˙>ôB!@∑Üòb1\0Ñò\Î!!V(\'I2.\Ã\·∂,\n≥6Ã≥aVÖ\ÀÑ\”oÖ\”KÛ˘¸1ˆJ!¸ˇ\Ì›±Kúg¿Ò¢C\«2t\Ë–°C∂2tπ\À`H»†5ã\Àq{\\Ñ:Èòê.Gq(!HëÇàJ∞Ω6òû\≈\ﬂ>è¯¬£®9Ù^\Ï\›˚˘¿Qèª\„Ù\‡\À˚>˜º1#ƒ∫`7\¬cøÛ1>áf7\Ã\”l_zw\n1\0!fÑ\ÿ\\1ıSáÒu\⁄\ƒp{\Ó\Ás\ÔR! ƒå\Î¸±nV*ïø“∞äz®\◊\ÎY≥\Ÿ<\‹W\Ó›ªwY´\’\ 6667\ﬂ}˛¸y611qZê≠W´’ØÑòbFà}˙q\Óá˚7\r∞F£ëΩˇ>\ÎD¥\…\……ì1∂\Ê∂b\0B\Ã±3T´\’[iÑçåådkkk\ŸE,//g˜\Ó\›;c%>2&\ƒ\0Ñòbgv=<∆á<újµ\⁄\·ï	.#;vö≤§k∆ÑÄ3B\Ï\‹˚üœÉ\È\·√áóé∞4\∆N{\"ƒÑÄ3B\ÏH<%ôÆ	ãª)û¶L?MY¬≠-ÑÄ3B\Ï\Ã˚~ïá\“\Ã\ÃLVÑ¯ü\n1! \ƒL_áX\‹\ÏS\‰\„~ay ›Ω{7k∑€ÖÑX<Eôn˙Z≤¯ÖÄ3e±<|\Œ≤J•Ú(ø\›\‘\‘TV§tü±x9$!&\ƒ\0Ñò\È˚;/»é._t¯˚\≈\≈\≈BC,n˙ö<üÜb\0BÃî&\ƒN≤˝j˛Û≠≠≠BC,\Ó¿ü˚Eà	1\0!fJbiêÖØˇ\‰\ﬂ\Ô\Ó\Ó\ZbÒ”ò\…\„øbB@àôû	±¢ßhÒ2I\…\„m\n1! \ƒLOÑX7\„mpp∑0\ﬂ\›f7ˇ˘˛˛~°!v‚ììoÖòb¶4!ñXrõı¸˜≠V´\–{Û\ÊM˙|ÊÖòb¶\ÔC\Ï¥\0\À\≈EÛ˘\Ì^æ|Yhà5õ\Õ4\nbB@àôæ\r±Û,π\Õ˜yMOO\Zbız=\r±;BLàÙEà\Ì\ÌÌâ†ˇ¡\Ï\Ï\Ï¸\Z˛;ΩÙˇ∑±\»\„\Ë¡ÉÖ}r2.‘è◊±ÃØ7Y©T>bB†\Á-,,¸A°´ü•••Càı\‹˛Xq\·|cœû=+$\ƒ\ZçF∫>\ÏE\…ﬁ¶B†_\Õ\ÕÕçÖ˚}ssÛG∆Æf\¬\Î˛aee\Â\Á\Ÿ\Ÿ\Ÿ\Õ\–a∑{\Ì(û&LØ7è^u\”\⁄\⁄ZV≠Ví\Õ\\o1!\–7B\0|`5û¶4W6Ø\√Ù\Ïı\„z≤<î\∆\««ªvär{{;>H7ë-\·[Tà\0gëÙu∫ß\ÿ\„«è/c1\¬jµZzJÚ\œ0_1!\0úP©TÜ\“}\«‚ë±ãû¶åó3\Z=H\Ó\Ôcòõ%}iÖ\0i!ñ\Íiå\≈5cqßG\«\⁄\Ìv633slM\ÿQÑ\›/Ò\À*\ƒ\0Ä\Œ\€MÉ,nm˜ãõæ\∆¯Û\À!\≈@\€\⁄\⁄\ ≥©©©lhh\Ë\‡\ƒn˛\€!\ nï¸%b\0@\ÁB@}ì.\‡ø\‡Ãá®ª\Ó\’b\0¿≈Ç\ÏN∫\œXáÛ\ Q0!\0tI‹Å?^\È\Ë⁄î\Î…©Àù0´qì\÷ªG◊ºZB\0@à	1\0@à	1\0\0!&\ƒ\0\0!&\ƒ\0\0Ñòø\0 ƒÑ\0Ä\0bB\0@à\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\0BLà\01!\01!\0 \ƒ\0\0Ñò\0b\0\0BLà\01\0\0!&\ƒ\0\0Ñ\0Äb\0\0ó	1cå1\∆\”\›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†[˛î¸πÚBp\0\0\0\0IENDÆB`Ç',1),('2',4,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"process\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-5D93D567-01D1-4B87-A69C-8F9EE1F84B79\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"process_id\":\"process\"},\"stencil\":{\"id\":\"Pool\"},\"childShapes\":[{\"resourceId\":\"sid-E7E2022F-6D1F-454F-812B-28C8EB8CF167\",\"properties\":{\"overrideid\":\"\",\"name\":\"demandeur\\n\",\"documentation\":\"\",\"showcaption\":true},\"stencil\":{\"id\":\"Lane\"},\"childShapes\":[{\"resourceId\":\"sid-D4A12E88-D084-4D15-811E-5780A39ED41D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3889AA74-4FCD-450B-B866-3554146C5FB7\"}],\"bounds\":{\"lowerRight\":{\"x\":132,\"y\":146},\"upperLeft\":{\"x\":102,\"y\":116}},\"dockers\":[]},{\"resourceId\":\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\",\"properties\":{\"overrideid\":\"\",\"name\":\"Faire une demande\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"demandeur\"}},\"formkeydefinition\":\"2\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-AB330927-1FEE-4C77-82A4-168DEED8F795\"}],\"bounds\":{\"lowerRight\":{\"x\":252,\"y\":171},\"upperLeft\":{\"x\":152,\"y\":91}},\"dockers\":[]}],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":600,\"y\":250},\"upperLeft\":{\"x\":30,\"y\":0}},\"dockers\":[]},{\"resourceId\":\"sid-E4C6D9E2-1303-4BF3-80BA-47AAF5717F24\",\"properties\":{\"overrideid\":\"\",\"name\":\"analyste\\n\",\"documentation\":\"\",\"showcaption\":true},\"stencil\":{\"id\":\"Lane\"},\"childShapes\":[{\"resourceId\":\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\",\"properties\":{\"overrideid\":\"\",\"name\":\"Analyser la demande\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"analyste\"}},\"formkeydefinition\":\"2\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DCDB11C0-417A-4557-8F97-9E0630408470\"}],\"bounds\":{\"lowerRight\":{\"x\":252,\"y\":165},\"upperLeft\":{\"x\":152,\"y\":85}},\"dockers\":[]}],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":600,\"y\":500},\"upperLeft\":{\"x\":30,\"y\":250}},\"dockers\":[]},{\"resourceId\":\"sid-6696D23F-6FAA-4613-B8DE-D4AC0095F89F\",\"properties\":{\"overrideid\":\"\",\"name\":\"valideur\\n\",\"documentation\":\"\",\"showcaption\":true},\"stencil\":{\"id\":\"Lane\"},\"childShapes\":[{\"resourceId\":\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\",\"properties\":{\"overrideid\":\"\",\"name\":\"Valider la demande\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"valideur\"}},\"formkeydefinition\":\"1\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB\"}],\"bounds\":{\"lowerRight\":{\"x\":320.00000000000006,\"y\":140},\"upperLeft\":{\"x\":220.00000000000006,\"y\":60}},\"dockers\":[]},{\"resourceId\":\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755\"},{\"resourceId\":\"sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2\"}],\"bounds\":{\"lowerRight\":{\"x\":433,\"y\":120},\"upperLeft\":{\"x\":393,\"y\":80}},\"dockers\":[]},{\"resourceId\":\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\",\"properties\":{\"overrideid\":\"\",\"name\":\"Confirmer la validation\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"valideur\"}},\"formkeydefinition\":\"1\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D\"}],\"bounds\":{\"lowerRight\":{\"x\":437.1058900173306,\"y\":216.91045394269918},\"upperLeft\":{\"x\":337.1058900173306,\"y\":136.91045394269918}},\"dockers\":[]},{\"resourceId\":\"sid-0427E532-515F-407A-9388-0159D26B99BE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":510.1058900173306,\"y\":222.03781753887915},\"upperLeft\":{\"x\":482.1058900173306,\"y\":194.03781753887915}},\"dockers\":[]}],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":600,\"y\":750},\"upperLeft\":{\"x\":30,\"y\":500}},\"dockers\":[]}],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":600,\"y\":1180},\"upperLeft\":{\"x\":0,\"y\":430}},\"dockers\":[]},{\"resourceId\":\"sid-3889AA74-4FCD-450B-B866-3554146C5FB7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"}],\"bounds\":{\"lowerRight\":{\"x\":181.859375,\"y\":561},\"upperLeft\":{\"x\":162.609375,\"y\":561}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"}},{\"resourceId\":\"sid-AB330927-1FEE-4C77-82A4-168DEED8F795\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\"}],\"bounds\":{\"lowerRight\":{\"x\":232,\"y\":764.921875},\"upperLeft\":{\"x\":232,\"y\":601.078125}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\"}},{\"resourceId\":\"sid-DCDB11C0-417A-4557-8F97-9E0630408470\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\"}],\"bounds\":{\"lowerRight\":{\"x\":287.7575761536272,\"y\":989.4919799200901},\"upperLeft\":{\"x\":244.2424238463728,\"y\":845.5080200799099}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\"}},{\"resourceId\":\"sid-CCBCFBAB-1183-4D32-B7B8-FA33810F17CB\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\"}],\"bounds\":{\"lowerRight\":{\"x\":422.3203185701896,\"y\":1030.426203200593},\"upperLeft\":{\"x\":350.3281189298104,\"y\":1030.175359299407}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD\"}},{\"resourceId\":\"sid-269C8CF2-D8E0-4AF8-B5E4-EF80143F353D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0427E532-515F-407A-9388-0159D26B99BE\"}],\"bounds\":{\"lowerRight\":{\"x\":511.4183900173306,\"y\":1138.0378175388792},\"upperLeft\":{\"x\":467.9496400173306,\"y\":1106.9104539426992}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":489.6058900173306,\"y\":1106.9104539426992},{\"x\":489.6058900173306,\"y\":1138.0378175388792},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-0427E532-515F-407A-9388-0159D26B99BE\"}},{\"resourceId\":\"sid-B38E3B61-6A8E-40A2-8AB1-7A5C1B8D6755\",\"properties\":{\"overrideid\":\"\",\"name\":\"non\",\"documentation\":\"\",\"conditionsequenceflow\":\"${valider==\'non\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"}],\"bounds\":{\"lowerRight\":{\"x\":443.5,\"y\":1009.7511423794006},\"upperLeft\":{\"x\":282.3996050391238,\"y\":549.0040427739581}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":443.5,\"y\":549.0040427739581},{\"x\":59.07218970739359,\"y\":28.004042773958076}],\"target\":{\"resourceId\":\"sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"}},{\"resourceId\":\"sid-281F6416-9BBB-47EA-97F9-D83780C7C0A2\",\"properties\":{\"overrideid\":\"\",\"name\":\"oui\",\"documentation\":\"\",\"conditionsequenceflow\":\"${valider==\'oui\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\"}],\"bounds\":{\"lowerRight\":{\"x\":438.22460875480414,\"y\":1066.5661149150642},\"upperLeft\":{\"x\":431.04184860058984,\"y\":1045.7721588276868}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1280},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);
/*!40000 ALTER TABLE `ACT_GE_BYTEARRAY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_GE_PROPERTY`
--

DROP TABLE IF EXISTS `ACT_GE_PROPERTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_GE_PROPERTY` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_GE_PROPERTY`
--

LOCK TABLES `ACT_GE_PROPERTY` WRITE;
/*!40000 ALTER TABLE `ACT_GE_PROPERTY` DISABLE KEYS */;
INSERT INTO `ACT_GE_PROPERTY` VALUES ('next.dbid','20001',9),('schema.history','create(5.20.0.1)',1),('schema.version','5.20.0.1',1);
/*!40000 ALTER TABLE `ACT_GE_PROPERTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_ACTINST`
--

DROP TABLE IF EXISTS `ACT_HI_ACTINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_ACTINST` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_ACTINST`
--

LOCK TABLES `ACT_HI_ACTINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_ACTINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_ACTINST` VALUES ('10024','Test:1:10021','10022','10022','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-02-22 11:53:42','2017-02-22 11:53:42',2,''),('10025','Test:1:10021','10022','10022','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','10026',NULL,'Faire une demande','userTask','demandeur','2017-02-22 11:53:42','2017-02-22 11:53:59',17112,''),('10048','Test:1:10021','10022','10022','sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA','10049',NULL,'Analyser la demande ','userTask','analyste','2017-02-22 11:53:59',NULL,NULL,''),('10053','Test:1:10021','10051','10051','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-02-22 12:04:51','2017-02-22 12:04:51',2,''),('10054','Test:1:10021','10051','10051','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','10055',NULL,'Faire une demande','userTask','demandeur','2017-02-22 12:04:51',NULL,NULL,''),('12503','Test:1:10021','12501','12501','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-06-07 15:59:11','2017-06-07 15:59:11',18,''),('12504','Test:1:10021','12501','12501','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','12505',NULL,'Faire une demande','userTask','demandeur','2017-06-07 15:59:11',NULL,NULL,''),('15003','Test:1:10021','15001','15001','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-07-12 13:31:46','2017-07-12 13:31:46',14,''),('15004','Test:1:10021','15001','15001','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15005',NULL,'Faire une demande','userTask','demandeur','2017-07-12 13:31:46',NULL,NULL,''),('15008','Test:1:10021','15006','15006','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-07-12 13:35:20','2017-07-12 13:35:20',3,''),('15009','Test:1:10021','15006','15006','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15010',NULL,'Faire une demande','userTask','demandeur','2017-07-12 13:35:20',NULL,NULL,''),('15013','Test:1:10021','15011','15011','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'startEvent',NULL,'2017-07-17 04:16:56','2017-07-17 04:16:56',3,''),('15014','Test:1:10021','15011','15011','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15015',NULL,'Faire une demande','userTask','demandeur','2017-07-17 04:16:56','2017-07-17 05:39:47',4971163,''),('17522','Test:1:10021','15011','15011','sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA','17523',NULL,'Analyser la demande ','userTask','analyste','2017-07-17 05:39:47','2017-07-17 05:40:29',41882,''),('17525','Test:1:10021','15011','15011','sid-5C232078-1245-473C-957A-555A5B3D3DB5','17526',NULL,'Valider la demande ','userTask','valideur','2017-07-17 05:40:29','2017-07-17 05:44:29',240255,''),('17533','Test:1:10021','15011','15011','sid-BFB5B9FE-5FF6-4EC6-B640-1FEC60AF01DD',NULL,NULL,NULL,'exclusiveGateway',NULL,'2017-07-17 05:44:29','2017-07-17 05:44:29',18,''),('17534','Test:1:10021','15011','15011','sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4','17535',NULL,'Confirmer la validation','userTask','valideur','2017-07-17 05:44:29','2017-07-17 05:44:39',10129,''),('17536','Test:1:10021','15011','15011','sid-0427E532-515F-407A-9388-0159D26B99BE',NULL,NULL,NULL,'endEvent',NULL,'2017-07-17 05:44:39','2017-07-17 05:44:39',2,'');
/*!40000 ALTER TABLE `ACT_HI_ACTINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_ATTACHMENT`
--

DROP TABLE IF EXISTS `ACT_HI_ATTACHMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_ATTACHMENT` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_ATTACHMENT`
--

LOCK TABLES `ACT_HI_ATTACHMENT` WRITE;
/*!40000 ALTER TABLE `ACT_HI_ATTACHMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_ATTACHMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_COMMENT`
--

DROP TABLE IF EXISTS `ACT_HI_COMMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_COMMENT` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_COMMENT`
--

LOCK TABLES `ACT_HI_COMMENT` WRITE;
/*!40000 ALTER TABLE `ACT_HI_COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_COMMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_DETAIL`
--

DROP TABLE IF EXISTS `ACT_HI_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_DETAIL` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_DETAIL`
--

LOCK TABLES `ACT_HI_DETAIL` WRITE;
/*!40000 ALTER TABLE `ACT_HI_DETAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_HI_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_IDENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_HI_IDENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_IDENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_IDENTITYLINK`
--

LOCK TABLES `ACT_HI_IDENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_HI_IDENTITYLINK` DISABLE KEYS */;
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('10023',NULL,'starter','demandeur',NULL,'10022'),('10050',NULL,'participant','analyste',NULL,'10022'),('10052',NULL,'starter','demandeur',NULL,'10051'),('12502',NULL,'starter','demandeur',NULL,'12501'),('15002',NULL,'starter','demandeur',NULL,'15001'),('15007',NULL,'starter','demandeur',NULL,'15006'),('15012',NULL,'starter','admin',NULL,'15011'),('15016',NULL,'participant','demandeur',NULL,'15011'),('17524',NULL,'participant','analyste',NULL,'15011'),('17527',NULL,'participant','valideur',NULL,'15011');
/*!40000 ALTER TABLE `ACT_HI_IDENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_PROCINST`
--

DROP TABLE IF EXISTS `ACT_HI_PROCINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_PROCINST` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_PROCINST`
--

LOCK TABLES `ACT_HI_PROCINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_PROCINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_PROCINST` VALUES ('10022','10022',NULL,'Test:1:10021','2017-02-22 11:53:42',NULL,NULL,'demandeur','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'',NULL),('10051','10051',NULL,'Test:1:10021','2017-02-22 12:04:51',NULL,NULL,'demandeur','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'',NULL),('12501','12501',NULL,'Test:1:10021','2017-06-07 15:59:11',NULL,NULL,'demandeur','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'',NULL),('15001','15001',NULL,'Test:1:10021','2017-07-12 13:31:46',NULL,NULL,'demandeur','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'',NULL),('15006','15006',NULL,'Test:1:10021','2017-07-12 13:35:20',NULL,NULL,'demandeur','sid-D4A12E88-D084-4D15-811E-5780A39ED41D',NULL,NULL,NULL,'',NULL),('15011','15011',NULL,'Test:1:10021','2017-07-17 04:16:56','2017-07-17 05:44:39',5263136,'admin','sid-D4A12E88-D084-4D15-811E-5780A39ED41D','sid-0427E532-515F-407A-9388-0159D26B99BE',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `ACT_HI_PROCINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_TASKINST`
--

DROP TABLE IF EXISTS `ACT_HI_TASKINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_TASKINST` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_TASKINST`
--

LOCK TABLES `ACT_HI_TASKINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_TASKINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_TASKINST` VALUES ('10026','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','10022','10022','Faire une demande',NULL,NULL,NULL,'demandeur','2017-02-22 11:53:42',NULL,'2017-02-22 11:53:59',17108,'completed',50,NULL,'2',NULL,''),('10049','Test:1:10021','sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA','10022','10022','Analyser la demande',NULL,NULL,NULL,'analyste','2017-02-22 11:53:59',NULL,NULL,NULL,NULL,50,NULL,'2',NULL,''),('10055','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','10051','10051','Faire une demande',NULL,NULL,NULL,'demandeur','2017-02-22 12:04:51',NULL,NULL,NULL,NULL,50,NULL,'2',NULL,''),('12505','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','12501','12501','Faire une demande',NULL,NULL,NULL,'demandeur','2017-06-07 15:59:11',NULL,NULL,NULL,NULL,50,NULL,'2',NULL,''),('15005','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15001','15001','Faire une demande',NULL,NULL,NULL,'demandeur','2017-07-12 13:31:46',NULL,NULL,NULL,NULL,50,NULL,'2',NULL,''),('15010','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15006','15006','Faire une demande',NULL,NULL,NULL,'demandeur','2017-07-12 13:35:20',NULL,NULL,NULL,NULL,50,NULL,'2',NULL,''),('15015','Test:1:10021','sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E','15011','15011','Faire une demande',NULL,NULL,NULL,'demandeur','2017-07-17 04:16:56',NULL,'2017-07-17 05:39:47',4971141,'completed',50,NULL,'2',NULL,''),('17523','Test:1:10021','sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA','15011','15011','Analyser la demande',NULL,NULL,NULL,'analyste','2017-07-17 05:39:47',NULL,'2017-07-17 05:40:29',41877,'completed',50,NULL,'2',NULL,''),('17526','Test:1:10021','sid-5C232078-1245-473C-957A-555A5B3D3DB5','15011','15011','Valider la demande',NULL,NULL,NULL,'valideur','2017-07-17 05:40:29',NULL,'2017-07-17 05:44:29',240248,'completed',50,NULL,'1',NULL,''),('17535','Test:1:10021','sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4','15011','15011','Confirmer la validation',NULL,NULL,NULL,'valideur','2017-07-17 05:44:29',NULL,'2017-07-17 05:44:39',10123,'completed',50,NULL,'1',NULL,'');
/*!40000 ALTER TABLE `ACT_HI_TASKINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_HI_VARINST`
--

DROP TABLE IF EXISTS `ACT_HI_VARINST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_HI_VARINST` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_HI_VARINST`
--

LOCK TABLES `ACT_HI_VARINST` WRITE;
/*!40000 ALTER TABLE `ACT_HI_VARINST` DISABLE KEYS */;
INSERT INTO `ACT_HI_VARINST` VALUES ('10027','10022','10022',NULL,'form_1487662889404','string',0,NULL,NULL,NULL,'oui',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10028','10022','10022',NULL,'form_1487664067888','string',0,NULL,NULL,NULL,'',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10029','10022','10022',NULL,'form_1487663559842','date',0,NULL,NULL,1487718000000,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10030','10022','10022',NULL,'form_1481102123052','string',0,NULL,NULL,NULL,'40%',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10031','10022','10022',NULL,'form_1482143489725','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10032','10022','10022',NULL,'form_1478432119337','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10033','10022','10022',NULL,'form_1487664042494','string',0,NULL,NULL,NULL,'',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10034','10022','10022',NULL,'form_1487664045102','string',0,NULL,NULL,NULL,'',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10035','10022','10022',NULL,'form_1487662930812','string',0,NULL,NULL,NULL,'oui',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10036','10022','10022',NULL,'form_1487663550609','string',0,NULL,NULL,NULL,'',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10037','10022','10022',NULL,'form_1478431887982','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10038','10022','10022',NULL,'form_1487680472063','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10039','10022','10022',NULL,'form_1481102120292','string',0,NULL,NULL,NULL,'80%',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10040','10022','10022',NULL,'form_1478431996438','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10041','10022','10022',NULL,'form_1482143514967','string',0,NULL,NULL,NULL,'asd',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10042','10022','10022',NULL,'form_1478432009254','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10043','10022','10022',NULL,'form_1478432015867','null',0,NULL,NULL,NULL,NULL,NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10044','10022','10022',NULL,'form_1478432329903','string',0,NULL,NULL,NULL,'asd',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10045','10022','10022',NULL,'form_1487664070494','string',0,NULL,NULL,NULL,'',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10046','10022','10022',NULL,'form_1478432221291','string',0,NULL,NULL,NULL,'asd',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('10047','10022','10022',NULL,'form_1478431932684','string',0,NULL,NULL,NULL,'asd',NULL,'2017-02-22 11:53:59','2017-02-22 11:53:59'),('17501','15011','15011',NULL,'form_1487662889404','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17502','15011','15011',NULL,'form_1487664067888','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17503','15011','15011',NULL,'form_1487663559842','date',2,NULL,NULL,1500264000000,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17504','15011','15011',NULL,'form_1481102123052','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17505','15011','15011',NULL,'form_1482143489725','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17506','15011','15011',NULL,'form_1478432119337','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17507','15011','15011',NULL,'form_1487664042494','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17508','15011','15011',NULL,'form_1487664045102','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17509','15011','15011',NULL,'form_1487662930812','string',2,NULL,NULL,NULL,'oui',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17510','15011','15011',NULL,'form_1487663550609','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17511','15011','15011',NULL,'form_1478431887982','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17512','15011','15011',NULL,'form_1487680472063','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17513','15011','15011',NULL,'form_1481102120292','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17514','15011','15011',NULL,'form_1478431996438','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17515','15011','15011',NULL,'form_1482143514967','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17516','15011','15011',NULL,'form_1478432009254','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17517','15011','15011',NULL,'form_1478432015867','null',2,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17518','15011','15011',NULL,'form_1478432329903','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17519','15011','15011',NULL,'form_1487664070494','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17520','15011','15011',NULL,'form_1478432221291','string',2,NULL,NULL,NULL,'sdfsdfsdf',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17521','15011','15011',NULL,'form_1478431932684','string',2,NULL,NULL,NULL,'',NULL,'2017-07-17 05:39:47','2017-07-17 05:44:39'),('17528','15011','15011',NULL,'form_1485424594431','date',1,NULL,NULL,1500264000000,NULL,NULL,'2017-07-17 05:44:29','2017-07-17 05:44:39'),('17529','15011','15011',NULL,'form_1487754521349','null',1,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:44:29','2017-07-17 05:44:39'),('17530','15011','15011',NULL,'valider','string',1,NULL,NULL,NULL,'oui',NULL,'2017-07-17 05:44:29','2017-07-17 05:44:39'),('17531','15011','15011',NULL,'form_1485424573814','null',1,NULL,NULL,NULL,NULL,NULL,'2017-07-17 05:44:29','2017-07-17 05:44:39'),('17532','15011','15011',NULL,'form_1485424605828','string',1,NULL,NULL,NULL,'officielle',NULL,'2017-07-17 05:44:29','2017-07-17 05:44:39');
/*!40000 ALTER TABLE `ACT_HI_VARINST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_GROUP`
--

DROP TABLE IF EXISTS `ACT_ID_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_ID_GROUP` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_GROUP`
--

LOCK TABLES `ACT_ID_GROUP` WRITE;
/*!40000 ALTER TABLE `ACT_ID_GROUP` DISABLE KEYS */;
INSERT INTO `ACT_ID_GROUP` VALUES ('ROLE_ADMIN',1,'Admin','admin'),('ROLE_SUPER_ADMIN',1,'Super Administrateur (D√©veloppeur)','admin'),('ROLE_USER',1,'Utilisateur','user');
/*!40000 ALTER TABLE `ACT_ID_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_INFO`
--

DROP TABLE IF EXISTS `ACT_ID_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_ID_INFO` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_INFO`
--

LOCK TABLES `ACT_ID_INFO` WRITE;
/*!40000 ALTER TABLE `ACT_ID_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_ID_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_MEMBERSHIP`
--

DROP TABLE IF EXISTS `ACT_ID_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_ID_MEMBERSHIP` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `ACT_ID_GROUP` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `ACT_ID_USER` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_MEMBERSHIP`
--

LOCK TABLES `ACT_ID_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `ACT_ID_MEMBERSHIP` DISABLE KEYS */;
INSERT INTO `ACT_ID_MEMBERSHIP` VALUES ('admin','ROLE_ADMIN'),('admin','ROLE_SUPER_ADMIN'),('superadmin','ROLE_SUPER_ADMIN'),('admin','ROLE_USER'),('analyste','ROLE_USER'),('demandeur','ROLE_USER'),('superadmin','ROLE_USER'),('valideur','ROLE_USER');
/*!40000 ALTER TABLE `ACT_ID_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_ID_USER`
--

DROP TABLE IF EXISTS `ACT_ID_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_ID_USER` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_ID_USER`
--

LOCK TABLES `ACT_ID_USER` WRITE;
/*!40000 ALTER TABLE `ACT_ID_USER` DISABLE KEYS */;
INSERT INTO `ACT_ID_USER` VALUES ('admin',1,'Administrateur','ImagineWorkflow','no-reply@imaginepatners.com','$2a$11$FciA2vtZazSQDZM3PJmihelaYR8I.QR0oRwSbNHYSm7tiN7C.4stW',NULL),('analyste',1,'analyste','analyste','analyste@gmail.com','$2a$11$51qxEMWXl4EwqGh4mG1Lx.I6oiu77F7MRVeRYS963/mYnbBOkuRiu',NULL),('demandeur',1,'demandeur','demandeur','demandeur@gmail.com','$2a$11$vaXY3ceCnLYtVQVr3wlYUe5pzIpgRLTtaCEdsqknjs1YG0GFQttwa',NULL),('superadmin',1,'Rescue','User','no-reply@imaginepatners.com',NULL,NULL),('valideur',1,'valideur','valideur','valideur@gmail.com','$2a$11$oDnIa4FShh2qPqp68xj/7.exwju1KT1zWfNEiSHbiX5wrzrKeUalq',NULL);
/*!40000 ALTER TABLE `ACT_ID_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_PROCDEF_INFO`
--

DROP TABLE IF EXISTS `ACT_PROCDEF_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_PROCDEF_INFO` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_PROCDEF_INFO`
--

LOCK TABLES `ACT_PROCDEF_INFO` WRITE;
/*!40000 ALTER TABLE `ACT_PROCDEF_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_PROCDEF_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_DEPLOYMENT`
--

DROP TABLE IF EXISTS `ACT_RE_DEPLOYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RE_DEPLOYMENT` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_DEPLOYMENT`
--

LOCK TABLES `ACT_RE_DEPLOYMENT` WRITE;
/*!40000 ALTER TABLE `ACT_RE_DEPLOYMENT` DISABLE KEYS */;
INSERT INTO `ACT_RE_DEPLOYMENT` VALUES ('10018','Test',NULL,'','2017-02-22 10:49:19');
/*!40000 ALTER TABLE `ACT_RE_DEPLOYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_MODEL`
--

DROP TABLE IF EXISTS `ACT_RE_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RE_MODEL` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_MODEL`
--

LOCK TABLES `ACT_RE_MODEL` WRITE;
/*!40000 ALTER TABLE `ACT_RE_MODEL` DISABLE KEYS */;
INSERT INTO `ACT_RE_MODEL` VALUES ('1',18,'Test','Test',NULL,'2017-01-24 10:59:58','2017-03-14 13:33:18',1,'{\"name\":\"Test\",\"description\":\"\"}',NULL,'2',NULL,'');
/*!40000 ALTER TABLE `ACT_RE_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RE_PROCDEF`
--

DROP TABLE IF EXISTS `ACT_RE_PROCDEF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RE_PROCDEF` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RE_PROCDEF`
--

LOCK TABLES `ACT_RE_PROCDEF` WRITE;
/*!40000 ALTER TABLE `ACT_RE_PROCDEF` DISABLE KEYS */;
INSERT INTO `ACT_RE_PROCDEF` VALUES ('Test:1:10021',1,'http://activiti.org/test',NULL,'Test',1,'10018','Test.bpmn20.xml','Test.Test.png',NULL,0,1,1,'');
/*!40000 ALTER TABLE `ACT_RE_PROCDEF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_EVENT_SUBSCR`
--

DROP TABLE IF EXISTS `ACT_RU_EVENT_SUBSCR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_EVENT_SUBSCR` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_EVENT_SUBSCR`
--

LOCK TABLES `ACT_RU_EVENT_SUBSCR` WRITE;
/*!40000 ALTER TABLE `ACT_RU_EVENT_SUBSCR` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_EVENT_SUBSCR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_EXECUTION`
--

DROP TABLE IF EXISTS `ACT_RU_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_EXECUTION` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_EXECUTION`
--

LOCK TABLES `ACT_RU_EXECUTION` WRITE;
/*!40000 ALTER TABLE `ACT_RU_EXECUTION` DISABLE KEYS */;
INSERT INTO `ACT_RU_EXECUTION` VALUES ('10022',2,'10022',NULL,NULL,'Test:1:10021',NULL,'sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA',1,0,1,0,1,2,'',NULL,NULL),('10051',1,'10051',NULL,NULL,'Test:1:10021',NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',1,0,1,0,1,2,'',NULL,NULL),('12501',1,'12501',NULL,NULL,'Test:1:10021',NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',1,0,1,0,1,2,'',NULL,NULL),('15001',1,'15001',NULL,NULL,'Test:1:10021',NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',1,0,1,0,1,2,'',NULL,NULL),('15006',1,'15006',NULL,NULL,'Test:1:10021',NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',1,0,1,0,1,2,'',NULL,NULL);
/*!40000 ALTER TABLE `ACT_RU_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_IDENTITYLINK`
--

DROP TABLE IF EXISTS `ACT_RU_IDENTITYLINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_IDENTITYLINK` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `ACT_RU_TASK` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_IDENTITYLINK`
--

LOCK TABLES `ACT_RU_IDENTITYLINK` WRITE;
/*!40000 ALTER TABLE `ACT_RU_IDENTITYLINK` DISABLE KEYS */;
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('10023',1,NULL,'starter','demandeur',NULL,'10022',NULL),('10050',1,NULL,'participant','analyste',NULL,'10022',NULL),('10052',1,NULL,'starter','demandeur',NULL,'10051',NULL),('12502',1,NULL,'starter','demandeur',NULL,'12501',NULL),('15002',1,NULL,'starter','demandeur',NULL,'15001',NULL),('15007',1,NULL,'starter','demandeur',NULL,'15006',NULL);
/*!40000 ALTER TABLE `ACT_RU_IDENTITYLINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_JOB`
--

DROP TABLE IF EXISTS `ACT_RU_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_JOB` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_JOB`
--

LOCK TABLES `ACT_RU_JOB` WRITE;
/*!40000 ALTER TABLE `ACT_RU_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACT_RU_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_TASK`
--

DROP TABLE IF EXISTS `ACT_RU_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_TASK` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_TASK`
--

LOCK TABLES `ACT_RU_TASK` WRITE;
/*!40000 ALTER TABLE `ACT_RU_TASK` DISABLE KEYS */;
INSERT INTO `ACT_RU_TASK` VALUES ('10049',1,'10022','10022','Test:1:10021','Analyser la demande',NULL,NULL,'sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA',NULL,'analyste',NULL,50,'2017-02-22 10:53:59',NULL,NULL,1,'','2'),('10055',1,'10051','10051','Test:1:10021','Faire une demande',NULL,NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',NULL,'demandeur',NULL,50,'2017-02-22 11:04:51',NULL,NULL,1,'','2'),('12505',1,'12501','12501','Test:1:10021','Faire une demande',NULL,NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',NULL,'demandeur',NULL,50,'2017-06-07 14:59:11',NULL,NULL,1,'','2'),('15005',1,'15001','15001','Test:1:10021','Faire une demande',NULL,NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',NULL,'demandeur',NULL,50,'2017-07-12 17:31:46',NULL,NULL,1,'','2'),('15010',1,'15006','15006','Test:1:10021','Faire une demande',NULL,NULL,'sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E',NULL,'demandeur',NULL,50,'2017-07-12 17:35:20',NULL,NULL,1,'','2');
/*!40000 ALTER TABLE `ACT_RU_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACT_RU_VARIABLE`
--

DROP TABLE IF EXISTS `ACT_RU_VARIABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACT_RU_VARIABLE` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACT_RU_VARIABLE`
--

LOCK TABLES `ACT_RU_VARIABLE` WRITE;
/*!40000 ALTER TABLE `ACT_RU_VARIABLE` DISABLE KEYS */;
INSERT INTO `ACT_RU_VARIABLE` VALUES ('10027',1,'string','form_1487662889404','10022','10022',NULL,NULL,NULL,NULL,'oui',NULL),('10028',1,'string','form_1487664067888','10022','10022',NULL,NULL,NULL,NULL,'',NULL),('10029',1,'date','form_1487663559842','10022','10022',NULL,NULL,NULL,1487718000000,NULL,NULL),('10030',1,'string','form_1481102123052','10022','10022',NULL,NULL,NULL,NULL,'40%',NULL),('10031',1,'null','form_1482143489725','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10032',1,'null','form_1478432119337','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10033',1,'string','form_1487664042494','10022','10022',NULL,NULL,NULL,NULL,'',NULL),('10034',1,'string','form_1487664045102','10022','10022',NULL,NULL,NULL,NULL,'',NULL),('10035',1,'string','form_1487662930812','10022','10022',NULL,NULL,NULL,NULL,'oui',NULL),('10036',1,'string','form_1487663550609','10022','10022',NULL,NULL,NULL,NULL,'',NULL),('10037',1,'null','form_1478431887982','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10038',1,'null','form_1487680472063','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10039',1,'string','form_1481102120292','10022','10022',NULL,NULL,NULL,NULL,'80%',NULL),('10040',1,'null','form_1478431996438','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10041',1,'string','form_1482143514967','10022','10022',NULL,NULL,NULL,NULL,'asd',NULL),('10042',1,'null','form_1478432009254','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10043',1,'null','form_1478432015867','10022','10022',NULL,NULL,NULL,NULL,NULL,NULL),('10044',1,'string','form_1478432329903','10022','10022',NULL,NULL,NULL,NULL,'asd',NULL),('10045',1,'string','form_1487664070494','10022','10022',NULL,NULL,NULL,NULL,'',NULL),('10046',1,'string','form_1478432221291','10022','10022',NULL,NULL,NULL,NULL,'asd',NULL),('10047',1,'string','form_1478431932684','10022','10022',NULL,NULL,NULL,NULL,'asd',NULL);
/*!40000 ALTER TABLE `ACT_RU_VARIABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ADM_G50`
--

DROP TABLE IF EXISTS `ADM_G50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADM_G50` (
  `ID_G50` bigint(20) NOT NULL AUTO_INCREMENT,
  `IRG_SALAIRE` decimal(18,2) DEFAULT NULL,
  `IRG_TEMPORAIRE` decimal(18,2) DEFAULT NULL,
  `PRE_COMPTE` decimal(19,2) DEFAULT NULL,
  `TAP` decimal(19,2) DEFAULT NULL,
  `TAX_PUBLICATION` decimal(18,2) DEFAULT NULL,
  `TVA_17` decimal(18,2) DEFAULT NULL,
  `VAT_10` decimal(18,2) DEFAULT NULL,
  `VAT_17` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ID_G50`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADM_G50`
--

LOCK TABLES `ADM_G50` WRITE;
/*!40000 ALTER TABLE `ADM_G50` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADM_G50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APC`
--

DROP TABLE IF EXISTS `APC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APC` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(45) DEFAULT NULL,
  `ID_COMMUNE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `APC_FK_COMMUNE` (`ID_COMMUNE`),
  CONSTRAINT `APC_FK_COMMUNE` FOREIGN KEY (`ID_COMMUNE`) REFERENCES `APC` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APC`
--

LOCK TABLES `APC` WRITE;
/*!40000 ALTER TABLE `APC` DISABLE KEYS */;
/*!40000 ALTER TABLE `APC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT`
--

DROP TABLE IF EXISTS `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT` (
  `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIZ_AD_RECRUITMENT_ID` bigint(20) DEFAULT NULL,
  `BIZ_RGANISM_RECRUITMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT_ID`),
  KEY `BIZ_FK_RECRU` (`BIZ_AD_RECRUITMENT_ID`),
  KEY `BIZ_FK_ORGAN` (`BIZ_RGANISM_RECRUITMENT_ID`),
  CONSTRAINT `BIZ_FK_ORGAN` FOREIGN KEY (`BIZ_RGANISM_RECRUITMENT_ID`) REFERENCES `BIZ_RH_RECRUITMENT_ORGANISM` (`BIZ_RH_RECRUITMENT_ORGANISM_ID`),
  CONSTRAINT `BIZ_FK_RECRU` FOREIGN KEY (`BIZ_AD_RECRUITMENT_ID`) REFERENCES `BIZ_CONDIDATE_PER_AD_RECRUITMENT` (`BIZ_CONDIDATE_PER_AD_RECRUITMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT`
--

LOCK TABLES `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_AD_RECRUITMENT_PER_ORGANISM_RECRUITMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_AFFAIRE`
--

DROP TABLE IF EXISTS `BIZ_AFFAIRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_AFFAIRE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_CLOTURE` date DEFAULT NULL,
  `ETAPE_SUIVANTE` varchar(50) DEFAULT NULL,
  `ID_CLIENT` decimal(19,2) DEFAULT NULL,
  `ID_PHASE_VENTE` decimal(19,2) DEFAULT NULL,
  `MONTANT` decimal(18,2) DEFAULT NULL,
  `NOM_AFFAIRE` varchar(50) DEFAULT NULL,
  `PROBABILITE` int(11) DEFAULT NULL,
  `ID_DEVISE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_AFFAIRE_DEVISE` (`ID_DEVISE`),
  CONSTRAINT `BIZ_FK_AFFAIRE_DEVISE` FOREIGN KEY (`ID_DEVISE`) REFERENCES `BIZ_DEVISE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_AFFAIRE`
--

LOCK TABLES `BIZ_AFFAIRE` WRITE;
/*!40000 ALTER TABLE `BIZ_AFFAIRE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_AFFAIRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_AGENCE`
--

DROP TABLE IF EXISTS `BIZ_AGENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_AGENCE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_AGENCE`
--

LOCK TABLES `BIZ_AGENCE` WRITE;
/*!40000 ALTER TABLE `BIZ_AGENCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_AGENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_APPEL`
--

DROP TABLE IF EXISTS `BIZ_APPEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_APPEL` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `DESCRIPTION` longtext,
  `DUREE` int(11) DEFAULT NULL,
  `HEURE_DEBUT` varchar(50) DEFAULT NULL,
  `ID_CONTACT` int(11) DEFAULT NULL,
  `ID_USER` varchar(50) DEFAULT NULL,
  `NOTIFICATION` varchar(50) DEFAULT NULL,
  `STATUT_1` varchar(50) DEFAULT NULL,
  `SUJET` varchar(50) DEFAULT NULL,
  `ID_COMPTE` int(11) DEFAULT NULL,
  `ID_STATUT_REUNION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_APPEL_COMPTE` (`ID_COMPTE`),
  KEY `BIZ_FK_APPEL_STATUT_REUNION` (`ID_STATUT_REUNION`),
  CONSTRAINT `BIZ_FK_APPEL_COMPTE` FOREIGN KEY (`ID_COMPTE`) REFERENCES `BIZ_CLIENT` (`ID`),
  CONSTRAINT `BIZ_FK_APPEL_STATUT_REUNION` FOREIGN KEY (`ID_STATUT_REUNION`) REFERENCES `BIZ_STATUT_REUNION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_APPEL`
--

LOCK TABLES `BIZ_APPEL` WRITE;
/*!40000 ALTER TABLE `BIZ_APPEL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_APPEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_ARTICLE`
--

DROP TABLE IF EXISTS `BIZ_ARTICLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_ARTICLE` (
  `AR_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AR_DATE_MODIF` date DEFAULT NULL,
  `AR_DESIGN` varchar(250) DEFAULT NULL,
  `AR_DESRIPTION` varchar(250) DEFAULT NULL,
  `AR_NATURE` varchar(50) DEFAULT NULL,
  `AR_REF` varchar(50) DEFAULT NULL,
  `PR_PRIXUNIT` decimal(18,2) DEFAULT NULL,
  `AR_SF_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AR_ID`),
  KEY `BIZ_FK_ARTICLE_SOUS_FAMILLE` (`AR_SF_ID`),
  CONSTRAINT `BIZ_FK_ARTICLE_SOUS_FAMILLE` FOREIGN KEY (`AR_SF_ID`) REFERENCES `BIZ_SOUS_FAMILLE` (`CODE_SOUS_FAMILLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_ARTICLE`
--

LOCK TABLES `BIZ_ARTICLE` WRITE;
/*!40000 ALTER TABLE `BIZ_ARTICLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_ARTICLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_BANQUE`
--

DROP TABLE IF EXISTS `BIZ_BANQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_BANQUE` (
  `CODE_BANQUE` varchar(45) NOT NULL,
  `ADRESSE_AGENCE` varchar(45) DEFAULT NULL,
  `CODE_AGENCE` varchar(45) DEFAULT NULL,
  `NOM_BANQUE` varchar(45) DEFAULT NULL,
  `STATUT_ACTIF_INACTIF` bit(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_BANQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_BANQUE`
--

LOCK TABLES `BIZ_BANQUE` WRITE;
/*!40000 ALTER TABLE `BIZ_BANQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_BANQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CAMPAGNE`
--

DROP TABLE IF EXISTS `BIZ_CAMPAGNE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CAMPAGNE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  `STATUT_COMPAGNE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CAMPAGNE`
--

LOCK TABLES `BIZ_CAMPAGNE` WRITE;
/*!40000 ALTER TABLE `BIZ_CAMPAGNE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CAMPAGNE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CATEGORIE`
--

DROP TABLE IF EXISTS `BIZ_CATEGORIE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CATEGORIE` (
  `CATEGORIE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CATEGORIE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CATEGORIE`
--

LOCK TABLES `BIZ_CATEGORIE` WRITE;
/*!40000 ALTER TABLE `BIZ_CATEGORIE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CATEGORIE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CATEGORIE_DOCUMENT`
--

DROP TABLE IF EXISTS `BIZ_CATEGORIE_DOCUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CATEGORIE_DOCUMENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CATEGORIE_DOCUMENT`
--

LOCK TABLES `BIZ_CATEGORIE_DOCUMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_CATEGORIE_DOCUMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CATEGORIE_DOCUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CLIENT`
--

DROP TABLE IF EXISTS `BIZ_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CLIENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADRESSE_1` varchar(30) DEFAULT NULL,
  `ADRESSE_2` varchar(30) DEFAULT NULL,
  `CODE_POSTAL` varchar(6) DEFAULT NULL,
  `FAX` varchar(14) DEFAULT NULL,
  `ID_CONTACT` decimal(19,2) DEFAULT NULL,
  `ID_TYPE_COMPTE` int(11) DEFAULT NULL,
  `IDENTITE_FISCALE` varchar(50) DEFAULT NULL,
  `PAYS` longtext,
  `RAISON_SOCIALE` varchar(50) DEFAULT NULL,
  `REGION` varchar(50) DEFAULT NULL,
  `SITE_INTERNET` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(14) DEFAULT NULL,
  `TELEPHONE_MOBILE` varchar(14) DEFAULT NULL,
  `VILLE` varchar(30) DEFAULT NULL,
  `ID_AFFAIRE` bigint(20) DEFAULT NULL,
  `ID_MAIL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BIZ_UK_CLIENT_MAIL` (`ID_MAIL`),
  KEY `BIZ_FK_CLIENT_AFFAIRE` (`ID_AFFAIRE`),
  CONSTRAINT `BIZ_FK_CLIENT_AFFAIRE` FOREIGN KEY (`ID_AFFAIRE`) REFERENCES `BIZ_AFFAIRE` (`ID`),
  CONSTRAINT `BIZ_UK_CLIENT_MAIL` FOREIGN KEY (`ID_MAIL`) REFERENCES `BIZ_MAIL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CLIENT`
--

LOCK TABLES `BIZ_CLIENT` WRITE;
/*!40000 ALTER TABLE `BIZ_CLIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_COMMANDE`
--

DROP TABLE IF EXISTS `BIZ_COMMANDE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_COMMANDE` (
  `COMMAND_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_CREATION` date DEFAULT NULL,
  `DATE_SOUHAITEE` date DEFAULT NULL,
  `MODE_PAIEMENT` varchar(50) DEFAULT NULL,
  `MOTIF` varchar(20) DEFAULT NULL,
  `NOM_PROJET` varchar(50) DEFAULT NULL,
  `REFFERENCE_CLIENT` varchar(50) DEFAULT NULL,
  `TYPE_CLIENT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COMMAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_COMMANDE`
--

LOCK TABLES `BIZ_COMMANDE` WRITE;
/*!40000 ALTER TABLE `BIZ_COMMANDE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_COMMANDE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_COMMUNE`
--

DROP TABLE IF EXISTS `BIZ_COMMUNE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_COMMUNE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_POSTAL` varchar(10) NOT NULL,
  `ID_REGION` int(11) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  `ID_WILAYA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_COMMUNE_WILAYA` (`ID_WILAYA`),
  CONSTRAINT `BIZ_FK_COMMUNE_WILAYA` FOREIGN KEY (`ID_WILAYA`) REFERENCES `BIZ_WILAYA` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1542 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_COMMUNE`
--

LOCK TABLES `BIZ_COMMUNE` WRITE;
/*!40000 ALTER TABLE `BIZ_COMMUNE` DISABLE KEYS */;
INSERT INTO `BIZ_COMMUNE` VALUES (1,'01001',NULL,'Adrar',1),(2,'01002',NULL,'Tamest',1),(3,'01003',NULL,'Charouine',1),(4,'01004',NULL,'Reggane',1),(5,'01005',NULL,'Inozghmir',1),(6,'01006',NULL,'Tit',1),(7,'01007',NULL,'Ksar Kaddour',1),(8,'01008',NULL,'Tsabit',1),(9,'01009',NULL,'Timimoun',1),(10,'01010',NULL,'Ouled Said',1),(11,'01011',NULL,'Zaouiet Kounta',1),(12,'01012',NULL,'Aoulef',1),(13,'01013',NULL,'Timokten',1),(14,'01014',NULL,'Tamentit',1),(15,'01015',NULL,'Fenoughil',1),(16,'01016',NULL,'Tinerkouk',1),(17,'01017',NULL,'Deldoul',1),(18,'01018',NULL,'Sali',1),(19,'01019',NULL,'Akabli',1),(20,'01020',NULL,'Metarfa',1),(21,'01021',NULL,'O Ahmed Timmi',1),(22,'01022',NULL,'Bouda',1),(23,'01023',NULL,'Aougrout',1),(24,'01024',NULL,'Talmine',1),(25,'01025',NULL,'B Badji Mokhtar',1),(26,'01026',NULL,'Sbaa',1),(27,'01027',NULL,'Ouled Aissa',1),(28,'01028',NULL,'Timiaouine',1),(29,'02001',NULL,'Chlef',2),(30,'02002',NULL,'Tenes',2),(31,'02003',NULL,'Benairia',2),(32,'02004',NULL,'El Karimia',2),(33,'02005',NULL,'Tadjna',2),(34,'02006',NULL,'Taougrite',2),(35,'02007',NULL,'Beni Haoua',2),(36,'02008',NULL,'Sobha',2),(37,'02009',NULL,'Harchoun',2),(38,'02010',NULL,'Ouled Fares',2),(39,'02011',NULL,'Sidi Akacha',2),(40,'02012',NULL,'Boukadir',2),(41,'02013',NULL,'Beni Rached',2),(42,'02014',NULL,'Talassa',2),(43,'02015',NULL,'Herenfa',2),(44,'02016',NULL,'Oued Goussine',2),(45,'02017',NULL,'Dahra',2),(46,'02018',NULL,'Ouled Abbes',2),(47,'02019',NULL,'Sendjas',2),(48,'02020',NULL,'Zeboudja',2),(49,'02021',NULL,'Oued Sly',2),(50,'02022',NULL,'Abou El Hassen',2),(51,'02023',NULL,'El Marsa',2),(52,'02024',NULL,'Chettia',2),(53,'02025',NULL,'Sidi Abderrahmane',2),(54,'02026',NULL,'Moussadek',2),(55,'02027',NULL,'El Hadjadj',2),(56,'02028',NULL,'Labiod Medjadja',2),(57,'02029',NULL,'Oued Fodda',2),(58,'02030',NULL,'Ouled Ben Abdelkader',2),(59,'02031',NULL,'Bouzghaia',2),(60,'02032',NULL,'Ain Merane',2),(61,'02033',NULL,'Oum Drou',2),(62,'02034',NULL,'Breira',2),(63,'02035',NULL,'Ben Boutaleb',2),(64,'03001',NULL,'Laghouat',3),(65,'03002',NULL,'Ksar El Hirane',3),(66,'03003',NULL,'Benacer Ben Chohra',3),(67,'03004',NULL,'Sidi Makhlouf',3),(68,'03005',NULL,'Hassi Delaa',3),(69,'03006',NULL,'Hassi R Mel',3),(70,'03007',NULL,'Ain Mahdi',3),(71,'03008',NULL,'Tadjmout',3),(72,'03009',NULL,'Kheneg',3),(73,'03010',NULL,'Gueltat Sidi Saad',3),(74,'03011',NULL,'Ain Sidi Ali',3),(75,'03012',NULL,'Beidha',3),(76,'03013',NULL,'Brida',3),(77,'03014',NULL,'El Ghicha',3),(78,'03015',NULL,'Hadj Mechri',3),(79,'03016',NULL,'Sebgag',3),(80,'03017',NULL,'Taouiala',3),(81,'03018',NULL,'Tadjrouna',3),(82,'03019',NULL,'Aflou',3),(83,'03020',NULL,'El Assafia',3),(84,'03021',NULL,'Oued Morra',3),(85,'03022',NULL,'Oued M Zi',3),(86,'03023',NULL,'El Haouaita',3),(87,'03024',NULL,'Sidi Bouzid',3),(88,'04001',NULL,'Oum El Bouaghi',4),(89,'04002',NULL,'Ain Beida',4),(90,'04003',NULL,'Ainmlila',4),(91,'04004',NULL,'Behir Chergui',4),(92,'04005',NULL,'El Amiria',4),(93,'04006',NULL,'Sigus',4),(94,'04007',NULL,'El Belala',4),(95,'04008',NULL,'Ain Babouche',4),(96,'04009',NULL,'Berriche',4),(97,'04010',NULL,'Ouled Hamla',4),(98,'04011',NULL,'Dhala',4),(99,'04012',NULL,'Ain Kercha',4),(100,'04013',NULL,'Hanchir Toumghani',4),(101,'04014',NULL,'El Djazia',4),(102,'04015',NULL,'Ain Diss',4),(103,'04016',NULL,'Fkirina',4),(104,'04017',NULL,'Souk Naamane',4),(105,'04018',NULL,'Zorg',4),(106,'04019',NULL,'El Fedjoudj Boughrar',4),(107,'04020',NULL,'Ouled Zouai',4),(108,'04021',NULL,'Bir Chouhada',4),(109,'04022',NULL,'Ksar Sbahi',4),(110,'04023',NULL,'Oued Nini',4),(111,'04024',NULL,'Meskiana',4),(112,'04025',NULL,'Ain Fekroune',4),(113,'04026',NULL,'Rahia',4),(114,'04027',NULL,'Ain Zitoun',4),(115,'04028',NULL,'Ouled Gacem',4),(116,'04029',NULL,'El Harmilia',4),(117,'05001',NULL,'Batna',5),(118,'05002',NULL,'Ghassira',5),(119,'05003',NULL,'Maafa',5),(120,'05004',NULL,'Merouana',5),(121,'05005',NULL,'Seriana',5),(122,'05006',NULL,'Menaa',5),(123,'05007',NULL,'El Madher',5),(124,'05008',NULL,'Tazoult',5),(125,'05009',NULL,'Ngaous',5),(126,'05010',NULL,'Guigba',5),(127,'05011',NULL,'Inoughissen',5),(128,'05012',NULL,'Ouyoun El Assafir',5),(129,'05013',NULL,'Djerma',5),(130,'05014',NULL,'Bitam',5),(131,'05015',NULL,'Metkaouak',5),(132,'05016',NULL,'Arris',5),(133,'05017',NULL,'Kimmel',5),(134,'05018',NULL,'Tilatou',5),(135,'05019',NULL,'Ain Djasser',5),(136,'05020',NULL,'Ouled Selam',5),(137,'05021',NULL,'Tigherghar',5),(138,'05022',NULL,'Ain Yagout',5),(139,'05023',NULL,'Fesdis',5),(140,'05024',NULL,'Sefiane',5),(141,'05025',NULL,'Rahbat',5),(142,'05026',NULL,'Tighanimine',5),(143,'05027',NULL,'Lemsane',5),(144,'05028',NULL,'Ksar Belezma',5),(145,'05029',NULL,'Seggana',5),(146,'05030',NULL,'Ichmoul',5),(147,'05031',NULL,'Foum Toub',5),(148,'05032',NULL,'Beni Foudhala El Hakania',5),(149,'05033',NULL,'Oued El Ma',5),(150,'05034',NULL,'Talkhamt',5),(151,'05035',NULL,'Bouzina',5),(152,'05036',NULL,'Chemora',5),(153,'05037',NULL,'Oued Chaaba',5),(154,'05038',NULL,'Taxlent',5),(155,'05039',NULL,'Gosbat',5),(156,'05040',NULL,'Ouled Aouf',5),(157,'05041',NULL,'Boumagueur',5),(158,'05042',NULL,'Barika',5),(159,'05043',NULL,'Djezzar',5),(160,'05044',NULL,'Tkout',5),(161,'05045',NULL,'Ain Touta',5),(162,'05046',NULL,'Hidoussa',5),(163,'05047',NULL,'Teniet El Abed',5),(164,'05048',NULL,'Oued Taga',5),(165,'05049',NULL,'Ouled Fadel',5),(166,'05050',NULL,'Timgad',5),(167,'05051',NULL,'Ras El Aioun',5),(168,'05052',NULL,'Chir',5),(169,'05053',NULL,'Ouled Si Slimane',5),(170,'05054',NULL,'Zanat El Beida',5),(171,'05055',NULL,'Amdoukal',5),(172,'05056',NULL,'Ouled Ammar',5),(173,'05057',NULL,'El Hassi',5),(174,'05058',NULL,'Lazrou',5),(175,'05059',NULL,'Boumia',5),(176,'05060',NULL,'Boulhilat',5),(177,'05061',NULL,'Larbaa',5),(178,'06001',NULL,'Bejaia',6),(179,'06002',NULL,'Amizour',6),(180,'06003',NULL,'Ferraoun',6),(181,'06004',NULL,'Taourirt Ighil',6),(182,'06005',NULL,'Chelata',6),(183,'06006',NULL,'Tamokra',6),(184,'06007',NULL,'Timzrit',6),(185,'06008',NULL,'Souk El Thenine',6),(186,'06009',NULL,'Mcisna',6),(187,'06010',NULL,'Thinabdher',6),(188,'06011',NULL,'Tichi',6),(189,'06012',NULL,'Semaoun',6),(190,'06013',NULL,'Kendira',6),(191,'06014',NULL,'Tifra',6),(192,'06015',NULL,'Ighram',6),(193,'06016',NULL,'Amalou',6),(194,'06017',NULL,'Ighil Ali',6),(195,'06018',NULL,'Ifelain Ilmathen',6),(196,'06019',NULL,'Toudja',6),(197,'06020',NULL,'Darguina',6),(198,'06021',NULL,'Sidi Ayad',6),(199,'06022',NULL,'Aokas',6),(200,'06023',NULL,'Beni Djellil',6),(201,'06024',NULL,'Adekar',6),(202,'06025',NULL,'Akbou',6),(203,'06026',NULL,'Seddouk',6),(204,'06027',NULL,'Tazmalt',6),(205,'06028',NULL,'Ait Rizine',6),(206,'06029',NULL,'Chemini',6),(207,'06030',NULL,'Souk Oufella',6),(208,'06031',NULL,'Taskriout',6),(209,'06032',NULL,'Tibane',6),(210,'06033',NULL,'Tala Hamza',6),(211,'06034',NULL,'Barbacha',6),(212,'06035',NULL,'Beni Ksila',6),(213,'06036',NULL,'Ouzallaguen',6),(214,'06037',NULL,'Bouhamza',6),(215,'06038',NULL,'Beni Melikeche',6),(216,'06039',NULL,'Sidi Aich',6),(217,'06040',NULL,'El Kseur',6),(218,'06041',NULL,'Melbou',6),(219,'06042',NULL,'Akfadou',6),(220,'06043',NULL,'Leflaye',6),(221,'06044',NULL,'Kherrata',6),(222,'06045',NULL,'Draa Kaid',6),(223,'06046',NULL,'Tamridjet',6),(224,'06047',NULL,'Ait Smail',6),(225,'06048',NULL,'Boukhelifa',6),(226,'06049',NULL,'Tizi Nberber',6),(227,'06050',NULL,'Beni Maouch',6),(228,'06051',NULL,'Oued Ghir',6),(229,'06052',NULL,'Boudjellil',6),(230,'07001',NULL,'Biskra',7),(231,'07002',NULL,'Oumache',7),(232,'07003',NULL,'Branis',7),(233,'07004',NULL,'Chetma',7),(234,'07005',NULL,'Ouled Djellal',7),(235,'07006',NULL,'Ras El Miaad',7),(236,'07007',NULL,'Besbes',7),(237,'07008',NULL,'Sidi Khaled',7),(238,'07009',NULL,'Doucen',7),(239,'07010',NULL,'Ech Chaiba',7),(240,'07011',NULL,'Sidi Okba',7),(241,'07012',NULL,'Mchouneche',7),(242,'07013',NULL,'El Haouch',7),(243,'07014',NULL,'Ain Naga',7),(244,'07015',NULL,'Zeribet El Oued',7),(245,'07016',NULL,'El Feidh',7),(246,'07017',NULL,'El Kantara',7),(247,'07018',NULL,'Ain Zaatout',7),(248,'07019',NULL,'El Outaya',7),(249,'07020',NULL,'Djemorah',7),(250,'07021',NULL,'Tolga',7),(251,'07022',NULL,'Lioua',7),(252,'07023',NULL,'Lichana',7),(253,'07024',NULL,'Ourlal',7),(254,'07025',NULL,'Mlili',7),(255,'07026',NULL,'Foughala',7),(256,'07027',NULL,'Bordj Ben Azzouz',7),(257,'07028',NULL,'Meziraa',7),(258,'07029',NULL,'Bouchagroun',7),(259,'07030',NULL,'Mekhadma',7),(260,'07031',NULL,'El Ghrous',7),(261,'07032',NULL,'El Hadjab',7),(262,'07033',NULL,'Khanguet Sidinadji',7),(263,'08001',NULL,'Bechar',8),(264,'08002',NULL,'Erg Ferradj',8),(265,'08003',NULL,'Ouled Khoudir',8),(266,'08004',NULL,'Meridja',8),(267,'08005',NULL,'Timoudi',8),(268,'08006',NULL,'Lahmar',8),(269,'08007',NULL,'Beni Abbes',8),(270,'08008',NULL,'Beni Ikhlef',8),(271,'08009',NULL,'Mechraa Houari B',8),(272,'08010',NULL,'Kenedsa',8),(273,'08011',NULL,'Igli',8),(274,'08012',NULL,'Tabalbala',8),(275,'08013',NULL,'Taghit',8),(276,'08014',NULL,'El Ouata',8),(277,'08015',NULL,'Boukais',8),(278,'08016',NULL,'Mogheul',8),(279,'08017',NULL,'Abadla',8),(280,'08018',NULL,'Kerzaz',8),(281,'08019',NULL,'Ksabi',8),(282,'08020',NULL,'Tamtert',8),(283,'08021',NULL,'Beni Ounif',8),(284,'09001',NULL,'Blida',9),(285,'09002',NULL,'Chebli',9),(286,'09003',NULL,'Bouinan',9),(287,'09004',NULL,'Oued El Alleug',9),(288,'09007',NULL,'Ouled Yaich',9),(289,'09008',NULL,'Chrea',9),(290,'09010',NULL,'El Affroun',9),(291,'09011',NULL,'Chiffa',9),(292,'09012',NULL,'Hammam Melouane',9),(293,'09013',NULL,'Ben Khlil',9),(294,'09014',NULL,'Soumaa',9),(295,'09016',NULL,'Mouzaia',9),(296,'09017',NULL,'Souhane',9),(297,'09018',NULL,'Meftah',9),(298,'09019',NULL,'Ouled Selama',9),(299,'09020',NULL,'Boufarik',9),(300,'09021',NULL,'Larbaa',9),(301,'09022',NULL,'Oued Djer',9),(302,'09023',NULL,'Beni Tamou',9),(303,'09024',NULL,'Bouarfa',9),(304,'09025',NULL,'Beni Mered',9),(305,'09026',NULL,'Bougara',9),(306,'09027',NULL,'Guerrouaou',9),(307,'09028',NULL,'Ain Romana',9),(308,'09029',NULL,'Djebabra',9),(309,'10001',NULL,'Bouira',10),(310,'10002',NULL,'El Asnam',10),(311,'10003',NULL,'Guerrouma',10),(312,'10004',NULL,'Souk El Khemis',10),(313,'10005',NULL,'Kadiria',10),(314,'10006',NULL,'Hanif',10),(315,'10007',NULL,'Dirah',10),(316,'10008',NULL,'Ait Laaziz',10),(317,'10009',NULL,'Taghzout',10),(318,'10010',NULL,'Raouraoua',10),(319,'10011',NULL,'Mezdour',10),(320,'10012',NULL,'Haizer',10),(321,'10013',NULL,'Lakhdaria',10),(322,'10014',NULL,'Maala',10),(323,'10015',NULL,'El Hachimia',10),(324,'10016',NULL,'Aomar',10),(325,'10017',NULL,'Chorfa',10),(326,'10018',NULL,'Bordj Oukhriss',10),(327,'10019',NULL,'El Adjiba',10),(328,'10020',NULL,'El Hakimia',10),(329,'10021',NULL,'El Khebouzia',10),(330,'10022',NULL,'Ahl El Ksar',10),(331,'10023',NULL,'Bouderbala',10),(332,'10024',NULL,'Zbarbar',10),(333,'10025',NULL,'Ain El Hadjar',10),(334,'10026',NULL,'Djebahia',10),(335,'10027',NULL,'Aghbalou',10),(336,'10028',NULL,'Taguedit',10),(337,'10029',NULL,'Ain Turk',10),(338,'10030',NULL,'Saharidj',10),(339,'10031',NULL,'Dechmia',10),(340,'10032',NULL,'Ridane',10),(341,'10033',NULL,'Bechloul',10),(342,'10034',NULL,'Boukram',10),(343,'10035',NULL,'Ain Bessam',10),(344,'10036',NULL,'Bir Ghbalou',10),(345,'10037',NULL,'Mchedallah',10),(346,'10038',NULL,'Sour El Ghozlane',10),(347,'10039',NULL,'Maamora',10),(348,'10040',NULL,'Ouled Rached',10),(349,'10041',NULL,'Ain Laloui',10),(350,'10042',NULL,'Hadjera Zerga',10),(351,'10043',NULL,'Ath Mansour',10),(352,'10044',NULL,'El Mokrani',10),(353,'10045',NULL,'Oued El Berdi',10),(354,'11001',NULL,'Tamanghasset',11),(355,'11002',NULL,'Abalessa',11),(356,'11003',NULL,'In Ghar',11),(357,'11004',NULL,'In Guezzam',11),(358,'11005',NULL,'Idles',11),(359,'11006',NULL,'Tazouk',11),(360,'11007',NULL,'Tinzaouatine',11),(361,'11008',NULL,'In Salah',11),(362,'11009',NULL,'In Amguel',11),(363,'11010',NULL,'Foggaret Ezzaouia',11),(364,'12001',NULL,'Tebessa',12),(365,'12002',NULL,'Bir El Ater',12),(366,'12003',NULL,'Cheria',12),(367,'12004',NULL,'Stah Guentis',12),(368,'12005',NULL,'El Aouinet',12),(369,'12006',NULL,'Lahouidjbet',12),(370,'12007',NULL,'Safsaf El Ouesra',12),(371,'12008',NULL,'Hammamet',12),(372,'12009',NULL,'Negrine',12),(373,'12010',NULL,'Bir El Mokadem',12),(374,'12011',NULL,'El Kouif',12),(375,'12012',NULL,'Morsott',12),(376,'12013',NULL,'El Ogla',12),(377,'12014',NULL,'Bir Dheheb',12),(378,'12015',NULL,'El Ogla El Malha',12),(379,'12016',NULL,'Gorriguer',12),(380,'12017',NULL,'Bekkaria',12),(381,'12018',NULL,'Boukhadra',12),(382,'12019',NULL,'Ouenza',12),(383,'12020',NULL,'El Ma El Biodh',12),(384,'12021',NULL,'Oum Ali',12),(385,'12022',NULL,'Thlidjene',12),(386,'12023',NULL,'Ain Zerga',12),(387,'12024',NULL,'El Meridj',12),(388,'12025',NULL,'Boulhaf Dyr',12),(389,'12026',NULL,'Bedjene',12),(390,'12027',NULL,'El Mazeraa',12),(391,'12028',NULL,'Ferkane',12),(392,'13001',NULL,'Tlemcen',13),(393,'13002',NULL,'Beni Mester',13),(394,'13003',NULL,'Ain Tallout',13),(395,'13004',NULL,'Remchi',13),(396,'13005',NULL,'El Fehoul',13),(397,'13006',NULL,'Sabra',13),(398,'13007',NULL,'Ghazaouet',13),(399,'13008',NULL,'Souani',13),(400,'13009',NULL,'Djebala',13),(401,'13010',NULL,'El Gor',13),(402,'13011',NULL,'Oued Chouly',13),(403,'13012',NULL,'Ain Fezza',13),(404,'13013',NULL,'Ouled Mimoun',13),(405,'13014',NULL,'Amieur',13),(406,'13015',NULL,'Ain Youcef',13),(407,'13016',NULL,'Zenata',13),(408,'13017',NULL,'Beni Snous',13),(409,'13018',NULL,'Bab El Assa',13),(410,'13019',NULL,'Dar Yaghmouracene',13),(411,'13020',NULL,'Fellaoucene',13),(412,'13021',NULL,'Azails',13),(413,'13022',NULL,'Sebbaa Chioukh',13),(414,'13023',NULL,'Terni Beni Hediel',13),(415,'13024',NULL,'Bensekrane',13),(416,'13025',NULL,'Ain Nehala',13),(417,'13026',NULL,'Hennaya',13),(418,'13027',NULL,'Maghnia',13),(419,'13028',NULL,'Hammam Boughrara',13),(420,'13029',NULL,'Souahlia',13),(421,'13030',NULL,'Msirda Fouaga',13),(422,'13031',NULL,'Ain Fetah',13),(423,'13032',NULL,'El Aricha',13),(424,'13033',NULL,'Souk Thlata',13),(425,'13034',NULL,'Sidi Abdelli',13),(426,'13035',NULL,'Sebdou',13),(427,'13036',NULL,'Beni Ouarsous',13),(428,'13037',NULL,'Sidi Medjahed',13),(429,'13038',NULL,'Beni Boussaid',13),(430,'13039',NULL,'Marsa Ben Mhidi',13),(431,'13040',NULL,'Nedroma',13),(432,'13041',NULL,'Sidi Djillali',13),(433,'13042',NULL,'Beni Bahdel',13),(434,'13043',NULL,'El Bouihi',13),(435,'13044',NULL,'Honaine',13),(436,'13045',NULL,'Tianet',13),(437,'13046',NULL,'Ouled Riyah',13),(438,'13047',NULL,'Bouhlou',13),(439,'13048',NULL,'Souk El Khemis',13),(440,'13049',NULL,'Ain Ghoraba',13),(441,'13050',NULL,'Chetouane',13),(442,'13051',NULL,'Mansourah',13),(443,'13052',NULL,'Beni Semiel',13),(444,'13053',NULL,'Ain Kebira',13),(445,'14001',NULL,'Tiaret',14),(446,'14002',NULL,'Medroussa',14),(447,'14003',NULL,'Ain Bouchekif',14),(448,'14004',NULL,'Sidi Ali Mellal',14),(449,'14005',NULL,'Ain Zarit',14),(450,'14006',NULL,'Ain Deheb',14),(451,'14007',NULL,'Sidi Bakhti',14),(452,'14008',NULL,'Medrissa',14),(453,'14009',NULL,'Zmalet El Emir Aek',14),(454,'14010',NULL,'Madna',14),(455,'14011',NULL,'Sebt',14),(456,'14012',NULL,'Mellakou',14),(457,'14013',NULL,'Dahmouni',14),(458,'14014',NULL,'Rahouia',14),(459,'14015',NULL,'Mahdia',14),(460,'14016',NULL,'Sougueur',14),(461,'14017',NULL,'Sidi Abdelghani',14),(462,'14018',NULL,'Ain El Hadid',14),(463,'14019',NULL,'Ouled Djerad',14),(464,'14020',NULL,'Naima',14),(465,'14021',NULL,'Meghila',14),(466,'14022',NULL,'Guertoufa',14),(467,'14023',NULL,'Sidi Hosni',14),(468,'14024',NULL,'Djillali Ben Amar',14),(469,'14025',NULL,'Sebaine',14),(470,'14026',NULL,'Tousnina',14),(471,'14027',NULL,'Frenda',14),(472,'14028',NULL,'Ain Kermes',14),(473,'14029',NULL,'Ksar Chellala',14),(474,'14030',NULL,'Rechaiga',14),(475,'14031',NULL,'Nadorah',14),(476,'14032',NULL,'Tagdemt',14),(477,'14033',NULL,'Oued Lilli',14),(478,'14034',NULL,'Mechraa Safa',14),(479,'14035',NULL,'Hamadia',14),(480,'14036',NULL,'Chehaima',14),(481,'14037',NULL,'Takhemaret',14),(482,'14038',NULL,'Sidi Abderrahmane',14),(483,'14039',NULL,'Serghine',14),(484,'14040',NULL,'Bougara',14),(485,'14041',NULL,'Faidja',14),(486,'14042',NULL,'Tidda',14),(487,'15001',NULL,'Tizi Ouzou',15),(488,'15002',NULL,'Ain El Hammam',15),(489,'15003',NULL,'Akbil',15),(490,'15004',NULL,'Freha',15),(491,'15005',NULL,'Souamaa',15),(492,'15006',NULL,'Mechtrass',15),(493,'15007',NULL,'Irdjen',15),(494,'15008',NULL,'Timizart',15),(495,'15009',NULL,'Makouda',15),(496,'15010',NULL,'Draa El Mizan',15),(497,'15011',NULL,'Tizi Ghenif',15),(498,'15012',NULL,'Bounouh',15),(499,'15013',NULL,'Ait Chaffaa',15),(500,'15014',NULL,'Frikat',15),(501,'15015',NULL,'Beni Aissi',15),(502,'15016',NULL,'Beni Zmenzer',15),(503,'15017',NULL,'Iferhounene',15),(504,'15018',NULL,'Azazga',15),(505,'15019',NULL,'Iloula Oumalou',15),(506,'15020',NULL,'Yakouren',15),(507,'15021',NULL,'Larba Nait Irathen',15),(508,'15022',NULL,'Tizi Rached',15),(509,'15023',NULL,'Zekri',15),(510,'15024',NULL,'Ouaguenoun',15),(511,'15025',NULL,'Ain Zaouia',15),(512,'15026',NULL,'Mkira',15),(513,'15027',NULL,'Ait Yahia',15),(514,'15028',NULL,'Ait Mahmoud',15),(515,'15029',NULL,'Maatka',15),(516,'15030',NULL,'Ait Boumehdi',15),(517,'15031',NULL,'Abi Youcef',15),(518,'15032',NULL,'Beni Douala',15),(519,'15033',NULL,'Illilten',15),(520,'15034',NULL,'Bouzguen',15),(521,'15035',NULL,'Ait Aggouacha',15),(522,'15036',NULL,'Ouadhia',15),(523,'15037',NULL,'Azzefoun',15),(524,'15038',NULL,'Tigzirt',15),(525,'15039',NULL,'Ait Aissa Mimoun',15),(526,'15040',NULL,'Boghni',15),(527,'15041',NULL,'Ifigha',15),(528,'15042',NULL,'Ait Oumalou',15),(529,'15043',NULL,'Tirmitine',15),(530,'15044',NULL,'Akerrou',15),(531,'15045',NULL,'Yatafen',15),(532,'15046',NULL,'Beni Ziki',15),(533,'15047',NULL,'Draa Ben Khedda',15),(534,'15048',NULL,'Ouacif',15),(535,'15049',NULL,'Idjeur',15),(536,'15050',NULL,'Mekla',15),(537,'15051',NULL,'Tizi Nthlata',15),(538,'15052',NULL,'Beni Yenni',15),(539,'15053',NULL,'Aghrib',15),(540,'15054',NULL,'Iflissen',15),(541,'15055',NULL,'Boudjima',15),(542,'15056',NULL,'Ait Yahia Moussa',15),(543,'15057',NULL,'Souk El Thenine',15),(544,'15058',NULL,'Ait Khelil',15),(545,'15059',NULL,'Sidi Naamane',15),(546,'15060',NULL,'Iboudraren',15),(547,'15061',NULL,'Aghni Goughran',15),(548,'15062',NULL,'Mizrana',15),(549,'15063',NULL,'Imsouhal',15),(550,'15064',NULL,'Tadmait',15),(551,'15065',NULL,'Ait Bouadou',15),(552,'15066',NULL,'Assi Youcef',15),(553,'15067',NULL,'Ait Toudert',15),(554,'16001',NULL,'Alger Centre',16),(555,'16002',NULL,'Sidi Mhamed',16),(556,'16003',NULL,'El Madania',16),(557,'16004',NULL,'Hamma Anassers',16),(558,'16005',NULL,'Bab El Oued',16),(559,'16006',NULL,'Bologhine Ibn Ziri',16),(560,'16007',NULL,'Casbah',16),(561,'16008',NULL,'Oued Koriche',16),(562,'16009',NULL,'Bir Mourad Rais',16),(563,'16010',NULL,'El Biar',16),(564,'16011',NULL,'Bouzareah',16),(565,'16012',NULL,'Birkhadem',16),(566,'16013',NULL,'El Harrach',16),(567,'16014',NULL,'Baraki',16),(568,'16015',NULL,'Oued Smar',16),(569,'16016',NULL,'Bourouba',16),(570,'16017',NULL,'Hussein Dey',16),(571,'16018',NULL,'Kouba',16),(572,'16019',NULL,'Bachedjerah',16),(573,'16020',NULL,'Dar El Beida',16),(574,'16021',NULL,'Bab Azzouar',16),(575,'16022',NULL,'Ben Aknoun',16),(576,'16023',NULL,'Dely Ibrahim',16),(577,'16024',NULL,'Bains Romains',16),(578,'16025',NULL,'Rais Hamidou',16),(579,'16026',NULL,'Djasr Kasentina',16),(580,'16027',NULL,'El Mouradia',16),(581,'16028',NULL,'Hydra',16),(582,'16029',NULL,'Mohammadia',16),(583,'16030',NULL,'Bordj El Kiffan',16),(584,'16031',NULL,'El Magharia',16),(585,'16032',NULL,'Beni Messous',16),(586,'16033',NULL,'Les Eucalyptus',16),(587,'16034',NULL,'Birtouta',16),(588,'16035',NULL,'Tassala El Merdja',16),(589,'16036',NULL,'Ouled Chebel',16),(590,'16037',NULL,'Sidi Moussa',16),(591,'16038',NULL,'Ain Taya',16),(592,'16039',NULL,'Bordj El Bahri',16),(593,'16040',NULL,'Marsa',16),(594,'16041',NULL,'Haraoua',16),(595,'16042',NULL,'Rouiba',16),(596,'16043',NULL,'Reghaia',16),(597,'16044',NULL,'Ain Benian',16),(598,'16045',NULL,'Staoueli',16),(599,'16046',NULL,'Zeralda',16),(600,'16047',NULL,'Mahelma',16),(601,'16048',NULL,'Rahmania',16),(602,'16049',NULL,'Souidania',16),(603,'16050',NULL,'Cheraga',16),(604,'16051',NULL,'Ouled Fayet',16),(605,'16052',NULL,'El Achour',16),(606,'16053',NULL,'Draria',16),(607,'16054',NULL,'Douera',16),(608,'16055',NULL,'Baba Hassen',16),(609,'16056',NULL,'Khracia',16),(610,'16057',NULL,'Saoula',16),(611,'17001',NULL,'Djelfa',17),(612,'17002',NULL,'Moudjebara',17),(613,'17003',NULL,'El Guedid',17),(614,'17004',NULL,'Hassi Bahbah',17),(615,'17005',NULL,'Ain Maabed',17),(616,'17006',NULL,'Sed Rahal',17),(617,'17007',NULL,'Feidh El Botma',17),(618,'17008',NULL,'Birine',17),(619,'17009',NULL,'Bouira Lahdeb',17),(620,'17010',NULL,'Zaccar',17),(621,'17011',NULL,'El Khemis',17),(622,'17012',NULL,'Sidi Baizid',17),(623,'17013',NULL,'Mliliha',17),(624,'17014',NULL,'El Idrissia',17),(625,'17015',NULL,'Douis',17),(626,'17016',NULL,'Hassi El Euch',17),(627,'17017',NULL,'Messaad',17),(628,'17018',NULL,'Guettara',17),(629,'17019',NULL,'Sidi Ladjel',17),(630,'17020',NULL,'Had Sahary',17),(631,'17021',NULL,'Guernini',17),(632,'17022',NULL,'Selmana',17),(633,'17023',NULL,'Ain Chouhada',17),(634,'17024',NULL,'Oum Laadham',17),(635,'17025',NULL,'Dar Chouikh',17),(636,'17026',NULL,'Charef',17),(637,'17027',NULL,'Beni Yacoub',17),(638,'17028',NULL,'Zaafrane',17),(639,'17029',NULL,'Deldoul',17),(640,'17030',NULL,'Ain El Ibel',17),(641,'17031',NULL,'Ain Oussera',17),(642,'17032',NULL,'Benhar',17),(643,'17033',NULL,'Hassi Fedoul',17),(644,'17034',NULL,'Amourah',17),(645,'17035',NULL,'Ain Fekka',17),(646,'17036',NULL,'Tadmit',17),(647,'18001',NULL,'Jijel',18),(648,'18002',NULL,'Erraguene',18),(649,'18003',NULL,'El Aouana',18),(650,'18004',NULL,'Ziamma Mansouriah',18),(651,'18005',NULL,'Taher',18),(652,'18006',NULL,'Emir Abdelkader',18),(653,'18007',NULL,'Chekfa',18),(654,'18008',NULL,'Chahna',18),(655,'18009',NULL,'El Milia',18),(656,'18010',NULL,'Sidi Maarouf',18),(657,'18011',NULL,'Settara',18),(658,'18012',NULL,'El Ancer',18),(659,'18013',NULL,'Sidi Abdelaziz',18),(660,'18014',NULL,'Kaous',18),(661,'18015',NULL,'Ghebala',18),(662,'18016',NULL,'Bouraoui Belhadef',18),(663,'18017',NULL,'Djmila',18),(664,'18018',NULL,'Selma Benziada',18),(665,'18019',NULL,'Boussif Ouled Askeur',18),(666,'18020',NULL,'El Kennar Nouchfi',18),(667,'18021',NULL,'Ouled Yahia Khadrouch',18),(668,'18022',NULL,'Boudria Beni Yadjis',18),(669,'18023',NULL,'Kemir Oued Adjoul',18),(670,'18024',NULL,'Texena',18),(671,'18025',NULL,'Djemaa Beni Habibi',18),(672,'18026',NULL,'Bordj Taher',18),(673,'18027',NULL,'Ouled Rabah',18),(674,'18028',NULL,'Ouadjana',18),(675,'19001',NULL,'Setif',19),(676,'19002',NULL,'Ain El Kebira',19),(677,'19003',NULL,'Beni Aziz',19),(678,'19004',NULL,'Ouled Sidi Ahmed',19),(679,'19005',NULL,'Boutaleb',19),(680,'19006',NULL,'Ain Roua',19),(681,'19007',NULL,'Draa Kebila',19),(682,'19008',NULL,'Bir El Arch',19),(683,'19009',NULL,'Beni Chebana',19),(684,'19010',NULL,'Ouled Tebben',19),(685,'19011',NULL,'Hamma',19),(686,'19012',NULL,'Maaouia',19),(687,'19013',NULL,'Ain Legraj',19),(688,'19014',NULL,'Ain Abessa',19),(689,'19015',NULL,'Dehamcha',19),(690,'19016',NULL,'Babor',19),(691,'19017',NULL,'Guidjel',19),(692,'19018',NULL,'Ain Lahdjar',19),(693,'19019',NULL,'Bousselam',19),(694,'19020',NULL,'El Eulma',19),(695,'19021',NULL,'Djemila',19),(696,'19022',NULL,'Beni Ouartilane',19),(697,'19023',NULL,'Rosfa',19),(698,'19024',NULL,'Ouled Addouane',19),(699,'19025',NULL,'Belaa',19),(700,'19026',NULL,'Ain Arnat',19),(701,'19027',NULL,'Amoucha',19),(702,'19028',NULL,'Ain Oulmane',19),(703,'19029',NULL,'Beidha Bordj',19),(704,'19030',NULL,'Bouandas',19),(705,'19031',NULL,'Bazer Sakhra',19),(706,'19032',NULL,'Hammam Essokhna',19),(707,'19033',NULL,'Mezloug',19),(708,'19034',NULL,'Bir Haddada',19),(709,'19035',NULL,'Serdj El Ghoul',19),(710,'19036',NULL,'Harbil',19),(711,'19037',NULL,'El Ouricia',19),(712,'19038',NULL,'Tizi Nbechar',19),(713,'19039',NULL,'Salah Bey',19),(714,'19040',NULL,'Ain Azal',19),(715,'19041',NULL,'Guenzet',19),(716,'19042',NULL,'Talaifacene',19),(717,'19043',NULL,'Bougaa',19),(718,'19044',NULL,'Beni Fouda',19),(719,'19045',NULL,'Tachouda',19),(720,'19046',NULL,'Beni Mouhli',19),(721,'19047',NULL,'Ouled Sabor',19),(722,'19048',NULL,'Guellal',19),(723,'19049',NULL,'Ain Sebt',19),(724,'19050',NULL,'Hammam Guergour',19),(725,'19051',NULL,'Ait Naoual Mezada',19),(726,'19052',NULL,'Ksar El Abtal',19),(727,'19053',NULL,'Beni Hocine',19),(728,'19054',NULL,'Ait Tizi',19),(729,'19055',NULL,'Maouklane',19),(730,'19056',NULL,'Guelta Zerka',19),(731,'19057',NULL,'Oued El Barad',19),(732,'19058',NULL,'Taya',19),(733,'19059',NULL,'El Ouldja',19),(734,'19060',NULL,'Tella',19),(735,'20001',NULL,'Saida',20),(736,'20002',NULL,'Doui Thabet',20),(737,'20003',NULL,'Ain El Hadjar',20),(738,'20004',NULL,'Ouled Khaled',20),(739,'20005',NULL,'Moulay Larbi',20),(740,'20006',NULL,'Youb',20),(741,'20007',NULL,'Hounet',20),(742,'20008',NULL,'Sidi Amar',20),(743,'20009',NULL,'Sidi Boubekeur',20),(744,'20010',NULL,'El Hassasna',20),(745,'20011',NULL,'Maamora',20),(746,'20012',NULL,'Sidi Ahmed',20),(747,'20013',NULL,'Ain Sekhouna',20),(748,'20014',NULL,'Ouled Brahim',20),(749,'20015',NULL,'Tircine',20),(750,'20016',NULL,'Ain Soltane',20),(751,'21001',NULL,'Skikda',21),(752,'21002',NULL,'Ain Zouit',21),(753,'21003',NULL,'El Hadaik',21),(754,'21004',NULL,'Azzaba',21),(755,'21005',NULL,'Djendel Saadi Mohamed',21),(756,'21006',NULL,'Ain Cherchar',21),(757,'21007',NULL,'Bekkouche Lakhdar',21),(758,'21008',NULL,'Benazouz',21),(759,'21009',NULL,'Es Sebt',21),(760,'21010',NULL,'Collo',21),(761,'21011',NULL,'Beni Zid',21),(762,'21012',NULL,'Kerkera',21),(763,'21013',NULL,'Ouled Attia',21),(764,'21014',NULL,'Oued Zehour',21),(765,'21015',NULL,'Zitouna',21),(766,'21016',NULL,'El Harrouch',21),(767,'21017',NULL,'Zerdazas',21),(768,'21018',NULL,'Ouled Hebaba',21),(769,'21019',NULL,'Sidi Mezghiche',21),(770,'21020',NULL,'Emdjez Edchich',21),(771,'21021',NULL,'Beni Oulbane',21),(772,'21022',NULL,'Ain Bouziane',21),(773,'21023',NULL,'Ramdane Djamel',21),(774,'21024',NULL,'Beni Bachir',21),(775,'21025',NULL,'Salah Bouchaour',21),(776,'21026',NULL,'Tamalous',21),(777,'21027',NULL,'Ain Kechra',21),(778,'21028',NULL,'Oum Toub',21),(779,'21029',NULL,'Bein El Ouiden',21),(780,'21030',NULL,'Fil Fila',21),(781,'21031',NULL,'Cheraia',21),(782,'21032',NULL,'Kanoua',21),(783,'21033',NULL,'El Ghedir',21),(784,'21034',NULL,'Bouchtata',21),(785,'21035',NULL,'Ouldja Boulbalout',21),(786,'21036',NULL,'Kheneg Mayoum',21),(787,'21037',NULL,'Hamadi Krouma',21),(788,'21038',NULL,'El Marsa',21),(789,'22001',NULL,'Sidi Bel Abbes',22),(790,'22002',NULL,'Tessala',22),(791,'22003',NULL,'Sidi Brahim',22),(792,'22004',NULL,'Mostefa Ben Brahim',22),(793,'22005',NULL,'Telagh',22),(794,'22006',NULL,'Mezaourou',22),(795,'22007',NULL,'Boukhanafis',22),(796,'22008',NULL,'Sidi Ali Boussidi',22),(797,'22009',NULL,'Badredine El Mokrani',22),(798,'22010',NULL,'Marhoum',22),(799,'22011',NULL,'Tafissour',22),(800,'22012',NULL,'Amarnas',22),(801,'22013',NULL,'Tilmouni',22),(802,'22014',NULL,'Sidi Lahcene',22),(803,'22015',NULL,'Ain Thrid',22),(804,'22016',NULL,'Makedra',22),(805,'22017',NULL,'Tenira',22),(806,'22018',NULL,'Moulay Slissen',22),(807,'22019',NULL,'El Hacaiba',22),(808,'22020',NULL,'Hassi Zehana',22),(809,'22021',NULL,'Tabia',22),(810,'22022',NULL,'Merine',22),(811,'22023',NULL,'Ras El Ma',22),(812,'22024',NULL,'Ain Tindamine',22),(813,'22025',NULL,'Ain Kada',22),(814,'22026',NULL,'Mcid',22),(815,'22027',NULL,'Sidi Khaled',22),(816,'22028',NULL,'Ain El Berd',22),(817,'22029',NULL,'Sfissef',22),(818,'22030',NULL,'Ain Adden',22),(819,'22031',NULL,'Oued Taourira',22),(820,'22032',NULL,'Dhaya',22),(821,'22033',NULL,'Zerouala',22),(822,'22034',NULL,'Lamtar',22),(823,'22035',NULL,'Sidi Chaib',22),(824,'22036',NULL,'Sidi Dahou Dezairs',22),(825,'22037',NULL,'Oued Sbaa',22),(826,'22038',NULL,'Boudjebaa El Bordj',22),(827,'22039',NULL,'Sehala Thaoura',22),(828,'22040',NULL,'Sidi Yacoub',22),(829,'22041',NULL,'Sidi Hamadouche',22),(830,'22042',NULL,'Belarbi',22),(831,'22043',NULL,'Oued Sefioun',22),(832,'22044',NULL,'Teghalimet',22),(833,'22045',NULL,'Ben Badis',22),(834,'22046',NULL,'Sidi Ali Benyoub',22),(835,'22047',NULL,'Chetouane Belaila',22),(836,'22048',NULL,'Bir El Hammam',22),(837,'22049',NULL,'Taoudmout',22),(838,'22050',NULL,'Redjem Demouche',22),(839,'22051',NULL,'Benachiba Chelia',22),(840,'22052',NULL,'Hassi Dahou',22),(841,'23001',NULL,'Annaba',23),(842,'23002',NULL,'Berrahel',23),(843,'23003',NULL,'El Hadjar',23),(844,'23004',NULL,'Eulma',23),(845,'23005',NULL,'El Bouni',23),(846,'23006',NULL,'Oued El Aneb',23),(847,'23007',NULL,'Cheurfa',23),(848,'23008',NULL,'Seraidi',23),(849,'23009',NULL,'Ain Berda',23),(850,'23010',NULL,'Chetaibi',23),(851,'23011',NULL,'Sidi Amer',23),(852,'23012',NULL,'Treat',23),(853,'24001',NULL,'Guelma',24),(854,'24002',NULL,'Nechmaya',24),(855,'24003',NULL,'Bouati Mahmoud',24),(856,'24004',NULL,'Oued Zenati',24),(857,'24005',NULL,'Tamlouka',24),(858,'24006',NULL,'Oued Fragha',24),(859,'24007',NULL,'Ain Sandel',24),(860,'24008',NULL,'Ras El Agba',24),(861,'24009',NULL,'Dahouara',24),(862,'24010',NULL,'Belkhir',24),(863,'24011',NULL,'Ben Djarah',24),(864,'24012',NULL,'Bou Hamdane',24),(865,'24013',NULL,'Ain Makhlouf',24),(866,'24014',NULL,'Ain Ben Beida',24),(867,'24015',NULL,'Khezara',24),(868,'24016',NULL,'Beni Mezline',24),(869,'24017',NULL,'Bou Hachana',24),(870,'24018',NULL,'Guelaat Bou Sbaa',24),(871,'24019',NULL,'Hammam Maskhoutine',24),(872,'24020',NULL,'El Fedjoudj',24),(873,'24021',NULL,'Bordj Sabat',24),(874,'24022',NULL,'Hamman Nbail',24),(875,'24023',NULL,'Ain Larbi',24),(876,'24024',NULL,'Medjez Amar',24),(877,'24025',NULL,'Bouchegouf',24),(878,'24026',NULL,'Heliopolis',24),(879,'24027',NULL,'Ain Hessania',24),(880,'24028',NULL,'Roknia',24),(881,'24029',NULL,'Salaoua Announa',24),(882,'24030',NULL,'Medjez Sfa',24),(883,'24031',NULL,'Boumahra Ahmed',24),(884,'24032',NULL,'Ain Reggada',24),(885,'24033',NULL,'Oued Cheham',24),(886,'24034',NULL,'Djeballah Khemissi',24),(887,'25001',NULL,'Constantine',25),(888,'25002',NULL,'Hamma Bouziane',25),(889,'25003',NULL,'El Haria',25),(890,'25004',NULL,'Zighoud Youcef',25),(891,'25005',NULL,'Didouche Mourad',25),(892,'25006',NULL,'El Khroub',25),(893,'25007',NULL,'Ain Abid',25),(894,'25008',NULL,'Beni Hamiden',25),(895,'25009',NULL,'Ouled Rahmoune',25),(896,'25010',NULL,'Ain Smara',25),(897,'25011',NULL,'Mesaoud Boudjeriou',25),(898,'25012',NULL,'Ibn Ziad',25),(899,'26001',NULL,'Medea',26),(900,'26002',NULL,'Ouzera',26),(901,'26003',NULL,'Ouled Maaref',26),(902,'26004',NULL,'Ain Boucif',26),(903,'26005',NULL,'Aissaouia',26),(904,'26006',NULL,'Ouled Deide',26),(905,'26007',NULL,'El Omaria',26),(906,'26008',NULL,'Derrag',26),(907,'26009',NULL,'El Guelbelkebir',26),(908,'26010',NULL,'Bouaiche',26),(909,'26011',NULL,'Mezerena',26),(910,'26012',NULL,'Ouled Brahim',26),(911,'26013',NULL,'Damiat',26),(912,'26014',NULL,'Sidi Ziane',26),(913,'26015',NULL,'Tamesguida',26),(914,'26016',NULL,'El Hamdania',26),(915,'26017',NULL,'Kef Lakhdar',26),(916,'26018',NULL,'Chelalet El Adhaoura',26),(917,'26019',NULL,'Bouskene',26),(918,'26020',NULL,'Rebaia',26),(919,'26021',NULL,'Bouchrahil',26),(920,'26022',NULL,'Ouled Hellal',26),(921,'26023',NULL,'Tafraout',26),(922,'26024',NULL,'Baata',26),(923,'26025',NULL,'Boghar',26),(924,'26026',NULL,'Sidi Naamane',26),(925,'26027',NULL,'Ouled Bouachra',26),(926,'26028',NULL,'Sidi Zahar',26),(927,'26029',NULL,'Oued Harbil',26),(928,'26030',NULL,'Benchicao',26),(929,'26031',NULL,'Sidi Damed',26),(930,'26032',NULL,'Aziz',26),(931,'26033',NULL,'Souagui',26),(932,'26034',NULL,'Zoubiria',26),(933,'26035',NULL,'Ksar El Boukhari',26),(934,'26036',NULL,'El Azizia',26),(935,'26037',NULL,'Djouab',26),(936,'26038',NULL,'Chahbounia',26),(937,'26039',NULL,'Meghraoua',26),(938,'26040',NULL,'Cheniguel',26),(939,'26041',NULL,'Ain Ouksir',26),(940,'26042',NULL,'Oum El Djalil',26),(941,'26043',NULL,'Ouamri',26),(942,'26044',NULL,'Si Mahdjoub',26),(943,'26045',NULL,'Tlatet Eddoair',26),(944,'26046',NULL,'Beni Slimane',26),(945,'26047',NULL,'Berrouaghia',26),(946,'26048',NULL,'Seghouane',26),(947,'26049',NULL,'Meftaha',26),(948,'26050',NULL,'Mihoub',26),(949,'26051',NULL,'Boughezoul',26),(950,'26052',NULL,'Tablat',26),(951,'26053',NULL,'Deux Bassins',26),(952,'26054',NULL,'Draa Essamar',26),(953,'26055',NULL,'Sidi Errabia',26),(954,'26056',NULL,'Bir Ben Laabed',26),(955,'26057',NULL,'El Ouinet',26),(956,'26058',NULL,'Ouled Antar',26),(957,'26059',NULL,'Bouaichoune',26),(958,'26060',NULL,'Hannacha',26),(959,'26061',NULL,'Sedraia',26),(960,'26062',NULL,'Medjebar',26),(961,'26063',NULL,'Khams Djouamaa',26),(962,'26064',NULL,'Saneg',26),(963,'27001',NULL,'Mostaganem',27),(964,'27002',NULL,'Sayada',27),(965,'27003',NULL,'Fornaka',27),(966,'27004',NULL,'Stidia',27),(967,'27005',NULL,'Ain Nouissy',27),(968,'27006',NULL,'Hassi Maameche',27),(969,'27007',NULL,'Ain Tadles',27),(970,'27008',NULL,'Sour',27),(971,'27009',NULL,'Oued El Kheir',27),(972,'27010',NULL,'Sidi Bellater',27),(973,'27011',NULL,'Kheiredine¬†',27),(974,'27012',NULL,'Sidi Ali',27),(975,'27013',NULL,'Abdelmalek Ramdane',27),(976,'27014',NULL,'Hadjadj',27),(977,'27015',NULL,'Nekmaria',27),(978,'27016',NULL,'Sidi Lakhdar',27),(979,'27017',NULL,'Achaacha',27),(980,'27018',NULL,'Khadra',27),(981,'27019',NULL,'Bouguirat',27),(982,'27020',NULL,'Sirat',27),(983,'27021',NULL,'Ain Sidi Cherif',27),(984,'27022',NULL,'Mesra',27),(985,'27023',NULL,'Mansourah',27),(986,'27024',NULL,'Souaflia',27),(987,'27025',NULL,'Ouled Boughalem',27),(988,'27026',NULL,'Ouled Maallah',27),(989,'27027',NULL,'Mezghrane',27),(990,'27028',NULL,'Ain Boudinar',27),(991,'27029',NULL,'Tazgait',27),(992,'27030',NULL,'Safsaf',27),(993,'27031',NULL,'Touahria',27),(994,'27032',NULL,'El Hassiane',27),(995,'28001',NULL,'Msila',28),(996,'28002',NULL,'Maadid',28),(997,'28003',NULL,'Hammam Dhalaa',28),(998,'28004',NULL,'Ouled Derradj',28),(999,'28005',NULL,'Tarmount',28),(1000,'28006',NULL,'Mtarfa',28),(1001,'28007',NULL,'Khoubana',28),(1002,'28008',NULL,'Mcif',28),(1003,'28009',NULL,'Chellal',28),(1004,'28010',NULL,'Ouled Madhi',28),(1005,'28011',NULL,'Magra',28),(1006,'28012',NULL,'Berhoum',28),(1007,'28013',NULL,'Ain Khadra',28),(1008,'28014',NULL,'Ouled Addi Guebala',28),(1009,'28015',NULL,'Belaiba',28),(1010,'28016',NULL,'Sidi Aissa',28),(1011,'28017',NULL,'Ain El Hadjel',28),(1012,'28018',NULL,'Sidi Hadjeres',28),(1013,'28019',NULL,'Ouanougha',28),(1014,'28020',NULL,'Bou Saada',28),(1015,'28021',NULL,'Ouled Sidi Brahim',28),(1016,'28022',NULL,'Sidi Ameur',28),(1017,'28023',NULL,'Tamsa',28),(1018,'28024',NULL,'Ben Srour',28),(1019,'28025',NULL,'Ouled Slimane',28),(1020,'28026',NULL,'El Houamed',28),(1021,'28027',NULL,'El Hamel',28),(1022,'28028',NULL,'Ouled Mansour',28),(1023,'28029',NULL,'Maarif',28),(1024,'28030',NULL,'Dehahna',28),(1025,'28031',NULL,'Bouti Sayah',28),(1026,'28032',NULL,'Khettouti Sed Djir',28),(1027,'28033',NULL,'Zarzour',28),(1028,'28034',NULL,'Oued Chair',28),(1029,'28035',NULL,'Benzouh',28),(1030,'28036',NULL,'Bir Foda',28),(1031,'28037',NULL,'Ain Fares',28),(1032,'28038',NULL,'Sidi Mhamed',28),(1033,'28039',NULL,'Ouled Atia',28),(1034,'28040',NULL,'Souamaa',28),(1035,'28041',NULL,'Ain El Melh',28),(1036,'28042',NULL,'Medjedel',28),(1037,'28043',NULL,'Slim',28),(1038,'28044',NULL,'Ain Errich',28),(1039,'28045',NULL,'Beni Ilmane',28),(1040,'28046',NULL,'Oultene',28),(1041,'28047',NULL,'Djebel Messaad',28),(1042,'29001',NULL,'Mascara',29),(1043,'29002',NULL,'Bou Hanifia',29),(1044,'29003',NULL,'Tizi',29),(1045,'29004',NULL,'Hacine',29),(1046,'29005',NULL,'Maoussa',29),(1047,'29006',NULL,'Teghennif',29),(1048,'29007',NULL,'El Hachem',29),(1049,'29008',NULL,'Sidi Kada',29),(1050,'29009',NULL,'Zelmata',29),(1051,'29010',NULL,'Oued El Abtal',29),(1052,'29011',NULL,'Ain Ferah',29),(1053,'29012',NULL,'Ghriss',29),(1054,'29013',NULL,'Froha',29),(1055,'29014',NULL,'Matemore',29),(1056,'29015',NULL,'Makdha',29),(1057,'29016',NULL,'Sidi Boussaid',29),(1058,'29017',NULL,'El Bordj',29),(1059,'29018',NULL,'Ain Fekan',29),(1060,'29019',NULL,'Benian',29),(1061,'29020',NULL,'Khalouia',29),(1062,'29021',NULL,'El Menaouer',29),(1063,'29022',NULL,'Oued Taria',29),(1064,'29023',NULL,'Aouf',29),(1065,'29024',NULL,'Ain Fares',29),(1066,'29025',NULL,'Ain Frass',29),(1067,'29026',NULL,'Sig',29),(1068,'29027',NULL,'Oggaz',29),(1069,'29028',NULL,'Alaimia',29),(1070,'29029',NULL,'El Gaada',29),(1071,'29030',NULL,'Zahana',29),(1072,'29031',NULL,'Mohammadia',29),(1073,'29032',NULL,'Sidi Abdelmoumene',29),(1074,'29033',NULL,'Ferraguig',29),(1075,'29034',NULL,'El Ghomri',29),(1076,'29035',NULL,'Sedjerara',29),(1077,'29036',NULL,'Moctadouz',29),(1078,'29037',NULL,'Bou Henni',29),(1079,'29038',NULL,'Guettena',29),(1080,'29039',NULL,'El Mamounia',29),(1081,'29040',NULL,'El Keurt',29),(1082,'29041',NULL,'Gharrous',29),(1083,'29042',NULL,'Gherdjoum',29),(1084,'29043',NULL,'Chorfa',29),(1085,'29044',NULL,'Ras Ain Amirouche',29),(1086,'29045',NULL,'Nesmot',29),(1087,'29046',NULL,'Sidi Abdeldjebar',29),(1088,'29047',NULL,'Sehailia',29),(1089,'30001',NULL,'Ouargla',30),(1090,'30002',NULL,'Ain Beida',30),(1091,'30003',NULL,'Ngoussa',30),(1092,'30004',NULL,'Hassi Messaoud',30),(1093,'30005',NULL,'Rouissat',30),(1094,'30006',NULL,'Balidat Ameur',30),(1095,'30007',NULL,'Tebesbest',30),(1096,'30008',NULL,'Nezla',30),(1097,'30009',NULL,'Zaouia El Abidia',30),(1098,'30010',NULL,'Sidi Slimane',30),(1099,'30011',NULL,'Sidi Khouiled',30),(1100,'30012',NULL,'Hassi Ben Abdellah',30),(1101,'30013',NULL,'Touggourt',30),(1102,'30014',NULL,'El Hadjira',30),(1103,'30015',NULL,'Taibet',30),(1104,'30016',NULL,'Tamacine',30),(1105,'30017',NULL,'Benaceur',30),(1106,'30018',NULL,'Mnaguer',30),(1107,'30019',NULL,'Megarine',30),(1108,'30020',NULL,'El Allia',30),(1109,'30021',NULL,'El Borma',30),(1110,'31001',NULL,'Oran',31),(1111,'31002',NULL,'Gdyel',31),(1112,'31003',NULL,'Bir El Djir',31),(1113,'31004',NULL,'Hassi Bounif',31),(1114,'31005',NULL,'Es Senia',31),(1115,'31006',NULL,'Arzew',31),(1116,'31007',NULL,'Bethioua',31),(1117,'31008',NULL,'Marsat El Hadjadj',31),(1118,'31009',NULL,'Ain Turk',31),(1119,'31010',NULL,'El Ancar',31),(1120,'31011',NULL,'Oued Tlelat',31),(1121,'31012',NULL,'Tafraoui',31),(1122,'31013',NULL,'Sidi Chami',31),(1123,'31014',NULL,'Boufatis',31),(1124,'31015',NULL,'Mers El Kebir',31),(1125,'31016',NULL,'Bousfer',31),(1126,'31017',NULL,'El Karma',31),(1127,'31018',NULL,'El Braya',31),(1128,'31019',NULL,'Hassi Ben Okba',31),(1129,'31020',NULL,'Ben Freha',31),(1130,'31021',NULL,'Hassi Mefsoukh',31),(1131,'31022',NULL,'Sidi Ben Yabka',31),(1132,'31023',NULL,'Messerghin',31),(1133,'31024',NULL,'Boutlelis',31),(1134,'31025',NULL,'Ain Kerma',31),(1135,'31026',NULL,'Ain Biya',31),(1136,'32001',NULL,'El Bayadh',32),(1137,'32002',NULL,'Rogassa',32),(1138,'32003',NULL,'Stitten',32),(1139,'32004',NULL,'Brezina',32),(1140,'32005',NULL,'Ghassoul',32),(1141,'32006',NULL,'Boualem',32),(1142,'32007',NULL,'El Abiodh Sidi Cheikh',32),(1143,'32008',NULL,'Ain El Orak',32),(1144,'32009',NULL,'Arbaouat',32),(1145,'32010',NULL,'Bougtoub',32),(1146,'32011',NULL,'El Kheither',32),(1147,'32012',NULL,'Kef El Ahmar',32),(1148,'32013',NULL,'Boussemghoun',32),(1149,'32014',NULL,'Chellala',32),(1150,'32015',NULL,'Krakda',32),(1151,'32016',NULL,'El Bnoud',32),(1152,'32017',NULL,'Cheguig',32),(1153,'32018',NULL,'Sidi Ameur',32),(1154,'32019',NULL,'El Mehara',32),(1155,'32020',NULL,'Tousmouline',32),(1156,'32021',NULL,'Sidi Slimane',32),(1157,'32022',NULL,'Sidi Tifour',32),(1158,'33001',NULL,'Illizi',33),(1159,'33002',NULL,'Djanet',33),(1160,'33003',NULL,'Debdeb',33),(1161,'33004',NULL,'Bordj Omar Driss',33),(1162,'33005',NULL,'Bordj El Haouasse',33),(1163,'33006',NULL,'In Amenas',33),(1164,'34001',NULL,'Bordj Bou Arreridj',34),(1165,'34002',NULL,'Ras El Oued',34),(1166,'34003',NULL,'Bordj Zemoura',34),(1167,'34004',NULL,'Mansoura',34),(1168,'34005',NULL,'El Mhir',34),(1169,'34006',NULL,'Ben Daoud',34),(1170,'34007',NULL,'El Achir',34),(1171,'34008',NULL,'Ain Taghrout',34),(1172,'34009',NULL,'Bordj Ghdir',34),(1173,'34010',NULL,'Sidi Embarek',34),(1174,'34011',NULL,'El Hamadia',34),(1175,'34012',NULL,'Belimour',34),(1176,'34013',NULL,'Medjana',34),(1177,'34014',NULL,'Teniet En Nasr',34),(1178,'34015',NULL,'Djaafra',34),(1179,'34016',NULL,'El Main',34),(1180,'34017',NULL,'Ouled Brahem',34),(1181,'34018',NULL,'Ouled Dahmane',34),(1182,'34019',NULL,'Hasnaoua',34),(1183,'34020',NULL,'Khelil',34),(1184,'34021',NULL,'Taglait',34),(1185,'34022',NULL,'Ksour',34),(1186,'34023',NULL,'Ouled Sidi Brahim',34),(1187,'34024',NULL,'Tafreg',34),(1188,'34025',NULL,'Colla',34),(1189,'34026',NULL,'Tixter',34),(1190,'34027',NULL,'El Ach',34),(1191,'34028',NULL,'El Anseur',34),(1192,'34029',NULL,'Tesmart',34),(1193,'34030',NULL,'Ain Tesra',34),(1194,'34031',NULL,'Bir Kasdali',34),(1195,'34032',NULL,'Ghilassa',34),(1196,'34033',NULL,'Rabta',34),(1197,'34034',NULL,'Haraza',34),(1198,'35001',NULL,'Boumerdes',35),(1199,'35002',NULL,'Boudouaou',35),(1200,'35004',NULL,'Afir',35),(1201,'35005',NULL,'Bordj Menaiel',35),(1202,'35006',NULL,'Baghlia',35),(1203,'35007',NULL,'Sidi Daoud',35),(1204,'35008',NULL,'Naciria',35),(1205,'35009',NULL,'Djinet',35),(1206,'35010',NULL,'Isser',35),(1207,'35011',NULL,'Zemmouri',35),(1208,'35012',NULL,'Si Mustapha',35),(1209,'35013',NULL,'Tidjelabine',35),(1210,'35014',NULL,'Chabet El Ameur',35),(1211,'35015',NULL,'Thenia',35),(1212,'35018',NULL,'Timezrit',35),(1213,'35019',NULL,'Corso',35),(1214,'35020',NULL,'Ouled Moussa',35),(1215,'35021',NULL,'Larbatache',35),(1216,'35022',NULL,'Bouzegza Keddara',35),(1217,'35025',NULL,'Taourga',35),(1218,'35026',NULL,'Ouled Aissa',35),(1219,'35027',NULL,'Ben Choud',35),(1220,'35028',NULL,'Dellys',35),(1221,'35029',NULL,'Ammal',35),(1222,'35030',NULL,'Beni Amrane',35),(1223,'35031',NULL,'Souk El Had',35),(1224,'35032',NULL,'Boudouaou El Bahri',35),(1225,'35033',NULL,'Ouled Hedadj',35),(1226,'35035',NULL,'Laghata',35),(1227,'35036',NULL,'Hammedi',35),(1228,'35037',NULL,'Khemis El Khechna',35),(1229,'35038',NULL,'El Kharrouba',35),(1230,'36001',NULL,'El Tarf',36),(1231,'36002',NULL,'Bouhadjar',36),(1232,'36003',NULL,'Ben Mhidi',36),(1233,'36004',NULL,'Bougous',36),(1234,'36005',NULL,'El Kala',36),(1235,'36006',NULL,'Ain El Assel',36),(1236,'36007',NULL,'El Aioun',36),(1237,'36008',NULL,'Bouteldja',36),(1238,'36009',NULL,'Souarekh',36),(1239,'36010',NULL,'Berrihane',36),(1240,'36011',NULL,'Lac Des Oiseaux',36),(1241,'36012',NULL,'Chefia',36),(1242,'36013',NULL,'Drean',36),(1243,'36014',NULL,'Chihani',36),(1244,'36015',NULL,'Chebaita Mokhtar',36),(1245,'36016',NULL,'Besbes',36),(1246,'36017',NULL,'Asfour',36),(1247,'36018',NULL,'Echatt',36),(1248,'36019',NULL,'Zerizer',36),(1249,'36020',NULL,'Zitouna',36),(1250,'36021',NULL,'Ain Kerma',36),(1251,'36022',NULL,'Oued Zitoun',36),(1252,'36023',NULL,'Hammam Beni Salah',36),(1253,'36024',NULL,'Raml Souk',36),(1254,'37001',NULL,'Tindouf',37),(1255,'37002',NULL,'Oum El Assel',37),(1256,'38001',NULL,'Tissemsilt',38),(1257,'38002',NULL,'Bordj Bou Naama',38),(1258,'38003',NULL,'Theniet El Had',38),(1259,'38004',NULL,'Lazharia',38),(1260,'38005',NULL,'Beni Chaib',38),(1261,'38006',NULL,'Lardjem',38),(1262,'38007',NULL,'Melaab',38),(1263,'38008',NULL,'Sidi Lantri',38),(1264,'38009',NULL,'Bordj El Emir Abdelkader',38),(1265,'38010',NULL,'Layoune',38),(1266,'38011',NULL,'Khemisti',38),(1267,'38012',NULL,'Ouled Bessem',38),(1268,'38013',NULL,'Ammari',38),(1269,'38014',NULL,'Youssoufia',38),(1270,'38015',NULL,'Sidi Boutouchent',38),(1271,'38016',NULL,'Larbaa',38),(1272,'38017',NULL,'Maasem',38),(1273,'38018',NULL,'Sidi Abed',38),(1274,'38019',NULL,'Tamalaht',38),(1275,'38020',NULL,'Sidi Slimane',38),(1276,'38021',NULL,'Boucaid',38),(1277,'38022',NULL,'Beni Lahcene',38),(1278,'39001',NULL,'El Oued',39),(1279,'39002',NULL,'Robbah',39),(1280,'39003',NULL,'Oued El Alenda',39),(1281,'39004',NULL,'Bayadha',39),(1282,'39005',NULL,'Nakhla',39),(1283,'39006',NULL,'Guemar',39),(1284,'39007',NULL,'Kouinine',39),(1285,'39008',NULL,'Reguiba',39),(1286,'39009',NULL,'Hamraia',39),(1287,'39010',NULL,'Taghzout',39),(1288,'39011',NULL,'Debila',39),(1289,'39012',NULL,'Hassani Abdelkrim',39),(1290,'39013',NULL,'Hassi Khelifa',39),(1291,'39014',NULL,'Taleb Larbi',39),(1292,'39015',NULL,'Douar El Ma',39),(1293,'39016',NULL,'Sidi Aoun',39),(1294,'39017',NULL,'Trifaoui',39),(1295,'39018',NULL,'Magrane',39),(1296,'39019',NULL,'Beni Guecha',39),(1297,'39020',NULL,'Ourmas',39),(1298,'39021',NULL,'Still',39),(1299,'39022',NULL,'Mrara',39),(1300,'39023',NULL,'Sidi Khellil',39),(1301,'39024',NULL,'Tendla',39),(1302,'39025',NULL,'El Ogla',39),(1303,'39026',NULL,'Mih Ouansa',39),(1304,'39027',NULL,'El Mghair',39),(1305,'39028',NULL,'Djamaa',39),(1306,'39029',NULL,'Oum Touyour',39),(1307,'39030',NULL,'Sidi Amrane',39),(1308,'40001',NULL,'Khenchela',40),(1309,'40002',NULL,'Mtoussa',40),(1310,'40003',NULL,'Kais',40),(1311,'40004',NULL,'Baghai',40),(1312,'40005',NULL,'El Hamma',40),(1313,'40006',NULL,'Ain Touila',40),(1314,'40007',NULL,'Taouzianat',40),(1315,'40008',NULL,'Bouhmama',40),(1316,'40009',NULL,'El Oueldja',40),(1317,'40010',NULL,'Remila',40),(1318,'40011',NULL,'Cherchar',40),(1319,'40012',NULL,'Djellal',40),(1320,'40013',NULL,'Babar',40),(1321,'40014',NULL,'Tamza',40),(1322,'40015',NULL,'Ensigha',40),(1323,'40016',NULL,'Ouled Rechache',40),(1324,'40017',NULL,'El Mahmal',40),(1325,'40018',NULL,'Msara',40),(1326,'40019',NULL,'Yabous',40),(1327,'40020',NULL,'Khirane',40),(1328,'40021',NULL,'Chelia',40),(1329,'41001',NULL,'Souk Ahras',41),(1330,'41002',NULL,'Sedrata',41),(1331,'41003',NULL,'Hanancha',41),(1332,'41004',NULL,'Mechroha',41),(1333,'41005',NULL,'Ouled Driss',41),(1334,'41006',NULL,'Tiffech',41),(1335,'41007',NULL,'Zaarouria',41),(1336,'41008',NULL,'Taoura',41),(1337,'41009',NULL,'Drea',41),(1338,'41010',NULL,'Haddada',41),(1339,'41011',NULL,'Khedara',41),(1340,'41012',NULL,'Merahna',41),(1341,'41013',NULL,'Ouled Moumen',41),(1342,'41014',NULL,'Bir Bouhouche',41),(1343,'41015',NULL,'Mdaourouche',41),(1344,'41016',NULL,'Oum El Adhaim',41),(1345,'41017',NULL,'Ain Zana',41),(1346,'41018',NULL,'Ain Soltane',41),(1347,'41019',NULL,'Quillen',41),(1348,'41020',NULL,'Sidi Fredj',41),(1349,'41021',NULL,'Safel El Ouiden',41),(1350,'41022',NULL,'Ragouba',41),(1351,'41023',NULL,'Khemissa',41),(1352,'41024',NULL,'Oued Keberit',41),(1353,'41025',NULL,'Terraguelt',41),(1354,'41026',NULL,'Zouabi',41),(1355,'42001',NULL,'Tipaza',42),(1356,'42002',NULL,'Menaceur',42),(1357,'42003',NULL,'Larhat',42),(1358,'42004',NULL,'Douaouda',42),(1359,'42005',NULL,'Bourkika',42),(1360,'42006',NULL,'Khemisti',42),(1361,'42010',NULL,'Aghabal',42),(1362,'42012',NULL,'Hadjout',42),(1363,'42013',NULL,'Sidi Amar',42),(1364,'42014',NULL,'Gouraya',42),(1365,'42015',NULL,'Nodor',42),(1366,'42016',NULL,'Chaiba',42),(1367,'42017',NULL,'Ain Tagourait',42),(1368,'42022',NULL,'Cherchel',42),(1369,'42023',NULL,'Damous',42),(1370,'42024',NULL,'Meurad',42),(1371,'42025',NULL,'Fouka',42),(1372,'42026',NULL,'Bou Ismail',42),(1373,'42027',NULL,'Ahmer El Ain',42),(1374,'42030',NULL,'Bou Haroun',42),(1375,'42032',NULL,'Sidi Ghiles',42),(1376,'42033',NULL,'Messelmoun',42),(1377,'42034',NULL,'Sidi Rached',42),(1378,'42035',NULL,'Kolea',42),(1379,'42036',NULL,'Attatba',42),(1380,'42040',NULL,'Sidi Semiane',42),(1381,'42041',NULL,'Beni Milleuk',42),(1382,'42042',NULL,'Hadjerat Ennous',42),(1383,'43001',NULL,'Mila',43),(1384,'43002',NULL,'Ferdjioua',43),(1385,'43003',NULL,'Chelghoum Laid',43),(1386,'43004',NULL,'Oued Athmenia',43),(1387,'43005',NULL,'Ain Mellouk',43),(1388,'43006',NULL,'Telerghma',43),(1389,'43007',NULL,'Oued Seguen',43),(1390,'43008',NULL,'Tadjenanet',43),(1391,'43009',NULL,'Benyahia Abderrahmane',43),(1392,'43010',NULL,'Oued Endja',43),(1393,'43011',NULL,'Ahmed Rachedi',43),(1394,'43012',NULL,'Ouled Khalouf',43),(1395,'43013',NULL,'Tiberguent',43),(1396,'43014',NULL,'Bouhatem',43),(1397,'43015',NULL,'Rouached',43),(1398,'43016',NULL,'Tessala Lamatai',43),(1399,'43017',NULL,'Grarem Gouga',43),(1400,'43018',NULL,'Sidi Merouane',43),(1401,'43019',NULL,'Tassadane Haddada',43),(1402,'43020',NULL,'Derradji Bousselah',43),(1403,'43021',NULL,'Minar Zarza',43),(1404,'43022',NULL,'Amira Arras',43),(1405,'43023',NULL,'Terrai Bainen',43),(1406,'43024',NULL,'Hamala',43),(1407,'43025',NULL,'Ain Tine',43),(1408,'43026',NULL,'El Mechira',43),(1409,'43027',NULL,'Sidi Khelifa',43),(1410,'43028',NULL,'Zeghaia',43),(1411,'43029',NULL,'Elayadi Barbes',43),(1412,'43030',NULL,'Ain Beida Harriche',43),(1413,'43031',NULL,'Yahia Beniguecha',43),(1414,'43032',NULL,'Chigara',43),(1415,'44001',NULL,'Ain Defla',44),(1416,'44002',NULL,'Miliana',44),(1417,'44003',NULL,'Boumedfaa',44),(1418,'44004',NULL,'Khemis Miliana',44),(1419,'44005',NULL,'Hammam Righa',44),(1420,'44006',NULL,'Arib',44),(1421,'44007',NULL,'Djelida',44),(1422,'44008',NULL,'El Amra',44),(1423,'44009',NULL,'Bourached',44),(1424,'44010',NULL,'El Attaf',44),(1425,'44011',NULL,'El Abadia',44),(1426,'44012',NULL,'Djendel',44),(1427,'44013',NULL,'Oued Chorfa',44),(1428,'44014',NULL,'Ain Lechiakh',44),(1429,'44015',NULL,'Oued Djemaa',44),(1430,'44016',NULL,'Rouina',44),(1431,'44017',NULL,'Zeddine',44),(1432,'44018',NULL,'El Hassania',44),(1433,'44019',NULL,'Bir Ouled Khelifa',44),(1434,'44020',NULL,'Ain Soltane',44),(1435,'44021',NULL,'Tarik Ibn Ziad',44),(1436,'44022',NULL,'Bordj Emir Khaled',44),(1437,'44023',NULL,'Ain Torki',44),(1438,'44024',NULL,'Sidi Lakhdar',44),(1439,'44025',NULL,'Ben Allal',44),(1440,'44026',NULL,'Ain Benian',44),(1441,'44027',NULL,'Hoceinia',44),(1442,'44028',NULL,'Barbouche',44),(1443,'44029',NULL,'Djemaa Ouled Chikh',44),(1444,'44030',NULL,'Mekhatria',44),(1445,'44031',NULL,'Bathia',44),(1446,'44032',NULL,'Tachta Zegagha',44),(1447,'44033',NULL,'Ain Bouyahia',44),(1448,'44034',NULL,'El Maine',44),(1449,'44035',NULL,'Tiberkanine',44),(1450,'44036',NULL,'Belaas',44),(1451,'45001',NULL,'Naama',45),(1452,'45002',NULL,'Mechria',45),(1453,'45003',NULL,'Ain Sefra',45),(1454,'45004',NULL,'Tiout',45),(1455,'45005',NULL,'Sfissifa',45),(1456,'45006',NULL,'Moghrar',45),(1457,'45007',NULL,'Assela',45),(1458,'45008',NULL,'Djeniane Bourzeg',45),(1459,'45009',NULL,'Ain Ben Khelil',45),(1460,'45010',NULL,'Makman Ben Amer',45),(1461,'45011',NULL,'Kasdir',45),(1462,'45012',NULL,'El Biod',45),(1463,'46001',NULL,'Ain Temouchent',46),(1464,'46002',NULL,'Chaabet El Ham',46),(1465,'46003',NULL,'Ain Kihal',46),(1466,'46004',NULL,'Hammam Bouhadjar',46),(1467,'46005',NULL,'Bou Zedjar',46),(1468,'46006',NULL,'Oued Berkeche',46),(1469,'46007',NULL,'Aghlal',46),(1470,'46008',NULL,'Terga',46),(1471,'46009',NULL,'Ain El Arbaa',46),(1472,'46010',NULL,'Tamzoura',46),(1473,'46011',NULL,'Chentouf',46),(1474,'46012',NULL,'Sidi Ben Adda',46),(1475,'46013',NULL,'Aoubellil',46),(1476,'46014',NULL,'El Malah',46),(1477,'46015',NULL,'Sidi Boumediene',46),(1478,'46016',NULL,'Oued Sabah',46),(1479,'46017',NULL,'Ouled Boudjemaa',46),(1480,'46018',NULL,'Ain Tolba',46),(1481,'46019',NULL,'El Amria',46),(1482,'46020',NULL,'Hassi El Ghella',46),(1483,'46021',NULL,'Hassasna',46),(1484,'46022',NULL,'Ouled Kihal',46),(1485,'46023',NULL,'Beni Saf',46),(1486,'46024',NULL,'Sidi Safi',46),(1487,'46025',NULL,'Oulhaca El Gheraba',46),(1488,'46026',NULL,'Tadmaya',46),(1489,'46027',NULL,'El Emir Abdelkader',46),(1490,'46028',NULL,'El Messaid',46),(1491,'47001',NULL,'Ghardaia',47),(1492,'47002',NULL,'El Meniaa',47),(1493,'47003',NULL,'Dhayet Bendhahoua',47),(1494,'47004',NULL,'Berriane',47),(1495,'47005',NULL,'Metlili',47),(1496,'47006',NULL,'El Guerrara',47),(1497,'47007',NULL,'El Atteuf',47),(1498,'47008',NULL,'Zelfana',47),(1499,'47009',NULL,'Sebseb',47),(1500,'47010',NULL,'Bounoura',47),(1501,'47011',NULL,'Hassi Fehal',47),(1502,'47012',NULL,'Hassi Gara',47),(1503,'47013',NULL,'Mansoura',47),(1504,'48001',NULL,'Relizane',48),(1505,'48002',NULL,'Oued Rhiou',48),(1506,'48003',NULL,'Belaassel Bouzegza',48),(1507,'48004',NULL,'Sidi Saada',48),(1508,'48005',NULL,'Ouled Aiche',48),(1509,'48006',NULL,'Sidi Lazreg',48),(1510,'48007',NULL,'El Hamadna',48),(1511,'48008',NULL,'Sidi Mhamed Ben Ali',48),(1512,'48009',NULL,'Mediouna',48),(1513,'48010',NULL,'Sidi Khettab',48),(1514,'48011',NULL,'Ammi Moussa',48),(1515,'48012',NULL,'Zemmoura',48),(1516,'48013',NULL,'Beni Dergoun',48),(1517,'48014',NULL,'Djidiouia',48),(1518,'48015',NULL,'El Guettar',48),(1519,'48016',NULL,'Hamri',48),(1520,'48017',NULL,'El Matmar',48),(1521,'48018',NULL,'Sidi Mhamed Ben Aouda',48),(1522,'48019',NULL,'Ain Tarek',48),(1523,'48020',NULL,'Oued Essalem',48),(1524,'48021',NULL,'Ouarizane',48),(1525,'48022',NULL,'Mazouna',48),(1526,'48023',NULL,'Kalaa',48),(1527,'48024',NULL,'Ain Rahma',48),(1528,'48025',NULL,'Yellel',48),(1529,'48026',NULL,'Oued El Djemaa',48),(1530,'48027',NULL,'Ramka',48),(1531,'48028',NULL,'Mendes',48),(1532,'48029',NULL,'Lahlef',48),(1533,'48030',NULL,'Beni Zentis',48),(1534,'48031',NULL,'Souk El Haad',48),(1535,'48032',NULL,'Dar Ben Abdellah',48),(1536,'48033',NULL,'El Hassi',48),(1537,'48034',NULL,'Had Echkalla',48),(1538,'48035',NULL,'Bendaoud',48),(1539,'48036',NULL,'El Ouldja',48),(1540,'48037',NULL,'Merdja Sidi Abed',48),(1541,'48038',NULL,'Ouled Sidi Mihoub',48);
/*!40000 ALTER TABLE `BIZ_COMMUNE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_COMPTE_BANCAIRE`
--

DROP TABLE IF EXISTS `BIZ_COMPTE_BANCAIRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_COMPTE_BANCAIRE` (
  `NOM_BANQUE` varchar(45) NOT NULL,
  `ADRESSE_AGENCE` varchar(45) DEFAULT NULL,
  `CLE` int(11) DEFAULT NULL,
  `CODE_AGENCE` int(11) DEFAULT NULL,
  `CODE_BANQUE` int(11) DEFAULT NULL,
  `CODE_BIC` int(11) DEFAULT NULL,
  `CODE_IBAN` varchar(45) DEFAULT NULL,
  `NUM_COMPTE` int(11) DEFAULT NULL,
  `STATUT_ACTIF_INACTIF` bit(1) DEFAULT NULL,
  PRIMARY KEY (`NOM_BANQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_COMPTE_BANCAIRE`
--

LOCK TABLES `BIZ_COMPTE_BANCAIRE` WRITE;
/*!40000 ALTER TABLE `BIZ_COMPTE_BANCAIRE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_COMPTE_BANCAIRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CONDIDATE_PER_AD_RECRUITMENT`
--

DROP TABLE IF EXISTS `BIZ_CONDIDATE_PER_AD_RECRUITMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CONDIDATE_PER_AD_RECRUITMENT` (
  `BIZ_CONDIDATE_PER_AD_RECRUITMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIZ_AD_RECRUITMENT` bigint(20) DEFAULT NULL,
  `BIZ_CONDIDATE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BIZ_CONDIDATE_PER_AD_RECRUITMENT_ID`),
  KEY `BIZ_FK_RECRUTEMENT` (`BIZ_AD_RECRUITMENT`),
  KEY `BIZ_FK_CANDIDATE` (`BIZ_CONDIDATE_ID`),
  CONSTRAINT `BIZ_FK_CANDIDATE` FOREIGN KEY (`BIZ_CONDIDATE_ID`) REFERENCES `BIZ_CONDIDATE_PER_AD_RECRUITMENT` (`BIZ_CONDIDATE_PER_AD_RECRUITMENT_ID`),
  CONSTRAINT `BIZ_FK_RECRUTEMENT` FOREIGN KEY (`BIZ_AD_RECRUITMENT`) REFERENCES `BIZ_RH_AD_RECRUITMENT` (`BIZ_AD_RECRUITMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CONDIDATE_PER_AD_RECRUITMENT`
--

LOCK TABLES `BIZ_CONDIDATE_PER_AD_RECRUITMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_CONDIDATE_PER_AD_RECRUITMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CONDIDATE_PER_AD_RECRUITMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CONTACTS`
--

DROP TABLE IF EXISTS `BIZ_CONTACTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CONTACTS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CIVILITE` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `FONCTION` varchar(50) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `TELEPHONE_FAX` varchar(14) DEFAULT NULL,
  `TELEPHONE_FIXE` varchar(14) DEFAULT NULL,
  `TELEPHONE_PORTABLE` varchar(14) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `ID_CLIENT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_CONTACTS_CLIENT` (`ID_CLIENT`),
  CONSTRAINT `BIZ_FK_CONTACTS_CLIENT` FOREIGN KEY (`ID_CLIENT`) REFERENCES `BIZ_CLIENT` (`ID_MAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CONTACTS`
--

LOCK TABLES `BIZ_CONTACTS` WRITE;
/*!40000 ALTER TABLE `BIZ_CONTACTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CONTACTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_CONTRAT`
--

DROP TABLE IF EXISTS `BIZ_CONTRAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_CONTRAT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TITRE` varchar(45) DEFAULT NULL,
  `ID_CLIENT` int(11) DEFAULT NULL,
  `ID_TYPE_CONTRAT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_CONTRAT_CLIENT` (`ID_CLIENT`),
  KEY `BIZ_FK_CONTRAT_TYPE` (`ID_TYPE_CONTRAT`),
  CONSTRAINT `BIZ_FK_CONTRAT_CLIENT` FOREIGN KEY (`ID_CLIENT`) REFERENCES `BIZ_CLIENT` (`ID`),
  CONSTRAINT `BIZ_FK_CONTRAT_TYPE` FOREIGN KEY (`ID_TYPE_CONTRAT`) REFERENCES `BIZ_TYPE_CONTRAT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_CONTRAT`
--

LOCK TABLES `BIZ_CONTRAT` WRITE;
/*!40000 ALTER TABLE `BIZ_CONTRAT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_CONTRAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_COURRIER_RECOUVREMENT`
--

DROP TABLE IF EXISTS `BIZ_COURRIER_RECOUVREMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_COURRIER_RECOUVREMENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AC` bit(1) DEFAULT NULL,
  `DATE_COURRIER` date DEFAULT NULL,
  `MONTANT_A_REGLE` decimal(18,2) DEFAULT NULL,
  `N_CHRONO` int(11) DEFAULT NULL,
  `NIVEAU` int(11) DEFAULT NULL,
  `ID_FACTURE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_COURRIER_RECOUVREMENT_FACTURE` (`ID_FACTURE`),
  CONSTRAINT `BIZ_FK_COURRIER_RECOUVREMENT_FACTURE` FOREIGN KEY (`ID_FACTURE`) REFERENCES `BIZ_FACTURE` (`ID_FACTURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_COURRIER_RECOUVREMENT`
--

LOCK TABLES `BIZ_COURRIER_RECOUVREMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_COURRIER_RECOUVREMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_COURRIER_RECOUVREMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_DEVISE`
--

DROP TABLE IF EXISTS `BIZ_DEVISE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_DEVISE` (
  `ID` int(11) NOT NULL,
  `INTITULE` varchar(50) NOT NULL,
  `NOM_DEVISE` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_DEVISE`
--

LOCK TABLES `BIZ_DEVISE` WRITE;
/*!40000 ALTER TABLE `BIZ_DEVISE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_DEVISE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_DOCUMENT_CLIENT`
--

DROP TABLE IF EXISTS `BIZ_DOCUMENT_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_DOCUMENT_CLIENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_PUBLICATION` date DEFAULT NULL,
  `DESCRIPTION` longtext,
  `FILE_ABSOLUTE_NAME` varchar(50) DEFAULT NULL,
  `ID_STATUT` decimal(19,2) DEFAULT NULL,
  `NOM_DOCUMENT` varchar(50) DEFAULT NULL,
  `NOM_FICHIER` varchar(50) DEFAULT NULL,
  `VERSION` varchar(5) DEFAULT NULL,
  `ID_CATEGORIE` bigint(20) DEFAULT NULL,
  `ID_COMPTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_DOCUMENT_CATEGORIE` (`ID_CATEGORIE`),
  KEY `BIZ_FK_DOCUMENT_COMPTE` (`ID_COMPTE`),
  CONSTRAINT `BIZ_FK_DOCUMENT_CATEGORIE` FOREIGN KEY (`ID_CATEGORIE`) REFERENCES `BIZ_CATEGORIE_DOCUMENT` (`ID`),
  CONSTRAINT `BIZ_FK_DOCUMENT_COMPTE` FOREIGN KEY (`ID_COMPTE`) REFERENCES `BIZ_CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_DOCUMENT_CLIENT`
--

LOCK TABLES `BIZ_DOCUMENT_CLIENT` WRITE;
/*!40000 ALTER TABLE `BIZ_DOCUMENT_CLIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_DOCUMENT_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_DOC_BIBLIOTHEQUE`
--

DROP TABLE IF EXISTS `BIZ_DOC_BIBLIOTHEQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_DOC_BIBLIOTHEQUE` (
  `BIBLIOTHEQUE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BIBLIOTHEQUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_DOC_BIBLIOTHEQUE`
--

LOCK TABLES `BIZ_DOC_BIBLIOTHEQUE` WRITE;
/*!40000 ALTER TABLE `BIZ_DOC_BIBLIOTHEQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_DOC_BIBLIOTHEQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_ECHEANCE_PAIEMENT`
--

DROP TABLE IF EXISTS `BIZ_ECHEANCE_PAIEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_ECHEANCE_PAIEMENT` (
  `ID_` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_ECHEANCE` date DEFAULT NULL,
  `DATE_REELLE_REGLEMENT` date DEFAULT NULL,
  `DEROGATION_PAIEMENT` bit(1) DEFAULT NULL,
  `ID_CLIENT` varchar(10) DEFAULT NULL,
  `MONTANT_A_REGLER` decimal(18,2) DEFAULT NULL,
  `MONTANT_REGLER` decimal(18,2) DEFAULT NULL,
  `POURCENTAGE` decimal(2,2) DEFAULT NULL,
  `RESTE_A_REGLER` decimal(18,2) DEFAULT NULL,
  `STATUT` varchar(50) DEFAULT NULL,
  `STATUT_PAIEMENT` bit(1) DEFAULT NULL,
  `ID_FACTURE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `BIZ_FK_PAIEMENT_FACTURE` (`ID_FACTURE`),
  CONSTRAINT `BIZ_FK_PAIEMENT_FACTURE` FOREIGN KEY (`ID_FACTURE`) REFERENCES `BIZ_FACTURE` (`ID_FACTURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_ECHEANCE_PAIEMENT`
--

LOCK TABLES `BIZ_ECHEANCE_PAIEMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_ECHEANCE_PAIEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_ECHEANCE_PAIEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_FACTURE`
--

DROP TABLE IF EXISTS `BIZ_FACTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_FACTURE` (
  `ID_FACTURE` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONDITION_PAIEMENT` varchar(50) DEFAULT NULL,
  `DATE_FACTURE` date DEFAULT NULL,
  `DATE_RAPPEL` date DEFAULT NULL,
  `DEROGATION_FACTURE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `ECHEANCE_REGLEMENT` date DEFAULT NULL,
  `ID_CLIENT` int(11) DEFAULT NULL,
  `INTITULE_CLIENT` varchar(50) DEFAULT NULL,
  `MONTANT_A_REGLE` decimal(18,2) DEFAULT NULL,
  `MONTANT_HT` decimal(18,2) DEFAULT NULL,
  `MONTANT_TVA` decimal(18,2) DEFAULT NULL,
  `N_CLIENT` int(11) DEFAULT NULL,
  `N_PIECE` decimal(19,2) DEFAULT NULL,
  `PRIX_UNITAIRE_HT` decimal(18,2) DEFAULT NULL,
  `QUALIFIE` bit(1) DEFAULT NULL,
  `QUANTITE` int(11) DEFAULT NULL,
  `REFERENCE` varchar(50) DEFAULT NULL,
  `SORTIE_STOCK` varchar(50) DEFAULT NULL,
  `TIMBRE` decimal(18,2) DEFAULT NULL,
  `TOTAL_HT` decimal(18,2) DEFAULT NULL,
  `TOTAL_TTC` decimal(18,2) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `MODE_REGLEMENT` int(11) DEFAULT NULL,
  `STATUT_FACTURE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_FACTURE`),
  KEY `BIZ_FK_FACTURE_MODE_REGLEMENT` (`MODE_REGLEMENT`),
  KEY `BIZ_FK_FACTURE_STATUT_FACTURE` (`STATUT_FACTURE`),
  CONSTRAINT `BIZ_FK_FACTURE_MODE_REGLEMENT` FOREIGN KEY (`MODE_REGLEMENT`) REFERENCES `BIZ_MODE_REGLEMENT` (`ID_MODE_REGLEMENT`),
  CONSTRAINT `BIZ_FK_FACTURE_STATUT_FACTURE` FOREIGN KEY (`STATUT_FACTURE`) REFERENCES `BIZ_STATUT_FACTURE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_FACTURE`
--

LOCK TABLES `BIZ_FACTURE` WRITE;
/*!40000 ALTER TABLE `BIZ_FACTURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_FACTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_FAMILLE`
--

DROP TABLE IF EXISTS `BIZ_FAMILLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_FAMILLE` (
  `CODE_FAMILLE` int(11) NOT NULL,
  `DATE_MODIF` varchar(250) DEFAULT NULL,
  `FA_CODE_FAMILLE` varchar(50) DEFAULT NULL,
  `FA_DATE_MODIF` date DEFAULT NULL,
  `FA_ID` bigint(20) NOT NULL,
  `FA_INTITULE` varchar(250) DEFAULT NULL,
  `ID_RAYON` decimal(19,2) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODE_FAMILLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_FAMILLE`
--

LOCK TABLES `BIZ_FAMILLE` WRITE;
/*!40000 ALTER TABLE `BIZ_FAMILLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_FAMILLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_FAMILLE_ACHETEUR`
--

DROP TABLE IF EXISTS `BIZ_FAMILLE_ACHETEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_FAMILLE_ACHETEUR` (
  `ID_FA` bigint(20) NOT NULL AUTO_INCREMENT,
  `PA_ID_ACHETEUR` varchar(64) DEFAULT NULL,
  `PA_ID_FAMILLE` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID_FA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_FAMILLE_ACHETEUR`
--

LOCK TABLES `BIZ_FAMILLE_ACHETEUR` WRITE;
/*!40000 ALTER TABLE `BIZ_FAMILLE_ACHETEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_FAMILLE_ACHETEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_FOURNISSEUR`
--

DROP TABLE IF EXISTS `BIZ_FOURNISSEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_FOURNISSEUR` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADRESSE` varchar(50) DEFAULT NULL,
  `ADRESSE_SITE_INTERNET` varchar(45) DEFAULT NULL,
  `CIF` varchar(45) DEFAULT NULL,
  `CODE_FOURNISSEUR` varchar(45) DEFAULT NULL,
  `DATE_MODIF` date DEFAULT NULL,
  `DEVISE_FOURNISSEUR` varchar(45) DEFAULT NULL,
  `INTITULE` varchar(250) DEFAULT NULL,
  `MAIL` varchar(250) DEFAULT NULL,
  `NIF` varchar(45) DEFAULT NULL,
  `NOM_COMMERCIAL` varchar(45) DEFAULT NULL,
  `NOM_HABITUEL` varchar(45) DEFAULT NULL,
  `NUM_ARTICLE_IMPOSITION` varchar(45) DEFAULT NULL,
  `NUM_REGISTRE_COMMERCE` varchar(45) DEFAULT NULL,
  `TVA` varchar(45) DEFAULT NULL,
  `UK` varchar(50) DEFAULT NULL,
  `CLASSEMENT_ACHAT` varchar(45) DEFAULT NULL,
  `CLASSEMENT_METIER` varchar(45) DEFAULT NULL,
  `CLASSEMENT_DEFINITIF` varchar(45) DEFAULT NULL,
  `OFFRE_FINANCIERE` bigint(20) DEFAULT NULL,
  `OFFRE_TECHNIQUE` bigint(20) DEFAULT NULL,
  `TYPE_FOURNISSEUR` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BIZ_FOURNISSEUR_IW_UPLOAD_OFFRE_FINANCIERE` (`OFFRE_FINANCIERE`),
  KEY `FK_BIZ_FOURNISSEUR_IW_UPLOAD_OFFRE_TECHNIQUE` (`OFFRE_TECHNIQUE`),
  KEY `FK_BIZ_FOURNISSEUR_FOURNISSEUR_TYPE` (`TYPE_FOURNISSEUR`),
  CONSTRAINT `FK_BIZ_FOURNISSEUR_FOURNISSEUR_TYPE` FOREIGN KEY (`TYPE_FOURNISSEUR`) REFERENCES `BIZ_FOURNISSEUR_TYPE` (`ID`),
  CONSTRAINT `FK_BIZ_FOURNISSEUR_IW_UPLOAD_OFFRE_FINANCIERE` FOREIGN KEY (`OFFRE_FINANCIERE`) REFERENCES `IW_UPLOAD` (`IW_UPLOAD_ID`),
  CONSTRAINT `FK_BIZ_FOURNISSEUR_IW_UPLOAD_OFFRE_TECHNIQUE` FOREIGN KEY (`OFFRE_FINANCIERE`) REFERENCES `IW_UPLOAD` (`IW_UPLOAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_FOURNISSEUR`
--

LOCK TABLES `BIZ_FOURNISSEUR` WRITE;
/*!40000 ALTER TABLE `BIZ_FOURNISSEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_FOURNISSEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_FOURNISSEUR_TYPE`
--

DROP TABLE IF EXISTS `BIZ_FOURNISSEUR_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_FOURNISSEUR_TYPE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_FOURNISSEUR_TYPE`
--

LOCK TABLES `BIZ_FOURNISSEUR_TYPE` WRITE;
/*!40000 ALTER TABLE `BIZ_FOURNISSEUR_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_FOURNISSEUR_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_GROUP_RESPONSABLE`
--

DROP TABLE IF EXISTS `BIZ_GROUP_RESPONSABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_GROUP_RESPONSABLE` (
  `ID_GR` int(11) NOT NULL AUTO_INCREMENT,
  `ID_RESPONSABLE` varchar(64) DEFAULT NULL,
  `ID_USER` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID_GR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_GROUP_RESPONSABLE`
--

LOCK TABLES `BIZ_GROUP_RESPONSABLE` WRITE;
/*!40000 ALTER TABLE `BIZ_GROUP_RESPONSABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_GROUP_RESPONSABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_LIGNE_COMMANDE`
--

DROP TABLE IF EXISTS `BIZ_LIGNE_COMMANDE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_LIGNE_COMMANDE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `ID_CATEGORIE` int(11) DEFAULT NULL,
  `ID_PROCESS` decimal(19,2) DEFAULT NULL,
  `ID_PRODUIT` decimal(19,2) DEFAULT NULL,
  `MONTANT_HT` decimal(18,2) DEFAULT NULL,
  `PRIX_NEGOC` decimal(18,2) DEFAULT NULL,
  `PRIX_UNITAIRE_HT` decimal(18,2) DEFAULT NULL,
  `QUANTITE` int(11) DEFAULT NULL,
  `TOTAL` decimal(18,2) DEFAULT NULL,
  `TVA` decimal(18,2) DEFAULT NULL,
  `CODE_BUDGET` varchar(45) DEFAULT NULL,
  `DEROGATION_BUDGET` varchar(45) DEFAULT NULL,
  `VALIDATION_BUDGET` tinyint(1) DEFAULT '0',
  `ID_ARTICLE` bigint(20) DEFAULT NULL,
  `ID_COMMAND` bigint(20) DEFAULT NULL,
  `ID_FAMILLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_LIGNE_COMMANDE_ARTICLE` (`ID_ARTICLE`),
  KEY `BIZ_FK_LIGNE_COMMANDE_COMMAND` (`ID_COMMAND`),
  KEY `BIZ_FK_LIGNE_COMMANDE_FAMILLE` (`ID_FAMILLE`),
  CONSTRAINT `BIZ_FK_LIGNE_COMMANDE_ARTICLE` FOREIGN KEY (`ID_ARTICLE`) REFERENCES `BIZ_ARTICLE` (`AR_ID`),
  CONSTRAINT `BIZ_FK_LIGNE_COMMANDE_COMMAND` FOREIGN KEY (`ID_COMMAND`) REFERENCES `BIZ_COMMANDE` (`COMMAND_ID`),
  CONSTRAINT `BIZ_FK_LIGNE_COMMANDE_FAMILLE` FOREIGN KEY (`ID_FAMILLE`) REFERENCES `BIZ_FAMILLE` (`CODE_FAMILLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_LIGNE_COMMANDE`
--

LOCK TABLES `BIZ_LIGNE_COMMANDE` WRITE;
/*!40000 ALTER TABLE `BIZ_LIGNE_COMMANDE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_LIGNE_COMMANDE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_LIGNE_FOURNISSEUR`
--

DROP TABLE IF EXISTS `BIZ_LIGNE_FOURNISSEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_LIGNE_FOURNISSEUR` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID_PROCESS` decimal(19,2) DEFAULT NULL,
  `ID_COMMAND` bigint(20) DEFAULT NULL,
  `ID_FOURNISSEUR` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_LIGNE_FOURNISSEUR_COMMAND` (`ID_COMMAND`),
  KEY `BIZ_FK_LIGNE_FOURNISSEUR_FOURNISSEUR` (`ID_FOURNISSEUR`),
  CONSTRAINT `BIZ_FK_LIGNE_FOURNISSEUR_COMMAND` FOREIGN KEY (`ID_COMMAND`) REFERENCES `BIZ_COMMANDE` (`COMMAND_ID`),
  CONSTRAINT `BIZ_FK_LIGNE_FOURNISSEUR_FOURNISSEUR` FOREIGN KEY (`ID_FOURNISSEUR`) REFERENCES `BIZ_FOURNISSEUR` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_LIGNE_FOURNISSEUR`
--

LOCK TABLES `BIZ_LIGNE_FOURNISSEUR` WRITE;
/*!40000 ALTER TABLE `BIZ_LIGNE_FOURNISSEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_LIGNE_FOURNISSEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_MAGASIN`
--

DROP TABLE IF EXISTS `BIZ_MAGASIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_MAGASIN` (
  `ID_MAGASIN` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADRESSE` varchar(50) DEFAULT NULL,
  `COORDONNEES_GEO` varchar(20) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(14) DEFAULT NULL,
  `SECTEUR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_MAGASIN`),
  KEY `BIZ_FK_MAGASIN_SECTEUR` (`SECTEUR`),
  CONSTRAINT `BIZ_FK_MAGASIN_SECTEUR` FOREIGN KEY (`SECTEUR`) REFERENCES `BIZ_SECTEUR` (`CODE_SECTEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_MAGASIN`
--

LOCK TABLES `BIZ_MAGASIN` WRITE;
/*!40000 ALTER TABLE `BIZ_MAGASIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_MAGASIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_MAIL`
--

DROP TABLE IF EXISTS `BIZ_MAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_MAIL` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONTENU` longtext,
  `DATE_ENVOI` date DEFAULT NULL,
  `EXPEDITEUR` varchar(50) DEFAULT NULL,
  `RECEPTEUR` varchar(50) DEFAULT NULL,
  `SUJET` varchar(50) DEFAULT NULL,
  `ID_MODELE_MAIL` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_MAIL_MODELE` (`ID_MODELE_MAIL`),
  CONSTRAINT `BIZ_FK_MAIL_MODELE` FOREIGN KEY (`ID_MODELE_MAIL`) REFERENCES `BIZ_MODELE_MAIL` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_MAIL`
--

LOCK TABLES `BIZ_MAIL` WRITE;
/*!40000 ALTER TABLE `BIZ_MAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_MAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_MEDIA`
--

DROP TABLE IF EXISTS `BIZ_MEDIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_MEDIA` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_MEDIA`
--

LOCK TABLES `BIZ_MEDIA` WRITE;
/*!40000 ALTER TABLE `BIZ_MEDIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_MEDIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_MODELE_MAIL`
--

DROP TABLE IF EXISTS `BIZ_MODELE_MAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_MODELE_MAIL` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` longtext,
  `titre` varchar(250) DEFAULT NULL,
  `typeMail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_MODELE_MAIL`
--

LOCK TABLES `BIZ_MODELE_MAIL` WRITE;
/*!40000 ALTER TABLE `BIZ_MODELE_MAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_MODELE_MAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_MODE_REGLEMENT`
--

DROP TABLE IF EXISTS `BIZ_MODE_REGLEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_MODE_REGLEMENT` (
  `ID_MODE_REGLEMENT` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE_MODE_REGLEMENT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_MODE_REGLEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_MODE_REGLEMENT`
--

LOCK TABLES `BIZ_MODE_REGLEMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_MODE_REGLEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_MODE_REGLEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_OPERATION`
--

DROP TABLE IF EXISTS `BIZ_OPERATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_OPERATION` (
  `ID_OPERATION` int(11) NOT NULL AUTO_INCREMENT,
  `ANIMATION` varchar(50) DEFAULT NULL,
  `ARTICLE` decimal(18,2) DEFAULT NULL,
  `DATE_COMMUNICATION_BRIEF` date DEFAULT NULL,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_DEBUT_REEL` date DEFAULT NULL,
  `DATE_FIN_PREVISIONNELLE` date DEFAULT NULL,
  `DATE_FIN_REEL` date DEFAULT NULL,
  `DATE_PROPOSITION_OFFRE` date DEFAULT NULL,
  `DATE_REMONTE_ENGAGEMENTS` date DEFAULT NULL,
  `DATE_RETOUR_LISTE_DEFINITIVE` date DEFAULT NULL,
  `DECROCHAGE_CLIENT` int(11) DEFAULT NULL,
  `DEPARTEMENT` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `EAN` varchar(50) DEFAULT NULL,
  `ECART_CAISSE` decimal(18,2) DEFAULT NULL,
  `ENGAGEMENT_MAGAZIN` varchar(50) DEFAULT NULL,
  `FAMILLE` varchar(50) DEFAULT NULL,
  `ID_FOURNISSEUR` int(11) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `LIVRE` varchar(50) DEFAULT NULL,
  `MANQUE_GAGNER_EN_CA` decimal(18,2) DEFAULT NULL,
  `MANQUE_GAGNER_EN_MARGE_ARRIERE` decimal(18,2) DEFAULT NULL,
  `MANQUE_GAGNER_EN_MARGE_AVANT` decimal(18,2) DEFAULT NULL,
  `MARGE` varchar(50) DEFAULT NULL,
  `MARQUE` varchar(50) DEFAULT NULL,
  `MIN_COMMANDE` decimal(18,2) DEFAULT NULL,
  `MOIS` int(11) DEFAULT NULL,
  `NON_LIVRE` varchar(50) DEFAULT NULL,
  `OPERATION_INTITULE` varchar(50) DEFAULT NULL,
  `PA_PROGRAMME` varchar(50) DEFAULT NULL,
  `PAN` decimal(18,2) DEFAULT NULL,
  `PAP` decimal(18,2) DEFAULT NULL,
  `POS` varchar(50) DEFAULT NULL,
  `PVN` decimal(18,2) DEFAULT NULL,
  `PVP` decimal(18,2) DEFAULT NULL,
  `RAYON` varchar(50) DEFAULT NULL,
  `REMISE` decimal(18,2) DEFAULT NULL,
  `TG_PODIUM` varchar(50) DEFAULT NULL,
  `UNITE_DE_BESOIN` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ID_OPERATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_OPERATION`
--

LOCK TABLES `BIZ_OPERATION` WRITE;
/*!40000 ALTER TABLE `BIZ_OPERATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_OPERATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_PHASE_VENTE`
--

DROP TABLE IF EXISTS `BIZ_PHASE_VENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_PHASE_VENTE` (
  `ID_PHASE_VENTE` bigint(20) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PHASE_VENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_PHASE_VENTE`
--

LOCK TABLES `BIZ_PHASE_VENTE` WRITE;
/*!40000 ALTER TABLE `BIZ_PHASE_VENTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_PHASE_VENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_POLITIQUE_PRIX`
--

DROP TABLE IF EXISTS `BIZ_POLITIQUE_PRIX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_POLITIQUE_PRIX` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_MAGASINS` varchar(45) DEFAULT NULL,
  `TAUX_PRIX` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_POLITIQUE_PRIX`
--

LOCK TABLES `BIZ_POLITIQUE_PRIX` WRITE;
/*!40000 ALTER TABLE `BIZ_POLITIQUE_PRIX` DISABLE KEYS */;
INSERT INTO `BIZ_POLITIQUE_PRIX` VALUES (1,'super','5'),(2,'proxy','10'),(3,'relai','20');
/*!40000 ALTER TABLE `BIZ_POLITIQUE_PRIX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_PRIX_VENTE`
--

DROP TABLE IF EXISTS `BIZ_PRIX_VENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_PRIX_VENTE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` bigint(20) DEFAULT NULL,
  `PRIX_HT` decimal(10,4) DEFAULT NULL,
  `PRIX_TTC` decimal(10,4) DEFAULT NULL,
  `TAUX_DE_MARGE` bigint(20) DEFAULT NULL,
  `TYPOLOGIE` varchar(255) DEFAULT NULL,
  `VALEUR_DE_MARGE` bigint(20) DEFAULT NULL,
  `PRIX_RETENU_TTC` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_PRIX_VENTE`
--

LOCK TABLES `BIZ_PRIX_VENTE` WRITE;
/*!40000 ALTER TABLE `BIZ_PRIX_VENTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_PRIX_VENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_PRODUIT`
--

DROP TABLE IF EXISTS `BIZ_PRODUIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_PRODUIT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `ID_COMMANDE` decimal(19,2) DEFAULT NULL,
  `PRIX_NEGOTIATION` decimal(18,2) DEFAULT NULL,
  `QUANTITE` varchar(20) DEFAULT NULL,
  `TOTALE` decimal(18,2) DEFAULT NULL,
  `TVA` decimal(18,2) DEFAULT NULL,
  `UNITE_PRIX` decimal(18,2) DEFAULT NULL,
  `ID_CLIENT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_PRODUIT_CLIENT` (`ID_CLIENT`),
  CONSTRAINT `BIZ_FK_PRODUIT_CLIENT` FOREIGN KEY (`ID_CLIENT`) REFERENCES `BIZ_CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_PRODUIT`
--

LOCK TABLES `BIZ_PRODUIT` WRITE;
/*!40000 ALTER TABLE `BIZ_PRODUIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_PRODUIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_RAYON`
--

DROP TABLE IF EXISTS `BIZ_RAYON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_RAYON` (
  `CODE_RAYON` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `ID` bigint(20) NOT NULL,
  `ID_SECTEUR` decimal(19,2) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODE_RAYON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_RAYON`
--

LOCK TABLES `BIZ_RAYON` WRITE;
/*!40000 ALTER TABLE `BIZ_RAYON` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_RAYON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_REGION`
--

DROP TABLE IF EXISTS `BIZ_REGION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_REGION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_REGION`
--

LOCK TABLES `BIZ_REGION` WRITE;
/*!40000 ALTER TABLE `BIZ_REGION` DISABLE KEYS */;
INSERT INTO `BIZ_REGION` VALUES (1,'Centre'),(2,'Est'),(3,'Ouest'),(4,'Sud'),(5,'Alger Centre'),(6,'Alger Est'),(7,'Alger Ouest');
/*!40000 ALTER TABLE `BIZ_REGION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_REGLEMENT`
--

DROP TABLE IF EXISTS `BIZ_REGLEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_REGLEMENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_SAISIE` date DEFAULT NULL,
  `DATE_JOUR` date DEFAULT NULL,
  `MONTANT_REGLEMENT` decimal(18,2) DEFAULT NULL,
  `DEVISE_REGLEMENT` int(11) NOT NULL,
  `DATE_VALEUR` date DEFAULT NULL,
  `DERNIER_REGLEMENT` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_REGLEMENT_DEVISE_INDX` (`DEVISE_REGLEMENT`),
  CONSTRAINT `BIZ_FK_REGLEMENT_DEVISE` FOREIGN KEY (`DEVISE_REGLEMENT`) REFERENCES `BIZ_DEVISE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_REGLEMENT`
--

LOCK TABLES `BIZ_REGLEMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_REGLEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_REGLEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_RELANCE_CLIENT`
--

DROP TABLE IF EXISTS `BIZ_RELANCE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_RELANCE_CLIENT` (
  `ID_RELANCE` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMMENTAIRE` varchar(50) DEFAULT NULL,
  `DATE_RAPPEL` date DEFAULT NULL,
  `DATE_RELANCE` date DEFAULT NULL,
  `ID_FACTURE` bigint(20) DEFAULT NULL,
  `ID_STATUT_RELANCE` int(11) DEFAULT NULL,
  `ID_TYPE_RELANCE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_RELANCE`),
  KEY `BIZ_FK_RELANCE_CLIENT_FACTURE` (`ID_FACTURE`),
  KEY `BIZ_FK_RELANCE_CLIENT_STATUS_RELANCE` (`ID_STATUT_RELANCE`),
  KEY `BIZ_FK_RELANCE_CLIENT_TYPE` (`ID_TYPE_RELANCE`),
  CONSTRAINT `BIZ_FK_RELANCE_CLIENT_FACTURE` FOREIGN KEY (`ID_FACTURE`) REFERENCES `BIZ_FACTURE` (`ID_FACTURE`),
  CONSTRAINT `BIZ_FK_RELANCE_CLIENT_STATUS_RELANCE` FOREIGN KEY (`ID_STATUT_RELANCE`) REFERENCES `BIZ_STATUT_RELANCE` (`ID`),
  CONSTRAINT `BIZ_FK_RELANCE_CLIENT_TYPE` FOREIGN KEY (`ID_TYPE_RELANCE`) REFERENCES `BIZ_TYPE_RELANCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_RELANCE_CLIENT`
--

LOCK TABLES `BIZ_RELANCE_CLIENT` WRITE;
/*!40000 ALTER TABLE `BIZ_RELANCE_CLIENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_RELANCE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_REUNION`
--

DROP TABLE IF EXISTS `BIZ_REUNION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_REUNION` (
  `REUNION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONDUIT_PAR` varchar(50) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `COMPTE_ID` int(11) DEFAULT NULL,
  `ID_STATUT_REUNION` int(11) DEFAULT NULL,
  PRIMARY KEY (`REUNION_ID`),
  KEY `BIZ_FK_REUNION_COMPTE` (`COMPTE_ID`),
  KEY `BIZ_FK_REUNION_STATUS` (`ID_STATUT_REUNION`),
  CONSTRAINT `BIZ_FK_REUNION_COMPTE` FOREIGN KEY (`COMPTE_ID`) REFERENCES `BIZ_CLIENT` (`ID`),
  CONSTRAINT `BIZ_FK_REUNION_STATUS` FOREIGN KEY (`ID_STATUT_REUNION`) REFERENCES `BIZ_STATUT_REUNION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_REUNION`
--

LOCK TABLES `BIZ_REUNION` WRITE;
/*!40000 ALTER TABLE `BIZ_REUNION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_REUNION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_RH_AD_RECRUITMENT`
--

DROP TABLE IF EXISTS `BIZ_RH_AD_RECRUITMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_RH_AD_RECRUITMENT` (
  `BIZ_AD_RECRUITMENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIZ_AD_TITLE` varchar(45) DEFAULT NULL,
  `BIZ_CONTRACT_TYPE` varchar(45) DEFAULT NULL,
  `BIZ_CREATION_DATE` date DEFAULT NULL,
  `BIZ_END_DATE` date DEFAULT NULL,
  `BIZ_JOB_LOCATION` varchar(45) DEFAULT NULL,
  `BIZ_JOB_NUMBER` varchar(45) DEFAULT NULL,
  `BIZ_PASSAGE_DATE` date DEFAULT NULL,
  `BIZ_REFERENCE` varchar(45) DEFAULT NULL,
  `BIZ_TITLE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BIZ_AD_RECRUITMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_RH_AD_RECRUITMENT`
--

LOCK TABLES `BIZ_RH_AD_RECRUITMENT` WRITE;
/*!40000 ALTER TABLE `BIZ_RH_AD_RECRUITMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_RH_AD_RECRUITMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_RH_RECRUITMENT_ORGANISM`
--

DROP TABLE IF EXISTS `BIZ_RH_RECRUITMENT_ORGANISM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_RH_RECRUITMENT_ORGANISM` (
  `BIZ_RH_RECRUITMENT_ORGANISM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BIZ_ADDRESS` varchar(50) DEFAULT NULL,
  `BIZ_CONTACT` varchar(50) DEFAULT NULL,
  `BIZ_DENOMINATION` varchar(50) DEFAULT NULL,
  `BIZ_SITE` varchar(50) DEFAULT NULL,
  `BIZ_TEL` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`BIZ_RH_RECRUITMENT_ORGANISM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_RH_RECRUITMENT_ORGANISM`
--

LOCK TABLES `BIZ_RH_RECRUITMENT_ORGANISM` WRITE;
/*!40000 ALTER TABLE `BIZ_RH_RECRUITMENT_ORGANISM` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_RH_RECRUITMENT_ORGANISM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_RUBRIQUE_FACTURE`
--

DROP TABLE IF EXISTS `BIZ_RUBRIQUE_FACTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_RUBRIQUE_FACTURE` (
  `ID_RUBRIQUE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `DEVISE` int(11) DEFAULT NULL,
  `MONTANT` decimal(18,2) DEFAULT NULL,
  `NET_A_PAYER` decimal(18,2) DEFAULT NULL,
  `PRIX_UNITAIRE_HT` decimal(18,2) DEFAULT NULL,
  `QUANTITE` int(11) DEFAULT NULL,
  `REMISE` decimal(2,2) DEFAULT NULL,
  `REMISE_HT` decimal(18,2) DEFAULT NULL,
  `TVA` decimal(18,2) DEFAULT NULL,
  `ID_FACTURE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_RUBRIQUE`),
  KEY `BIZ_FK_RUBRIQUE_FACTURE` (`ID_FACTURE`),
  CONSTRAINT `BIZ_FK_RUBRIQUE_FACTURE` FOREIGN KEY (`ID_FACTURE`) REFERENCES `BIZ_FACTURE` (`ID_FACTURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_RUBRIQUE_FACTURE`
--

LOCK TABLES `BIZ_RUBRIQUE_FACTURE` WRITE;
/*!40000 ALTER TABLE `BIZ_RUBRIQUE_FACTURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_RUBRIQUE_FACTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SECTEUR`
--

DROP TABLE IF EXISTS `BIZ_SECTEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SECTEUR` (
  `CODE_SECTEUR` int(11) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `ID_IW_FILE` varchar(45) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  `NOM_IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODE_SECTEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SECTEUR`
--

LOCK TABLES `BIZ_SECTEUR` WRITE;
/*!40000 ALTER TABLE `BIZ_SECTEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SECTEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SECTEUR_RAYON`
--

DROP TABLE IF EXISTS `BIZ_SECTEUR_RAYON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SECTEUR_RAYON` (
  `ID` int(11) NOT NULL,
  `RAYON` int(11) DEFAULT NULL,
  `SECTEUR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_RAYON` (`RAYON`),
  KEY `BIZ_FK_SECTEUR` (`SECTEUR`),
  CONSTRAINT `BIZ_FK_RAYON` FOREIGN KEY (`RAYON`) REFERENCES `BIZ_RAYON` (`CODE_RAYON`),
  CONSTRAINT `BIZ_FK_SECTEUR` FOREIGN KEY (`SECTEUR`) REFERENCES `BIZ_SECTEUR` (`CODE_SECTEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SECTEUR_RAYON`
--

LOCK TABLES `BIZ_SECTEUR_RAYON` WRITE;
/*!40000 ALTER TABLE `BIZ_SECTEUR_RAYON` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SECTEUR_RAYON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SOCIETE`
--

DROP TABLE IF EXISTS `BIZ_SOCIETE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SOCIETE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `SOCIETE_STATUT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SOCIETE`
--

LOCK TABLES `BIZ_SOCIETE` WRITE;
/*!40000 ALTER TABLE `BIZ_SOCIETE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SOCIETE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SOUS_FAMILLE`
--

DROP TABLE IF EXISTS `BIZ_SOUS_FAMILLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SOUS_FAMILLE` (
  `CODE_SOUS_FAMILLE` varchar(50) NOT NULL,
  `DATE_MODIF` varchar(250) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODE_SOUS_FAMILLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SOUS_FAMILLE`
--

LOCK TABLES `BIZ_SOUS_FAMILLE` WRITE;
/*!40000 ALTER TABLE `BIZ_SOUS_FAMILLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SOUS_FAMILLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SOUS_LIGNE_COMMANDE`
--

DROP TABLE IF EXISTS `BIZ_SOUS_LIGNE_COMMANDE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SOUS_LIGNE_COMMANDE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONFIRMATION_CLIENT` bit(1) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `DATE_ENLEVEMENT_REELLE` date DEFAULT NULL,
  `DATE_ENLEVEMENT_SOUHAITEE` date DEFAULT NULL,
  `DATE_ENLEVEMENT_VALIDEE` date DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `LIEU_DECHARGEMENT` varchar(50) DEFAULT NULL,
  `LIEU_ENLEVEMENT` varchar(50) DEFAULT NULL,
  `QUANTITE` decimal(19,2) DEFAULT NULL,
  `STATUT` varchar(50) DEFAULT NULL,
  `ID_LINE_COMMANDE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_SOUS_LIGNE_COMMANDE_PARENT` (`ID_LINE_COMMANDE`),
  CONSTRAINT `BIZ_FK_SOUS_LIGNE_COMMANDE_PARENT` FOREIGN KEY (`ID_LINE_COMMANDE`) REFERENCES `BIZ_LIGNE_COMMANDE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SOUS_LIGNE_COMMANDE`
--

LOCK TABLES `BIZ_SOUS_LIGNE_COMMANDE` WRITE;
/*!40000 ALTER TABLE `BIZ_SOUS_LIGNE_COMMANDE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SOUS_LIGNE_COMMANDE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SRF_SOUS_FAMILLE`
--

DROP TABLE IF EXISTS `BIZ_SRF_SOUS_FAMILLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SRF_SOUS_FAMILLE` (
  `ID` int(11) NOT NULL,
  `SOUS_FAMILLE` varchar(50) DEFAULT NULL,
  `SECTEUR_RAYON_FAMILLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_SECTEUR_RAYON_FAMILLE` (`SECTEUR_RAYON_FAMILLE`),
  CONSTRAINT `BIZ_FK_SECTEUR_RAYON_FAMILLE` FOREIGN KEY (`SECTEUR_RAYON_FAMILLE`) REFERENCES `BIZ_SR_FAMILLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SRF_SOUS_FAMILLE`
--

LOCK TABLES `BIZ_SRF_SOUS_FAMILLE` WRITE;
/*!40000 ALTER TABLE `BIZ_SRF_SOUS_FAMILLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SRF_SOUS_FAMILLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_SR_FAMILLE`
--

DROP TABLE IF EXISTS `BIZ_SR_FAMILLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_SR_FAMILLE` (
  `ID` int(11) NOT NULL,
  `FAMILLE` int(11) DEFAULT NULL,
  `SECTEUR_RAYON` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_SR_FAMILLE` (`FAMILLE`),
  KEY `BIZ_FK_SR_SECTEUR_RAYON` (`SECTEUR_RAYON`),
  CONSTRAINT `BIZ_FK_SR_FAMILLE` FOREIGN KEY (`FAMILLE`) REFERENCES `BIZ_FAMILLE` (`CODE_FAMILLE`),
  CONSTRAINT `BIZ_FK_SR_SECTEUR_RAYON` FOREIGN KEY (`SECTEUR_RAYON`) REFERENCES `BIZ_SECTEUR_RAYON` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_SR_FAMILLE`
--

LOCK TABLES `BIZ_SR_FAMILLE` WRITE;
/*!40000 ALTER TABLE `BIZ_SR_FAMILLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_SR_FAMILLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_STATUT_FACTURE`
--

DROP TABLE IF EXISTS `BIZ_STATUT_FACTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_STATUT_FACTURE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_STATUT_FACTURE`
--

LOCK TABLES `BIZ_STATUT_FACTURE` WRITE;
/*!40000 ALTER TABLE `BIZ_STATUT_FACTURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_STATUT_FACTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_STATUT_RELANCE`
--

DROP TABLE IF EXISTS `BIZ_STATUT_RELANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_STATUT_RELANCE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE_STATUT_RELANCE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_STATUT_RELANCE`
--

LOCK TABLES `BIZ_STATUT_RELANCE` WRITE;
/*!40000 ALTER TABLE `BIZ_STATUT_RELANCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_STATUT_RELANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_STATUT_REUNION`
--

DROP TABLE IF EXISTS `BIZ_STATUT_REUNION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_STATUT_REUNION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_STATUT_REUNION`
--

LOCK TABLES `BIZ_STATUT_REUNION` WRITE;
/*!40000 ALTER TABLE `BIZ_STATUT_REUNION` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_STATUT_REUNION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TRESO_PLAN_TRESORIE`
--

DROP TABLE IF EXISTS `BIZ_TRESO_PLAN_TRESORIE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TRESO_PLAN_TRESORIE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ANNER` int(11) DEFAULT NULL,
  `DATE_CREATION` date DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `MOIS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TRESO_PLAN_TRESORIE`
--

LOCK TABLES `BIZ_TRESO_PLAN_TRESORIE` WRITE;
/*!40000 ALTER TABLE `BIZ_TRESO_PLAN_TRESORIE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TRESO_PLAN_TRESORIE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TRESO_RUBRIQUE`
--

DROP TABLE IF EXISTS `BIZ_TRESO_RUBRIQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TRESO_RUBRIQUE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AFFICHER_CHAMPS` varchar(50) DEFAULT NULL,
  `CREATEUR` varchar(50) DEFAULT NULL,
  `DATE_CREATION` date DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `RUBRIQUE` int(11) DEFAULT NULL,
  `SOUS_RUBRIQUE` int(11) DEFAULT NULL,
  `TITRE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TRESO_RUBRIQUE`
--

LOCK TABLES `BIZ_TRESO_RUBRIQUE` WRITE;
/*!40000 ALTER TABLE `BIZ_TRESO_RUBRIQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TRESO_RUBRIQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TRESO_SR_PAR_PLAN`
--

DROP TABLE IF EXISTS `BIZ_TRESO_SR_PAR_PLAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TRESO_SR_PAR_PLAN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATEMODIFICATION` date DEFAULT NULL,
  `VALEUR` decimal(18,2) DEFAULT NULL,
  `ID_PLAN` int(11) DEFAULT NULL,
  `ID_RUBIQUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_TRESO_PLAN` (`ID_PLAN`),
  KEY `BIZ_FK_TRESO_RUBRIQUE` (`ID_RUBIQUE`),
  CONSTRAINT `BIZ_FK_TRESO_PLAN` FOREIGN KEY (`ID_PLAN`) REFERENCES `BIZ_TRESO_PLAN_TRESORIE` (`ID`),
  CONSTRAINT `BIZ_FK_TRESO_RUBRIQUE` FOREIGN KEY (`ID_RUBIQUE`) REFERENCES `BIZ_TRESO_RUBRIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TRESO_SR_PAR_PLAN`
--

LOCK TABLES `BIZ_TRESO_SR_PAR_PLAN` WRITE;
/*!40000 ALTER TABLE `BIZ_TRESO_SR_PAR_PLAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TRESO_SR_PAR_PLAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TYPE_COMPTE`
--

DROP TABLE IF EXISTS `BIZ_TYPE_COMPTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TYPE_COMPTE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TYPE_COMPTE`
--

LOCK TABLES `BIZ_TYPE_COMPTE` WRITE;
/*!40000 ALTER TABLE `BIZ_TYPE_COMPTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TYPE_COMPTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TYPE_CONTRAT`
--

DROP TABLE IF EXISTS `BIZ_TYPE_CONTRAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TYPE_CONTRAT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TYPE_CONTRAT`
--

LOCK TABLES `BIZ_TYPE_CONTRAT` WRITE;
/*!40000 ALTER TABLE `BIZ_TYPE_CONTRAT` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TYPE_CONTRAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_TYPE_RELANCE`
--

DROP TABLE IF EXISTS `BIZ_TYPE_RELANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_TYPE_RELANCE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE_TYPE_RELANCE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_TYPE_RELANCE`
--

LOCK TABLES `BIZ_TYPE_RELANCE` WRITE;
/*!40000 ALTER TABLE `BIZ_TYPE_RELANCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BIZ_TYPE_RELANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BIZ_WILAYA`
--

DROP TABLE IF EXISTS `BIZ_WILAYA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BIZ_WILAYA` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_WILAYA` int(11) NOT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  `ID_REGION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BIZ_FK_WILAYA_REGION` (`ID_REGION`),
  CONSTRAINT `BIZ_FK_WILAYA_REGION` FOREIGN KEY (`ID_REGION`) REFERENCES `BIZ_REGION` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BIZ_WILAYA`
--

LOCK TABLES `BIZ_WILAYA` WRITE;
/*!40000 ALTER TABLE `BIZ_WILAYA` DISABLE KEYS */;
INSERT INTO `BIZ_WILAYA` VALUES (1,1,'Adrar',4),(2,2,'Chlef',3),(3,3,'Laghouat',4),(4,4,'Oum El Bouaghi',2),(5,5,'Batna',2),(6,6,'B√©ja√Øa',2),(7,7,'Biskra',4),(8,8,'B√©char',4),(9,9,'Blida',1),(10,10,'Bouira',2),(11,11,'Tamanrasset',4),(12,12,'T√©bessa',2),(13,13,'Tlemcen',3),(14,14,'Tiaret',3),(15,15,'Tizi Ouzou',1),(16,16,'Alger',5),(17,17,'Djelfa',4),(18,18,'Jijel',2),(19,19,'S√©tif',2),(20,20,'Sa√Øda',3),(21,21,'Skikda',2),(22,22,'Sidi Bel Abb√®s',3),(23,23,'Annaba',2),(24,24,'Guelma',2),(25,25,'Constantine',2),(26,26,'M√©d√©a',1),(27,27,'Mostaganem',3),(28,28,'MSila',2),(29,29,'Mascara',3),(30,30,'Ouargla',4),(31,31,'Oran',3),(32,32,'El Bayadh',4),(33,33,'Illizi',4),(34,34,'Bordj Bou Arreridj',2),(35,35,'Boumerd√®s',1),(36,36,'El Tarf',2),(37,37,'Tindouf',4),(38,38,'Tissemsilt',3),(39,39,'El Oued',4),(40,40,'Khenchela',2),(41,41,'Souk Ahras',2),(42,42,'Tipaza',1),(43,43,'Mila',2),(44,44,'A√Øn Defla',1),(45,45,'Na√¢ma',4),(46,46,'A√Øn T√©mouchent',3),(47,47,'Gharda√Øa',4),(48,48,'Relizane',3);
/*!40000 ALTER TABLE `BIZ_WILAYA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_AGENDA`
--

DROP TABLE IF EXISTS `IW_AGENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_AGENDA` (
  `IW_AGENDA_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_COLOR` varchar(50) DEFAULT NULL,
  `IW_DESCRIPTION` longtext,
  `IW_END_DATE` date DEFAULT NULL,
  `IW_START_DATE` date DEFAULT NULL,
  `IW_TITLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IW_AGENDA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_AGENDA`
--

LOCK TABLES `IW_AGENDA` WRITE;
/*!40000 ALTER TABLE `IW_AGENDA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_AGENDA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_APPLICATION`
--

DROP TABLE IF EXISTS `IW_APPLICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_APPLICATION` (
  `IW_APPLICATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_COLOR` varchar(255) DEFAULT NULL,
  `IW_DATE` date DEFAULT NULL,
  `IW_DESCRIPTION` varchar(255) DEFAULT NULL,
  `IW_ICON` varchar(255) DEFAULT NULL,
  `IW_KEY` varchar(255) DEFAULT NULL,
  `IW_LISTING_INDEX` int(11) DEFAULT NULL,
  `IW_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IW_APPLICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_APPLICATION`
--

LOCK TABLES `IW_APPLICATION` WRITE;
/*!40000 ALTER TABLE `IW_APPLICATION` DISABLE KEYS */;
INSERT INTO `IW_APPLICATION` VALUES (1,NULL,'2017-01-24','',NULL,'Testnotification1485255581040',NULL,'Test notification');
/*!40000 ALTER TABLE `IW_APPLICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_APPLICATION_PROCESS`
--

DROP TABLE IF EXISTS `IW_APPLICATION_PROCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_APPLICATION_PROCESS` (
  `IW_APPlICATION_PROCESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_APPlICATION_KEY` varchar(50) DEFAULT NULL,
  `IW_PROCESS_KEY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IW_APPlICATION_PROCESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_APPLICATION_PROCESS`
--

LOCK TABLES `IW_APPLICATION_PROCESS` WRITE;
/*!40000 ALTER TABLE `IW_APPLICATION_PROCESS` DISABLE KEYS */;
INSERT INTO `IW_APPLICATION_PROCESS` VALUES (1,'Testnotification1485255581040','Test');
/*!40000 ALTER TABLE `IW_APPLICATION_PROCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_BOOKING`
--

DROP TABLE IF EXISTS `IW_BOOKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_BOOKING` (
  `IW_BOOKING_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_ALL_DAY` tinyint(1) NOT NULL,
  `IW_END_TIME` datetime NOT NULL,
  `IW_START_TIME` datetime NOT NULL,
  `IW_STATUS` varchar(64) NOT NULL,
  `IW_TENANT` varchar(255) NOT NULL,
  `IW_RESOURCE_ID` int(11) NOT NULL,
  PRIMARY KEY (`IW_BOOKING_ID`),
  KEY `IW_FK_BOOKING_RESOURCE` (`IW_RESOURCE_ID`),
  CONSTRAINT `IW_FK_BOOKING_RESOURCE` FOREIGN KEY (`IW_RESOURCE_ID`) REFERENCES `IW_RESOURCE` (`ID_RESOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_BOOKING`
--

LOCK TABLES `IW_BOOKING` WRITE;
/*!40000 ALTER TABLE `IW_BOOKING` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_BOOKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_CAR`
--

DROP TABLE IF EXISTS `IW_CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_CAR` (
  `IW_CAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(45) DEFAULT NULL,
  `IW_INTITULE` varchar(255) NOT NULL,
  PRIMARY KEY (`IW_CAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_CAR`
--

LOCK TABLES `IW_CAR` WRITE;
/*!40000 ALTER TABLE `IW_CAR` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_CENTRAL_AISLE`
--

DROP TABLE IF EXISTS `IW_CENTRAL_AISLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_CENTRAL_AISLE` (
  `IW_CENTRAL_AISLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(45) DEFAULT NULL,
  `IW_INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IW_CENTRAL_AISLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_CENTRAL_AISLE`
--

LOCK TABLES `IW_CENTRAL_AISLE` WRITE;
/*!40000 ALTER TABLE `IW_CENTRAL_AISLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_CENTRAL_AISLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_COLUMN_TASK`
--

DROP TABLE IF EXISTS `IW_COLUMN_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_COLUMN_TASK` (
  `IW_COLUMN_TASK_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_NAME` varchar(45) DEFAULT NULL,
  `IW_COLUMN_KEY` varchar(45) DEFAULT NULL,
  `IW_IS_COLUMN_HISTORIQUE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IW_COLUMN_TASK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_COLUMN_TASK`
--

LOCK TABLES `IW_COLUMN_TASK` WRITE;
/*!40000 ALTER TABLE `IW_COLUMN_TASK` DISABLE KEYS */;
INSERT INTO `IW_COLUMN_TASK` VALUES (1,'T√¢che','task_name',0),(2,'Date de cr√©ation','date_creation',0),(3,'Processus','process_id',0),(4,'N¬∞ t√¢che','task_id',0);
/*!40000 ALTER TABLE `IW_COLUMN_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_CONFIG`
--

DROP TABLE IF EXISTS `IW_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_CONFIG` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CONFIG_NAME` varchar(250) NOT NULL,
  `CONFIG_DESCRIPTION` longtext,
  `CONFIG_EDITABLE` tinyint(1) DEFAULT NULL,
  `CONFIG_VALUE` longtext,
  `DEFAULT_VALUE` longtext,
  `CREATED_AT` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_CONFIG`
--

LOCK TABLES `IW_CONFIG` WRITE;
/*!40000 ALTER TABLE `IW_CONFIG` DISABLE KEYS */;
INSERT INTO `IW_CONFIG` VALUES (1,'authentication_mode','Mode d\'authentification',1,'db','db','2017-01-02 14:15:37',NULL),(2,'company_favicon','Favicon de l\'application',1,'favicon.png','favicon.png','2017-01-02 14:15:37',NULL),(3,'company_logo','Le logo de la societ√©',1,'logo.png','logo.png','2017-01-02 14:15:37',NULL),(4,'company_name','Le nom/raison social de la societ√©',1,'Imaginepartners IT','Imaginepartners IT','2017-01-02 14:15:37',NULL),(5,'company_slogan','Le slogan de la societ√©',1,'Ensemble toujours plus loin','Ensemble toujours plus loin','2017-01-02 14:15:37',NULL),(6,'company_theme','Le theme de l\'application',1,'RedModena','RedModena','2017-01-02 14:15:37',NULL),(7,'copyright','Le texte du copyright en bas des pages',1,'<i class=\"fa fa-copyright\"></i>&nbsp;<script>document.write(new Date().getFullYear())</script><a target=\"_blank\" href=\"http://imaginepartners.com/\" > Imaginepartners IT </a> | Imagineworkflow\n','<i class=\"fa fa-copyright\"></i>&nbsp;<script>document.write(new Date().getFullYear())</script><a target=\"_blank\" href=\"http://imaginepartners.com/\" > Imaginepartners IT </a> | Imagineworkflow\n','2017-01-02 14:15:37',NULL),(8,'display_completed_tasks','Afficher les taches Compl√©t√©es',1,'false','1','2017-01-02 14:15:37',NULL),(9,'display_folder_number','Afficher le Num√©ro de Dossier',1,'false','1','2017-01-02 14:15:37',NULL),(10,'display_instance_creation_dialog','Permettre la saisie du nom d\'une nouvelle instance',1,'false','1','2017-01-02 14:15:37',NULL),(11,'display_involved_task','Afficher les taches impliqu√©es',1,'false','1','2017-01-02 14:15:37',NULL),(12,'display_task_number','Afficher le Num√©ro de tache',1,'false','1','2017-01-02 14:15:37',NULL),(13,'display_traduction_list','Afficher la liste des langue dans la page d\'accueil',1,'false','1','2017-01-02 14:15:37',NULL),(14,'email_validation_regex','Pattern de validation des emails',1,'^[_A-Za-z0-9]+(.[_A-Za-z0-9-]+)*@[A-Za-z0-9-_]+(.[A-Za-z0-9-_]+)*(.[A-Za-z]{2,})$','^[_A-Za-z0-9]+(.[_A-Za-z0-9-]+)*@[A-Za-z0-9-_]+(.[A-Za-z0-9-_]+)*(.[A-Za-z]{2,})$','2017-01-02 14:15:37',NULL),(15,'enable_stitcky_title','Fixer le titre de la page en haut de page ',1,'false','false','2017-01-02 14:15:37',NULL),(16,'generated_documents_directory_name','R√©pertoire de fichiers gener√©',1,'GENERATED_FILES','GENERATED_FILES','2017-01-02 14:15:37',NULL),(17,'group_id_default_prefix','Prefix des identifiants des groups',0,'ROLE_','ROLE_','2017-01-02 14:15:37',NULL),(18,'group_id_validation_regex','Pattern de validation des noms de groups',1,'([A-Za-z0-9-_.]+)*$','([A-Za-z0-9-_.]+)*$','2017-01-02 14:15:37',NULL),(19,'home_page','Page d\'entr√©e de l\'application en cas d\'authentification r√©susi',1,'/pages/tache/liste.xhtml','/pages/tache/liste.xhtml','2017-01-02 14:15:37',NULL),(20,'imagineworkflow_title','Le titre de l\'application IMAGINEPARTNERS',1,'ImagineWorkflow 2.0','ImagineWorkflow 2.0','2017-01-02 14:15:37',NULL),(21,'ldap_sync_ad_groups','Synchroniser les groups',1,'false','1','2017-01-02 14:15:37',NULL),(22,'ldap_sync_ad_membership','Synchroniser les appartenance au groups',1,'false','1','2017-01-02 14:15:37',NULL),(23,'login_logo','Le logo de la page de login',1,'loginLogo.gif','loginLogo.gif','2017-01-02 14:15:37',NULL),(24,'long_date_pattern','Format des dates longues (avec temps)',1,'dd/MM/yyyy HH:mm:ss','dd/MM/yyyy HH:mm:ss','2017-01-02 14:15:37',NULL),(25,'password_validation_regex','L\'expression reguliere de validation des mots de passe',1,'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\\p{Punct}])(?=\\S+$).{8,100}$','^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\\p{Punct}])(?=\\S+$).{8,100}$','2017-01-02 14:15:37',NULL),(26,'password_validation_tip','Message d\'erreur de validation de mot de passe',1,'Le mot de passe doit contenir des chiffres,<br />des lettres en majuscules et minuscules et des caract√®res sp√©ciaux,\n<br /> il ne doit pas contenir des blancs<br />et de logeur entre  8 et 100','Le mot de passe doit contenir des chiffres,<br />des lettres en majuscules et minuscules et des caract√®res sp√©ciaux,\n<br /> il ne doit pas contenir des blancs<br />et de logeur entre  8 et 100','2017-01-02 14:15:37',NULL),(27,'product_name','Le nom de la solution imagineworkflow',0,'imagineworkflow','imagineworkflow','2017-01-02 14:15:37',NULL),(28,'product_version','Version de produit (imagineworkflow)',1,'2.0','2.0','2017-01-02 14:15:37',NULL),(29,'show_process_progresssion','Afficher la barre de progression du processus',1,'false','true','2017-01-02 14:15:37',NULL),(30,'smtp_mail_server_default_from','L\'email utilis√© par defaut pour l\'envoi des email',1,NULL,NULL,'2017-01-02 14:15:37',NULL),(31,'smtp_mail_server_host','Url du serveur SMTP',1,NULL,NULL,'2017-01-02 14:15:37',NULL),(32,'smtp_mail_server_password','Mot de passe de l\'utilisateur SMTP',1,NULL,NULL,'2017-01-02 14:15:37',NULL),(33,'smtp_mail_server_port','Port du serveur SMTP',1,NULL,NULL,'2017-01-02 14:15:37',NULL),(34,'smtp_mail_server_username','Nom d\'utilisateur SMTP',1,NULL,NULL,'2017-01-02 14:15:37',NULL),(35,'smtp_mail_server_use_ssl','Utiliser le cryptage SSL dans le serveur SMTP',1,'false',NULL,'2017-01-02 14:15:37',NULL),(36,'smtp_mail_server_use_tls','Utiliser le cryptage tls dans le serveur SMTP',1,'false','1','2017-01-02 14:15:37',NULL),(37,'upload_directory_name','R√©pertoire d\'upload',1,'UPLOADED_FILES','UPLOADED_FILES','2017-01-02 14:15:37',NULL),(38,'users_admin_group','Le group des administrateurs',1,'ROLE_ADMIN','ROLE_ADMIN','2017-01-02 14:15:37',NULL),(39,'users_default_group','Le group par defaut de toutes les utilisateurs',1,'ROLE_USER','ROLE_USER','2017-01-02 14:15:37',NULL),(40,'users_super_admin_group','Le group des super administrateurs',1,'ROLE_SUPER_ADMIN','ROLE_SUPER_ADMIN','2017-01-02 14:15:37',NULL),(41,'user_id_validation_regex','Pattern de validation des noms de groups',1,'([A-Za-z0-9-_.]+)*$','([A-Za-z0-9-_.]+)*$','2017-01-02 14:15:37',NULL),(42,'ldap_domain','Nom du domain ldap',1,NULL,'1','2017-01-02 14:15:41',NULL),(43,'ldap_server','Url du Serveur LDAP',1,NULL,'1','2017-01-02 14:15:41',NULL),(44,'ldap_sync_ad_users','Synchroniser les utilisateurs',1,'false','1','2017-01-02 14:15:41',NULL),(45,'show_agenda_reservation','Afficher la r√©servation de ressources dans l\'agenda',1,'true','true','2017-01-02 14:15:56',NULL),(46,'file_export_path_csv','Chemin d\'export de fichiers CSV',1,'UPLOADED_FILES','UPLOADED_FILES','2016-11-10 00:00:00',NULL),(47,'file_export_path_excel','Chemin d\'export de fichiers EXCEL',1,'UPLOADED_FILES','UPLOADED_FILES','2016-11-10 00:00:00',NULL),(48,'file_export_path_pdf','Chemin d\'export de fichiers PDF',1,'UPLOADED_FILES','UPLOADED_FILES','2016-11-10 00:00:00',NULL),(49,'file_export_path_log','Chemin d\'export de fichiers LOG',1,'UPLOADED_FILES','UPLOADED_FILES','2016-11-10 00:00:00',NULL);
/*!40000 ALTER TABLE `IW_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_EVENT`
--

DROP TABLE IF EXISTS `IW_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_EVENT` (
  `IW_EVENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_ALL_DAY` tinyint(1) DEFAULT NULL,
  `IW_COLOR` varchar(255) DEFAULT NULL,
  `IW_DESCRIPTION` varchar(255) DEFAULT NULL,
  `IW_END_DATE` datetime DEFAULT NULL,
  `IW_GROUP` varchar(255) DEFAULT NULL,
  `IW_START_DATE` datetime DEFAULT NULL,
  `IW_TITRE` varchar(255) DEFAULT NULL,
  `IW_USER` varchar(255) DEFAULT NULL,
  `IW_EVENT_TYPE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IW_EVENT_ID`),
  KEY `IW_FK_EVENT_TYPE` (`IW_EVENT_TYPE`),
  CONSTRAINT `IW_FK_EVENT_TYPE` FOREIGN KEY (`IW_EVENT_TYPE`) REFERENCES `IW_EVENT_TYPE` (`IW_EVENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_EVENT`
--

LOCK TABLES `IW_EVENT` WRITE;
/*!40000 ALTER TABLE `IW_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_EVENT_TYPE`
--

DROP TABLE IF EXISTS `IW_EVENT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_EVENT_TYPE` (
  `IW_EVENT_TYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IW_EVENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_EVENT_TYPE`
--

LOCK TABLES `IW_EVENT_TYPE` WRITE;
/*!40000 ALTER TABLE `IW_EVENT_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_EVENT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_FILE`
--

DROP TABLE IF EXISTS `IW_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_FILE` (
  `IW_FILE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_MIME` longtext NOT NULL,
  `IW_NAME` longtext NOT NULL,
  `IW_PATH` longtext NOT NULL,
  `IW_SIZE` bigint(20) NOT NULL,
  `IW_UPLOAD` bigint(20) NOT NULL,
  PRIMARY KEY (`IW_FILE_ID`),
  KEY `IW_FK_FILE_UPLOAD` (`IW_UPLOAD`),
  CONSTRAINT `IW_FK_FILE_UPLOAD` FOREIGN KEY (`IW_UPLOAD`) REFERENCES `IW_UPLOAD` (`IW_UPLOAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_FILE`
--

LOCK TABLES `IW_FILE` WRITE;
/*!40000 ALTER TABLE `IW_FILE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_FILE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_FORM`
--

DROP TABLE IF EXISTS `IW_FORM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_FORM` (
  `IW_FORM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_CREATE_TIME` datetime DEFAULT NULL,
  `IW_DESCRIPTION` varchar(255) DEFAULT NULL,
  `IW_FORM_SOURCE_JSON` longtext,
  `IW_LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `IW_LISTING_INDEX` int(11) DEFAULT NULL,
  `IW_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IW_FORM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_FORM`
--

LOCK TABLES `IW_FORM` WRITE;
/*!40000 ALTER TABLE `IW_FORM` DISABLE KEYS */;
INSERT INTO `IW_FORM` VALUES (1,'2017-01-26 10:57:15','','[{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":0,\"id\":\"form_1485424573814\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Demande\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"true\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03M\"},{\"component\":\"textInput\",\"tab\":\"Text\",\"editable\":true,\"index\":1,\"id\":\"form_1485424583757\",\"label\":\"Type demande\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[\"superadmin\"],\"writegroups\":[],\"writeusers\":[\"superadmin\"],\"disabledfortaches\":[\"Test-sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3E\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03N\"},{\"component\":\"date\",\"tab\":\"Select\",\"editable\":true,\"index\":2,\"id\":\"form_1485424594431\",\"label\":\"Date de la demande\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"Date\",\"treechecklistoptions\":\"\",\"options3\":[true],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[\"Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"dd/MM/yyyy\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03O\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":3,\"id\":\"form_1485424605828\",\"label\":\"type de demande\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"officielle\",\"pas officielle\"],\"options2\":[],\"required\":true,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{\"Test\":[\"sid-0E4438B3-6177-48E7-BA5E-1B01EFE61AAA\",\"sid-2CC719D3-C8F1-42EB-8D39-D1F0D0B58DC4\",\"sid-5C232078-1245-473C-957A-555A5B3D3DB5\"]},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03P\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":4,\"id\":\"valider\",\"label\":\"valider\",\"description\":\"valider\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"oui\",\"non\"],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03Q\"},{\"component\":\"document\",\"tab\":\"Bouton\",\"editable\":true,\"index\":5,\"id\":\"form_1487754521349\",\"label\":\"G√©n√©rer rapport\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Type de la demande.docx\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03R\"}]','2017-07-17 05:44:17',NULL,'essai'),(2,'2017-02-22 11:47:32','null','[{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":0,\"id\":\"form_1478431887982\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Enqu√™te de satisfaction\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"true\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03M\"},{\"component\":\"dynamicText\",\"tab\":\"Text\",\"editable\":true,\"index\":1,\"id\":\"form_1487663550609\",\"label\":\"√âvalu√©\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"${taskController.taskVars.collaborateur}\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03N\"},{\"component\":\"dynamicText\",\"tab\":\"Text\",\"editable\":true,\"index\":2,\"id\":\"form_1487664067888\",\"label\":\"Poste occup√©\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"#{taskController.taskVars.poste_occupe}\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03O\"},{\"component\":\"dynamicText\",\"tab\":\"Text\",\"editable\":true,\"index\":3,\"id\":\"form_1487664070494\",\"label\":\"Direction\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"#{taskController.taskVars.direction_collaborateur}\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03P\"},{\"component\":\"dynamicText\",\"tab\":\"Text\",\"editable\":true,\"index\":4,\"id\":\"form_1487664042494\",\"label\":\"Sup√©rieur N+1\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"#{taskController.taskVars.superieur_n1}\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03Q\"},{\"component\":\"dynamicText\",\"tab\":\"Text\",\"editable\":true,\"index\":5,\"id\":\"form_1487664045102\",\"label\":\"Sup√©rieur N+2\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"#{taskController.taskVars.superieur_n2}\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03R\"},{\"component\":\"date\",\"tab\":\"Select\",\"editable\":true,\"index\":6,\"id\":\"form_1487663559842\",\"label\":\"Date de soumission de l\'enqu√™te\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"Date\",\"treechecklistoptions\":\"\",\"options3\":[true],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"dd/MM/yyyy\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03S\"},{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":7,\"id\":\"form_1478432119337\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"¬∑         Que pensez ‚Äìvous du d√©lais accord√©  √† l‚Äô√©valuation globale\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"false\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03T\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":8,\"id\":\"form_1487662889404\",\"label\":\"Suffisant?\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"oui\",\"non\"],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[\"Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03U\"},{\"component\":\"textArea\",\"tab\":\"Text\",\"editable\":true,\"index\":9,\"id\":\"form_1478431932684\",\"label\":\"Pourquoi\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03V\"},{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":10,\"id\":\"form_1478432009254\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"¬∑         L‚Äôid√©e d‚Äô√™tre soumis √† une √©valuation vous plait ‚Äìelle ?\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"false\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03W\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":11,\"id\":\"form_1487662930812\",\"label\":\"L\'id√©e me plait\",\"description\":\"description\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"oui\",\"non\"],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[\"Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03X\"},{\"component\":\"textArea\",\"tab\":\"Text\",\"editable\":true,\"index\":12,\"id\":\"form_1478432221291\",\"label\":\"Pourquoi\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":true,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03Y\"},{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":13,\"id\":\"form_1478431996438\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Trouvez-vous que le Processus tel qu‚Äôil est con√ßu se caract√©rise par :\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"false\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"03Z\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":14,\"id\":\"form_1481102120292\",\"label\":\"Une objectivit√© √† un pourcentage de\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"0%\",\"20%\",\"40%\",\"60%\",\"80%\",\"100%\"],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[\"Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"040\"},{\"component\":\"select\",\"tab\":\"Select\",\"editable\":true,\"index\":15,\"id\":\"form_1481102123052\",\"label\":\"Une subjectivit√© √† un pourcentage  de\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[\"0%\",\"20%\",\"40%\",\"60%\",\"80%\",\"100%\"],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[\"Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5\"],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"041\"},{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":16,\"id\":\"form_1478432015867\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Que doit-on am√©liorer?\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"false\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"042\"},{\"component\":\"textArea\",\"tab\":\"Text\",\"editable\":true,\"index\":17,\"id\":\"form_1478432329903\",\"label\":\"Citez quelques pistes\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"043\"},{\"component\":\"header\",\"tab\":\"Compos√©\",\"editable\":true,\"index\":18,\"id\":\"form_1482143489725\",\"label\":\"Header\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Perspectives de mobilit√©\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":\"true\",\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"044\"},{\"component\":\"textArea\",\"tab\":\"Text\",\"editable\":true,\"index\":19,\"id\":\"form_1482143514967\",\"label\":\"Citez vos perspectives de mobilit√©\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"045\"},{\"component\":\"document\",\"tab\":\"Bouton\",\"editable\":true,\"index\":20,\"id\":\"form_1487680472063\",\"label\":\"G√©n√©rer l\'enqu√™te de satisfaction\",\"description\":\"\",\"onglet1\":\"\",\"onglet2\":\"\",\"placeholder\":\"placeholder\",\"options\":[],\"options2\":[],\"required\":false,\"validation\":\"string\",\"value\":\"Enquete_De_Satisfaction.docx\",\"dateformat\":\"\",\"treechecklistoptions\":\"\",\"options3\":[],\"subrows\":[],\"subcolumns\":[],\"numbersubrows\":[],\"numbersubcolumns\":[],\"widthsubcolumns\":[],\"readgroups\":[],\"readusers\":[],\"writegroups\":[],\"writeusers\":[],\"disabledfortaches\":[],\"lastcolumn\":[],\"explastcolumn\":[],\"multple\":false,\"multilinerows\":\"\",\"multilinecols\":\"\",\"tachesbyprocess\":{},\"allowImport\":false,\"allowExport\":false,\"allowSearch\":false,\"allowFilter\":false,\"entityUserRights\":[],\"entityGroupRights\":[],\"entityUserWriteRights\":[],\"entityGroupWriteRights\":[],\"entityFilter\":[],\"regex\":\"\",\"colTachesbyprocess\":[],\"allowCreate\":false,\"allowUpdate\":false,\"allowDelete\":false,\"errorMessage\":\"\",\"inputSize\":\"\",\"datePattern\":\"\",\"databaseRequest\":\"\",\"useRequest\":false,\"maxSelect\":\"\",\"$$hashKey\":\"046\"}]','2017-07-17 05:39:07',NULL,'Enqu√™te');
/*!40000 ALTER TABLE `IW_FORM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_FORM_TEMPLATE`
--

DROP TABLE IF EXISTS `IW_FORM_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_FORM_TEMPLATE` (
  `IW_FORM_TEMPLATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(254) DEFAULT NULL,
  `IW_NAME` varchar(254) DEFAULT NULL,
  `IW_VALUE` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`IW_FORM_TEMPLATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_FORM_TEMPLATE`
--

LOCK TABLES `IW_FORM_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `IW_FORM_TEMPLATE` DISABLE KEYS */;
INSERT INTO `IW_FORM_TEMPLATE` VALUES (1,'Menus d√©roulant en cascade pour la g√©stion des rayons, secteur, familles et sous familles','Rayon, Secteur, Famille et Sous famille','cascadeListeMultiple.xhtml'),(2,'Menus d√©roulant en cascade pour la g√©stion de la Diffusion des Alertes','Process Anomalie - TEMPLATE - Hierarchie de Diffusion des Alertes','processAnomalie.xhtml'),(3,'Menus d√©roulant en cascade pour la g√©stion de la Diffusion des Alertes','Process Anomalie - TEMPLATE multiSelect- Hierarchie de Diffusion des Alertes','multiSelectProcessAnomaly.xhtml'),(4,'TEMPLATE Politique de Prix','Politique de Prix','politiquePrix.xhtml'),(5,'Ajouter une image dans un document word','Add picture in docx - TEMPLATE','uploadImg.xhtml');
/*!40000 ALTER TABLE `IW_FORM_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_GROUP_DETAILS`
--

DROP TABLE IF EXISTS `IW_GROUP_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_GROUP_DETAILS` (
  `IW_GROUP_DETAILS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_ACTIVE` tinyint(1) DEFAULT NULL,
  `IW_GROUP` varchar(64) NOT NULL,
  `IW_RESPONSIBLE` varchar(64) DEFAULT NULL,
  `IW_TYPE` varchar(64) DEFAULT NULL,
  `IW_VISIBALE` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`IW_GROUP_DETAILS_ID`),
  UNIQUE KEY `IW_UK_GROUP` (`IW_GROUP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_GROUP_DETAILS`
--

LOCK TABLES `IW_GROUP_DETAILS` WRITE;
/*!40000 ALTER TABLE `IW_GROUP_DETAILS` DISABLE KEYS */;
INSERT INTO `IW_GROUP_DETAILS` VALUES (1,1,'ROLE_ADMIN',NULL,'functional',1),(2,1,'ROLE_SUPER_ADMIN',NULL,'functional',0),(3,1,'ROLE_USER',NULL,'functional',0);
/*!40000 ALTER TABLE `IW_GROUP_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_GROUP_HIERARCHY`
--

DROP TABLE IF EXISTS `IW_GROUP_HIERARCHY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_GROUP_HIERARCHY` (
  `IW_GROUP_HIERARCHY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_GROUP` varchar(64) DEFAULT NULL,
  `IW_HIERARCHY_TYPE` varchar(45) DEFAULT NULL,
  `IW_PARANT` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`IW_GROUP_HIERARCHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_GROUP_HIERARCHY`
--

LOCK TABLES `IW_GROUP_HIERARCHY` WRITE;
/*!40000 ALTER TABLE `IW_GROUP_HIERARCHY` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_GROUP_HIERARCHY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_HEAD_GONDOLA`
--

DROP TABLE IF EXISTS `IW_HEAD_GONDOLA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_HEAD_GONDOLA` (
  `IW_HEAD_GONDOLA_ID` int(11) NOT NULL,
  `IW_DESCRIPTION` varchar(45) DEFAULT NULL,
  `IW_INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IW_HEAD_GONDOLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_HEAD_GONDOLA`
--

LOCK TABLES `IW_HEAD_GONDOLA` WRITE;
/*!40000 ALTER TABLE `IW_HEAD_GONDOLA` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_HEAD_GONDOLA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_INPUT`
--

DROP TABLE IF EXISTS `IW_INPUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_INPUT` (
  `IW_INPUT_ID` varchar(255) NOT NULL,
  `IW_FILTER` tinyint(1) DEFAULT '0',
  `IW_ALLOW_CREATE` tinyint(1) DEFAULT '0',
  `IW_EXPORT` tinyint(1) DEFAULT '0',
  `IW_IMPORT` tinyint(1) DEFAULT '0',
  `IW_SEARCH` tinyint(1) DEFAULT '0',
  `IW_INPUT_TYPE` varchar(64) NOT NULL,
  `IW_DATE_FORMAT` varchar(64) DEFAULT NULL,
  `IW_DELETE` tinyint(1) DEFAULT '0',
  `IW_DESCRIPTION` longtext,
  `IW_EDITABLE` tinyint(1) DEFAULT NULL,
  `IW_ENTITY_FILTER` longblob,
  `IW_UPDATE` tinyint(1) DEFAULT '0',
  `IW_VALIDATION_ERROR_MSG` varchar(255) DEFAULT NULL,
  `IW_INDEX` int(11) DEFAULT NULL,
  `IW_LABEL` varchar(250) DEFAULT NULL,
  `IW_MULTIPLE` tinyint(1) DEFAULT NULL,
  `IW_NUMBER_SUB_COLOMNS` longblob,
  `IW_NUMBER_SUB_ROWS` longblob,
  `IW_TAB1` varchar(254) DEFAULT NULL,
  `IW_TAB2` varchar(254) DEFAULT NULL,
  `IW_OPTIONS` longblob,
  `IW_OPTIONS2` longblob,
  `IW_OPTIONS3` longblob,
  `IW_PLACEHOLDER` varchar(250) DEFAULT NULL,
  `IW_READ_GROUPS` longblob,
  `IW_READ_USERS` longblob,
  `IW_VALIDATION_REGEX` varchar(255) DEFAULT NULL,
  `IW_REQUIRED` tinyint(1) DEFAULT NULL,
  `IW_SUB_COLUMNS` longblob,
  `IW_SUB_ROWS` longblob,
  `IW_VALIDATION` varchar(250) DEFAULT NULL,
  `IW_VALUE` longtext,
  `IW_WIDTH_SUB_COLUMNS` longblob,
  `IW_WRITE_GROUPS` longblob,
  `IW_WRITE_USERS` longblob,
  `IW_FORM` bigint(20) NOT NULL,
  `IW_VARIABLE_PROCESS` bigint(20) DEFAULT NULL,
  `IW_VARIABLE_NAME` varchar(60) DEFAULT NULL,
  `IW_INPUT_REAL_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_INPUT_SIZE` varchar(60) DEFAULT NULL,
  `IW_DATE_PATTENRN` varchar(60) DEFAULT NULL,
  `IW_EXP_LAST_COLUMNS` longblob,
  `IW_DATA_BASE_REQUEST` varchar(500) DEFAULT NULL,
  `IW_USE_REQUEST` tinyint(1) DEFAULT NULL,
  `IW_MAX_SELECT` varchar(60) DEFAULT NULL,
  `IW_DISABLED_FOR_TASKS` longblob,
  PRIMARY KEY (`IW_INPUT_REAL_ID`),
  KEY `IW_FK_INPUT_FORM` (`IW_FORM`),
  KEY `IW_FK_INPUT_VARIABLE_PROCESS` (`IW_VARIABLE_PROCESS`),
  CONSTRAINT `IW_FK_INPUT_FORM` FOREIGN KEY (`IW_FORM`) REFERENCES `IW_FORM` (`IW_FORM_ID`),
  CONSTRAINT `IW_FK_INPUT_VARIABLE_PROCESS` FOREIGN KEY (`IW_VARIABLE_PROCESS`) REFERENCES `IW_VARIABLE_PROCESS` (`IW_VARIABLE_PROCESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_INPUT`
--

LOCK TABLES `IW_INPUT` WRITE;
/*!40000 ALTER TABLE `IW_INPUT` DISABLE KEYS */;
INSERT INTO `IW_INPUT` VALUES ('form_1478431887982',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',0,'Header',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Enqu√™te de satisfaction','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,310,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487663550609',0,0,0,0,0,'dynamicText','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',1,'√âvalu√©',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','${taskController.taskVars.collaborateur}','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,311,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487664067888',0,0,0,0,0,'dynamicText','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',2,'Poste occup√©',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','#{taskController.taskVars.poste_occupe}','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,312,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487664070494',0,0,0,0,0,'dynamicText','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',3,'Direction',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','#{taskController.taskVars.direction_collaborateur}','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,313,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487664042494',0,0,0,0,0,'dynamicText','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',4,'Sup√©rieur N+1',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','#{taskController.taskVars.superieur_n1}','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,314,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487664045102',0,0,0,0,0,'dynamicText','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',5,'Sup√©rieur N+2',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','#{taskController.taskVars.superieur_n2}','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,315,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487663559842',0,0,0,0,0,'date','Date',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',6,'Date de soumission de l\'enqu√™te',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0truex','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,316,'','dd/MM/yyyy','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1478432119337',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',7,'Header',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','¬∑         Que pensez ‚Äìvous du d√©lais accord√©  √† l‚Äô√©valuation globale','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,317,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487662889404',0,0,0,0,0,'select','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',8,'Suffisant?',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0ouit\0nonx','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,318,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5x'),('form_1478431932684',0,0,0,0,0,'textArea','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',9,'Pourquoi',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,319,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1478432009254',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',10,'Header',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','¬∑         L‚Äôid√©e d‚Äô√™tre soumis √† une √©valuation vous plait ‚Äìelle ?','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,320,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487662930812',0,0,0,0,0,'select','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',11,'L\'id√©e me plait',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0ouit\0nonx','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,321,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5x'),('form_1478432221291',0,0,0,0,0,'textArea','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',12,'Pourquoi',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,322,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1478431996438',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',13,'Header',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Trouvez-vous que le Processus tel qu‚Äôil est con√ßu se caract√©rise par :','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,323,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1481102120292',0,0,0,0,0,'select','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',14,'Une objectivit√© √† un pourcentage de',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\00%t\020%t\040%t\060%t\080%t\0100%x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,324,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5x'),('form_1481102123052',0,0,0,0,0,'select','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',15,'Une subjectivit√© √† un pourcentage  de',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\00%t\020%t\040%t\060%t\080%t\0100%x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,325,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5x'),('form_1478432015867',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',16,'Header',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Que doit-on am√©liorer?','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,326,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1478432329903',0,0,0,0,0,'textArea','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',17,'Citez quelques pistes',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,327,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1482143489725',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',18,'Header',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Perspectives de mobilit√©','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,328,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1482143514967',0,0,0,0,0,'textArea','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',19,'Citez vos perspectives de mobilit√©',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,329,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487680472063',0,0,0,0,0,'document','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',20,'G√©n√©rer l\'enqu√™te de satisfaction',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Enquete_De_Satisfaction.docx','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',2,NULL,NULL,330,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1485424573814',0,0,0,0,0,'header','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',0,'Header',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Demande','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',1,NULL,NULL,331,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1485424583757',0,0,0,0,0,'textInput','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',1,'Type demande',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0\nsuperadminx','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0\nsuperadminx',1,NULL,NULL,332,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-7AC57F59-E2D6-413B-95A9-43BD91F84B3Ex'),('form_1485424594431',0,0,0,0,0,'date','Date',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',2,'Date de la demande',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0truex','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',1,NULL,NULL,333,'','dd/MM/yyyy','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0-Test-sid-5C232078-1245-473C-957A-555A5B3D3DB5x'),('form_1485424605828',0,0,0,0,0,'select','',0,'description',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',3,'type de demande',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0\nofficiellet\0pas officiellex','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',1,NULL,NULL,334,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('valider',0,0,0,0,0,'select','',0,'valider',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',4,'valider',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0t\0ouit\0nonx','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',1,NULL,NULL,335,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x'),('form_1487754521349',0,0,0,0,0,'document','',0,'',1,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',0,'',5,'G√©n√©rer rapport',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','placeholder','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','string','Type de la demande.docx','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x',1,NULL,NULL,336,'','','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','',0,'','¨\Ì\0sr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x');
/*!40000 ALTER TABLE `IW_INPUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_LICENSE`
--

DROP TABLE IF EXISTS `IW_LICENSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_LICENSE` (
  `IW_LICENSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_ACTIVE` tinyint(1) DEFAULT NULL,
  `IW_DATE` datetime DEFAULT NULL,
  `IW_FILE_NAME` varchar(255) DEFAULT NULL,
  `IW_LICENSE_BYTES` longblob,
  PRIMARY KEY (`IW_LICENSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_LICENSE`
--

LOCK TABLES `IW_LICENSE` WRITE;
/*!40000 ALTER TABLE `IW_LICENSE` DISABLE KEYS */;
INSERT INTO `IW_LICENSE` VALUES (1,1,'2016-04-12 16:48:47','imagineworkflow.license','¨\Ì\0sr\01net.nicholaswilliams.java.licensing.SignedLicenseäÑˇü~≤jÑ\0[\0licenseContentt\0[B[\0signatureContentq\0~\0xpur\0[B¨Û¯T\‡\0\0xp\0\0¿¿&Û\◊\ Rã\Ô>‹∫;eõv\ÈZP8ï71∑™\\@è%\œBV|∞\·≤rBçÉcºXB\nåæÛ}üpEDœæV˝∞∏®15F\Z]ô54\ÿüt\Á\ π•≤õÜK]Q%≠¸\„RE_¡˛4˝g?{\‚¨v¶\”\Êc\'öQ⁄í™&ãè\œ\n\Îµ1¢\·|îò\rp\”\‰Ûò\0:{SŸÖ\ŸÒßôÕÆ\Ó≥\“\·¨ÂãØi¢\Ã2\◊k8x\Œ˜tΩÅÇB1ñåE¿jú™_5j†ô\Z™wø˝∑ì°òïC∏A\»9>ü\›\·oóùø2wVı¢\Z¶ˆ$¶på\n5P\ÌÅyO\ÌIºÄ\Èk{n˘DÇˆ5$ˆ\ƒQ\ÿYp\Õ¿é\œS!\ËÛéåB\÷\ÿ\Á©\»Gèä\«;\Ëö\≈L%U\∆`˘ﬂ†§]\ÈÙùæ∞–∑)NãÄ\Õ˝k1q”ùpq´¿õµ\n\ﬂa.ù™r∫§éëÄç£=\·ó\œ\Ïz§•fx\‡\—¯G¶[9V°ëMå\Ïövˇa\ŒP6+\‚™Bˆ\r\€v©-»òfô†5\–Ù\Â/e\Â˚ö\ÕrB\Î\Í+=ä!Y•©Zl∏SµÇ\…J	AOÕõ\Ã⁄∫ñd∑-±ä}[»æT?ãÇuq\0~\0\0\0\0XÙLho˝	lç\'h\»ıtP\ﬂ\ËÄHi\‘k˛\Ÿ\ÿG\‰.&/Q ü≈ö1¨\'™ªj†≈±≈å\0úà\ƒG}h®≥ò\ns\≈∆ò¯π¶~ù\‰¢W[|ô9˜Ñ9õªi\‰f\√#\ƒ˚\Áö\—\¬H\’	ñSl&&∞0-õ\‰£\Í¸G\"ä\Î_I˚Ó≤úNUéò∞\Ëµìû”†ï∫∫íB†º†l-˜]I\€´\¬U\ÈiïµölPûÈìßÅ≥∞ï3ãéäïûaùâ\∆MÄüø}\Ã «å\≈,@`89˘\—f\Í0˜{\ÍoˆÙH\€xΩm:\“YB!\÷†\Ìı\—.hxz3\Ô9>¨|\ƒ\‰ã=qjf\Í\‹\›U†€†\Ë'),(2,1,'2017-01-24 11:58:52','imagineworkflow.license','¨\Ì\0sr\01net.nicholaswilliams.java.licensing.SignedLicenseäÑˇü~≤jÑ\0[\0licenseContentt\0[B[\0signatureContentq\0~\0xpur\0[B¨Û¯T\‡\0\0xp\0\0¿	à\√BO\‰\ƒ\È\⁄\'æ≥É§ó1^5¸F\">=πoS\rî¯~É5V£áµ\œ4˜{±Eº¿dI{4¿ü\\\È\∆¡üê\◊\¬\\\ w,9ã¿≥aøÇL\◊’∫ü(Mö\r\Œ\ jJ\”\räg\‡Hé°/5=®cºcÉπ\0£∞\Ê\›\À*fFkêÆw\Î%Mâ \Ì\Zâ˜ql=ÚrI\›¸T;~	\›)ì§ÛL|∫~uõ#ànZ≤πa\≈VØE\“\≈wÛˇ¶\Á\Ÿg%\Z!3≤&\’\\xúÇø±É[∫\·ıT\\Q\—¬´\"\ËDÉ\rhb\«)≤\ÃQî8\ﬂ\∆IaAbâ[\‡37`’ëv\\\¬LΩÒ¨ã~à\¬\”JÄ∫O¨∏\ÊñÒh≥LùUÅây?ú\n\⁄qE9ëTßzÆ¡4\ﬁ`EEGÖÃàS#Ñù\·ˆ\—^7WE\À 	R z∂ÆÆ>HõàX2?Ω!§ÛNk1hk\’\n\"˜≠\ l\”Tqü*[ül∑}Ö?≠&ïLo\‚ú˘\∆u^\√`uÿÇ |zï\€\Èwjˇi_Z,v˝°õWSWF!\Ôp¿\◊\Âë\Í\’\0s∑ıÛ\«\Êˇ+¡à≠¯\«*çO´_™^!\ÓP~¢\ Ï∑ãóauq\0~\0\0\0\03\Í¢\„í\"\Ó…É\‰f|\\\÷¨ç+t†a\"ŒüöiQÛ0iP]\«xö\Îî\”n\ÿ\r?3ä\ﬁVRπ∂Qi\ËâJ\ﬂ⁄æ•ëk\·TÃÖT\’OÑ\ƒWq˜I#ÒsP Mı\Ì\–\ÁN\Ë,ïB\·¨\∆–£\ﬂ\‡-{¡ \»2r£;Æ⁄±\"´\Ìä\"&í\·)zkáu-\ÔJß\∆\…$\¬OôP\Ÿ\ﬂ(>\‰!túë\Zë\›\–<,Uíq\—Sˇr\‹(ˇ¨F\—cX°N\ZKRYÄvøø4,q˜\’FùÖó≠|\›\›9\ﬁ\rÔ¶ù8=Ù\'<t‘ø2,∂\ÊY≠Ûty)]\‰\Ï#‘∏∫¨\Ë4ã(Ò&3?ΩEJ'),(3,1,'2017-04-13 06:26:26','imagineworkflow.license','¨\Ì\0sr\01net.nicholaswilliams.java.licensing.SignedLicenseäÑˇü~≤jÑ\0[\0licenseContentt\0[B[\0signatureContentq\0~\0xpur\0[B¨Û¯T\‡\0\0xp\0\0¿	à\√BO\‰\ƒ\È\⁄\'æ≥É§ó1^5¸F\">=πoS\rî¯~É5V£áµ\œ4˜{±Eº¿dI{4¿ü\\\È\∆¡üê\◊\¬\\\ w,9ã¿≥aøÇL\◊’∫ü(Mö\r\Œ\ jJ\”\räg\‡Hé°/5=®cºcÉπ\0£∞\Ê\›\À*fFkêÆw\Î%Mâ \Ì\Zâ˜ql=ÚrI\›¸T;~	\›)ì§ÛL|∫~uõ#ànZ≤πa\≈VØE\“\≈wÛˇ¶\Á\Ÿg%\Z!3≤&\’\\xúÇø±É[∫\·ıT\\Q\—¬´\"\ËDÉ\rhb\«)≤\ÃQî8\ﬂ\∆IaAbâ[\‡37`’ëv\\\¬LΩÒ¨ã~à\¬\”JÄ∫O¨∏\ÊñÒh≥LùUÅây?ú\n\⁄qE9ëTßzÆ¡4\ﬁ`EEGÖÃàS#Ñù\·ˆ\—^7WE\À 	R z∂ÆÆ>HõàX2?Ω!§ÛNk1hk\’\n\"˜≠\ l\”Tqü*[ül∑}Ö?≠&ïLo\‚ú˘\∆u^\√`uÿÇ |zï\€\Èwjˇi_Z,v˝°õWSWF!\Ôp¿\◊\Âë\Í\’\0s∑ıÛ\«\Êˇ+¡à≠¯\«*çO´_™^!\ÓP~¢\ Ï∑ãóauq\0~\0\0\0\03\Í¢\„í\"\Ó…É\‰f|\\\÷¨ç+t†a\"ŒüöiQÛ0iP]\«xö\Îî\”n\ÿ\r?3ä\ﬁVRπ∂Qi\ËâJ\ﬂ⁄æ•ëk\·TÃÖT\’OÑ\ƒWq˜I#ÒsP Mı\Ì\–\ÁN\Ë,ïB\·¨\∆–£\ﬂ\‡-{¡ \»2r£;Æ⁄±\"´\Ìä\"&í\·)zkáu-\ÔJß\∆\…$\¬OôP\Ÿ\ﬂ(>\‰!túë\Zë\›\–<,Uíq\—Sˇr\‹(ˇ¨F\—cX°N\ZKRYÄvøø4,q˜\’FùÖó≠|\›\›9\ﬁ\rÔ¶ù8=Ù\'<t‘ø2,∂\ÊY≠Ûty)]\‰\Ï#‘∏∫¨\Ë4ã(Ò&3?ΩEJ');
/*!40000 ALTER TABLE `IW_LICENSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_LIST`
--

DROP TABLE IF EXISTS `IW_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_LIST` (
  `IW_LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_DESCIRPTION` varchar(45) DEFAULT NULL,
  `IW_NAME` varchar(50) DEFAULT NULL,
  `IW_POSTED_DATE` date DEFAULT NULL,
  `IW_TITLE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IW_LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_LIST`
--

LOCK TABLES `IW_LIST` WRITE;
/*!40000 ALTER TABLE `IW_LIST` DISABLE KEYS */;
INSERT INTO `IW_LIST` VALUES (1,'','Organisme','2016-06-05',NULL),(2,NULL,'TIMEZONE',NULL,'Fuseau horaire');
/*!40000 ALTER TABLE `IW_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_LIST_OPTIONS`
--

DROP TABLE IF EXISTS `IW_LIST_OPTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_LIST_OPTIONS` (
  `IW_LIST_OPTIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCIRPTION` longtext,
  `IW_NAME` varchar(50) DEFAULT NULL,
  `IW_LIST_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IW_LIST_OPTIONS_ID`),
  KEY `IW_PK_OPTIONS_LIST` (`IW_LIST_ID`),
  CONSTRAINT `IW_PK_OPTIONS_LIST` FOREIGN KEY (`IW_LIST_ID`) REFERENCES `IW_LIST` (`IW_LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_LIST_OPTIONS`
--

LOCK TABLES `IW_LIST_OPTIONS` WRITE;
/*!40000 ALTER TABLE `IW_LIST_OPTIONS` DISABLE KEYS */;
INSERT INTO `IW_LIST_OPTIONS` VALUES (1,NULL,'ANEM',1),(2,NULL,'JOURNAUX',1),(3,NULL,'AUTRE',1),(4,'Puerto Rico (Atlantic)','America/Puerto_Rico',2),(5,'New York (Eastern)','America/New_York',2),(6,'Chicago (Central)','America/Chicago',2),(7,'Denver (Mountain)','America/Denver',2),(8,'Phoenix (MST)','America/Phoenix',2),(9,'Los Angeles (Pacific)','America/Los_Angeles',2),(10,'Anchorage (Alaska)','America/Anchorage',2),(11,'Honolulu (Hawaii)','Pacific/Honolulu',2),(12,'Adak','America/Adak',2),(13,'Anchorage','America/Anchorage',2),(14,'Anguilla','America/Anguilla',2),(15,'Antigua','America/Antigua',2),(16,'Araguaina','America/Araguaina',2),(17,'Argentina - Buenos Aires','America/Argentina/Buenos_Aires',2),(18,'Argentina - Catamarca','America/Argentina/Catamarca',2),(19,'Argentina - ComodRivadavia','America/Argentina/ComodRivadavia',2),(20,'Argentina - Cordoba','America/Argentina/Cordoba',2),(21,'Argentina - Jujuy','America/Argentina/Jujuy',2),(22,'Argentina - La Rioja','America/Argentina/La_Rioja',2),(23,'Argentina - Mendoza','America/Argentina/Mendoza',2),(24,'Argentina - Rio Gallegos','America/Argentina/Rio_Gallegos',2),(25,'Argentina - Salta','America/Argentina/Salta',2),(26,'Argentina - San Juan','America/Argentina/San_Juan',2),(27,'Argentina - San Luis','America/Argentina/San_Luis',2),(28,'Argentina - Tucuman','America/Argentina/Tucuman',2),(29,'Argentina - Ushuaia','America/Argentina/Ushuaia',2),(30,'Aruba','America/Aruba',2),(31,'Asuncion','America/Asuncion',2),(32,'Atikokan','America/Atikokan',2),(33,'Atka','America/Atka',2),(34,'Bahia','America/Bahia',2),(35,'Barbados','America/Barbados',2),(36,'Belem','America/Belem',2),(37,'Belize','America/Belize',2),(38,'Blanc-Sablon','America/Blanc-Sablon',2),(39,'Boa Vista','America/Boa_Vista',2),(40,'Bogota','America/Bogota',2),(41,'Boise','America/Boise',2),(42,'Buenos Aires','America/Buenos_Aires',2),(43,'Cambridge Bay','America/Cambridge_Bay',2),(44,'Campo Grande','America/Campo_Grande',2),(45,'Cancun','America/Cancun',2),(46,'Caracas','America/Caracas',2),(47,'Catamarca','America/Catamarca',2),(48,'Cayenne','America/Cayenne',2),(49,'Cayman','America/Cayman',2),(50,'Chicago','America/Chicago',2),(51,'Chihuahua','America/Chihuahua',2),(52,'Coral Harbour','America/Coral_Harbour',2),(53,'Cordoba','America/Cordoba',2),(54,'Costa Rica','America/Costa_Rica',2),(55,'Cuiaba','America/Cuiaba',2),(56,'Curacao','America/Curacao',2),(57,'Danmarkshavn','America/Danmarkshavn',2),(58,'Dawson','America/Dawson',2),(59,'Dawson Creek','America/Dawson_Creek',2),(60,'Denver','America/Denver',2),(61,'Detroit','America/Detroit',2),(62,'Dominica','America/Dominica',2),(63,'Edmonton','America/Edmonton',2),(64,'Eirunepe','America/Eirunepe',2),(65,'El Salvador','America/El_Salvador',2),(66,'Ensenada','America/Ensenada',2),(67,'Fortaleza','America/Fortaleza',2),(68,'Fort Wayne','America/Fort_Wayne',2),(69,'Glace Bay','America/Glace_Bay',2),(70,'Godthab','America/Godthab',2),(71,'Goose Bay','America/Goose_Bay',2),(72,'Grand Turk','America/Grand_Turk',2),(73,'Grenada','America/Grenada',2),(74,'Guadeloupe','America/Guadeloupe',2),(75,'Guatemala','America/Guatemala',2),(76,'Guayaquil','America/Guayaquil',2),(77,'Guyana','America/Guyana',2),(78,'Halifax','America/Halifax',2),(79,'Havana','America/Havana',2),(80,'Hermosillo','America/Hermosillo',2),(81,'Indiana - Indianapolis','America/Indiana/Indianapolis',2),(82,'Indiana - Knox','America/Indiana/Knox',2),(83,'Indiana - Marengo','America/Indiana/Marengo',2),(84,'Indiana - Petersburg','America/Indiana/Petersburg',2),(85,'Indiana - Tell City','America/Indiana/Tell_City',2),(86,'Indiana - Vevay','America/Indiana/Vevay',2),(87,'Indiana - Vincennes','America/Indiana/Vincennes',2),(88,'Indiana - Winamac','America/Indiana/Winamac',2),(89,'Indianapolis','America/Indianapolis',2),(90,'Inuvik','America/Inuvik',2),(91,'Iqaluit','America/Iqaluit',2),(92,'Jamaica','America/Jamaica',2),(93,'Jujuy','America/Jujuy',2),(94,'Juneau','America/Juneau',2),(95,'Kentucky - Louisville','America/Kentucky/Louisville',2),(96,'Kentucky - Monticello','America/Kentucky/Monticello',2),(97,'Knox IN','America/Knox_IN',2),(98,'La Paz','America/La_Paz',2),(99,'Lima','America/Lima',2),(100,'Los Angeles','America/Los_Angeles',2),(101,'Louisville','America/Louisville',2),(102,'Maceio','America/Maceio',2),(103,'Managua','America/Managua',2),(104,'Manaus','America/Manaus',2),(105,'Marigot','America/Marigot',2),(106,'Martinique','America/Martinique',2),(107,'Matamoros','America/Matamoros',2),(108,'Mazatlan','America/Mazatlan',2),(109,'Mendoza','America/Mendoza',2),(110,'Menominee','America/Menominee',2),(111,'Merida','America/Merida',2),(112,'Mexico City','America/Mexico_City',2),(113,'Miquelon','America/Miquelon',2),(114,'Moncton','America/Moncton',2),(115,'Monterrey','America/Monterrey',2),(116,'Montevideo','America/Montevideo',2),(117,'Montreal','America/Montreal',2),(118,'Montserrat','America/Montserrat',2),(119,'Nassau','America/Nassau',2),(120,'New York','America/New_York',2),(121,'Nipigon','America/Nipigon',2),(122,'Nome','America/Nome',2),(123,'Noronha','America/Noronha',2),(124,'North Dakota - Center','America/North_Dakota/Center',2),(125,'North Dakota - New Salem','America/North_Dakota/New_Salem',2),(126,'Ojinaga','America/Ojinaga',2),(127,'Panama','America/Panama',2),(128,'Pangnirtung','America/Pangnirtung',2),(129,'Paramaribo','America/Paramaribo',2),(130,'Phoenix','America/Phoenix',2),(131,'Port-au-Prince','America/Port-au-Prince',2),(132,'Porto Acre','America/Porto_Acre',2),(133,'Port of Spain','America/Port_of_Spain',2),(134,'Porto Velho','America/Porto_Velho',2),(135,'Puerto Rico','America/Puerto_Rico',2),(136,'Rainy River','America/Rainy_River',2),(137,'Rankin Inlet','America/Rankin_Inlet',2),(138,'Recife','America/Recife',2),(139,'Regina','America/Regina',2),(140,'Resolute','America/Resolute',2),(141,'Rio Branco','America/Rio_Branco',2),(142,'Rosario','America/Rosario',2),(143,'Santa Isabel','America/Santa_Isabel',2),(144,'Santarem','America/Santarem',2),(145,'Santiago','America/Santiago',2),(146,'Santo Domingo','America/Santo_Domingo',2),(147,'Sao Paulo','America/Sao_Paulo',2),(148,'Scoresbysund','America/Scoresbysund',2),(149,'Shiprock','America/Shiprock',2),(150,'St Barthelemy','America/St_Barthelemy',2),(151,'St Johns','America/St_Johns',2),(152,'St Kitts','America/St_Kitts',2),(153,'St Lucia','America/St_Lucia',2),(154,'St Thomas','America/St_Thomas',2),(155,'St Vincent','America/St_Vincent',2),(156,'Swift Current','America/Swift_Current',2),(157,'Tegucigalpa','America/Tegucigalpa',2),(158,'Thule','America/Thule',2),(159,'Thunder Bay','America/Thunder_Bay',2),(160,'Tijuana','America/Tijuana',2),(161,'Toronto','America/Toronto',2),(162,'Tortola','America/Tortola',2),(163,'Vancouver','America/Vancouver',2),(164,'Virgin','America/Virgin',2),(165,'Whitehorse','America/Whitehorse',2),(166,'Winnipeg','America/Winnipeg',2),(167,'Yakutat','America/Yakutat',2),(168,'Yellowknife','America/Yellowknife',2),(169,'Amsterdam','Europe/Amsterdam',2),(170,'Andorra','Europe/Andorra',2),(171,'Athens','Europe/Athens',2),(172,'Belfast','Europe/Belfast',2),(173,'Belgrade','Europe/Belgrade',2),(174,'Berlin','Europe/Berlin',2),(175,'Bratislava','Europe/Bratislava',2),(176,'Brussels','Europe/Brussels',2),(177,'Bucharest','Europe/Bucharest',2),(178,'Budapest','Europe/Budapest',2),(179,'Chisinau','Europe/Chisinau',2),(180,'Copenhagen','Europe/Copenhagen',2),(181,'Dublin','Europe/Dublin',2),(182,'Gibraltar','Europe/Gibraltar',2),(183,'Guernsey','Europe/Guernsey',2),(184,'Helsinki','Europe/Helsinki',2),(185,'Isle of Man','Europe/Isle_of_Man',2),(186,'Istanbul','Europe/Istanbul',2),(187,'Jersey','Europe/Jersey',2),(188,'Kaliningrad','Europe/Kaliningrad',2),(189,'Kiev','Europe/Kiev',2),(190,'Lisbon','Europe/Lisbon',2),(191,'Ljubljana','Europe/Ljubljana',2),(192,'London','Europe/London',2),(193,'Luxembourg','Europe/Luxembourg',2),(194,'Madrid','Europe/Madrid',2),(195,'Malta','Europe/Malta',2),(196,'Mariehamn','Europe/Mariehamn',2),(197,'Minsk','Europe/Minsk',2),(198,'Monaco','Europe/Monaco',2),(199,'Moscow','Europe/Moscow',2),(200,'Nicosia','Europe/Nicosia',2),(201,'Oslo','Europe/Oslo',2),(202,'Paris','Europe/Paris',2),(203,'Podgorica','Europe/Podgorica',2),(204,'Prague','Europe/Prague',2),(205,'Riga','Europe/Riga',2),(206,'Rome','Europe/Rome',2),(207,'Samara','Europe/Samara',2),(208,'San Marino','Europe/San_Marino',2),(209,'Sarajevo','Europe/Sarajevo',2),(210,'Simferopol','Europe/Simferopol',2),(211,'Skopje','Europe/Skopje',2),(212,'Sofia','Europe/Sofia',2),(213,'Stockholm','Europe/Stockholm',2),(214,'Tallinn','Europe/Tallinn',2),(215,'Tirane','Europe/Tirane',2),(216,'Tiraspol','Europe/Tiraspol',2),(217,'Uzhgorod','Europe/Uzhgorod',2),(218,'Vaduz','Europe/Vaduz',2),(219,'Vatican','Europe/Vatican',2),(220,'Vienna','Europe/Vienna',2),(221,'Vilnius','Europe/Vilnius',2),(222,'Volgograd','Europe/Volgograd',2),(223,'Warsaw','Europe/Warsaw',2),(224,'Zagreb','Europe/Zagreb',2),(225,'Zaporozhye','Europe/Zaporozhye',2),(226,'Zurich','Europe/Zurich',2),(227,'Aden','Asia/Aden',2),(228,'Almaty','Asia/Almaty',2),(229,'Amman','Asia/Amman',2),(230,'Anadyr','Asia/Anadyr',2),(231,'Aqtau','Asia/Aqtau',2),(232,'Aqtobe','Asia/Aqtobe',2),(233,'Ashgabat','Asia/Ashgabat',2),(234,'Ashkhabad','Asia/Ashkhabad',2),(235,'Baghdad','Asia/Baghdad',2),(236,'Bahrain','Asia/Bahrain',2),(237,'Baku','Asia/Baku',2),(238,'Bangkok','Asia/Bangkok',2),(239,'Beirut','Asia/Beirut',2),(240,'Bishkek','Asia/Bishkek',2),(241,'Brunei','Asia/Brunei',2),(242,'Calcutta','Asia/Calcutta',2),(243,'Choibalsan','Asia/Choibalsan',2),(244,'Chongqing','Asia/Chongqing',2),(245,'Chungking','Asia/Chungking',2),(246,'Colombo','Asia/Colombo',2),(247,'Dacca','Asia/Dacca',2),(248,'Damascus','Asia/Damascus',2),(249,'Dhaka','Asia/Dhaka',2),(250,'Dili','Asia/Dili',2),(251,'Dubai','Asia/Dubai',2),(252,'Dushanbe','Asia/Dushanbe',2),(253,'Gaza','Asia/Gaza',2),(254,'Harbin','Asia/Harbin',2),(255,'Ho Chi Minh','Asia/Ho_Chi_Minh',2),(256,'Hong Kong','Asia/Hong_Kong',2),(257,'Hovd','Asia/Hovd',2),(258,'Irkutsk','Asia/Irkutsk',2),(259,'Istanbul','Asia/Istanbul',2),(260,'Jakarta','Asia/Jakarta',2),(261,'Jayapura','Asia/Jayapura',2),(262,'Jerusalem','Asia/Jerusalem',2),(263,'Kabul','Asia/Kabul',2),(264,'Kamchatka','Asia/Kamchatka',2),(265,'Karachi','Asia/Karachi',2),(266,'Kashgar','Asia/Kashgar',2),(267,'Kathmandu','Asia/Kathmandu',2),(268,'Katmandu','Asia/Katmandu',2),(269,'Kolkata','Asia/Kolkata',2),(270,'Krasnoyarsk','Asia/Krasnoyarsk',2),(271,'Kuala Lumpur','Asia/Kuala_Lumpur',2),(272,'Kuching','Asia/Kuching',2),(273,'Kuwait','Asia/Kuwait',2),(274,'Macao','Asia/Macao',2),(275,'Macau','Asia/Macau',2),(276,'Magadan','Asia/Magadan',2),(277,'Makassar','Asia/Makassar',2),(278,'Manila','Asia/Manila',2),(279,'Muscat','Asia/Muscat',2),(280,'Nicosia','Asia/Nicosia',2),(281,'Novokuznetsk','Asia/Novokuznetsk',2),(282,'Novosibirsk','Asia/Novosibirsk',2),(283,'Omsk','Asia/Omsk',2),(284,'Oral','Asia/Oral',2),(285,'Phnom Penh','Asia/Phnom_Penh',2),(286,'Pontianak','Asia/Pontianak',2),(287,'Pyongyang','Asia/Pyongyang',2),(288,'Qatar','Asia/Qatar',2),(289,'Qyzylorda','Asia/Qyzylorda',2),(290,'Rangoon','Asia/Rangoon',2),(291,'Riyadh','Asia/Riyadh',2),(292,'Saigon','Asia/Saigon',2),(293,'Sakhalin','Asia/Sakhalin',2),(294,'Samarkand','Asia/Samarkand',2),(295,'Seoul','Asia/Seoul',2),(296,'Shanghai','Asia/Shanghai',2),(297,'Singapore','Asia/Singapore',2),(298,'Taipei','Asia/Taipei',2),(299,'Tashkent','Asia/Tashkent',2),(300,'Tbilisi','Asia/Tbilisi',2),(301,'Tehran','Asia/Tehran',2),(302,'Tel Aviv','Asia/Tel_Aviv',2),(303,'Thimbu','Asia/Thimbu',2),(304,'Thimphu','Asia/Thimphu',2),(305,'Tokyo','Asia/Tokyo',2),(306,'Ujung Pandang','Asia/Ujung_Pandang',2),(307,'Ulaanbaatar','Asia/Ulaanbaatar',2),(308,'Ulan Bator','Asia/Ulan_Bator',2),(309,'Urumqi','Asia/Urumqi',2),(310,'Vientiane','Asia/Vientiane',2),(311,'Vladivostok','Asia/Vladivostok',2),(312,'Yakutsk','Asia/Yakutsk',2),(313,'Yekaterinburg','Asia/Yekaterinburg',2),(314,'Yerevan','Asia/Yerevan',2),(315,'Abidjan','Africa/Abidjan',2),(316,'Accra','Africa/Accra',2),(317,'Addis Ababa','Africa/Addis_Ababa',2),(318,'Algiers','Africa/Algiers',2),(319,'Asmara','Africa/Asmara',2),(320,'Asmera','Africa/Asmera',2),(321,'Bamako','Africa/Bamako',2),(322,'Bangui','Africa/Bangui',2),(323,'Banjul','Africa/Banjul',2),(324,'Bissau','Africa/Bissau',2),(325,'Blantyre','Africa/Blantyre',2),(326,'Brazzaville','Africa/Brazzaville',2),(327,'Bujumbura','Africa/Bujumbura',2),(328,'Cairo','Africa/Cairo',2),(329,'Casablanca','Africa/Casablanca',2),(330,'Ceuta','Africa/Ceuta',2),(331,'Conakry','Africa/Conakry',2),(332,'Dakar','Africa/Dakar',2),(333,'Dar es Salaam','Africa/Dar_es_Salaam',2),(334,'Djibouti','Africa/Djibouti',2),(335,'Douala','Africa/Douala',2),(336,'El Aaiun','Africa/El_Aaiun',2),(337,'Freetown','Africa/Freetown',2),(338,'Gaborone','Africa/Gaborone',2),(339,'Harare','Africa/Harare',2),(340,'Johannesburg','Africa/Johannesburg',2),(341,'Kampala','Africa/Kampala',2),(342,'Khartoum','Africa/Khartoum',2),(343,'Kigali','Africa/Kigali',2),(344,'Kinshasa','Africa/Kinshasa',2),(345,'Lagos','Africa/Lagos',2),(346,'Libreville','Africa/Libreville',2),(347,'Lome','Africa/Lome',2),(348,'Luanda','Africa/Luanda',2),(349,'Lubumbashi','Africa/Lubumbashi',2),(350,'Lusaka','Africa/Lusaka',2),(351,'Malabo','Africa/Malabo',2),(352,'Maputo','Africa/Maputo',2),(353,'Maseru','Africa/Maseru',2),(354,'Mbabane','Africa/Mbabane',2),(355,'Mogadishu','Africa/Mogadishu',2),(356,'Monrovia','Africa/Monrovia',2),(357,'Nairobi','Africa/Nairobi',2),(358,'Ndjamena','Africa/Ndjamena',2),(359,'Niamey','Africa/Niamey',2),(360,'Nouakchott','Africa/Nouakchott',2),(361,'Ouagadougou','Africa/Ouagadougou',2),(362,'Porto-Novo','Africa/Porto-Novo',2),(363,'Sao Tome','Africa/Sao_Tome',2),(364,'Timbuktu','Africa/Timbuktu',2),(365,'Tripoli','Africa/Tripoli',2),(366,'Tunis','Africa/Tunis',2),(367,'Windhoek','Africa/Windhoek',2),(368,'ACT','Australia/ACT',2),(369,'Adelaide','Australia/Adelaide',2),(370,'Brisbane','Australia/Brisbane',2),(371,'Broken Hill','Australia/Broken_Hill',2),(372,'Canberra','Australia/Canberra',2),(373,'Currie','Australia/Currie',2),(374,'Darwin','Australia/Darwin',2),(375,'Eucla','Australia/Eucla',2),(376,'Hobart','Australia/Hobart',2),(377,'LHI','Australia/LHI',2),(378,'Lindeman','Australia/Lindeman',2),(379,'Lord Howe','Australia/Lord_Howe',2),(380,'Melbourne','Australia/Melbourne',2),(381,'North','Australia/North',2),(382,'NSW','Australia/NSW',2),(383,'Perth','Australia/Perth',2),(384,'Queensland','Australia/Queensland',2),(385,'South','Australia/South',2),(386,'Sydney','Australia/Sydney',2),(387,'Tasmania','Australia/Tasmania',2),(388,'Victoria','Australia/Victoria',2),(389,'West','Australia/West',2),(390,'Yancowinna','Australia/Yancowinna',2),(391,'Antananarivo','Indian/Antananarivo',2),(392,'Chagos','Indian/Chagos',2),(393,'Christmas','Indian/Christmas',2),(394,'Cocos','Indian/Cocos',2),(395,'Comoro','Indian/Comoro',2),(396,'Kerguelen','Indian/Kerguelen',2),(397,'Mahe','Indian/Mahe',2),(398,'Maldives','Indian/Maldives',2),(399,'Mauritius','Indian/Mauritius',2),(400,'Mayotte','Indian/Mayotte',2),(401,'Reunion','Indian/Reunion',2),(402,'Azores','Atlantic/Azores',2),(403,'Bermuda','Atlantic/Bermuda',2),(404,'Canary','Atlantic/Canary',2),(405,'Cape Verde','Atlantic/Cape_Verde',2),(406,'Faeroe','Atlantic/Faeroe',2),(407,'Faroe','Atlantic/Faroe',2),(408,'Jan Mayen','Atlantic/Jan_Mayen',2),(409,'Madeira','Atlantic/Madeira',2),(410,'Reykjavik','Atlantic/Reykjavik',2),(411,'South Georgia','Atlantic/South_Georgia',2),(412,'Stanley','Atlantic/Stanley',2),(413,'St Helena','Atlantic/St_Helena',2),(414,'Apia','Pacific/Apia',2),(415,'Auckland','Pacific/Auckland',2),(416,'Chatham','Pacific/Chatham',2),(417,'Easter','Pacific/Easter',2),(418,'Efate','Pacific/Efate',2),(419,'Enderbury','Pacific/Enderbury',2),(420,'Fakaofo','Pacific/Fakaofo',2),(421,'Fiji','Pacific/Fiji',2),(422,'Funafuti','Pacific/Funafuti',2),(423,'Galapagos','Pacific/Galapagos',2),(424,'Gambier','Pacific/Gambier',2),(425,'Guadalcanal','Pacific/Guadalcanal',2),(426,'Guam','Pacific/Guam',2),(427,'Honolulu','Pacific/Honolulu',2),(428,'Johnston','Pacific/Johnston',2),(429,'Kiritimati','Pacific/Kiritimati',2),(430,'Kosrae','Pacific/Kosrae',2),(431,'Kwajalein','Pacific/Kwajalein',2),(432,'Majuro','Pacific/Majuro',2),(433,'Marquesas','Pacific/Marquesas',2),(434,'Midway','Pacific/Midway',2),(435,'Nauru','Pacific/Nauru',2),(436,'Niue','Pacific/Niue',2),(437,'Norfolk','Pacific/Norfolk',2),(438,'Noumea','Pacific/Noumea',2),(439,'Pago Pago','Pacific/Pago_Pago',2),(440,'Palau','Pacific/Palau',2),(441,'Pitcairn','Pacific/Pitcairn',2),(442,'Ponape','Pacific/Ponape',2),(443,'Port Moresby','Pacific/Port_Moresby',2),(444,'Rarotonga','Pacific/Rarotonga',2),(445,'Saipan','Pacific/Saipan',2),(446,'Samoa','Pacific/Samoa',2),(447,'Tahiti','Pacific/Tahiti',2),(448,'Tarawa','Pacific/Tarawa',2),(449,'Tongatapu','Pacific/Tongatapu',2),(450,'Truk','Pacific/Truk',2),(451,'Wake','Pacific/Wake',2),(452,'Wallis','Pacific/Wallis',2),(453,'Yap','Pacific/Yap',2),(454,'Casey','Antarctica/Casey',2),(455,'Davis','Antarctica/Davis',2),(456,'DumontDUrville','Antarctica/DumontDUrville',2),(457,'Macquarie','Antarctica/Macquarie',2),(458,'Mawson','Antarctica/Mawson',2),(459,'McMurdo','Antarctica/McMurdo',2),(460,'Palmer','Antarctica/Palmer',2),(461,'Rothera','Antarctica/Rothera',2),(462,'South Pole','Antarctica/South_Pole',2),(463,'Syowa','Antarctica/Syowa',2),(464,'Vostok','Antarctica/Vostok',2),(465,'Longyearbyen','Arctic/Longyearbyen',2);
/*!40000 ALTER TABLE `IW_LIST_OPTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_LIST_TEST`
--

DROP TABLE IF EXISTS `IW_LIST_TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_LIST_TEST` (
  `ID_PERSON` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(255) DEFAULT NULL,
  `OPTION_VALUE` varchar(255) DEFAULT NULL,
  `PRENOM` varchar(255) DEFAULT NULL,
  `IWLISTID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_PERSON`),
  KEY `IW_FK_LIST` (`IWLISTID`),
  CONSTRAINT `IW_FK_LIST` FOREIGN KEY (`IWLISTID`) REFERENCES `IW_LIST` (`IW_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_LIST_TEST`
--

LOCK TABLES `IW_LIST_TEST` WRITE;
/*!40000 ALTER TABLE `IW_LIST_TEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_LIST_TEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_LOAN`
--

DROP TABLE IF EXISTS `IW_LOAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_LOAN` (
  `IW_LOAN_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_ALL_DAY` tinyint(1) NOT NULL,
  `IW_END_TIME` datetime NOT NULL,
  `IW_START_TIME` datetime NOT NULL,
  `IW_STATUS` varchar(64) NOT NULL,
  `IW_TENANT` varchar(255) NOT NULL,
  `IW_CAR` int(11) NOT NULL,
  PRIMARY KEY (`IW_LOAN_ID`),
  KEY `IW_LOAN_CAR` (`IW_CAR`),
  CONSTRAINT `IW_LOAN_CAR` FOREIGN KEY (`IW_CAR`) REFERENCES `IW_CAR` (`IW_CAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_LOAN`
--

LOCK TABLES `IW_LOAN` WRITE;
/*!40000 ALTER TABLE `IW_LOAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_LOAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_MAIL`
--

DROP TABLE IF EXISTS `IW_MAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_MAIL` (
  `IW_MAIL_ID` bigint(20) NOT NULL,
  `IW_CONTENT` longtext,
  `IW_RECIEVER` varchar(50) DEFAULT NULL,
  `IW_SENDER` varchar(50) DEFAULT NULL,
  `IW_SENDING_DATE` date DEFAULT NULL,
  `IW_SUBJECT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IW_MAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_MAIL`
--

LOCK TABLES `IW_MAIL` WRITE;
/*!40000 ALTER TABLE `IW_MAIL` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_MAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_MEETING_ROOM`
--

DROP TABLE IF EXISTS `IW_MEETING_ROOM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_MEETING_ROOM` (
  `IW_MEETING_ROOM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(45) DEFAULT NULL,
  `IW_INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IW_MEETING_ROOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_MEETING_ROOM`
--

LOCK TABLES `IW_MEETING_ROOM` WRITE;
/*!40000 ALTER TABLE `IW_MEETING_ROOM` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_MEETING_ROOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_MODEL_DETAILS`
--

DROP TABLE IF EXISTS `IW_MODEL_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_MODEL_DETAILS` (
  `IW_MODEL_DETAILS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_ACT_MODEL_ID` varchar(255) DEFAULT NULL,
  `IW_LISTING_INDEX` int(11) DEFAULT NULL,
  PRIMARY KEY (`IW_MODEL_DETAILS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_MODEL_DETAILS`
--

LOCK TABLES `IW_MODEL_DETAILS` WRITE;
/*!40000 ALTER TABLE `IW_MODEL_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_MODEL_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_MULTILINE_ENTITY`
--

DROP TABLE IF EXISTS `IW_MULTILINE_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_MULTILINE_ENTITY` (
  `IW_MULTILINE_ENTITY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_CLASS` varchar(254) DEFAULT NULL,
  `IW_NAME` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`IW_MULTILINE_ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_MULTILINE_ENTITY`
--

LOCK TABLES `IW_MULTILINE_ENTITY` WRITE;
/*!40000 ALTER TABLE `IW_MULTILINE_ENTITY` DISABLE KEYS */;
INSERT INTO `IW_MULTILINE_ENTITY` VALUES (2,'com.imaginepartners.imagineworkflow.models.business.BizAdRecruitmentPerOrganismRecruitment','BizAdRecruitmentPerOrganismRecruitment'),(3,'com.imaginepartners.imagineworkflow.models.business.BizAffaire','BizAffaire'),(4,'com.imaginepartners.imagineworkflow.models.business.BizAgence','BizAgence'),(6,'com.imaginepartners.imagineworkflow.models.business.BizAppel','BizAppel'),(7,'com.imaginepartners.imagineworkflow.models.business.BizArticle','BizArticle'),(8,'com.imaginepartners.imagineworkflow.models.business.BizBanque','BizBanque'),(9,'com.imaginepartners.imagineworkflow.models.business.BizCampagne','BizCampagne'),(10,'com.imaginepartners.imagineworkflow.models.business.BizCategorieDocument','BizCategorieDocument'),(11,'com.imaginepartners.imagineworkflow.models.business.BizCategorie','BizCategorie'),(13,'com.imaginepartners.imagineworkflow.models.business.BizClient','BizClient'),(14,'com.imaginepartners.imagineworkflow.models.business.BizCommande','BizCommande'),(15,'com.imaginepartners.imagineworkflow.models.business.BizCommune','BizCommune'),(16,'com.imaginepartners.imagineworkflow.models.business.BizCompteBancaire','BizCompteBancaire'),(17,'com.imaginepartners.imagineworkflow.models.business.BizCondidatePerAdRecruitment','BizCondidatePerAdRecruitment'),(18,'com.imaginepartners.imagineworkflow.models.business.BizContacts','BizContacts'),(20,'com.imaginepartners.imagineworkflow.models.business.BizContrat','BizContrat'),(21,'com.imaginepartners.imagineworkflow.models.business.BizCourrierRecouvrement','BizCourrierRecouvrement'),(23,'com.imaginepartners.imagineworkflow.models.business.BizDevise','BizDevise'),(24,'com.imaginepartners.imagineworkflow.models.business.BizDocBibliotheque','BizDocBibliotheque'),(25,'com.imaginepartners.imagineworkflow.models.business.BizDocumentClient','BizDocumentClient'),(26,'com.imaginepartners.imagineworkflow.models.business.BizEcheancePaiement','BizEcheancePaiement'),(29,'com.imaginepartners.imagineworkflow.models.business.BizFacture','BizFacture'),(30,'com.imaginepartners.imagineworkflow.models.business.BizFamilleAcheteur','BizFamilleAcheteur'),(31,'com.imaginepartners.imagineworkflow.models.business.BizFamille','BizFamille'),(32,'com.imaginepartners.imagineworkflow.models.business.BizFournisseur','BizFournisseur'),(33,'com.imaginepartners.imagineworkflow.models.business.BizGroupResponsable','BizGroupResponsable'),(34,'com.imaginepartners.imagineworkflow.models.business.BizLigneCommande','BizLigneCommande'),(35,'com.imaginepartners.imagineworkflow.models.business.BizLigneFournisseur','BizLigneFournisseur'),(36,'com.imaginepartners.imagineworkflow.models.business.BizMagasin','BizMagasin'),(37,'com.imaginepartners.imagineworkflow.models.business.BizMail','BizMail'),(38,'com.imaginepartners.imagineworkflow.models.business.BizMedia','BizMedia'),(39,'com.imaginepartners.imagineworkflow.models.business.BizModeleMail','BizModeleMail'),(41,'com.imaginepartners.imagineworkflow.models.business.BizModeReglement','BizModeReglement'),(42,'com.imaginepartners.imagineworkflow.models.business.BizOperation','BizOperation'),(43,'com.imaginepartners.imagineworkflow.models.business.BizPhaseVente','BizPhaseVente'),(51,'com.imaginepartners.imagineworkflow.models.business.BizProduit','BizProduit'),(52,'com.imaginepartners.imagineworkflow.models.business.BizRayon','BizRayon'),(53,'com.imaginepartners.imagineworkflow.models.business.BizRegion','BizRegion'),(54,'com.imaginepartners.imagineworkflow.models.business.BizRelanceClient','BizRelanceClient'),(55,'com.imaginepartners.imagineworkflow.models.business.BizReunion','BizReunion'),(56,'com.imaginepartners.imagineworkflow.models.business.BizRhAdRecruitment','BizRhAdRecruitment'),(57,'com.imaginepartners.imagineworkflow.models.business.BizRhRecruitmentOrganism','BizRhRecruitmentOrganism'),(58,'com.imaginepartners.imagineworkflow.models.business.BizRubriqueFacture','BizRubriqueFacture'),(59,'com.imaginepartners.imagineworkflow.models.business.BizSecteur','BizSecteur'),(60,'com.imaginepartners.imagineworkflow.models.business.BizSociete','BizSociete'),(61,'com.imaginepartners.imagineworkflow.models.business.BizSousFamille','BizSousFamille'),(62,'com.imaginepartners.imagineworkflow.models.business.BizSousLigneCommande','BizSousLigneCommande'),(64,'com.imaginepartners.imagineworkflow.models.business.BizStatutFacture','BizStatutFacture'),(65,'com.imaginepartners.imagineworkflow.models.business.BizStatutRelance','BizStatutRelance'),(66,'com.imaginepartners.imagineworkflow.models.business.BizStatutReunion','BizStatutReunion'),(68,'com.imaginepartners.imagineworkflow.models.business.BizTresoPlanTresorie','BizTresoPlanTresorie'),(69,'com.imaginepartners.imagineworkflow.models.business.BizTresoRubrique','BizTresoRubrique'),(70,'com.imaginepartners.imagineworkflow.models.business.BizTresoSrParPlan','BizTresoSrParPlan'),(71,'com.imaginepartners.imagineworkflow.models.business.BizTypeCompte','BizTypeCompte'),(72,'com.imaginepartners.imagineworkflow.models.business.BizTypeContrat','BizTypeContrat'),(74,'com.imaginepartners.imagineworkflow.models.business.BizTypeRelance','BizTypeRelance'),(75,'com.imaginepartners.imagineworkflow.models.business.BizWilaya','BizWilaya'),(101,'com.imaginepartners.imagineworkflow.models.rh.AdmG50','AdmG50'),(102,'com.imaginepartners.imagineworkflow.models.rh.OrgEntiteOrganisationnelle','OrgEntiteOrganisationnelle'),(103,'com.imaginepartners.imagineworkflow.models.rh.RhAccompagnant','RhAccompagnant'),(104,'com.imaginepartners.imagineworkflow.models.rh.RhAnnonceRecrutement','RhAnnonceRecrutement'),(105,'com.imaginepartners.imagineworkflow.models.rh.RhCandidat','RhCandidat'),(106,'com.imaginepartners.imagineworkflow.models.rh.RhCategorie','RhCategorie'),(107,'com.imaginepartners.imagineworkflow.models.rh.RhCollaborateur','RhCollaborateur'),(108,'com.imaginepartners.imagineworkflow.models.rh.RhCompetence','RhCompetence'),(109,'com.imaginepartners.imagineworkflow.models.rh.RhConge','RhConge'),(110,'com.imaginepartners.imagineworkflow.models.rh.RhCsp','RhCsp'),(111,'com.imaginepartners.imagineworkflow.models.rh.RhCvtheque','RhCvtheque'),(112,'com.imaginepartners.imagineworkflow.models.rh.RhDirection','RhDirection'),(113,'com.imaginepartners.imagineworkflow.models.rh.RhDistributionEvaluation','RhDistributionEvaluation'),(114,'com.imaginepartners.imagineworkflow.models.rh.RhDomaineObjectif','RhDomaineObjectif'),(115,'com.imaginepartners.imagineworkflow.models.rh.RhEvaluation','RhEvaluation'),(116,'com.imaginepartners.imagineworkflow.models.rh.RhFicheDePoste','RhFicheDePoste'),(117,'com.imaginepartners.imagineworkflow.models.rh.RhFormation','RhFormation'),(118,'com.imaginepartners.imagineworkflow.models.rh.RhFrequenceEvaluation','RhFrequenceEvaluation'),(119,'com.imaginepartners.imagineworkflow.models.rh.RhIndicateur','RhIndicateur'),(120,'com.imaginepartners.imagineworkflow.models.rh.RhMissionPrincipale','RhMissionPrincipale'),(121,'com.imaginepartners.imagineworkflow.models.rh.RhMotifConge','RhMotifConge'),(122,'com.imaginepartners.imagineworkflow.models.rh.RhMoyen','RhMoyen'),(123,'com.imaginepartners.imagineworkflow.models.rh.RhObjectif','RhObjectif'),(124,'com.imaginepartners.imagineworkflow.models.rh.RhOrganismeAnnonce','RhOrganismeAnnonce'),(125,'com.imaginepartners.imagineworkflow.models.rh.RhOrganismeRecrutement','RhOrganismeRecrutement'),(126,'com.imaginepartners.imagineworkflow.models.rh.RhPlanActions','RhPlanActions'),(127,'com.imaginepartners.imagineworkflow.models.rh.RhPosteOccupe','RhPosteOccupe'),(128,'com.imaginepartners.imagineworkflow.models.rh.RhPrime','RhPrime'),(129,'com.imaginepartners.imagineworkflow.models.rh.RhQualitePersonnelle','RhQualitePersonnelle'),(130,'com.imaginepartners.imagineworkflow.models.rh.RhRessourcesLogistiques','RhRessourcesLogistiques'),(131,'com.imaginepartners.imagineworkflow.models.rh.RhReunionEntretin','RhReunionEntretin'),(132,'com.imaginepartners.imagineworkflow.models.rh.RhSalaire','RhSalaire'),(133,'com.imaginepartners.imagineworkflow.models.rh.RhService','RhService'),(134,'com.imaginepartners.imagineworkflow.models.rh.RhStatutObjectif','RhStatutObjectif'),(135,'com.imaginepartners.imagineworkflow.models.rh.RhStatutPeriodeEssai','RhStatutPeriodeEssai'),(136,'com.imaginepartners.imagineworkflow.models.rh.RhStatutRecrutement','RhStatutRecrutement'),(137,'com.imaginepartners.imagineworkflow.models.rh.RhStructure','RhStructure'),(138,'com.imaginepartners.imagineworkflow.models.rh.RhTacheFichePoste','RhTacheFichePoste'),(139,'com.imaginepartners.imagineworkflow.models.rh.RhTenuePoste','RhTenuePoste'),(141,'com.imaginepartners.imagineworkflow.models.rh.RhTypeConge','RhTypeConge'),(142,'com.imaginepartners.imagineworkflow.models.rh.RhTypeDistriEval','RhTypeDistriEval'),(143,'com.imaginepartners.imagineworkflow.models.rh.RhTypeMoyen','RhTypeMoyen'),(241,'com.imaginepartners.imagineworkflow.models.rh.RhSalaireDuMois','RhSalaireDuMois');
/*!40000 ALTER TABLE `IW_MULTILINE_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_MULTILINE_ENTITY_FIELD`
--

DROP TABLE IF EXISTS `IW_MULTILINE_ENTITY_FIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_MULTILINE_ENTITY_FIELD` (
  `IW_MULTILINE_ENTITY_FIELD_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_MULTILINE_ENTITY_FIELD_DESCRIPTION` varchar(64) DEFAULT NULL,
  `IW_MULTILINE_ENTITY_FIELD_NAME` varchar(64) DEFAULT NULL,
  `IW_LIST` bigint(20) DEFAULT NULL,
  `IW_MULTILINE_ENTITY` bigint(20) DEFAULT NULL,
  `DISPLAY_IN_JOINTABLE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IW_MULTILINE_ENTITY_FIELD_ID`),
  KEY `IW_FK_FIELD_LIST` (`IW_LIST`),
  KEY `IW_FK_MULTILINE_ENTITY` (`IW_MULTILINE_ENTITY`),
  CONSTRAINT `IW_FK_FIELD_LIST` FOREIGN KEY (`IW_LIST`) REFERENCES `IW_LIST` (`IW_LIST_ID`),
  CONSTRAINT `IW_FK_MULTILINE_ENTITY` FOREIGN KEY (`IW_MULTILINE_ENTITY`) REFERENCES `IW_MULTILINE_ENTITY` (`IW_MULTILINE_ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_MULTILINE_ENTITY_FIELD`
--

LOCK TABLES `IW_MULTILINE_ENTITY_FIELD` WRITE;
/*!40000 ALTER TABLE `IW_MULTILINE_ENTITY_FIELD` DISABLE KEYS */;
INSERT INTO `IW_MULTILINE_ENTITY_FIELD` VALUES (1,'bizAdRecruitmentPerOrganismRecruitmentId','bizAdRecruitmentPerOrganismRecruitmentId',NULL,2,NULL),(2,'bizAdRecruitmentId','bizAdRecruitmentId',NULL,2,NULL),(3,'bizRganismRecruitmentId','bizRganismRecruitmentId',NULL,2,NULL);
/*!40000 ALTER TABLE `IW_MULTILINE_ENTITY_FIELD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_PHASE`
--

DROP TABLE IF EXISTS `IW_PHASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_PHASE` (
  `IW_PHASE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_PHASE_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IW_PHASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_PHASE`
--

LOCK TABLES `IW_PHASE` WRITE;
/*!40000 ALTER TABLE `IW_PHASE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_PHASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_PROGRESS`
--

DROP TABLE IF EXISTS `IW_PROGRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_PROGRESS` (
  `IW_PROGRESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_PROC_KEY` varchar(64) NOT NULL,
  `IW_PROGRESS_END` decimal(5,2) NOT NULL,
  `IW_PROGRESS_RATE` decimal(5,2) NOT NULL,
  `IW_TASK` varchar(64) NOT NULL,
  `IW_PHASE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IW_PROGRESS_ID`),
  KEY `IW_FK_PROGRESS_PHASE` (`IW_PHASE`),
  CONSTRAINT `IW_FK_PROGRESS_PHASE` FOREIGN KEY (`IW_PHASE`) REFERENCES `IW_PHASE` (`IW_PHASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_PROGRESS`
--

LOCK TABLES `IW_PROGRESS` WRITE;
/*!40000 ALTER TABLE `IW_PROGRESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_PROGRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_RECORDING_STUDIO`
--

DROP TABLE IF EXISTS `IW_RECORDING_STUDIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_RECORDING_STUDIO` (
  `IW_RECORDING_STUDIO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(45) DEFAULT NULL,
  `IW_INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IW_RECORDING_STUDIO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_RECORDING_STUDIO`
--

LOCK TABLES `IW_RECORDING_STUDIO` WRITE;
/*!40000 ALTER TABLE `IW_RECORDING_STUDIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_RECORDING_STUDIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_REGISTRE`
--

DROP TABLE IF EXISTS `IW_REGISTRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_REGISTRE` (
  `IW_REGISTRE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_NAME` varchar(255) DEFAULT NULL,
  `IW_VALUE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IW_REGISTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_REGISTRE`
--

LOCK TABLES `IW_REGISTRE` WRITE;
/*!40000 ALTER TABLE `IW_REGISTRE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_REGISTRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_RESOURCE`
--

DROP TABLE IF EXISTS `IW_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_RESOURCE` (
  `ID_RESOURCE` int(11) NOT NULL AUTO_INCREMENT,
  `IW_ENTITY_ID` int(11) DEFAULT NULL,
  `IW_ENTITY_NAME` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_RESOURCE`),
  UNIQUE KEY `IW_UK_RESOURCE` (`IW_ENTITY_NAME`,`IW_ENTITY_ID`),
  CONSTRAINT `IW_FK_RESOURCE` FOREIGN KEY (`IW_ENTITY_NAME`) REFERENCES `IW_RESOURCE_TYPE` (`RESOURCE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_RESOURCE`
--

LOCK TABLES `IW_RESOURCE` WRITE;
/*!40000 ALTER TABLE `IW_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_RESOURCE_TYPE`
--

DROP TABLE IF EXISTS `IW_RESOURCE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_RESOURCE_TYPE` (
  `RESOURCE_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_DESCRIPTION` varchar(50) DEFAULT NULL,
  `IW_ENTITY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RESOURCE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_RESOURCE_TYPE`
--

LOCK TABLES `IW_RESOURCE_TYPE` WRITE;
/*!40000 ALTER TABLE `IW_RESOURCE_TYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_RESOURCE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_RIGHT`
--

DROP TABLE IF EXISTS `IW_RIGHT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_RIGHT` (
  `IW_RIGHT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_APPLICATION_KEY` varchar(254) DEFAULT NULL,
  `IW_GROUP` varchar(64) DEFAULT NULL,
  `IW_PROCESS_KEY` varchar(254) DEFAULT NULL,
  `IW_USER` varchar(64) DEFAULT NULL,
  `IW_STANDALONE_ID` bigint(20) DEFAULT NULL,
  `IW_RIGHT_TO_LAUNCH` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IW_RIGHT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_RIGHT`
--

LOCK TABLES `IW_RIGHT` WRITE;
/*!40000 ALTER TABLE `IW_RIGHT` DISABLE KEYS */;
INSERT INTO `IW_RIGHT` VALUES (1,'Testnotification1485255581040',NULL,'Test','admin',NULL,1),(2,'Testnotification1485255581040',NULL,'Test','demandeur',NULL,1),(3,'Testnotification1485255581040',NULL,'Test','analyste',NULL,1),(4,'Testnotification1485255581040',NULL,'Test','valideur',NULL,1);
/*!40000 ALTER TABLE `IW_RIGHT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_STANDALONE_TASK`
--

DROP TABLE IF EXISTS `IW_STANDALONE_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_STANDALONE_TASK` (
  `IW_STANDALONE_TASK_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_APPLICATION_KEY` varchar(50) DEFAULT NULL,
  `IW_DESCRIPTION` longtext,
  `IW_FORM` bigint(20) DEFAULT NULL,
  `IW_NAME` varchar(50) DEFAULT NULL,
  `IW_LINK` longtext,
  `IW_IS_FORM` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IW_STANDALONE_TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_STANDALONE_TASK`
--

LOCK TABLES `IW_STANDALONE_TASK` WRITE;
/*!40000 ALTER TABLE `IW_STANDALONE_TASK` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_STANDALONE_TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_TREE`
--

DROP TABLE IF EXISTS `IW_TREE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_TREE` (
  `CHILD` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT` int(11) DEFAULT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`CHILD`),
  KEY `IW_FK_PARENT` (`PARENT`),
  CONSTRAINT `IW_FK_PARENT` FOREIGN KEY (`PARENT`) REFERENCES `IW_TREE` (`CHILD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_TREE`
--

LOCK TABLES `IW_TREE` WRITE;
/*!40000 ALTER TABLE `IW_TREE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_TREE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_UPLOAD`
--

DROP TABLE IF EXISTS `IW_UPLOAD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_UPLOAD` (
  `IW_UPLOAD_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IW_UPLOAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_UPLOAD`
--

LOCK TABLES `IW_UPLOAD` WRITE;
/*!40000 ALTER TABLE `IW_UPLOAD` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_UPLOAD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_USER_DETAILS`
--

DROP TABLE IF EXISTS `IW_USER_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_USER_DETAILS` (
  `IW_USER_DETAILS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_ACT_ID_USER` varchar(255) DEFAULT NULL,
  `IW_ACTIVE` tinyint(1) DEFAULT NULL,
  `IW_GENERATED_PASSWORD_PLAIN` varchar(255) DEFAULT NULL,
  `IW_PASSWORD_CHANGE_DATE` datetime DEFAULT NULL,
  `IW_TYPE_AUTHENTIFICATION` varchar(45) DEFAULT NULL,
  `IW_VISIBLE` tinyint(1) NOT NULL DEFAULT '1',
  `IW_TIMEZONE` varchar(255) DEFAULT 'Africa/Algiers',
  PRIMARY KEY (`IW_USER_DETAILS_ID`),
  UNIQUE KEY `IW_UK_USER` (`IW_ACT_ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_USER_DETAILS`
--

LOCK TABLES `IW_USER_DETAILS` WRITE;
/*!40000 ALTER TABLE `IW_USER_DETAILS` DISABLE KEYS */;
INSERT INTO `IW_USER_DETAILS` VALUES (1,'superadmin',1,NULL,NULL,'rescue',1,'Africa/Algiers'),(2,'admin',1,NULL,NULL,'db',1,'Africa/Algiers'),(3,'demandeur',1,'demandeur',NULL,'db',1,NULL),(4,'analyste',1,'analyste',NULL,'db',1,NULL),(5,'valideur',1,'valideur',NULL,'db',1,NULL);
/*!40000 ALTER TABLE `IW_USER_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_VARIABLE_PROCESS`
--

DROP TABLE IF EXISTS `IW_VARIABLE_PROCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_VARIABLE_PROCESS` (
  `IW_VARIABLE_PROCESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IW_INDEX` int(11) DEFAULT NULL,
  `IW_INDEX_COLONNE` int(11) DEFAULT NULL,
  `IW_PROCESS_KEY` varchar(255) DEFAULT NULL,
  `IW_SHOW_TASK_FORM` tinyint(1) DEFAULT NULL,
  `IW_SHOW_TASK_LIST` tinyint(1) DEFAULT NULL,
  `IW_INPUT` bigint(20) DEFAULT NULL,
  `IW_COLUMN_TASK` bigint(20) DEFAULT NULL,
  `IW_COLUMN_SIZE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IW_VARIABLE_PROCESS_ID`),
  KEY `IW_VARIABLE_PROCESS_INPUT` (`IW_INPUT`),
  KEY `FK_IW_VARIABLE_IW_COLUMN_TASK` (`IW_COLUMN_TASK`),
  CONSTRAINT `FK_IW_VARIABLE_IW_COLUMN_TASK` FOREIGN KEY (`IW_COLUMN_TASK`) REFERENCES `IW_COLUMN_TASK` (`IW_COLUMN_TASK_ID`),
  CONSTRAINT `IW_VARIABLE_PROCESS_INPUT` FOREIGN KEY (`IW_INPUT`) REFERENCES `IW_INPUT` (`IW_INPUT_REAL_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_VARIABLE_PROCESS`
--

LOCK TABLES `IW_VARIABLE_PROCESS` WRITE;
/*!40000 ALTER TABLE `IW_VARIABLE_PROCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_VARIABLE_PROCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IW_VARIABLE_TEMPLATE`
--

DROP TABLE IF EXISTS `IW_VARIABLE_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IW_VARIABLE_TEMPLATE` (
  `IW_VARIABLE_REAL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IW_VARIABLE_ID` varchar(255) NOT NULL,
  `IW_DESCRIPTION` longtext,
  `IW_LABEL` varchar(250) DEFAULT NULL,
  `IW_FORM_TEMPLATE` int(11) NOT NULL,
  PRIMARY KEY (`IW_VARIABLE_REAL_ID`),
  KEY `IW_FK_VARIABLE_TEMPLATE` (`IW_FORM_TEMPLATE`),
  CONSTRAINT `IW_FK_VARIABLE_TEMPLATE` FOREIGN KEY (`IW_FORM_TEMPLATE`) REFERENCES `IW_FORM_TEMPLATE` (`IW_FORM_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IW_VARIABLE_TEMPLATE`
--

LOCK TABLES `IW_VARIABLE_TEMPLATE` WRITE;
/*!40000 ALTER TABLE `IW_VARIABLE_TEMPLATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IW_VARIABLE_TEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORG_ENTITE_ORGANISATIONNELLE`
--

DROP TABLE IF EXISTS `ORG_ENTITE_ORGANISATIONNELLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORG_ENTITE_ORGANISATIONNELLE` (
  `ENTITE_ORGANISATIONNELLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACT_ID_GROUPE` varchar(64) DEFAULT NULL,
  `ID_RESPONSABLE` int(11) DEFAULT NULL,
  `NOM_ENTITE` varchar(50) DEFAULT NULL,
  `EMPLOYE_ID` int(11) DEFAULT NULL,
  `ID_ENTITE_ORGA_SUIV` int(11) DEFAULT NULL,
  PRIMARY KEY (`ENTITE_ORGANISATIONNELLE_ID`),
  KEY `ORG_FK_PARENT` (`ID_ENTITE_ORGA_SUIV`),
  CONSTRAINT `ORG_FK_PARENT` FOREIGN KEY (`ID_ENTITE_ORGA_SUIV`) REFERENCES `ORG_ENTITE_ORGANISATIONNELLE` (`ENTITE_ORGANISATIONNELLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_ENTITE_ORGANISATIONNELLE`
--

LOCK TABLES `ORG_ENTITE_ORGANISATIONNELLE` WRITE;
/*!40000 ALTER TABLE `ORG_ENTITE_ORGANISATIONNELLE` DISABLE KEYS */;
INSERT INTO `ORG_ENTITE_ORGANISATIONNELLE` VALUES (1,NULL,NULL,'Direction g√©n√©rale',NULL,NULL);
/*!40000 ALTER TABLE `ORG_ENTITE_ORGANISATIONNELLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_ACCOMPAGNANT`
--

DROP TABLE IF EXISTS `RH_ACCOMPAGNANT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_ACCOMPAGNANT` (
  `ACCOMPAGNANT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMPETENCE_ID` int(11) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `EMPLOYE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ACCOMPAGNANT_ID`),
  KEY `RH_FK_ACCOMPAGNANT_EMPLOYE` (`EMPLOYE_ID`),
  CONSTRAINT `RH_FK_ACCOMPAGNANT_EMPLOYE` FOREIGN KEY (`EMPLOYE_ID`) REFERENCES `RH_COLLABORATEUR` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_ACCOMPAGNANT`
--

LOCK TABLES `RH_ACCOMPAGNANT` WRITE;
/*!40000 ALTER TABLE `RH_ACCOMPAGNANT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_ACCOMPAGNANT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_ANNONCE_RECRUTEMENT`
--

DROP TABLE IF EXISTS `RH_ANNONCE_RECRUTEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_ANNONCE_RECRUTEMENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_CREATION` date DEFAULT NULL,
  `DATE_DISPONIBILITE_SOUHAITEE` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DATE_PASSAGE` date DEFAULT NULL,
  `ID_TYPE_CONTRAT` varchar(45) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  `LIEU_DE_TRAVAIL` varchar(45) DEFAULT NULL,
  `NOMBRE_POSTE` varchar(45) DEFAULT NULL,
  `REFERENCE` varchar(45) DEFAULT NULL,
  `TEXTE_ANNONCE` varchar(45) DEFAULT NULL,
  `ORGANISME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_ANNONCE_RECRUTEMENT`
--

LOCK TABLES `RH_ANNONCE_RECRUTEMENT` WRITE;
/*!40000 ALTER TABLE `RH_ANNONCE_RECRUTEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_ANNONCE_RECRUTEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_CANDIDAT`
--

DROP TABLE IF EXISTS `RH_CANDIDAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_CANDIDAT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ANNEE` varchar(45) DEFAULT NULL,
  `AUGMENTATION` varchar(45) DEFAULT NULL,
  `AVANCE` varchar(45) DEFAULT NULL,
  `CLASSEMENT_CANDIDAT` int(11) DEFAULT NULL,
  `COMMENTAIRE` varchar(50) DEFAULT NULL,
  `CONFIRMATION_ENTRETIEN` bit(1) DEFAULT NULL,
  `CONFIRMATION_PROPOSITION` bit(1) DEFAULT NULL,
  `DATE_ENTRETIEN_REELLE` date DEFAULT NULL,
  `DATE_ENTRETIEN_SOUHAITEE` date DEFAULT NULL,
  `DATE_ENTRETIEN_SOUHAITEE2` date DEFAULT NULL,
  `HEURE_DEBUT_ENTRETIEN_SOUHAITEE` time DEFAULT NULL,
  `HEURE_FIN_ENTRETIEN_SOUHAITEE` time DEFAULT NULL,
  `DATE_PRISE_DE_POSTE_PREVISIONELLE` date DEFAULT NULL,
  `DATE_PRISE_DE_POSTE_REELLE` date DEFAULT NULL,
  `DATE_RECEPTION_CANDIDATURE` date DEFAULT NULL,
  `DATE_RECRUTEMENT_SOUHAITEE` date DEFAULT NULL,
  `DATE_SALAIRE_DEBIT` date DEFAULT NULL,
  `EMAIL_CANDIDAT` varchar(45) DEFAULT NULL,
  `ID_CIVILITE` varchar(50) DEFAULT NULL,
  `ID_RAPPORT_ENTRETIEN` int(11) DEFAULT NULL,
  `ID_RH_ANNONCE` decimal(19,2) DEFAULT NULL,
  `MODE_PAIEMENT` varchar(45) DEFAULT NULL,
  `MOIS` varchar(45) DEFAULT NULL,
  `NB_ABSENCE` varchar(45) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `REMUNERATION` varchar(45) DEFAULT NULL,
  `REMUNERATION_NETTE` decimal(18,2) DEFAULT NULL,
  `SALAIRE_SOUHAITE_CANDIDAT` decimal(10,2) DEFAULT NULL,
  `SALAIRE_DE_BASE` decimal(10,2) DEFAULT NULL,
  `ST_BLACK_LIST` int(11) DEFAULT NULL,
  `ST_CONTACT_EMAIL` bit(1) DEFAULT NULL,
  `ST_CONTACT_TELEPHONE` bit(1) DEFAULT NULL,
  `ST_DESISTEMENT` varchar(45) DEFAULT NULL,
  `ST_MOUV_ENTREE` date DEFAULT NULL,
  `ST_MOUV_SORTIE` date DEFAULT NULL,
  `ST_RECRUTE` bit(1) DEFAULT NULL,
  `ST_SELECTION_POUR_ENTRETIEN` bit(1) DEFAULT NULL,
  `TEL_CANDIDAT_MOBILE_1` int(11) DEFAULT NULL,
  `TEL_CANDIDAT_MOBILE_2` int(11) DEFAULT NULL,
  `VIREMENT_A_FAIRE` decimal(18,2) DEFAULT NULL,
  `VIREMENT_EFFECTUE` decimal(18,2) DEFAULT NULL,
  `CV` bigint(20) DEFAULT NULL,
  `ID_STATUT_PERIODE_ESSAI` int(11) DEFAULT NULL,
  `ID_STATUT_RECRUTEMENT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_CANDIDAT_CV` (`CV`),
  KEY `RH_FK_CANDIDAT_PERIODE_ESSAI` (`ID_STATUT_PERIODE_ESSAI`),
  KEY `RH_FK_CANDIDAT_PERIODE_STATUS_RECRUTEMENT` (`ID_STATUT_RECRUTEMENT`),
  CONSTRAINT `RH_FK_CANDIDAT_CV` FOREIGN KEY (`CV`) REFERENCES `IW_UPLOAD` (`IW_UPLOAD_ID`),
  CONSTRAINT `RH_FK_CANDIDAT_PERIODE_ESSAI` FOREIGN KEY (`ID_STATUT_PERIODE_ESSAI`) REFERENCES `RH_STATUT_PERIODE_ESSAI` (`ID`),
  CONSTRAINT `RH_FK_CANDIDAT_PERIODE_STATUS_RECRUTEMENT` FOREIGN KEY (`ID_STATUT_RECRUTEMENT`) REFERENCES `RH_STATUT_RECRUTEMENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_CANDIDAT`
--

LOCK TABLES `RH_CANDIDAT` WRITE;
/*!40000 ALTER TABLE `RH_CANDIDAT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_CANDIDAT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_CATEGORIE`
--

DROP TABLE IF EXISTS `RH_CATEGORIE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_CATEGORIE` (
  `CATEGORIE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CATEGORIE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_CATEGORIE`
--

LOCK TABLES `RH_CATEGORIE` WRITE;
/*!40000 ALTER TABLE `RH_CATEGORIE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_CATEGORIE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_COLLABORATEUR`
--

DROP TABLE IF EXISTS `RH_COLLABORATEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_COLLABORATEUR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACT_ID_USER` varchar(64) DEFAULT NULL,
  `ADRESSE` varchar(45) DEFAULT NULL,
  `DATE_EMBAUCHE` varchar(45) DEFAULT NULL,
  `DATE_NAISSANCE` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `LIEU_NAISSANCE` varchar(45) DEFAULT NULL,
  `MATRICULE` int(11) NOT NULL,
  `NOM` varchar(45) DEFAULT NULL,
  `PRENOM` varchar(45) DEFAULT NULL,
  `TELEPHONE` varchar(45) DEFAULT NULL,
  `ID_CSP` int(11) DEFAULT NULL,
  `ID_ENTITE_ORGANISATIONNELLE` int(11) DEFAULT NULL,
  `ID_POSTE_OCCUPE` int(11) DEFAULT NULL,
  `ID_RH_CATEGORIE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_COLLABORATEUR_CSP` (`ID_CSP`),
  KEY `RH_FK_COLLABORATEUR_ORGANISATION` (`ID_ENTITE_ORGANISATIONNELLE`),
  KEY `RH_FK_COLLABORATEUR_POSTE` (`ID_POSTE_OCCUPE`),
  KEY `RH_FK_COLLABORATEUR_CATEGORIE` (`ID_RH_CATEGORIE`),
  CONSTRAINT `RH_FK_COLLABORATEUR_CATEGORIE` FOREIGN KEY (`ID_RH_CATEGORIE`) REFERENCES `RH_CATEGORIE` (`CATEGORIE_ID`),
  CONSTRAINT `RH_FK_COLLABORATEUR_CSP` FOREIGN KEY (`ID_CSP`) REFERENCES `RH_CSP` (`CSP_ID`),
  CONSTRAINT `RH_FK_COLLABORATEUR_ORGANISATION` FOREIGN KEY (`ID_ENTITE_ORGANISATIONNELLE`) REFERENCES `ORG_ENTITE_ORGANISATIONNELLE` (`ENTITE_ORGANISATIONNELLE_ID`),
  CONSTRAINT `RH_FK_COLLABORATEUR_POSTE` FOREIGN KEY (`ID_POSTE_OCCUPE`) REFERENCES `RH_POSTE_OCCUPE` (`ID_POSTE_OCCUPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_COLLABORATEUR`
--

LOCK TABLES `RH_COLLABORATEUR` WRITE;
/*!40000 ALTER TABLE `RH_COLLABORATEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_COLLABORATEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_COMPETENCE`
--

DROP TABLE IF EXISTS `RH_COMPETENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_COMPETENCE` (
  `COMPETENCE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `NUMEROTATION` decimal(19,2) DEFAULT NULL,
  `ID_COMPETENCE_SUIV` int(11) DEFAULT NULL,
  `ID_FICHE` bigint(20) DEFAULT NULL,
  `ID_INDICATEUR` int(11) DEFAULT NULL,
  `EVAL_COLLABORATEUR` varchar(500) DEFAULT NULL,
  `EVAL_MANAGER` varchar(500) DEFAULT NULL,
  `EVAL_NEGOCIE` varchar(500) DEFAULT NULL,
  `EVAL_N2` varchar(500) DEFAULT NULL,
  `COMMENTAIRE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`COMPETENCE_ID`),
  KEY `RH_FK_COMPETENCE_SUIV` (`ID_COMPETENCE_SUIV`),
  KEY `RH_FK_COMPETENCE_FICHE` (`ID_FICHE`),
  KEY `RH_FK_COMPETENCE_INDICATEUR` (`ID_INDICATEUR`),
  CONSTRAINT `RH_FK_COMPETENCE_FICHE` FOREIGN KEY (`ID_FICHE`) REFERENCES `RH_FICHE_DE_POSTE` (`FICHE_ID`),
  CONSTRAINT `RH_FK_COMPETENCE_INDICATEUR` FOREIGN KEY (`ID_INDICATEUR`) REFERENCES `RH_INDICATEUR` (`ID_INDICATEUR`),
  CONSTRAINT `RH_FK_COMPETENCE_SUIV` FOREIGN KEY (`ID_COMPETENCE_SUIV`) REFERENCES `RH_COMPETENCE` (`COMPETENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_COMPETENCE`
--

LOCK TABLES `RH_COMPETENCE` WRITE;
/*!40000 ALTER TABLE `RH_COMPETENCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_COMPETENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_CONGE`
--

DROP TABLE IF EXISTS `RH_CONGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_CONGE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresseConge` longtext,
  `DateDebut` date DEFAULT NULL,
  `DateFin` date DEFAULT NULL,
  `nbrJour` int(11) DEFAULT NULL,
  `NomRemplacent` varchar(150) DEFAULT NULL,
  `Observation` longtext,
  `Remplacement` varchar(3) DEFAULT NULL,
  `FkMotifConge` int(11) DEFAULT NULL,
  `ID_CONGE_SUIV` bigint(20) DEFAULT NULL,
  `ID_POSTE_OCCUPE` int(11) DEFAULT NULL,
  `ID_TYPE_CONGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_CONGE_MOTIF` (`FkMotifConge`),
  KEY `RH_FK_CONGE_SUIV` (`ID_CONGE_SUIV`),
  KEY `RH_FK_CONGE_POSTE` (`ID_POSTE_OCCUPE`),
  KEY `RH_FK_CONGE_TYPE` (`ID_TYPE_CONGE`),
  CONSTRAINT `RH_FK_CONGE_MOTIF` FOREIGN KEY (`FkMotifConge`) REFERENCES `RH_MOTIFCONGE` (`ID`),
  CONSTRAINT `RH_FK_CONGE_POSTE` FOREIGN KEY (`ID_POSTE_OCCUPE`) REFERENCES `RH_POSTE_OCCUPE` (`ID_POSTE_OCCUPE`),
  CONSTRAINT `RH_FK_CONGE_SUIV` FOREIGN KEY (`ID_CONGE_SUIV`) REFERENCES `RH_CONGE` (`ID`),
  CONSTRAINT `RH_FK_CONGE_TYPE` FOREIGN KEY (`ID_TYPE_CONGE`) REFERENCES `RH_TYPECONGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_CONGE`
--

LOCK TABLES `RH_CONGE` WRITE;
/*!40000 ALTER TABLE `RH_CONGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_CONGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_CSP`
--

DROP TABLE IF EXISTS `RH_CSP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_CSP` (
  `CSP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCIRPTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CSP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_CSP`
--

LOCK TABLES `RH_CSP` WRITE;
/*!40000 ALTER TABLE `RH_CSP` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_CSP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_CVTHEQUE`
--

DROP TABLE IF EXISTS `RH_CVTHEQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_CVTHEQUE` (
  `IDCVTHEQUE` bigint(20) NOT NULL AUTO_INCREMENT,
  `COMMENTAIRE` varchar(50) DEFAULT NULL,
  `CV` varchar(45) DEFAULT NULL,
  `DATE_ENTRETIEN_1` date DEFAULT NULL,
  `DATE_ENTRETIEN_2` date DEFAULT NULL,
  `DATE_RECEPTION_CANDIDATURE` date DEFAULT NULL,
  `EMAIL_CANDIDAT` varchar(45) DEFAULT NULL,
  `ID_CIVILITE` varchar(50) DEFAULT NULL,
  `ID_RH_ANNONCE` decimal(19,2) DEFAULT NULL,
  `IDCOMPETENCES_N_N` varchar(45) DEFAULT NULL,
  `IDPOSTE_POSSIBLES_N_N` varchar(45) DEFAULT NULL,
  `NB_ANNEE_EXPERIENCE` int(11) DEFAULT NULL,
  `NIVEAU_DIPLOME` varchar(45) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `ST_BLACK_LIST` int(11) DEFAULT NULL,
  `ST_CONTACT_EMAIL` bit(1) DEFAULT NULL,
  `ST_CONTACT_TELEPHONE` bit(1) DEFAULT NULL,
  `ST_SELECTIONNE_POUR_ENTRETIEN` bit(1) DEFAULT NULL,
  `TEL_CANDIDAT_MOBILE_1` int(11) DEFAULT NULL,
  `TEL_CANDIDAT_MOBILE_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCVTHEQUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_CVTHEQUE`
--

LOCK TABLES `RH_CVTHEQUE` WRITE;
/*!40000 ALTER TABLE `RH_CVTHEQUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_CVTHEQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_DIRECTION`
--

DROP TABLE IF EXISTS `RH_DIRECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_DIRECTION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COLUMN_NAME1` varchar(100) DEFAULT NULL,
  `COLUMN_NAME10` int(11) DEFAULT NULL,
  `COLUMN_NAME11` int(11) DEFAULT NULL,
  `COLUMN_NAME12` int(11) DEFAULT NULL,
  `COLUMN_NAME13` int(11) DEFAULT NULL,
  `COLUMN_NAME14` int(11) DEFAULT NULL,
  `COLUMN_NAME15` int(11) DEFAULT NULL,
  `COLUMN_NAME16` int(11) DEFAULT NULL,
  `COLUMN_NAME17` int(11) DEFAULT NULL,
  `COLUMN_NAME18` int(11) DEFAULT NULL,
  `COLUMN_NAME19` int(11) DEFAULT NULL,
  `COLUMN_NAME2` varchar(100) DEFAULT NULL,
  `COLUMN_NAME20` bit(1) DEFAULT NULL,
  `COLUMN_NAME21` bit(1) DEFAULT NULL,
  `COLUMN_NAME22` bit(1) DEFAULT NULL,
  `COLUMN_NAME23` bit(1) DEFAULT NULL,
  `COLUMN_NAME24` bit(1) DEFAULT NULL,
  `COLUMN_NAME25` bit(1) DEFAULT NULL,
  `COLUMN_NAME26` bit(1) DEFAULT NULL,
  `COLUMN_NAME27` bit(1) DEFAULT NULL,
  `COLUMN_NAME28` bit(1) DEFAULT NULL,
  `COLUMN_NAME29` bit(1) DEFAULT NULL,
  `COLUMN_NAME3` varchar(100) DEFAULT NULL,
  `COLUMN_NAME4` varchar(100) DEFAULT NULL,
  `COLUMN_NAME5` varchar(100) DEFAULT NULL,
  `COLUMN_NAME6` varchar(100) DEFAULT NULL,
  `COLUMN_NAME7` varchar(100) DEFAULT NULL,
  `COLUMN_NAME8` varchar(100) DEFAULT NULL,
  `COLUMN_NAME9` varchar(100) DEFAULT NULL,
  `NomDirection` varchar(250) DEFAULT NULL,
  `Responsable` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_DIRECTION`
--

LOCK TABLES `RH_DIRECTION` WRITE;
/*!40000 ALTER TABLE `RH_DIRECTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_DIRECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_DISTRIBUTION_EVALUATION`
--

DROP TABLE IF EXISTS `RH_DISTRIBUTION_EVALUATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_DISTRIBUTION_EVALUATION` (
  `DISTRIBUTION_EVALUATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `ID_TYPE_DISTRIBITION` int(11) DEFAULT NULL,
  PRIMARY KEY (`DISTRIBUTION_EVALUATION_ID`),
  KEY `RH_FK_DISTRIBUTION_EVALUATION_TYPE` (`ID_TYPE_DISTRIBITION`),
  CONSTRAINT `RH_FK_DISTRIBUTION_EVALUATION_TYPE` FOREIGN KEY (`ID_TYPE_DISTRIBITION`) REFERENCES `RH_TYPE_DISTRI_EVAL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_DISTRIBUTION_EVALUATION`
--

LOCK TABLES `RH_DISTRIBUTION_EVALUATION` WRITE;
/*!40000 ALTER TABLE `RH_DISTRIBUTION_EVALUATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_DISTRIBUTION_EVALUATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_DOMAINE_OBJECTIF`
--

DROP TABLE IF EXISTS `RH_DOMAINE_OBJECTIF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_DOMAINE_OBJECTIF` (
  `DOMAINE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DOMAINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_DOMAINE_OBJECTIF`
--

LOCK TABLES `RH_DOMAINE_OBJECTIF` WRITE;
/*!40000 ALTER TABLE `RH_DOMAINE_OBJECTIF` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_DOMAINE_OBJECTIF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_EVALUATION`
--

DROP TABLE IF EXISTS `RH_EVALUATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_EVALUATION` (
  `ID_EVALUATION` bigint(20) NOT NULL AUTO_INCREMENT,
  `ANNEE` varchar(4) DEFAULT NULL,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `ID_STATUT_OBJECTIF` int(11) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `ID_DISTRIBUTION_EVALUATION` int(11) DEFAULT NULL,
  `ID_FREQUENCE` int(11) DEFAULT NULL,
  `ID_RH_COLLABORATEUR` int(11) DEFAULT NULL,
  `ID_TENUE_POSTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_EVALUATION`),
  KEY `RH_FK_EVALUATION_DISTRIBUTION` (`ID_DISTRIBUTION_EVALUATION`),
  KEY `RH_FK_EVALUATION_FREQUENCE` (`ID_FREQUENCE`),
  KEY `RH_FK_EVALUATION_COLLABORATEUR` (`ID_RH_COLLABORATEUR`),
  KEY `RH_FK_EVALUATION_POSTE` (`ID_TENUE_POSTE`),
  CONSTRAINT `RH_FK_EVALUATION_COLLABORATEUR` FOREIGN KEY (`ID_RH_COLLABORATEUR`) REFERENCES `RH_COLLABORATEUR` (`ID`),
  CONSTRAINT `RH_FK_EVALUATION_DISTRIBUTION` FOREIGN KEY (`ID_DISTRIBUTION_EVALUATION`) REFERENCES `RH_DISTRIBUTION_EVALUATION` (`DISTRIBUTION_EVALUATION_ID`),
  CONSTRAINT `RH_FK_EVALUATION_FREQUENCE` FOREIGN KEY (`ID_FREQUENCE`) REFERENCES `RH_FREQUENCE_EVALUATION` (`FREQUENCE_ID`),
  CONSTRAINT `RH_FK_EVALUATION_POSTE` FOREIGN KEY (`ID_TENUE_POSTE`) REFERENCES `RH_TENUE_POSTE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_EVALUATION`
--

LOCK TABLES `RH_EVALUATION` WRITE;
/*!40000 ALTER TABLE `RH_EVALUATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_EVALUATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_FICHE_DE_POSTE`
--

DROP TABLE IF EXISTS `RH_FICHE_DE_POSTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_FICHE_DE_POSTE` (
  `FICHE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID_COMPETENCE` int(11) DEFAULT NULL,
  `ID_MISSION_PRINCIPALE` int(11) DEFAULT NULL,
  `ID_POSTE_OCCUPE` int(11) DEFAULT NULL,
  `ID_TACHE_FICHE_POSTE` int(11) DEFAULT NULL,
  PRIMARY KEY (`FICHE_ID`),
  KEY `RH_FK_FICHE_POSTE_MISSION` (`ID_MISSION_PRINCIPALE`),
  KEY `RH_FK_FICHE_POSTE_OCCUPE` (`ID_POSTE_OCCUPE`),
  KEY `RH_FK_FICHE_POSTE_TACHE` (`ID_TACHE_FICHE_POSTE`),
  CONSTRAINT `RH_FK_FICHE_POSTE_MISSION` FOREIGN KEY (`ID_MISSION_PRINCIPALE`) REFERENCES `RH_MISSION_PRINCIPALE` (`MISSION_PRINCIPALE_ID`),
  CONSTRAINT `RH_FK_FICHE_POSTE_OCCUPE` FOREIGN KEY (`ID_POSTE_OCCUPE`) REFERENCES `RH_POSTE_OCCUPE` (`ID_POSTE_OCCUPE`),
  CONSTRAINT `RH_FK_FICHE_POSTE_TACHE` FOREIGN KEY (`ID_TACHE_FICHE_POSTE`) REFERENCES `RH_TACHE_FICHE_POSTE` (`TACHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_FICHE_DE_POSTE`
--

LOCK TABLES `RH_FICHE_DE_POSTE` WRITE;
/*!40000 ALTER TABLE `RH_FICHE_DE_POSTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_FICHE_DE_POSTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_FORMATION`
--

DROP TABLE IF EXISTS `RH_FORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_FORMATION` (
  `FORMATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOMAINE_FORMATION` varchar(50) DEFAULT NULL,
  `OBJECTIF_FORMATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FORMATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_FORMATION`
--

LOCK TABLES `RH_FORMATION` WRITE;
/*!40000 ALTER TABLE `RH_FORMATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_FORMATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_FREQUENCE_EVALUATION`
--

DROP TABLE IF EXISTS `RH_FREQUENCE_EVALUATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_FREQUENCE_EVALUATION` (
  `FREQUENCE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FREQUENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_FREQUENCE_EVALUATION`
--

LOCK TABLES `RH_FREQUENCE_EVALUATION` WRITE;
/*!40000 ALTER TABLE `RH_FREQUENCE_EVALUATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_FREQUENCE_EVALUATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_INDICATEUR`
--

DROP TABLE IF EXISTS `RH_INDICATEUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_INDICATEUR` (
  `ID_INDICATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `FORMULE` varchar(50) DEFAULT NULL,
  `INTITULE` varchar(50) DEFAULT NULL,
  `NIVEAU` varchar(50) DEFAULT NULL,
  `POURCENTAGE_REALISATION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_INDICATEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_INDICATEUR`
--

LOCK TABLES `RH_INDICATEUR` WRITE;
/*!40000 ALTER TABLE `RH_INDICATEUR` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_INDICATEUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_MISSION_PRINCIPALE`
--

DROP TABLE IF EXISTS `RH_MISSION_PRINCIPALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_MISSION_PRINCIPALE` (
  `MISSION_PRINCIPALE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `ID_MISSION_PRINC_SUIV` int(11) DEFAULT NULL,
  PRIMARY KEY (`MISSION_PRINCIPALE_ID`),
  KEY `RH_FK_MISSION_PRINCIPALE_SUIV` (`ID_MISSION_PRINC_SUIV`),
  CONSTRAINT `RH_FK_MISSION_PRINCIPALE_SUIV` FOREIGN KEY (`ID_MISSION_PRINC_SUIV`) REFERENCES `RH_MISSION_PRINCIPALE` (`MISSION_PRINCIPALE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_MISSION_PRINCIPALE`
--

LOCK TABLES `RH_MISSION_PRINCIPALE` WRITE;
/*!40000 ALTER TABLE `RH_MISSION_PRINCIPALE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_MISSION_PRINCIPALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_MOTIFCONGE`
--

DROP TABLE IF EXISTS `RH_MOTIFCONGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_MOTIFCONGE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MOTIF_CONGE` varchar(150) DEFAULT NULL,
  `ID_TYPE_CONGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_MOTIFCONGE_TYPE` (`ID_TYPE_CONGE`),
  CONSTRAINT `RH_FK_MOTIFCONGE_TYPE` FOREIGN KEY (`ID_TYPE_CONGE`) REFERENCES `RH_TYPECONGE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_MOTIFCONGE`
--

LOCK TABLES `RH_MOTIFCONGE` WRITE;
/*!40000 ALTER TABLE `RH_MOTIFCONGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_MOTIFCONGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_MOYEN`
--

DROP TABLE IF EXISTS `RH_MOYEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_MOYEN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fkService` int(11) DEFAULT NULL,
  `fkTypeMoyen` int(11) DEFAULT NULL,
  `NOM` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_MOYEN`
--

LOCK TABLES `RH_MOYEN` WRITE;
/*!40000 ALTER TABLE `RH_MOYEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_MOYEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_OBJECTIF`
--

DROP TABLE IF EXISTS `RH_OBJECTIF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_OBJECTIF` (
  `OBJECTIF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATION` date DEFAULT NULL,
  `DATE_ECHEANCE` date DEFAULT NULL,
  `FORMULE` varchar(50) DEFAULT NULL,
  `ID_DOMAINE` int(11) DEFAULT NULL,
  `ID_EMPLOYE` int(11) DEFAULT NULL,
  `ID_ENTITE_ORGANISATIONNELLE` int(11) DEFAULT NULL,
  `ID_PRIME` int(11) DEFAULT NULL,
  `NIVEAU` varchar(50) DEFAULT NULL,
  `ST_PRC` bit(1) DEFAULT NULL,
  `ST_PRI` bit(1) DEFAULT NULL,
  `ID_OBJECTIF_SUIV` int(11) DEFAULT NULL,
  `ID_STATUT_OBJECTIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`OBJECTIF_ID`),
  KEY `RH_FK_OBJECTIF_SUIV` (`ID_OBJECTIF_SUIV`),
  KEY `RH_FK_OBJECTIF_STATUT` (`ID_STATUT_OBJECTIF`),
  CONSTRAINT `RH_FK_OBJECTIF_STATUT` FOREIGN KEY (`ID_STATUT_OBJECTIF`) REFERENCES `RH_STATUT_OBJECTIF` (`ID`),
  CONSTRAINT `RH_FK_OBJECTIF_SUIV` FOREIGN KEY (`ID_OBJECTIF_SUIV`) REFERENCES `RH_OBJECTIF` (`OBJECTIF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_OBJECTIF`
--

LOCK TABLES `RH_OBJECTIF` WRITE;
/*!40000 ALTER TABLE `RH_OBJECTIF` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_OBJECTIF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_ORGANISME_ANNONCE`
--

DROP TABLE IF EXISTS `RH_ORGANISME_ANNONCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_ORGANISME_ANNONCE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID_ANNONCE_REC` bigint(20) DEFAULT NULL,
  `ID_ORGANISME_REC` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_ORGANISME_ANNONCE_ANNONCE` (`ID_ANNONCE_REC`),
  KEY `RH_FK_ORGANISME_ANNONCE_ORGANISME` (`ID_ORGANISME_REC`),
  CONSTRAINT `RH_FK_ORGANISME_ANNONCE_ANNONCE` FOREIGN KEY (`ID_ANNONCE_REC`) REFERENCES `RH_ANNONCE_RECRUTEMENT` (`ID`),
  CONSTRAINT `RH_FK_ORGANISME_ANNONCE_ORGANISME` FOREIGN KEY (`ID_ORGANISME_REC`) REFERENCES `RH_ORGANISME_RECRUTEMENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_ORGANISME_ANNONCE`
--

LOCK TABLES `RH_ORGANISME_ANNONCE` WRITE;
/*!40000 ALTER TABLE `RH_ORGANISME_ANNONCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_ORGANISME_ANNONCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_ORGANISME_RECRUTEMENT`
--

DROP TABLE IF EXISTS `RH_ORGANISME_RECRUTEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_ORGANISME_RECRUTEMENT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADRESSE` varchar(50) DEFAULT NULL,
  `CONTACT` varchar(50) DEFAULT NULL,
  `DENOMINATION` varchar(50) DEFAULT NULL,
  `SITE_INTERNET` varchar(50) DEFAULT NULL,
  `TELEPHONE` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_ORGANISME_RECRUTEMENT`
--

LOCK TABLES `RH_ORGANISME_RECRUTEMENT` WRITE;
/*!40000 ALTER TABLE `RH_ORGANISME_RECRUTEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_ORGANISME_RECRUTEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_PLAN_ACTIONS`
--

DROP TABLE IF EXISTS `RH_PLAN_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_PLAN_ACTIONS` (
  `PLAN_ACTIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `ID_RH_MOYEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ACTIONS_ID`),
  KEY `RH_FK_PLAN_ACTIONS_MOYEN` (`ID_RH_MOYEN`),
  CONSTRAINT `RH_FK_PLAN_ACTIONS_MOYEN` FOREIGN KEY (`ID_RH_MOYEN`) REFERENCES `RH_MOYEN` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_PLAN_ACTIONS`
--

LOCK TABLES `RH_PLAN_ACTIONS` WRITE;
/*!40000 ALTER TABLE `RH_PLAN_ACTIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_PLAN_ACTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_POSTE_OCCUPE`
--

DROP TABLE IF EXISTS `RH_POSTE_OCCUPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_POSTE_OCCUPE` (
  `ID_POSTE_OCCUPE` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DESCRIPTION` longtext,
  `ID_DIRECTION` int(11) DEFAULT NULL,
  `ID_FICHE_DE_POSTE` bigint(20) DEFAULT NULL,
  `ID_SERVICE` int(11) DEFAULT NULL,
  `ID_STRUCTURE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_POSTE_OCCUPE`),
  KEY `RH_FK_POSTE_OCCUPE_DIRECTION` (`ID_DIRECTION`),
  KEY `RH_FK_POSTE_OCCUPE_FICHE` (`ID_FICHE_DE_POSTE`),
  KEY `RH_FK_POSTE_OCCUPE_SERVICE` (`ID_SERVICE`),
  KEY `RH_FK_POSTE_OCCUPE_STRUCTURE` (`ID_STRUCTURE`),
  CONSTRAINT `RH_FK_POSTE_OCCUPE_DIRECTION` FOREIGN KEY (`ID_DIRECTION`) REFERENCES `RH_DIRECTION` (`ID`),
  CONSTRAINT `RH_FK_POSTE_OCCUPE_FICHE` FOREIGN KEY (`ID_FICHE_DE_POSTE`) REFERENCES `RH_FICHE_DE_POSTE` (`FICHE_ID`),
  CONSTRAINT `RH_FK_POSTE_OCCUPE_SERVICE` FOREIGN KEY (`ID_SERVICE`) REFERENCES `RH_SERVICE` (`ID`),
  CONSTRAINT `RH_FK_POSTE_OCCUPE_STRUCTURE` FOREIGN KEY (`ID_STRUCTURE`) REFERENCES `RH_STRUCTURE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_POSTE_OCCUPE`
--

LOCK TABLES `RH_POSTE_OCCUPE` WRITE;
/*!40000 ALTER TABLE `RH_POSTE_OCCUPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_POSTE_OCCUPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_PRIME`
--

DROP TABLE IF EXISTS `RH_PRIME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_PRIME` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  `TYPE` varchar(3) DEFAULT NULL,
  `VALEUR_LISTE` varchar(50) DEFAULT NULL,
  `ID_RH_OBJECTIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_PRIME_OBJECTIF` (`ID_RH_OBJECTIF`),
  CONSTRAINT `RH_FK_PRIME_OBJECTIF` FOREIGN KEY (`ID_RH_OBJECTIF`) REFERENCES `RH_OBJECTIF` (`OBJECTIF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_PRIME`
--

LOCK TABLES `RH_PRIME` WRITE;
/*!40000 ALTER TABLE `RH_PRIME` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_PRIME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_QUALITE_PERSONNELLE`
--

DROP TABLE IF EXISTS `RH_QUALITE_PERSONNELLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_QUALITE_PERSONNELLE` (
  `QUALITE_PERSONNELLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOMAINE_QUALITE_PERSONNELLE` varchar(50) DEFAULT NULL,
  `INTITULE_QUALITE_PERSONNELLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`QUALITE_PERSONNELLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_QUALITE_PERSONNELLE`
--

LOCK TABLES `RH_QUALITE_PERSONNELLE` WRITE;
/*!40000 ALTER TABLE `RH_QUALITE_PERSONNELLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_QUALITE_PERSONNELLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_RESSOURCES_LOGISTIQUES`
--

DROP TABLE IF EXISTS `RH_RESSOURCES_LOGISTIQUES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_RESSOURCES_LOGISTIQUES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DENOMINATION` varchar(45) DEFAULT NULL,
  `ENTITE_EN_CHARGE` varchar(45) DEFAULT NULL,
  `ID_RH_CANDIDAT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_RESSOURCES_LOGISTIQUES_CANDIDAT` (`ID_RH_CANDIDAT`),
  CONSTRAINT `RH_FK_RESSOURCES_LOGISTIQUES_CANDIDAT` FOREIGN KEY (`ID_RH_CANDIDAT`) REFERENCES `RH_CANDIDAT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_RESSOURCES_LOGISTIQUES`
--

LOCK TABLES `RH_RESSOURCES_LOGISTIQUES` WRITE;
/*!40000 ALTER TABLE `RH_RESSOURCES_LOGISTIQUES` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_RESSOURCES_LOGISTIQUES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_REUNION_ENTRETIN`
--

DROP TABLE IF EXISTS `RH_REUNION_ENTRETIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_REUNION_ENTRETIN` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_REUNION_ENTRETIN`
--

LOCK TABLES `RH_REUNION_ENTRETIN` WRITE;
/*!40000 ALTER TABLE `RH_REUNION_ENTRETIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_REUNION_ENTRETIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_SALAIRE`
--

DROP TABLE IF EXISTS `RH_SALAIRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_SALAIRE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADRESSE` varchar(45) DEFAULT NULL,
  `CIVILITE` varchar(45) DEFAULT NULL,
  `DATE_FIN_PERIODE_ESSAI` date DEFAULT NULL,
  `DATE_RECRUTEMENT` date DEFAULT NULL,
  `DEVISE_AUGMENTATION` decimal(18,2) DEFAULT NULL,
  `FONCTION` varchar(45) DEFAULT NULL,
  `N_SECURITE_SOCIALE` decimal(19,2) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PERIODE_ESSAI` date DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `REMUNERATION` decimal(18,2) DEFAULT NULL,
  `SITUATION_FAMILIALE` int(11) DEFAULT NULL,
  `STATUT` varchar(50) DEFAULT NULL,
  `TYPE_CONTRAT` varchar(50) DEFAULT NULL,
  `G50_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_SALAIRE_G50` (`G50_ID`),
  CONSTRAINT `RH_FK_SALAIRE_G50` FOREIGN KEY (`G50_ID`) REFERENCES `ADM_G50` (`ID_G50`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_SALAIRE`
--

LOCK TABLES `RH_SALAIRE` WRITE;
/*!40000 ALTER TABLE `RH_SALAIRE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_SALAIRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_SALAIRE_DU_MOIS`
--

DROP TABLE IF EXISTS `RH_SALAIRE_DU_MOIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_SALAIRE_DU_MOIS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `COLLABORATEUR_ID` int(11) NOT NULL,
  `AUGMENTATION` decimal(6,2) DEFAULT NULL,
  `PRIME_COMPENSATRICE` decimal(6,2) DEFAULT NULL,
  `AVANCE` decimal(6,2) DEFAULT NULL,
  `NBR_ABSENCE` int(11) DEFAULT NULL,
  `REMARQUE` text COLLATE utf8_bin NOT NULL,
  `NET_A_PAYER` decimal(6,2) NOT NULL,
  `STATUS` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RH_FK_SALAIRE_DU_MOIS_COLLABORATEUR` (`COLLABORATEUR_ID`),
  CONSTRAINT `RH_FK_SALAIRE_DU_MOIS_COLLABORATEUR` FOREIGN KEY (`COLLABORATEUR_ID`) REFERENCES `RH_COLLABORATEUR` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_SALAIRE_DU_MOIS`
--

LOCK TABLES `RH_SALAIRE_DU_MOIS` WRITE;
/*!40000 ALTER TABLE `RH_SALAIRE_DU_MOIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_SALAIRE_DU_MOIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_SERVICE`
--

DROP TABLE IF EXISTS `RH_SERVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_SERVICE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_SERVICE`
--

LOCK TABLES `RH_SERVICE` WRITE;
/*!40000 ALTER TABLE `RH_SERVICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_SERVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_STATUT_OBJECTIF`
--

DROP TABLE IF EXISTS `RH_STATUT_OBJECTIF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_STATUT_OBJECTIF` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_STATUT_OBJECTIF`
--

LOCK TABLES `RH_STATUT_OBJECTIF` WRITE;
/*!40000 ALTER TABLE `RH_STATUT_OBJECTIF` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_STATUT_OBJECTIF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_STATUT_PERIODE_ESSAI`
--

DROP TABLE IF EXISTS `RH_STATUT_PERIODE_ESSAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_STATUT_PERIODE_ESSAI` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_STATUT_PERIODE_ESSAI`
--

LOCK TABLES `RH_STATUT_PERIODE_ESSAI` WRITE;
/*!40000 ALTER TABLE `RH_STATUT_PERIODE_ESSAI` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_STATUT_PERIODE_ESSAI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_STATUT_RECRUTEMENT`
--

DROP TABLE IF EXISTS `RH_STATUT_RECRUTEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_STATUT_RECRUTEMENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_STATUT_RECRUTEMENT`
--

LOCK TABLES `RH_STATUT_RECRUTEMENT` WRITE;
/*!40000 ALTER TABLE `RH_STATUT_RECRUTEMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_STATUT_RECRUTEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_STRUCTURE`
--

DROP TABLE IF EXISTS `RH_STRUCTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_STRUCTURE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` longtext,
  `nom` varchar(150) DEFAULT NULL,
  `Responsable` decimal(19,2) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `wilaya` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_STRUCTURE`
--

LOCK TABLES `RH_STRUCTURE` WRITE;
/*!40000 ALTER TABLE `RH_STRUCTURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_STRUCTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_TACHE_FICHE_POSTE`
--

DROP TABLE IF EXISTS `RH_TACHE_FICHE_POSTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_TACHE_FICHE_POSTE` (
  `TACHE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INTITULE` varchar(50) DEFAULT NULL,
  `ID_TACHE_FICHE_POSTE_SUIV` int(11) DEFAULT NULL,
  PRIMARY KEY (`TACHE_ID`),
  KEY `RH_FK_TACHE_FICHE_POSTE_SUIV` (`ID_TACHE_FICHE_POSTE_SUIV`),
  CONSTRAINT `RH_FK_TACHE_FICHE_POSTE_SUIV` FOREIGN KEY (`ID_TACHE_FICHE_POSTE_SUIV`) REFERENCES `RH_TACHE_FICHE_POSTE` (`TACHE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_TACHE_FICHE_POSTE`
--

LOCK TABLES `RH_TACHE_FICHE_POSTE` WRITE;
/*!40000 ALTER TABLE `RH_TACHE_FICHE_POSTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_TACHE_FICHE_POSTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_TENUE_POSTE`
--

DROP TABLE IF EXISTS `RH_TENUE_POSTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_TENUE_POSTE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `INTITULE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_TENUE_POSTE`
--

LOCK TABLES `RH_TENUE_POSTE` WRITE;
/*!40000 ALTER TABLE `RH_TENUE_POSTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_TENUE_POSTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_TYPECONGE`
--

DROP TABLE IF EXISTS `RH_TYPECONGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_TYPECONGE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `typeConge` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_TYPECONGE`
--

LOCK TABLES `RH_TYPECONGE` WRITE;
/*!40000 ALTER TABLE `RH_TYPECONGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_TYPECONGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_TYPE_DISTRI_EVAL`
--

DROP TABLE IF EXISTS `RH_TYPE_DISTRI_EVAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_TYPE_DISTRI_EVAL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_DISTRIBUTION_EVAL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_TYPE_DISTRI_EVAL`
--

LOCK TABLES `RH_TYPE_DISTRI_EVAL` WRITE;
/*!40000 ALTER TABLE `RH_TYPE_DISTRI_EVAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_TYPE_DISTRI_EVAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH_TYPE_MOYEN`
--

DROP TABLE IF EXISTS `RH_TYPE_MOYEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RH_TYPE_MOYEN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH_TYPE_MOYEN`
--

LOCK TABLES `RH_TYPE_MOYEN` WRITE;
/*!40000 ALTER TABLE `RH_TYPE_MOYEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `RH_TYPE_MOYEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES (1,'001','Create activiti tables','SQL','V001__Create_activiti_tables.sql',375643628,'imagineworkflow','2016-05-09 18:45:35',5378,1),(2,'002','Create imagine workflow tables','SQL','V002__Create_imagine_workflow_tables.sql',-2010850447,'imagineworkflow','2016-05-09 18:45:41',6107,1),(3,'003','Create business tables','SQL','V003__Create_business_tables.sql',-10242875,'imagineworkflow','2016-05-09 18:45:56',14104,1),(4,'004','Add constraints','SQL','V004__Add_constraints.sql',482718946,'imagineworkflow','2016-05-09 18:46:15',19301,1),(5,'005','Add activiti properties','SQL','V005__Add_activiti_properties.sql',1771964642,'imagineworkflow','2016-05-09 18:46:15',59,1),(6,'006','Add users','SQL','V006__Add_users.sql',1540599962,'imagineworkflow','2016-05-09 18:46:15',166,1),(7,'007','Add groups','SQL','V007__Add_groups.sql',-1264191932,'imagineworkflow','2016-05-09 18:46:15',84,1),(8,'008','Add memberships','SQL','V008__Add_memberships.sql',-573293153,'imagineworkflow','2016-05-09 18:46:15',27,1),(9,'009','Add configurations','SQL','V009__Add_configurations.sql',-1935680572,'imagineworkflow','2016-05-09 18:46:16',61,1),(10,'010','Add license','SQL','V010__Add_license.sql',-2012660758,'imagineworkflow','2016-05-09 18:46:16',26,1),(11,'011','Add business entities','SQL','V011__Add_business_entities.sql',1486063323,'imagineworkflow','2016-05-09 18:46:16',60,1),(12,'012','Add human resource tables','SQL','V012__Add_human_resource_tables.sql',-556736070,'imagineworkflow','2016-05-09 18:46:32',16536,1),(13,'013','Add demo tables','SQL','V013__Add_demo_tables.sql',1322429287,'imagineworkflow','2016-05-09 18:46:40',7379,1),(14,'014','Add iw input permissions','SQL','V014__Add_iw_input_permissions.sql',1244221522,'imagineworkflow','2016-05-09 18:46:40',446,1),(15,'015','Changing id of iw input','SQL','V015__Changing_id_of_iw_input.sql',-766809524,'imagineworkflow','2016-05-09 18:46:41',334,1),(16,'016','Add sticky title configuration entry','SQL','V016__Add_sticky_title_configuration_entry.sql',-1213959538,'imagineworkflow','2016-05-09 18:46:41',18,1),(17,'017','Task autonome id nullable in iw right','SQL','V017__Task_autonome_id_nullable_in_iw_right.sql',-266546123,'imagineworkflow','2016-05-09 18:46:41',253,1),(18,'018','Add display in jointable column','SQL','V018__Add_display_in_jointable_column.sql',-237666212,'imagineworkflow','2016-05-09 18:46:41',402,1),(19,'019','Create iw standalone task table','SQL','V019__Create_iw_standalone_task_table.sql',-543020652,'imagineworkflow','2016-05-09 18:46:42',161,1),(20,'020','Update group detail visible column','SQL','V020__Update_group_detail_visible_column.sql',-1660023057,'imagineworkflow','2016-05-09 18:46:42',24,1),(21,'021','Create user detail visible column','SQL','V021__Create_user_detail_visible_column.sql',-2100286706,'imagineworkflow','2016-05-09 18:46:42',552,1),(22,'022','Alter iw input primary key','SQL','V022__Alter_iw_input_primary_key.sql',-1943491442,'imagineworkflow','2016-05-09 18:46:44',1242,1),(23,'023','Add iw config values for display languages','SQL','V023__Add_iw_config_values_for_display_languages.sql',-300464572,'imagineworkflow','2016-05-09 18:46:44',27,1),(24,'024','Show superadmin user again','SQL','V024__Show_superadmin_user_again.sql',-785315026,'imagineworkflow','2016-05-09 18:46:44',24,1),(25,'025','Add employ id column','SQL','V025__Add_employ_id_column.sql',775315879,'imagineworkflow','2016-05-09 18:46:45',756,1),(26,'026','Display process progress bar','SQL','V026__Display_process_progress_bar.sql',1638765955,'imagineworkflow','2016-05-09 18:46:45',24,1),(27,'027','Update group detail visible column','SQL','V027__Update_group_detail_visible_column.sql',1026002054,'imagineworkflow','2016-05-09 18:46:45',580,1),(28,'028','Drop demo tables','SQL','V028__Drop_demo_tables.sql',-2022966706,'imagineworkflow','2016-05-09 18:46:50',4189,1),(29,'029','Add iw form template entries','SQL','V029__Add_iw_form_template_entries.sql',187056618,'imagineworkflow','2016-05-09 18:46:50',18,1),(30,'030','Add new columns and constraints to BizLinecommande BizFournisseur','SQL','V030__Add_new_columns_and_constraints_to_BizLinecommande_BizFournisseur.sql',556915218,'imagineworkflow','2016-05-09 18:46:51',1175,1),(31,'031','Delete multiline entity demo records','SQL','V031__Delete_multiline_entity_demo_records.sql',69556754,'imagineworkflow','2016-05-09 18:46:51',77,1),(32,'032','Create rh salaire du mois table','SQL','V032__Create_rh_salaire_du_mois_table.sql',1914899123,'imagineworkflow','2016-05-09 18:46:52',696,1),(33,'033','Add multiline entity entry for rh salaire du mois','SQL','V033__Add_multiline_entity_entry_for_rh_salaire_du_mois.sql',419828446,'imagineworkflow','2016-05-09 18:46:52',18,1),(34,'034','Delete and update on cascade in iw variable process table','SQL','V034__Delete_and_update_on_cascade_in_iw_variable_process_table.sql',2085837218,'imagineworkflow','2016-05-09 18:46:52',607,1),(35,'035','Clean multiline entity table','SQL','V035__Clean_multiline_entity_table.sql',-570617659,'imagineworkflow','2016-05-09 18:46:52',62,1),(36,'036','Update algeria departments tables and insert datas','SQL','V036__Update_algeria_departments_tables_and_insert_datas.sql',-1211113486,'imagineworkflow','2016-05-09 18:46:54',1030,1),(37,'037','Add ldap and smtp settings','SQL','V037__Add_ldap_and_smtp_settings.sql',844161512,'imagineworkflow','2017-01-02 13:15:35',63,1),(38,'038','Add iw column task table','SQL','V038__Add_iw_column_task_table.sql',-273539079,'imagineworkflow','2017-01-02 13:15:35',240,1),(39,'039','Add column size and order settings','SQL','V039__Add_column_size_and_order_settings.sql',-1758686610,'imagineworkflow','2017-01-02 13:15:36',514,1),(40,'040','Delete biz plan media tables','SQL','V040__Delete_biz_plan_media_tables.sql',-1186307446,'imagineworkflow','2017-01-02 13:15:37',1512,1),(41,'041','Delete biz plan media entities','SQL','V041__Delete_biz_plan_media_entities.sql',900319451,'imagineworkflow','2017-01-02 13:15:37',34,1),(42,'042','Add auto increment field to iw config table','SQL','V042__Add_auto_increment_field_to_iw_config_table.sql',1702366571,'imagineworkflow','2017-01-02 13:15:38',352,1),(43,'043','Add iw form template process anomalie','SQL','V043__Add_iw_form_template_process_anomalie.sql',-480983149,'imagineworkflow','2017-01-02 13:15:38',23,1),(44,'044','Create iw tree table','SQL','V044__Create_iw_tree_table.sql',-1322660401,'imagineworkflow','2017-01-02 13:15:39',768,1),(45,'045','Create biz fournisseur type table','SQL','V045__Create_biz_fournisseur_type_table.sql',-338704187,'imagineworkflow','2017-01-02 13:15:40',910,1),(46,'046','Add multiselect template process anomalie','SQL','V046__Add_multiselect_template_process_anomalie.sql',102457016,'imagineworkflow','2017-01-02 13:15:40',23,1),(47,'047','Add table Biz Politique Prix','SQL','V047__Add_table_Biz_Politique_Prix.sql',-1633265997,'imagineworkflow','2017-01-02 13:15:40',343,1),(48,'048','Insert Biz Politique Prix','SQL','V048__Insert_Biz_Politique_Prix.sql',1652937025,'imagineworkflow','2017-01-02 13:15:40',48,1),(49,'049','Add colomn Biz prix vente','SQL','V049__Add_colomn_Biz_prix_vente.sql',51106997,'imagineworkflow','2017-01-02 13:15:41',401,1),(50,'050','Add iw form template prix vente','SQL','V050__Add_iw_form_template_prix_vente.sql',-26158332,'imagineworkflow','2017-01-02 13:15:41',24,1),(51,'051','Add ldap configurations','SQL','V051__Add_ldap_configurations.sql',-1072595818,'imagineworkflow','2017-01-02 13:15:41',25,1),(52,'052','Change configurations default value','SQL','V052__Change_configurations_default_value.sql',1071680939,'imagineworkflow','2017-01-02 13:15:41',45,1),(53,'053','Add column Organisme and related list values','SQL','V053__Add_column_Organisme_and_related_list_values.sql',-1909304814,'imagineworkflow','2017-01-02 13:15:41',361,1),(54,'054','Add meeting start and end time in rh candidat','SQL','V054__Add_meeting_start_and_end_time_in_rh_candidat.sql',1643386134,'imagineworkflow','2017-01-02 13:15:42',420,1),(55,'055','Add right to launch process','SQL','V055__Add_right_to_launch_process.sql',-272994394,'imagineworkflow','2017-01-02 13:15:42',445,1),(56,'056','Create biz reglement table','SQL','V056__Create_biz_reglement_table.sql',-1511934036,'imagineworkflow','2017-01-02 13:15:43',612,1),(57,'057','Add salaire de base in rh candidat','SQL','V057__Add_salaire_de_base_in_rh_candidat.sql',-1697089386,'imagineworkflow','2017-01-02 13:15:43',336,1),(58,'058','Add date pattern and input size','SQL','V058__Add_date_pattern_and_input_size.sql',1791609992,'imagineworkflow','2017-01-02 13:15:44',722,1),(59,'059','Clean rh tables','SQL','V059__Clean_rh_tables.sql',-733191575,'imagineworkflow','2017-01-02 13:15:56',12173,1),(60,'060','Add show agenda reservation','SQL','V060__Add_show_agenda_reservation.sql',1940796337,'imagineworkflow','2017-01-02 13:15:56',24,1),(61,'061','Add column for calculation between fields','SQL','V061__Add_column_for_calculation_between_fields.sql',-959698223,'imagineworkflow','2017-01-02 13:15:57',297,1),(62,'062','Add columns for rh competences','SQL','V062__Add_columns_for_rh_competences.sql',1542177114,'imagineworkflow','2017-01-02 13:15:57',342,1),(63,'063','Add data base request column to iwinput','SQL','V063__Add_data_base_request_column_to_iwinput.sql',365729032,'imagineworkflow','2017-01-02 13:15:57',347,1),(64,'064','Clean iw multi entity table','SQL','V064__Clean_iw_multi_entity_table.sql',-1986817051,'imagineworkflow','2017-01-02 13:15:57',34,1),(65,'065','Add max select to iw input','SQL','V065__Add_max_select_to_iw_input.sql',563874339,'imagineworkflow','2017-01-02 13:15:58',422,1),(66,'066','Add timzone column to iw user details','SQL','V066__Add_timzone_column_to_iw_user_details.sql',-241056402,'imagineworkflow','2017-01-02 13:15:59',545,1),(67,'067','Add iwIsForm for displying entities ontopbar','SQL','V067__Add_iwIsForm_for_displying_entities_ontopbar.sql',0,'root','2017-01-16 12:17:27',564,1),(68,'068','Add configuration settings tab file export paths ','SQL','V068__Add_configuration_settings_tab_file_export_paths_.sql',-57030455,'root','2017-01-16 12:17:27',24,1),(69,'069','Add default configuration values for export paths ','SQL','V069__Add_default_configuration_values_for_export_paths_.sql',-1153145968,'root','2017-01-16 12:17:27',20,1),(70,'070','Update iw tables','SQL','V070__Update_iw_tables.sql',1214803864,'root','2017-02-12 13:54:40',5817,1),(71,'071','Update activiti tables','SQL','V071__Update_activiti_tables.sql',-1190503178,'root','2017-02-12 13:54:47',6876,1),(72,'072','create table template variable','SQL','V072__create_table_template_variable.sql',-198415921,'imagineworkflow','2017-05-02 13:10:18',272,1),(73,'073','Add constraints variable template','SQL','V073__Add_constraints_variable_template.sql',1244527080,'imagineworkflow','2017-05-02 13:10:18',658,1),(74,'074','Add Image template','SQL','V074__Add_Image_template.sql',-533803682,'imagineworkflow','2017-07-12 16:32:28',87,1),(75,'075','Add IW INPUT disabled forTasks','SQL','V075__Add_IW_INPUT_disabled_forTasks.sql',1714526638,'imagineworkflow','2017-07-12 16:32:29',939,1);
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-10  9:11:17
