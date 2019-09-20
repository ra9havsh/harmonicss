-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 08:46 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harmonicss-db-jan-2019-v.0.9`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add cohort', 1, 'add_cohort'),
(2, 'Can change cohort', 1, 'change_cohort'),
(3, 'Can delete cohort', 1, 'delete_cohort'),
(4, 'Can view cohort', 1, 'view_cohort'),
(5, 'Can add cond diagnosis', 2, 'add_conddiagnosis'),
(6, 'Can change cond diagnosis', 2, 'change_conddiagnosis'),
(7, 'Can delete cond diagnosis', 2, 'delete_conddiagnosis'),
(8, 'Can view cond diagnosis', 2, 'view_conddiagnosis'),
(9, 'Can add cond diagnosis organs', 3, 'add_conddiagnosisorgans'),
(10, 'Can change cond diagnosis organs', 3, 'change_conddiagnosisorgans'),
(11, 'Can delete cond diagnosis organs', 3, 'delete_conddiagnosisorgans'),
(12, 'Can view cond diagnosis organs', 3, 'view_conddiagnosisorgans'),
(13, 'Can add cond link diagnosis lab tests', 4, 'add_condlinkdiagnosislabtests'),
(14, 'Can change cond link diagnosis lab tests', 4, 'change_condlinkdiagnosislabtests'),
(15, 'Can delete cond link diagnosis lab tests', 4, 'delete_condlinkdiagnosislabtests'),
(16, 'Can view cond link diagnosis lab tests', 4, 'view_condlinkdiagnosislabtests'),
(17, 'Can add cond link diagnosis symptoms', 5, 'add_condlinkdiagnosissymptoms'),
(18, 'Can change cond link diagnosis symptoms', 5, 'change_condlinkdiagnosissymptoms'),
(19, 'Can delete cond link diagnosis symptoms', 5, 'delete_condlinkdiagnosissymptoms'),
(20, 'Can view cond link diagnosis symptoms', 5, 'view_condlinkdiagnosissymptoms'),
(21, 'Can add cond symptom', 6, 'add_condsymptom'),
(22, 'Can change cond symptom', 6, 'change_condsymptom'),
(23, 'Can delete cond symptom', 6, 'delete_condsymptom'),
(24, 'Can view cond symptom', 6, 'view_condsymptom'),
(25, 'Can add demo education level data', 7, 'add_demoeducationleveldata'),
(26, 'Can change demo education level data', 7, 'change_demoeducationleveldata'),
(27, 'Can delete demo education level data', 7, 'delete_demoeducationleveldata'),
(28, 'Can view demo education level data', 7, 'view_demoeducationleveldata'),
(29, 'Can add demo ethnicity data', 8, 'add_demoethnicitydata'),
(30, 'Can change demo ethnicity data', 8, 'change_demoethnicitydata'),
(31, 'Can delete demo ethnicity data', 8, 'delete_demoethnicitydata'),
(32, 'Can view demo ethnicity data', 8, 'view_demoethnicitydata'),
(33, 'Can add demo occupation data', 9, 'add_demooccupationdata'),
(34, 'Can change demo occupation data', 9, 'change_demooccupationdata'),
(35, 'Can delete demo occupation data', 9, 'delete_demooccupationdata'),
(36, 'Can view demo occupation data', 9, 'view_demooccupationdata'),
(37, 'Can add demo pregnancy data', 10, 'add_demopregnancydata'),
(38, 'Can change demo pregnancy data', 10, 'change_demopregnancydata'),
(39, 'Can delete demo pregnancy data', 10, 'delete_demopregnancydata'),
(40, 'Can view demo pregnancy data', 10, 'view_demopregnancydata'),
(41, 'Can add demo sex data', 11, 'add_demosexdata'),
(42, 'Can change demo sex data', 11, 'change_demosexdata'),
(43, 'Can delete demo sex data', 11, 'delete_demosexdata'),
(44, 'Can view demo sex data', 11, 'view_demosexdata'),
(45, 'Can add demo weight data', 12, 'add_demoweightdata'),
(46, 'Can change demo weight data', 12, 'change_demoweightdata'),
(47, 'Can delete demo weight data', 12, 'delete_demoweightdata'),
(48, 'Can view demo weight data', 12, 'view_demoweightdata'),
(49, 'Can add dt amount', 13, 'add_dtamount'),
(50, 'Can change dt amount', 13, 'change_dtamount'),
(51, 'Can delete dt amount', 13, 'delete_dtamount'),
(52, 'Can view dt amount', 13, 'view_dtamount'),
(53, 'Can add dt amount range', 14, 'add_dtamountrange'),
(54, 'Can change dt amount range', 14, 'change_dtamountrange'),
(55, 'Can delete dt amount range', 14, 'delete_dtamountrange'),
(56, 'Can view dt amount range', 14, 'view_dtamountrange'),
(57, 'Can add dt date', 15, 'add_dtdate'),
(58, 'Can change dt date', 15, 'change_dtdate'),
(59, 'Can delete dt date', 15, 'delete_dtdate'),
(60, 'Can view dt date', 15, 'view_dtdate'),
(61, 'Can add dt int range', 16, 'add_dtintrange'),
(62, 'Can change dt int range', 16, 'change_dtintrange'),
(63, 'Can delete dt int range', 16, 'delete_dtintrange'),
(64, 'Can view dt int range', 16, 'view_dtintrange'),
(65, 'Can add dt period of time', 17, 'add_dtperiodoftime'),
(66, 'Can change dt period of time', 17, 'change_dtperiodoftime'),
(67, 'Can delete dt period of time', 17, 'delete_dtperiodoftime'),
(68, 'Can view dt period of time', 17, 'view_dtperiodoftime'),
(69, 'Can add exam biopsy', 18, 'add_exambiopsy'),
(70, 'Can change exam biopsy', 18, 'change_exambiopsy'),
(71, 'Can delete exam biopsy', 18, 'delete_exambiopsy'),
(72, 'Can view exam biopsy', 18, 'view_exambiopsy'),
(73, 'Can add exam caci condition', 19, 'add_examcacicondition'),
(74, 'Can change exam caci condition', 19, 'change_examcacicondition'),
(75, 'Can delete exam caci condition', 19, 'delete_examcacicondition'),
(76, 'Can view exam caci condition', 19, 'view_examcacicondition'),
(77, 'Can add exam essdai domain', 20, 'add_examessdaidomain'),
(78, 'Can change exam essdai domain', 20, 'change_examessdaidomain'),
(79, 'Can delete exam essdai domain', 20, 'delete_examessdaidomain'),
(80, 'Can view exam essdai domain', 20, 'view_examessdaidomain'),
(81, 'Can add exam lab test', 21, 'add_examlabtest'),
(82, 'Can change exam lab test', 21, 'change_examlabtest'),
(83, 'Can delete exam lab test', 21, 'delete_examlabtest'),
(84, 'Can view exam lab test', 21, 'view_examlabtest'),
(85, 'Can add exam medical imaging test', 22, 'add_exammedicalimagingtest'),
(86, 'Can change exam medical imaging test', 22, 'change_exammedicalimagingtest'),
(87, 'Can delete exam medical imaging test', 22, 'delete_exammedicalimagingtest'),
(88, 'Can view exam medical imaging test', 22, 'view_exammedicalimagingtest'),
(89, 'Can add exam questionnaire score', 23, 'add_examquestionnairescore'),
(90, 'Can change exam questionnaire score', 23, 'change_examquestionnairescore'),
(91, 'Can delete exam questionnaire score', 23, 'delete_examquestionnairescore'),
(92, 'Can view exam questionnaire score', 23, 'view_examquestionnairescore'),
(93, 'Can add interv chemotherapy', 24, 'add_intervchemotherapy'),
(94, 'Can change interv chemotherapy', 24, 'change_intervchemotherapy'),
(95, 'Can delete interv chemotherapy', 24, 'delete_intervchemotherapy'),
(96, 'Can view interv chemotherapy', 24, 'view_intervchemotherapy'),
(97, 'Can add interv medication', 25, 'add_intervmedication'),
(98, 'Can change interv medication', 25, 'change_intervmedication'),
(99, 'Can delete interv medication', 25, 'delete_intervmedication'),
(100, 'Can view interv medication', 25, 'view_intervmedication'),
(101, 'Can add interv surgery', 26, 'add_intervsurgery'),
(102, 'Can change interv surgery', 26, 'change_intervsurgery'),
(103, 'Can delete interv surgery', 26, 'delete_intervsurgery'),
(104, 'Can view interv surgery', 26, 'view_intervsurgery'),
(105, 'Can add lifestyle smoking', 27, 'add_lifestylesmoking'),
(106, 'Can change lifestyle smoking', 27, 'change_lifestylesmoking'),
(107, 'Can delete lifestyle smoking', 27, 'delete_lifestylesmoking'),
(108, 'Can view lifestyle smoking', 27, 'view_lifestylesmoking'),
(109, 'Can add other clinical trials', 28, 'add_otherclinicaltrials'),
(110, 'Can change other clinical trials', 28, 'change_otherclinicaltrials'),
(111, 'Can delete other clinical trials', 28, 'delete_otherclinicaltrials'),
(112, 'Can view other clinical trials', 28, 'view_otherclinicaltrials'),
(113, 'Can add other family history', 29, 'add_otherfamilyhistory'),
(114, 'Can change other family history', 29, 'change_otherfamilyhistory'),
(115, 'Can delete other family history', 29, 'delete_otherfamilyhistory'),
(116, 'Can view other family history', 29, 'view_otherfamilyhistory'),
(117, 'Can add other healthcare visit', 30, 'add_otherhealthcarevisit'),
(118, 'Can change other healthcare visit', 30, 'change_otherhealthcarevisit'),
(119, 'Can delete other healthcare visit', 30, 'delete_otherhealthcarevisit'),
(120, 'Can view other healthcare visit', 30, 'view_otherhealthcarevisit'),
(121, 'Can add patient', 31, 'add_patient'),
(122, 'Can change patient', 31, 'change_patient'),
(123, 'Can delete patient', 31, 'delete_patient'),
(124, 'Can view patient', 31, 'view_patient'),
(125, 'Can add patient visit', 32, 'add_patientvisit'),
(126, 'Can change patient visit', 32, 'change_patientvisit'),
(127, 'Can delete patient visit', 32, 'delete_patientvisit'),
(128, 'Can view patient visit', 32, 'view_patientvisit'),
(129, 'Can add voc activity level', 33, 'add_vocactivitylevel'),
(130, 'Can change voc activity level', 33, 'change_vocactivitylevel'),
(131, 'Can delete voc activity level', 33, 'delete_vocactivitylevel'),
(132, 'Can view voc activity level', 33, 'view_vocactivitylevel'),
(133, 'Can add voc ana pattern', 34, 'add_vocanapattern'),
(134, 'Can change voc ana pattern', 34, 'change_vocanapattern'),
(135, 'Can delete voc ana pattern', 34, 'delete_vocanapattern'),
(136, 'Can view voc ana pattern', 34, 'view_vocanapattern'),
(137, 'Can add voc assessment', 35, 'add_vocassessment'),
(138, 'Can change voc assessment', 35, 'change_vocassessment'),
(139, 'Can delete voc assessment', 35, 'delete_vocassessment'),
(140, 'Can view voc assessment', 35, 'view_vocassessment'),
(141, 'Can add voc biopsy', 36, 'add_vocbiopsy'),
(142, 'Can change voc biopsy', 36, 'change_vocbiopsy'),
(143, 'Can delete voc biopsy', 36, 'delete_vocbiopsy'),
(144, 'Can view voc biopsy', 36, 'view_vocbiopsy'),
(145, 'Can add voc bmi class', 37, 'add_vocbmiclass'),
(146, 'Can change voc bmi class', 37, 'change_vocbmiclass'),
(147, 'Can delete voc bmi class', 37, 'delete_vocbmiclass'),
(148, 'Can view voc bmi class', 37, 'view_vocbmiclass'),
(149, 'Can add voc caci condition', 38, 'add_voccacicondition'),
(150, 'Can change voc caci condition', 38, 'change_voccacicondition'),
(151, 'Can delete voc caci condition', 38, 'delete_voccacicondition'),
(152, 'Can view voc caci condition', 38, 'view_voccacicondition'),
(153, 'Can add voc confirmation', 39, 'add_vocconfirmation'),
(154, 'Can change voc confirmation', 39, 'change_vocconfirmation'),
(155, 'Can delete voc confirmation', 39, 'delete_vocconfirmation'),
(156, 'Can view voc confirmation', 39, 'view_vocconfirmation'),
(157, 'Can add voc cryo type', 40, 'add_voccryotype'),
(158, 'Can change voc cryo type', 40, 'change_voccryotype'),
(159, 'Can delete voc cryo type', 40, 'delete_voccryotype'),
(160, 'Can view voc cryo type', 40, 'view_voccryotype'),
(161, 'Can add voc direction', 41, 'add_vocdirection'),
(162, 'Can change voc direction', 41, 'change_vocdirection'),
(163, 'Can delete voc direction', 41, 'delete_vocdirection'),
(164, 'Can view voc direction', 41, 'view_vocdirection'),
(165, 'Can add voc education level', 42, 'add_voceducationlevel'),
(166, 'Can change voc education level', 42, 'change_voceducationlevel'),
(167, 'Can delete voc education level', 42, 'delete_voceducationlevel'),
(168, 'Can view voc education level', 42, 'view_voceducationlevel'),
(169, 'Can add voc essdai domain', 43, 'add_vocessdaidomain'),
(170, 'Can change voc essdai domain', 43, 'change_vocessdaidomain'),
(171, 'Can delete voc essdai domain', 43, 'delete_vocessdaidomain'),
(172, 'Can view voc essdai domain', 43, 'view_vocessdaidomain'),
(173, 'Can add voc ethnicity', 44, 'add_vocethnicity'),
(174, 'Can change voc ethnicity', 44, 'change_vocethnicity'),
(175, 'Can delete voc ethnicity', 44, 'delete_vocethnicity'),
(176, 'Can view voc ethnicity', 44, 'view_vocethnicity'),
(177, 'Can add voc exam outcome type', 45, 'add_vocexamoutcometype'),
(178, 'Can change voc exam outcome type', 45, 'change_vocexamoutcometype'),
(179, 'Can delete voc exam outcome type', 45, 'delete_vocexamoutcometype'),
(180, 'Can view voc exam outcome type', 45, 'view_vocexamoutcometype'),
(181, 'Can add voc ipi risk', 46, 'add_vocipirisk'),
(182, 'Can change voc ipi risk', 46, 'change_vocipirisk'),
(183, 'Can delete voc ipi risk', 46, 'delete_vocipirisk'),
(184, 'Can view voc ipi risk', 46, 'view_vocipirisk'),
(185, 'Can add voc lab test', 47, 'add_voclabtest'),
(186, 'Can change voc lab test', 47, 'change_voclabtest'),
(187, 'Can delete voc lab test', 47, 'delete_voclabtest'),
(188, 'Can view voc lab test', 47, 'view_voclabtest'),
(189, 'Can add voc lab test type', 48, 'add_voclabtesttype'),
(190, 'Can change voc lab test type', 48, 'change_voclabtesttype'),
(191, 'Can delete voc lab test type', 48, 'delete_voclabtesttype'),
(192, 'Can view voc lab test type', 48, 'view_voclabtesttype'),
(193, 'Can add voc lymphoma organ', 49, 'add_voclymphomaorgan'),
(194, 'Can change voc lymphoma organ', 49, 'change_voclymphomaorgan'),
(195, 'Can delete voc lymphoma organ', 49, 'delete_voclymphomaorgan'),
(196, 'Can view voc lymphoma organ', 49, 'view_voclymphomaorgan'),
(197, 'Can add voc lymphoma stage', 50, 'add_voclymphomastage'),
(198, 'Can change voc lymphoma stage', 50, 'change_voclymphomastage'),
(199, 'Can delete voc lymphoma stage', 50, 'delete_voclymphomastage'),
(200, 'Can view voc lymphoma stage', 50, 'view_voclymphomastage'),
(201, 'Can add voc medical condition', 51, 'add_vocmedicalcondition'),
(202, 'Can change voc medical condition', 51, 'change_vocmedicalcondition'),
(203, 'Can delete voc medical condition', 51, 'delete_vocmedicalcondition'),
(204, 'Can view voc medical condition', 51, 'view_vocmedicalcondition'),
(205, 'Can add voc medical imaging test', 52, 'add_vocmedicalimagingtest'),
(206, 'Can change voc medical imaging test', 52, 'change_vocmedicalimagingtest'),
(207, 'Can delete voc medical imaging test', 52, 'delete_vocmedicalimagingtest'),
(208, 'Can view voc medical imaging test', 52, 'view_vocmedicalimagingtest'),
(209, 'Can add voc performance status', 53, 'add_vocperformancestatus'),
(210, 'Can change voc performance status', 53, 'change_vocperformancestatus'),
(211, 'Can delete voc performance status', 53, 'delete_vocperformancestatus'),
(212, 'Can view voc performance status', 53, 'view_vocperformancestatus'),
(213, 'Can add voc pharm drug', 54, 'add_vocpharmdrug'),
(214, 'Can change voc pharm drug', 54, 'change_vocpharmdrug'),
(215, 'Can delete voc pharm drug', 54, 'delete_vocpharmdrug'),
(216, 'Can view voc pharm drug', 54, 'view_vocpharmdrug'),
(217, 'Can add voc pregnancy outcome', 55, 'add_vocpregnancyoutcome'),
(218, 'Can change voc pregnancy outcome', 55, 'change_vocpregnancyoutcome'),
(219, 'Can delete voc pregnancy outcome', 55, 'delete_vocpregnancyoutcome'),
(220, 'Can view voc pregnancy outcome', 55, 'view_vocpregnancyoutcome'),
(221, 'Can add voc questionnaire', 56, 'add_vocquestionnaire'),
(222, 'Can change voc questionnaire', 56, 'change_vocquestionnaire'),
(223, 'Can delete voc questionnaire', 56, 'delete_vocquestionnaire'),
(224, 'Can view voc questionnaire', 56, 'view_vocquestionnaire'),
(225, 'Can add voc relative degree', 57, 'add_vocrelativedegree'),
(226, 'Can change voc relative degree', 57, 'change_vocrelativedegree'),
(227, 'Can delete voc relative degree', 57, 'delete_vocrelativedegree'),
(228, 'Can view voc relative degree', 57, 'view_vocrelativedegree'),
(229, 'Can add voc sex', 58, 'add_vocsex'),
(230, 'Can change voc sex', 58, 'change_vocsex'),
(231, 'Can delete voc sex', 58, 'delete_vocsex'),
(232, 'Can view voc sex', 58, 'view_vocsex'),
(233, 'Can add voc smoking status', 59, 'add_vocsmokingstatus'),
(234, 'Can change voc smoking status', 59, 'change_vocsmokingstatus'),
(235, 'Can delete voc smoking status', 59, 'delete_vocsmokingstatus'),
(236, 'Can view voc smoking status', 59, 'view_vocsmokingstatus'),
(237, 'Can add voc specialist', 60, 'add_vocspecialist'),
(238, 'Can change voc specialist', 60, 'change_vocspecialist'),
(239, 'Can delete voc specialist', 60, 'delete_vocspecialist'),
(240, 'Can view voc specialist', 60, 'view_vocspecialist'),
(241, 'Can add voc symptom sign', 61, 'add_vocsymptomsign'),
(242, 'Can change voc symptom sign', 61, 'change_vocsymptomsign'),
(243, 'Can delete voc symptom sign', 61, 'delete_vocsymptomsign'),
(244, 'Can view voc symptom sign', 61, 'view_vocsymptomsign'),
(245, 'Can add voc unit', 62, 'add_vocunit'),
(246, 'Can change voc unit', 62, 'change_vocunit'),
(247, 'Can delete voc unit', 62, 'delete_vocunit'),
(248, 'Can view voc unit', 62, 'view_vocunit'),
(249, 'Can add voc visit status', 63, 'add_vocvisitstatus'),
(250, 'Can change voc visit status', 63, 'change_vocvisitstatus'),
(251, 'Can delete voc visit status', 63, 'delete_vocvisitstatus'),
(252, 'Can view voc visit status', 63, 'view_vocvisitstatus'),
(253, 'Can add voc visit type', 64, 'add_vocvisittype'),
(254, 'Can change voc visit type', 64, 'change_vocvisittype'),
(255, 'Can delete voc visit type', 64, 'delete_vocvisittype'),
(256, 'Can view voc visit type', 64, 'view_vocvisittype'),
(257, 'Can add log entry', 65, 'add_logentry'),
(258, 'Can change log entry', 65, 'change_logentry'),
(259, 'Can delete log entry', 65, 'delete_logentry'),
(260, 'Can view log entry', 65, 'view_logentry'),
(261, 'Can add permission', 66, 'add_permission'),
(262, 'Can change permission', 66, 'change_permission'),
(263, 'Can delete permission', 66, 'delete_permission'),
(264, 'Can view permission', 66, 'view_permission'),
(265, 'Can add group', 67, 'add_group'),
(266, 'Can change group', 67, 'change_group'),
(267, 'Can delete group', 67, 'delete_group'),
(268, 'Can view group', 67, 'view_group'),
(269, 'Can add user', 68, 'add_user'),
(270, 'Can change user', 68, 'change_user'),
(271, 'Can delete user', 68, 'delete_user'),
(272, 'Can view user', 68, 'view_user'),
(273, 'Can add content type', 69, 'add_contenttype'),
(274, 'Can change content type', 69, 'change_contenttype'),
(275, 'Can delete content type', 69, 'delete_contenttype'),
(276, 'Can view content type', 69, 'view_contenttype'),
(277, 'Can add session', 70, 'add_session'),
(278, 'Can change session', 70, 'change_session'),
(279, 'Can delete session', 70, 'delete_session'),
(280, 'Can view session', 70, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$W0YZqzgJW82N$9fw6L/YQrpp/+tQZQKJ8ShFmHygJBranbPoDy/EWj1w=', '2019-09-15 07:02:55.104389', 1, 'admin', '', '', 'ra9havsh@gmail.com', 1, 1, '2019-09-15 05:48:40.611482');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cohort`
--

CREATE TABLE `cohort` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `PARAMETER` varchar(25) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cohort`
--

INSERT INTO `cohort` (`ID`, `PARAMETER`, `VALUE`) VALUES
(1, 'Biopsy', 'Biopsy'),
(2, 'Diagnosis', 'Diagnosis'),
(3, 'Ethnicity', 'Ethnicity'),
(4, 'Gender', 'Gender'),
(5, 'Laboratory-Test', 'Laboratory Examination / Test'),
(6, 'Medication', 'Medication'),
(7, 'Person', 'Person'),
(8, 'Symptom-or-Sign', 'Symptom / Sign'),
(9, 'Tobacco-Consumption', 'Tobacco Consumption Data'),
(10, 'ANA-PAT-01', 'Nuclear Speckled'),
(11, 'ANA-PAT-02', 'Nuclear Homogeneous'),
(12, 'ANA-PAT-03', 'Nucleolar'),
(13, 'ANA-PAT-04', 'Anticentromere'),
(14, 'ANA-PAT-05', 'Cytoplasmic Antimitochondrial'),
(15, 'ANA-PAT-07', 'Cytoplasmic Other'),
(16, 'ASSESS-20', 'Abnormal'),
(17, 'ASSESS-22', 'Above Upper Normal Limit (UNL)'),
(18, 'BIOPSY-11', 'Germinal Centers [check]'),
(19, 'BIOPSY-14', 'Fibrosis / AdiposeTissue / Atrophy [check]'),
(20, 'BIOPSY-21', 'Greenspan Focus Score'),
(21, 'BLOOD-120', 'Leukocytes [#/volume]'),
(22, 'BLOOD-150', 'Platelets (aka Thrombocytes)  [#/volume]'),
(23, 'BLOOD-212', 'Creatinine [Mass/volume]'),
(24, 'BLOOD-221', 'Alkaline phosphatase (ALP)'),
(25, 'BLOOD-222', 'Alanine aminotransferase (ALT)'),
(26, 'BLOOD-223', 'Aspartate aminotransferase (AST)'),
(27, 'BLOOD-224', 'Gamma glutamyl transferase (?-GT)'),
(28, 'BLOOD-225', 'Lactate dehydrogenase (LDH)'),
(29, 'BLOOD-311', 'Cryoglobulins [presence]'),
(30, 'BLOOD-511', 'Rheumatoid Factor (RF) [Units/volume]'),
(31, 'BLOOD-521', 'Antinuclear Antibodies (ANA) [presence]'),
(32, 'BLOOD-522', 'Antinuclear Antibodies (ANA) titer'),
(33, 'BLOOD-523', 'Antinuclear Antibodies (ANA) pattern [term]'),
(34, 'BLOOD-530', 'Anti-Ro/SSA [presence]'),
(35, 'BLOOD-531', 'Anti-Ro52/SSA [presence]'),
(36, 'BLOOD-532', 'Anti-Ro60/SSA [presence]'),
(37, 'BLOOD-540', 'Anti-La/SSB [presence]'),
(38, 'BLOOD-551', 'Anti-CCP antibodies [Presence]'),
(39, 'BLOOD-552', 'Anti-dsDNA [Presence]'),
(40, 'BLOOD-553', 'Anti-Smith (Anti-Sm) antibodies [Presence]'),
(41, 'BLOOD-554', 'Anti-RNP antibodies [Presence]'),
(42, 'BLOOD-555', 'Anti-Scl-70 antibodies [Presence]'),
(43, 'BLOOD-556', 'Anti-synthetase antibodies (any) [Presence]'),
(44, 'BLOOD-558', 'Anti-cardiolipin (ACLA) IgG [Presence]'),
(45, 'BLOOD-561', 'Anti-beta 2 glycoprotein IgG [Presence]'),
(46, 'BLOOD-566', 'Anti-thyroglobulin (anti-Tg) antibody [Presence]'),
(47, 'BLOOD-567', 'Anti-thyroperoxidase (anti-TPO) antibodies [Presence]'),
(48, 'BLOOD-578', 'Anti-centromere (any quantitative test)'),
(49, 'BLOOD-581', 'Anti-mitochondrial M2 (any quantitative test)'),
(50, 'BLOOD-582', 'Other autoantibodies [Presence]'),
(51, 'BLOOD-610', 'C3 levels (Serum complement) [Mass/volume]'),
(52, 'BLOOD-620', 'C4 levels (Serum complement) [Mass/volume]'),
(53, 'BLOOD-810', 'C reactive protein [Mass/volume]'),
(54, 'BLOOD-820', 'Anti-Hepatitis C Virus (HCV) antibody [presence]'),
(55, 'BLOOD-830', 'Hepatitis B surface antigen (HBsAg) [Presence]'),
(56, 'BLOOD-870', 'HIV I and II Antibodies [Presence]'),
(57, 'BLOOD-910', 'Beta-2 Microglobulin [Mass/volume] (in Serum)'),
(58, 'CHEM-10000', 'Glucocorticoids'),
(59, 'CHEM-21010', 'Methotrexate'),
(60, 'CHEM-21020', 'Leflunomide'),
(61, 'CHEM-21030', 'Azathioprine'),
(62, 'CHEM-21040', 'Hydroxychloroquine'),
(63, 'CHEM-21060', 'Mycophenolate'),
(64, 'CHEM-21070', 'Cyclosporine'),
(65, 'CHEM-21110', 'Cyclophosphamide'),
(66, 'CHEM-22100', 'Rituximab'),
(67, 'CHEM-22200', 'Belimumab'),
(68, 'CHEM-22902', 'Anti-TNF (any)'),
(69, 'CHEM-22906', 'IL-6 inhibitor'),
(70, 'CHEM-22907', 'Anakinra'),
(71, 'CHEM-43000', 'Oral Pilocarpine'),
(72, 'CHEM-51000', 'Ursodeoxycholic Acid'),
(73, 'COND-011000', 'Coronary Artery Disease'),
(74, 'COND-021000', 'Liver Disease'),
(75, 'COND-021100', 'Autoimmune Hepatitis'),
(76, 'COND-021200', 'Primary Biliary Cholangitis'),
(77, 'COND-031000', 'Autoimmune Thyroid Disease'),
(78, 'COND-042000', 'Annular Rash'),
(79, 'COND-043000', 'Erythema multiform'),
(80, 'COND-045000', 'Palpable Purpura'),
(81, 'COND-046000', 'Vasculitic Ulcer'),
(82, 'COND-047000', 'Photosensitivity'),
(83, 'COND-050000', 'Lymphatic System Disease'),
(84, 'COND-052200', 'Lymphoma'),
(85, 'COND-052511', 'B-cell Mucosa-associated Lymphoid Tissue (MALT) Lymphoma'),
(86, 'COND-052512', 'B-cell Nodal Marginal Zone Lymphoma'),
(87, 'COND-052522', 'Diffuse Large B-cell Lymphoma'),
(88, 'COND-061000', 'Idiopathic Inflammatory Myopathy'),
(89, 'COND-071000', 'Central Nervous System Disease'),
(90, 'COND-072000', 'Peripheral Nervous System Disease'),
(91, 'COND-081120', 'Kidney Biopsy Finding'),
(92, 'COND-081121', 'Membranoproliferative Glomerulonephritis'),
(93, 'COND-081122', 'Mesangioproliferative Glomerulonephritis'),
(94, 'COND-081123', 'Membranous Glomerulonephritis'),
(95, 'COND-081124', 'Other Glomerulonephritis'),
(96, 'COND-081200', 'Tubulointerstitial Nephritis'),
(97, 'COND-081210', 'Distal Renal Tubular Acidosis'),
(98, 'COND-082100', 'Interstitial Cystitis'),
(99, 'COND-091000', 'Pulmonary Disease'),
(100, 'COND-091100', 'Small Airway Disease'),
(101, 'COND-091200', 'Nonspecific Interstitial Pneumonia'),
(102, 'COND-091300', 'Usual Interstitial Pneumonia'),
(103, 'COND-091400', 'Lymphocytic Interstitial Pneumonia'),
(104, 'COND-091500', 'Cryptogenic Organizing Pneumonia'),
(105, 'COND-101100', 'Non erosive Arthritis'),
(106, 'COND-101200', 'Erosive Arthritis'),
(107, 'COND-134000', 'Oral Ulcers'),
(108, 'COND-140000', 'Cancer'),
(109, 'ETHN-01', 'Latin'),
(110, 'ETHN-02', 'American Indian or Alaska Native'),
(111, 'ETHN-03', 'Asian'),
(112, 'ETHN-04', 'Black or African American'),
(113, 'ETHN-05', 'Native Hawaiian or Other Pacific Islander'),
(114, 'ETHN-06', 'Caucasian'),
(115, 'OCULAR-01', 'Schirmer''s Test (Worst Eye) Value'),
(116, 'OCULAR-02', 'Rose Bengal Staining / Van Bijsterveld Score'),
(117, 'ORAL-11', 'Unstimulated saliva flow Value'),
(118, 'ORAL-12', 'Stimulated saliva flow (with any stimulus)'),
(119, 'ORGAN-04', 'Stomach'),
(120, 'SAL-BIO-11', 'Parotid Gland Biopsy'),
(121, 'SAL-BIO-12', 'Submandibular Gland Biopsy'),
(122, 'SAL-BIO-20', 'Minor Salivary Gland Biopsy'),
(123, 'SAL-BIO-21', 'Labial Gland (lip) Biopsy'),
(124, 'SEX-01', 'Male'),
(125, 'SEX-02', 'Female'),
(126, 'SMOK-STAT-01', 'Active '),
(127, 'SMOK-STAT-02', 'Ex-Smoker '),
(128, 'SMOK-STAT-03', 'Never Smoker'),
(129, 'SYMPT-010', 'Parotid or Submandibular swelling'),
(130, 'SYMPT-020', 'Dry Mouth'),
(131, 'SYMPT-030', 'Dry Eyes'),
(132, 'SYMPT-120', 'Dry Cough'),
(133, 'SYMPT-140', 'Fever'),
(134, 'SYMPT-160', 'Fatigue'),
(135, 'SYMPT-170', 'Weight Loss > 5% of Body Weight'),
(136, 'SYMPT-180', 'Raynaud''s Phenomenon'),
(137, 'URINE-110', 'Urine pH'),
(138, 'URINE-130', 'Urine Specific Gravity'),
(139, 'URINE-140', 'Blood [Presence] in Urine'),
(140, 'URINE-200', 'Proteins [Mass/time] (in 24 hour Urine)'),
(141, 'ASSESS-21', 'Below Down Normal Limit (DNL)'),
(142, 'BIOPSY-22', 'Chisholm-Mason Score'),
(143, 'BLOOD-110', 'Hemoglobin [Mass/volume]'),
(144, 'BLOOD-323', 'Immunoglobulin G (IgG) [Mass/volume]'),
(145, 'BLOOD-330', 'Monoclonal M-component [presence] (in Serum)'),
(146, 'COND-041000', 'Maculopapular Rash'),
(147, 'COND-052300', 'Hodgkin''s Lymphoma'),
(148, 'COND-052523', 'Mantle B-cell Lymphoma'),
(149, 'COND-052590', 'Multiple Myeloma'),
(150, 'COND-052591', 'Other mature B-cell neoplasms'),
(151, 'COND-060000', 'Muscular System Disease'),
(152, 'COND-071600', 'Cerebral Stroke'),
(153, 'COND-072300', 'Painful Sensory Neuropathy'),
(154, 'COND-101000', 'Arthritis'),
(155, 'COND-111000', 'Anemia'),
(156, 'COND-112000', 'Leukopenia'),
(157, 'COND-114000', 'Lymphopenia'),
(158, 'COND-115000', 'Thrombocytopenia'),
(159, 'ORGAN-01', 'Salivary Gland'),
(160, 'ORGAN-03', 'Lung'),
(161, 'ORGAN-05', 'Liver'),
(162, 'ORGAN-06', 'Spleen'),
(163, 'ORGAN-07', 'Lymph Nodes'),
(164, 'ORGAN-08', 'Bone Marrow'),
(165, 'ORGAN-91', 'Other MALT site'),
(166, 'ORGAN-92', 'Other non-MALT site'),
(167, 'BLOOD-130', 'Neutrophils [#/volume]'),
(168, 'BLOOD-140', 'Lymphocytes [#/volume]'),
(169, 'BLOOD-321', 'Immunoglobulins [Mass/volume] (in serum)'),
(170, 'BLOOD-322', 'Immunoglobulin A (IgA) [Mass/volume]'),
(171, 'BLOOD-324', 'Immunoglobulin G4 (IgG4)'),
(172, 'BLOOD-325', 'Immunoglobulin M (IgM) [Mass/volume]'),
(173, 'BLOOD-559', 'Anti-cardiolipin (ACLA) IgM [Presence]'),
(174, 'BLOOD-569', 'Anti-gastric mucosa antibodies [Presence]'),
(175, 'BLOOD-574', 'Anti-Smooth Muscle Antibody (ASMA) [Presence]'),
(176, 'BLOOD-579', 'Anti-mitochondrial (any quantitative test)'),
(177, 'CACI-07', 'Diabetes with end organ damage'),
(178, 'CHEM-11000', 'Prednisone'),
(179, 'CHEM-21120', 'Intravenous Immunoglobulin'),
(180, 'CHEM-22300', 'Abatacept'),
(181, 'CHEM-41000', 'Natural Tears'),
(182, 'CHEM-42000', 'Oral / Eye Moisturizing Agent'),
(183, 'CHEM-46000', 'Cyclosporine Eye Drops'),
(184, 'CHEM-50700', 'Thyroid Substitution Treatment'),
(185, 'COND-010000', 'Circulatory System Disease'),
(186, 'COND-023000', 'Autoimmune Gastritis'),
(187, 'COND-040000', 'Cutaneous Disease'),
(188, 'COND-052000', 'Generalized Lymphadenopathy'),
(189, 'COND-070000', 'Nervous System Disease'),
(190, 'COND-081000', 'Renal Disease'),
(191, 'COND-081100', 'Glomerulopathy'),
(192, 'COND-082210', 'Dyspareunia'),
(193, 'COND-090000', 'Respiratory System Disease'),
(194, 'COND-102000', 'Fibromyalgia'),
(195, 'COND-111100', 'Hemolytic Anemia'),
(196, 'COND-150000', 'Auto-immune Disease'),
(197, 'COND-150500', 'Idiopathic Inflammatory Myopathy'),
(198, 'COND-150700', 'Antiphospholipid syndrome'),
(199, 'COND-150900', 'Autoimmune thyreopathy'),
(200, 'COND-152000', 'Psoriasis'),
(201, 'COND-152200', 'Inflammatory bowel disease'),
(202, 'OCULAR-03', 'Ocular Staining Score / Fluorescein Lissamine Green'),
(203, 'ORAL-10', 'Saliva Flow''s test'),
(204, 'SYMPT-011', 'Parotid Gland swelling'),
(205, 'SYMPT-130', 'Dry Skin'),
(206, 'Questionnaire-Score', 'Questionnaire Score'),
(207, 'BIOPSY-12', 'Myoepithelial sialadenitis [check]'),
(208, 'COND-011100', 'Myocardial Infarction'),
(209, 'COND-022000', 'Celiac Disease'),
(210, 'COND-151100', 'Autoimmune hepatitis'),
(211, 'QUEST-010', 'EULAR Sjogren''s syndrome Disease Activity Index (ESSDAI) score'),
(212, 'QUEST-020', 'EULAR Sjogren''s Syndrome Patient Reported Index (ESSPRI) score'),
(213, 'SYMPT-012', 'Submandibular salivary gland swelling'),
(214, 'BIOPSY-13', 'Lymphoma [check]'),
(215, 'COND-121000', 'Cryoglobulinemic vasculitis');

-- --------------------------------------------------------

--
-- Table structure for table `cond_diagnosis`
--

CREATE TABLE `cond_diagnosis` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `CONDITION_ID` smallint(5) UNSIGNED NOT NULL,
  `STAGE_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `PERFORMANCE_STATUS_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `DIAGNOSIS_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cond_diagnosis`
--

INSERT INTO `cond_diagnosis` (`ID`, `PATIENT_ID`, `CONDITION_ID`, `STAGE_ID`, `PERFORMANCE_STATUS_ID`, `DIAGNOSIS_DATE_ID`, `VISIT_ID`) VALUES
(9, 13, 107, NULL, NULL, 22, NULL),
(10, 13, 110, NULL, NULL, 22, NULL),
(11, 13, 19, NULL, NULL, 22, NULL),
(12, 13, 14, NULL, NULL, 22, NULL),
(13, 14, 65, NULL, NULL, 27, NULL),
(14, 15, 19, NULL, NULL, 30, NULL),
(15, 16, 107, NULL, NULL, 34, NULL),
(16, 16, 100, NULL, NULL, 34, NULL),
(17, 17, 25, NULL, NULL, NULL, NULL),
(18, 17, 14, NULL, NULL, NULL, NULL),
(19, 17, 40, NULL, NULL, 24, NULL),
(20, 17, 115, NULL, NULL, NULL, NULL),
(21, 17, 118, NULL, NULL, NULL, NULL),
(22, 17, 120, NULL, NULL, NULL, NULL),
(23, 17, 121, NULL, NULL, NULL, NULL),
(24, 17, 106, NULL, NULL, NULL, NULL),
(25, 17, 22, NULL, NULL, NULL, NULL),
(26, 17, 54, NULL, NULL, NULL, NULL),
(27, 17, 99, NULL, NULL, NULL, NULL),
(28, 17, 85, NULL, NULL, NULL, NULL),
(29, 18, 118, NULL, NULL, NULL, NULL),
(30, 18, 14, NULL, NULL, NULL, NULL),
(31, 18, 115, NULL, NULL, NULL, NULL),
(32, 18, 121, NULL, NULL, NULL, NULL),
(33, 18, 106, NULL, NULL, NULL, NULL),
(34, 18, 22, NULL, NULL, NULL, NULL),
(35, 18, 25, NULL, NULL, NULL, NULL),
(36, 18, 54, NULL, NULL, NULL, NULL),
(37, 18, 99, NULL, NULL, NULL, NULL),
(38, 18, 85, NULL, NULL, NULL, NULL),
(39, 19, 118, NULL, NULL, NULL, NULL),
(40, 19, 25, NULL, NULL, NULL, NULL),
(41, 19, 36, NULL, NULL, 41, NULL),
(42, 12, 25, NULL, NULL, 20, NULL),
(43, 12, 107, NULL, NULL, 20, NULL),
(44, 12, 110, NULL, NULL, 20, NULL),
(45, 12, 55, NULL, NULL, 20, NULL),
(46, 12, 24, NULL, NULL, 20, NULL),
(47, 12, 19, NULL, NULL, 20, NULL),
(48, 12, 20, NULL, NULL, 20, NULL),
(49, 12, 22, NULL, NULL, 20, NULL),
(50, 12, 23, NULL, NULL, 20, NULL),
(51, 12, 128, NULL, NULL, 20, NULL),
(52, 12, 100, NULL, NULL, 20, NULL),
(53, 12, 99, NULL, NULL, 20, NULL),
(54, 12, 8, NULL, NULL, 20, NULL),
(55, 12, 9, NULL, NULL, 20, NULL),
(56, 12, 10, NULL, NULL, 20, NULL),
(57, 12, 93, NULL, NULL, 20, NULL),
(58, 12, 86, NULL, NULL, 20, NULL),
(59, 12, 79, NULL, NULL, 20, NULL),
(60, 12, 78, NULL, NULL, NULL, NULL),
(61, 12, 65, NULL, NULL, 20, NULL),
(62, 12, 58, NULL, NULL, 20, NULL),
(63, 12, 31, NULL, NULL, NULL, NULL),
(64, 12, 14, NULL, NULL, 20, NULL),
(65, 12, 2, NULL, NULL, 20, NULL),
(66, 12, 131, NULL, NULL, NULL, NULL),
(67, 13, 25, NULL, NULL, 22, NULL),
(68, 13, 55, NULL, NULL, 22, NULL),
(69, 13, 24, NULL, NULL, 22, NULL),
(70, 13, 20, NULL, NULL, 22, NULL),
(71, 13, 22, NULL, NULL, 22, NULL),
(72, 13, 23, NULL, NULL, 22, NULL),
(73, 13, 128, NULL, NULL, 22, NULL),
(74, 13, 100, NULL, NULL, 22, NULL),
(75, 13, 99, NULL, NULL, 22, NULL),
(76, 13, 8, NULL, NULL, 22, NULL),
(77, 13, 9, NULL, NULL, 22, NULL),
(78, 13, 10, NULL, NULL, 22, NULL),
(79, 13, 93, NULL, NULL, 22, NULL),
(80, 13, 86, NULL, NULL, 22, NULL),
(81, 13, 79, NULL, NULL, 22, NULL),
(82, 13, 78, NULL, NULL, NULL, NULL),
(83, 13, 65, NULL, NULL, 22, NULL),
(84, 13, 58, NULL, NULL, 22, NULL),
(85, 13, 31, NULL, NULL, NULL, NULL),
(86, 13, 2, NULL, NULL, 24, NULL),
(87, 13, 131, NULL, NULL, NULL, NULL),
(88, 14, 25, NULL, NULL, 27, NULL),
(89, 14, 107, NULL, NULL, 27, NULL),
(90, 14, 110, NULL, NULL, 27, NULL),
(91, 14, 55, NULL, NULL, 27, NULL),
(92, 14, 24, NULL, NULL, 27, NULL),
(93, 14, 19, NULL, NULL, 27, NULL),
(94, 14, 20, NULL, NULL, 27, NULL),
(95, 14, 22, NULL, NULL, 27, NULL),
(96, 14, 23, NULL, NULL, 27, NULL),
(97, 14, 128, NULL, NULL, 27, NULL),
(98, 14, 100, NULL, NULL, 27, NULL),
(99, 14, 99, NULL, NULL, 27, NULL),
(100, 14, 8, NULL, NULL, 27, NULL),
(101, 14, 9, NULL, NULL, 27, NULL),
(102, 14, 10, NULL, NULL, 27, NULL),
(103, 14, 93, NULL, NULL, 27, NULL),
(104, 14, 86, NULL, NULL, 27, NULL),
(105, 14, 79, NULL, NULL, 27, NULL),
(106, 14, 78, NULL, NULL, NULL, NULL),
(107, 14, 58, NULL, NULL, 27, NULL),
(108, 14, 31, NULL, NULL, NULL, NULL),
(109, 14, 14, NULL, NULL, 27, NULL),
(110, 14, 2, NULL, NULL, 27, NULL),
(111, 14, 131, NULL, NULL, NULL, NULL),
(112, 15, 25, NULL, NULL, 30, NULL),
(113, 15, 107, NULL, NULL, 30, NULL),
(114, 15, 110, NULL, NULL, 30, NULL),
(115, 15, 55, NULL, NULL, 30, NULL),
(116, 15, 24, NULL, NULL, 30, NULL),
(117, 15, 20, NULL, NULL, 30, NULL),
(118, 15, 22, NULL, NULL, 30, NULL),
(119, 15, 23, NULL, NULL, 30, NULL),
(120, 15, 128, NULL, NULL, 30, NULL),
(121, 15, 100, NULL, NULL, 30, NULL),
(122, 15, 99, NULL, NULL, 30, NULL),
(123, 15, 8, NULL, NULL, 30, NULL),
(124, 15, 9, NULL, NULL, 30, NULL),
(125, 15, 10, NULL, NULL, 30, NULL),
(126, 15, 93, NULL, NULL, 30, NULL),
(127, 15, 86, NULL, NULL, 30, NULL),
(128, 15, 79, NULL, NULL, 30, NULL),
(129, 15, 78, NULL, NULL, NULL, NULL),
(130, 15, 65, NULL, NULL, 30, NULL),
(131, 15, 58, NULL, NULL, 30, NULL),
(132, 15, 31, NULL, NULL, NULL, NULL),
(133, 15, 14, NULL, NULL, 30, NULL),
(134, 15, 2, NULL, NULL, 30, NULL),
(135, 15, 131, NULL, NULL, NULL, NULL),
(136, 16, 25, NULL, NULL, 34, NULL),
(137, 16, 110, NULL, NULL, 34, NULL),
(138, 16, 55, NULL, NULL, 34, NULL),
(139, 16, 24, NULL, NULL, 34, NULL),
(140, 16, 19, NULL, NULL, 34, NULL),
(141, 16, 20, NULL, NULL, 34, NULL),
(142, 16, 22, NULL, NULL, 34, NULL),
(143, 16, 23, NULL, NULL, 34, NULL),
(144, 16, 128, NULL, NULL, 34, NULL),
(145, 16, 99, NULL, NULL, 34, NULL),
(146, 16, 8, NULL, NULL, 34, NULL),
(147, 16, 9, NULL, NULL, 34, NULL),
(148, 16, 10, NULL, NULL, 34, NULL),
(149, 16, 93, NULL, NULL, 34, NULL),
(150, 16, 86, NULL, NULL, 34, NULL),
(151, 16, 79, NULL, NULL, 34, NULL),
(152, 16, 78, NULL, NULL, NULL, NULL),
(153, 16, 65, NULL, NULL, 34, NULL),
(154, 16, 58, NULL, NULL, 34, NULL),
(155, 16, 31, NULL, NULL, NULL, NULL),
(156, 16, 14, NULL, NULL, 34, NULL),
(157, 16, 2, NULL, NULL, 34, NULL),
(158, 16, 131, NULL, NULL, NULL, NULL),
(159, 19, 115, NULL, NULL, NULL, NULL),
(160, 19, 120, NULL, NULL, NULL, NULL),
(161, 19, 121, NULL, NULL, NULL, NULL),
(162, 19, 106, NULL, NULL, NULL, NULL),
(163, 19, 22, NULL, NULL, NULL, NULL),
(164, 19, 14, NULL, NULL, NULL, NULL),
(165, 19, 54, NULL, NULL, NULL, NULL),
(166, 19, 99, NULL, NULL, NULL, NULL),
(167, 19, 85, NULL, NULL, NULL, NULL),
(168, 20, 118, NULL, NULL, NULL, NULL),
(169, 20, 115, NULL, NULL, NULL, NULL),
(170, 20, 121, NULL, NULL, NULL, NULL),
(171, 20, 106, NULL, NULL, NULL, NULL),
(172, 20, 22, NULL, NULL, NULL, NULL),
(173, 20, 25, NULL, NULL, NULL, NULL),
(174, 20, 14, NULL, NULL, NULL, NULL),
(175, 20, 54, NULL, NULL, NULL, NULL),
(176, 20, 99, NULL, NULL, NULL, NULL),
(177, 20, 85, NULL, NULL, NULL, NULL),
(178, 21, 115, NULL, NULL, NULL, NULL),
(179, 21, 118, NULL, NULL, NULL, NULL),
(180, 21, 121, NULL, NULL, NULL, NULL),
(181, 21, 106, NULL, NULL, NULL, NULL),
(182, 21, 22, NULL, NULL, NULL, NULL),
(183, 21, 25, NULL, NULL, NULL, NULL),
(184, 21, 14, NULL, NULL, NULL, NULL),
(185, 21, 54, NULL, NULL, NULL, NULL),
(186, 21, 99, NULL, NULL, NULL, NULL),
(187, 21, 85, NULL, NULL, NULL, NULL),
(188, 27, 25, NULL, NULL, NULL, NULL),
(189, 27, 106, NULL, NULL, 54, NULL),
(190, 27, 36, NULL, NULL, 22, NULL),
(191, 27, 95, NULL, NULL, NULL, NULL),
(192, 27, 106, NULL, NULL, NULL, NULL),
(193, 27, 22, NULL, NULL, NULL, NULL),
(194, 27, 23, NULL, NULL, NULL, NULL),
(195, 27, 17, NULL, NULL, NULL, NULL),
(196, 27, 54, NULL, NULL, NULL, NULL),
(197, 27, 65, NULL, NULL, NULL, NULL),
(198, 27, 58, NULL, NULL, NULL, NULL),
(199, 27, 29, NULL, NULL, NULL, NULL),
(200, 27, 8, NULL, NULL, NULL, NULL),
(201, 27, 9, NULL, NULL, NULL, NULL),
(202, 27, 10, NULL, NULL, NULL, NULL),
(203, 27, 73, NULL, NULL, NULL, NULL),
(204, 27, 74, NULL, NULL, NULL, NULL),
(205, 27, 31, NULL, NULL, NULL, NULL),
(206, 28, 73, NULL, NULL, 49, NULL),
(207, 28, 137, NULL, NULL, NULL, NULL),
(208, 28, 10, NULL, NULL, NULL, NULL),
(209, 28, 36, NULL, NULL, 56, NULL),
(210, 28, 25, NULL, NULL, NULL, NULL),
(211, 28, 95, NULL, NULL, NULL, NULL),
(212, 28, 106, NULL, NULL, NULL, NULL),
(213, 28, 22, NULL, NULL, NULL, NULL),
(214, 28, 23, NULL, NULL, NULL, NULL),
(215, 28, 17, NULL, NULL, NULL, NULL),
(216, 28, 54, NULL, NULL, NULL, NULL),
(217, 28, 65, NULL, NULL, NULL, NULL),
(218, 28, 58, NULL, NULL, NULL, NULL),
(219, 28, 29, NULL, NULL, NULL, NULL),
(220, 28, 8, NULL, NULL, NULL, NULL),
(221, 28, 9, NULL, NULL, NULL, NULL),
(222, 28, 73, NULL, NULL, NULL, NULL),
(223, 28, 85, NULL, NULL, NULL, NULL),
(224, 28, 74, NULL, NULL, NULL, NULL),
(225, 28, 31, NULL, NULL, NULL, NULL),
(226, 29, 25, NULL, NULL, 41, NULL),
(227, 29, 137, NULL, NULL, 36, NULL),
(228, 29, 106, NULL, NULL, 49, NULL),
(229, 29, 22, NULL, NULL, 41, NULL),
(230, 29, 29, NULL, NULL, 41, NULL),
(231, 29, 85, NULL, NULL, NULL, NULL),
(232, 29, 36, NULL, NULL, 20, NULL),
(233, 29, 95, NULL, NULL, NULL, NULL),
(234, 29, 106, NULL, NULL, NULL, NULL),
(235, 29, 23, NULL, NULL, NULL, NULL),
(236, 29, 17, NULL, NULL, NULL, NULL),
(237, 29, 54, NULL, NULL, NULL, NULL),
(238, 29, 65, NULL, NULL, NULL, NULL),
(239, 29, 58, NULL, NULL, NULL, NULL),
(240, 29, 8, NULL, NULL, NULL, NULL),
(241, 29, 9, NULL, NULL, NULL, NULL),
(242, 29, 10, NULL, NULL, NULL, NULL),
(243, 29, 73, NULL, NULL, NULL, NULL),
(244, 29, 74, NULL, NULL, NULL, NULL),
(245, 29, 31, NULL, NULL, NULL, NULL),
(246, 30, 36, NULL, NULL, 24, NULL),
(247, 30, 137, NULL, NULL, NULL, NULL),
(248, 30, 106, NULL, NULL, 35, NULL),
(249, 30, 31, NULL, NULL, 24, NULL),
(250, 30, 25, NULL, NULL, NULL, NULL),
(251, 30, 95, NULL, NULL, NULL, NULL),
(252, 30, 22, NULL, NULL, NULL, NULL),
(253, 30, 23, NULL, NULL, NULL, NULL),
(254, 30, 17, NULL, NULL, NULL, NULL),
(255, 30, 54, NULL, NULL, NULL, NULL),
(256, 30, 65, NULL, NULL, NULL, NULL),
(257, 30, 58, NULL, NULL, NULL, NULL),
(258, 30, 29, NULL, NULL, NULL, NULL),
(259, 30, 8, NULL, NULL, NULL, NULL),
(260, 30, 9, NULL, NULL, NULL, NULL),
(261, 30, 10, NULL, NULL, NULL, NULL),
(262, 30, 73, NULL, NULL, NULL, NULL),
(263, 30, 85, NULL, NULL, NULL, NULL),
(264, 30, 74, NULL, NULL, NULL, NULL),
(265, 31, 106, NULL, NULL, 20, NULL),
(266, 31, 73, NULL, NULL, 56, NULL),
(267, 31, 36, NULL, NULL, 56, NULL),
(268, 31, 25, NULL, NULL, NULL, NULL),
(269, 31, 95, NULL, NULL, NULL, NULL),
(270, 31, 106, NULL, NULL, NULL, NULL),
(271, 31, 22, NULL, NULL, NULL, NULL),
(272, 31, 23, NULL, NULL, NULL, NULL),
(273, 31, 17, NULL, NULL, NULL, NULL),
(274, 31, 54, NULL, NULL, NULL, NULL),
(275, 31, 65, NULL, NULL, NULL, NULL),
(276, 31, 58, NULL, NULL, NULL, NULL),
(277, 31, 29, NULL, NULL, NULL, NULL),
(278, 31, 8, NULL, NULL, NULL, NULL),
(279, 31, 9, NULL, NULL, NULL, NULL),
(280, 31, 10, NULL, NULL, NULL, NULL),
(281, 31, 85, NULL, NULL, NULL, NULL),
(282, 31, 74, NULL, NULL, NULL, NULL),
(283, 31, 31, NULL, NULL, NULL, NULL),
(284, 32, 14, NULL, NULL, NULL, NULL),
(285, 32, 118, NULL, NULL, 37, NULL),
(286, 32, 118, NULL, NULL, 60, NULL),
(287, 32, 106, NULL, NULL, 37, NULL),
(288, 32, 106, NULL, NULL, 60, NULL),
(289, 32, 22, NULL, NULL, 37, NULL),
(290, 32, 22, NULL, NULL, 60, NULL),
(291, 32, 57, NULL, NULL, 37, NULL),
(292, 32, 57, NULL, NULL, 60, NULL),
(293, 32, 54, NULL, NULL, 37, NULL),
(294, 32, 54, NULL, NULL, 60, NULL),
(295, 32, 143, NULL, NULL, 37, NULL),
(296, 32, 143, NULL, NULL, 60, NULL),
(297, 32, 73, NULL, NULL, 37, NULL),
(298, 32, 73, NULL, NULL, 60, NULL),
(299, 32, 99, NULL, NULL, 37, NULL),
(300, 32, 99, NULL, NULL, 60, NULL),
(301, 32, 10, NULL, NULL, NULL, NULL),
(302, 32, 11, NULL, NULL, NULL, NULL),
(303, 32, 113, NULL, NULL, NULL, NULL),
(304, 33, 118, NULL, NULL, 28, NULL),
(305, 33, 118, NULL, NULL, 62, NULL),
(306, 33, 106, NULL, NULL, 28, NULL),
(307, 33, 106, NULL, NULL, 62, NULL),
(308, 33, 22, NULL, NULL, 28, NULL),
(309, 33, 22, NULL, NULL, 62, NULL),
(310, 33, 57, NULL, NULL, 28, NULL),
(311, 33, 57, NULL, NULL, 62, NULL),
(312, 33, 54, NULL, NULL, 28, NULL),
(313, 33, 54, NULL, NULL, 62, NULL),
(314, 33, 143, NULL, NULL, 28, NULL),
(315, 33, 143, NULL, NULL, 62, NULL),
(316, 33, 73, NULL, NULL, 28, NULL),
(317, 33, 73, NULL, NULL, 62, NULL),
(318, 33, 99, NULL, NULL, 28, NULL),
(319, 33, 99, NULL, NULL, 62, NULL),
(320, 33, 10, NULL, NULL, NULL, NULL),
(321, 33, 11, NULL, NULL, NULL, NULL),
(322, 33, 14, NULL, NULL, NULL, NULL),
(323, 33, 113, NULL, NULL, NULL, NULL),
(324, 34, 22, NULL, NULL, 28, NULL),
(325, 34, 14, NULL, NULL, NULL, NULL),
(326, 34, 118, NULL, NULL, 28, NULL),
(327, 34, 118, NULL, NULL, 65, NULL),
(328, 34, 106, NULL, NULL, 28, NULL),
(329, 34, 106, NULL, NULL, 65, NULL),
(330, 34, 22, NULL, NULL, 65, NULL),
(331, 34, 57, NULL, NULL, 28, NULL),
(332, 34, 57, NULL, NULL, 65, NULL),
(333, 34, 54, NULL, NULL, 28, NULL),
(334, 34, 54, NULL, NULL, 65, NULL),
(335, 34, 143, NULL, NULL, 28, NULL),
(336, 34, 143, NULL, NULL, 65, NULL),
(337, 34, 73, NULL, NULL, 28, NULL),
(338, 34, 73, NULL, NULL, 65, NULL),
(339, 34, 99, NULL, NULL, 28, NULL),
(340, 34, 99, NULL, NULL, 65, NULL),
(341, 34, 10, NULL, NULL, NULL, NULL),
(342, 34, 11, NULL, NULL, NULL, NULL),
(343, 34, 113, NULL, NULL, NULL, NULL),
(344, 35, 113, NULL, NULL, NULL, NULL),
(345, 35, 118, NULL, NULL, 28, NULL),
(346, 35, 118, NULL, NULL, 68, NULL),
(347, 35, 106, NULL, NULL, 28, NULL),
(348, 35, 106, NULL, NULL, 68, NULL),
(349, 35, 22, NULL, NULL, 28, NULL),
(350, 35, 22, NULL, NULL, 68, NULL),
(351, 35, 57, NULL, NULL, 28, NULL),
(352, 35, 57, NULL, NULL, 68, NULL),
(353, 35, 54, NULL, NULL, 28, NULL),
(354, 35, 54, NULL, NULL, 68, NULL),
(355, 35, 143, NULL, NULL, 28, NULL),
(356, 35, 143, NULL, NULL, 68, NULL),
(357, 35, 73, NULL, NULL, 28, NULL),
(358, 35, 73, NULL, NULL, 68, NULL),
(359, 35, 99, NULL, NULL, 28, NULL),
(360, 35, 99, NULL, NULL, 68, NULL),
(361, 35, 10, NULL, NULL, NULL, NULL),
(362, 35, 11, NULL, NULL, NULL, NULL),
(363, 35, 14, NULL, NULL, NULL, NULL),
(364, 36, 106, NULL, NULL, 71, NULL),
(365, 36, 113, NULL, NULL, NULL, NULL),
(366, 36, 118, NULL, NULL, 31, NULL),
(367, 36, 118, NULL, NULL, 71, NULL),
(368, 36, 106, NULL, NULL, 31, NULL),
(369, 36, 22, NULL, NULL, 31, NULL),
(370, 36, 22, NULL, NULL, 71, NULL),
(371, 36, 57, NULL, NULL, 31, NULL),
(372, 36, 57, NULL, NULL, 71, NULL),
(373, 36, 54, NULL, NULL, 31, NULL),
(374, 36, 54, NULL, NULL, 71, NULL),
(375, 36, 143, NULL, NULL, 31, NULL),
(376, 36, 143, NULL, NULL, 71, NULL),
(377, 36, 73, NULL, NULL, 31, NULL),
(378, 36, 73, NULL, NULL, 71, NULL),
(379, 36, 99, NULL, NULL, 31, NULL),
(380, 36, 99, NULL, NULL, 71, NULL),
(381, 36, 10, NULL, NULL, NULL, NULL),
(382, 36, 11, NULL, NULL, NULL, NULL),
(383, 36, 14, NULL, NULL, NULL, NULL),
(384, 37, 123, NULL, NULL, NULL, NULL),
(385, 39, 123, NULL, NULL, NULL, NULL),
(386, 40, 123, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cond_diagnosis_organs`
--

CREATE TABLE `cond_diagnosis_organs` (
  `ID` int(10) UNSIGNED NOT NULL,
  `DIAGNOSIS_ID` int(10) UNSIGNED NOT NULL,
  `ORGAN_ID` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cond_diagnosis_organs`
--

INSERT INTO `cond_diagnosis_organs` (`ID`, `DIAGNOSIS_ID`, `ORGAN_ID`) VALUES
(1, 19, 7),
(2, 19, 8),
(3, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cond_link_diagnosis_lab_tests`
--

CREATE TABLE `cond_link_diagnosis_lab_tests` (
  `ID` int(10) UNSIGNED NOT NULL,
  `DIAGNOSIS_ID` int(10) UNSIGNED NOT NULL,
  `LAB_TEST_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cond_link_diagnosis_symptoms`
--

CREATE TABLE `cond_link_diagnosis_symptoms` (
  `ID` int(10) UNSIGNED NOT NULL,
  `DIAGNOSIS_ID` int(10) UNSIGNED NOT NULL,
  `SYMPTOMS_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cond_symptom`
--

CREATE TABLE `cond_symptom` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `CONDITION_ID` smallint(5) UNSIGNED NOT NULL,
  `OBSERVE_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cond_symptom`
--

INSERT INTO `cond_symptom` (`ID`, `PATIENT_ID`, `CONDITION_ID`, `OBSERVE_DATE_ID`, `VISIT_ID`) VALUES
(1, 12, 4, 20, NULL),
(2, 12, 5, 20, NULL),
(3, 12, 1, 20, NULL),
(4, 13, 4, 22, NULL),
(5, 13, 5, 22, NULL),
(6, 14, 4, 27, NULL),
(7, 14, 5, 27, NULL),
(8, 15, 4, 30, NULL),
(9, 15, 5, 30, NULL),
(10, 16, 13, 34, NULL),
(11, 16, 15, 34, NULL),
(12, 16, 4, 34, NULL),
(13, 17, 1, NULL, NULL),
(14, 17, 9, 30, NULL),
(15, 17, 15, 30, NULL),
(16, 17, 15, NULL, NULL),
(17, 18, 15, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 12, 14, 20, NULL),
(21, 12, 9, 20, NULL),
(22, 12, 13, 20, NULL),
(23, 12, 15, 20, NULL),
(24, 12, 7, 20, NULL),
(25, 13, 14, 22, NULL),
(26, 13, 9, 22, NULL),
(27, 13, 13, 22, NULL),
(28, 13, 15, 22, NULL),
(29, 13, 7, 22, NULL),
(30, 13, 1, 22, NULL),
(31, 14, 14, 27, NULL),
(32, 14, 9, 27, NULL),
(33, 14, 13, 27, NULL),
(34, 14, 15, 27, NULL),
(35, 14, 7, 27, NULL),
(36, 14, 1, 27, NULL),
(37, 15, 14, 30, NULL),
(38, 15, 9, 30, NULL),
(39, 15, 13, 30, NULL),
(40, 15, 15, 30, NULL),
(41, 15, 7, 30, NULL),
(42, 15, 1, 30, NULL),
(43, 16, 14, 34, NULL),
(44, 16, 9, 34, NULL),
(45, 16, 7, 34, NULL),
(46, 16, 5, 34, NULL),
(47, 16, 1, 34, NULL),
(48, 19, 4, 25, NULL),
(49, 19, 15, NULL, NULL),
(50, 20, 15, NULL, NULL),
(51, 20, 4, NULL, NULL),
(52, 20, 1, NULL, NULL),
(53, 21, 15, NULL, NULL),
(54, 21, 1, NULL, NULL),
(55, 21, 4, 44, NULL),
(56, 27, 5, 54, NULL),
(57, 27, 1, 54, NULL),
(58, 27, 4, 55, NULL),
(59, 27, 13, 54, NULL),
(60, 27, 15, NULL, NULL),
(61, 27, 8, NULL, NULL),
(62, 28, 4, 27, NULL),
(63, 28, 5, NULL, NULL),
(64, 28, 15, NULL, NULL),
(65, 28, 8, NULL, NULL),
(66, 28, 13, NULL, NULL),
(67, 29, 4, 24, NULL),
(68, 29, 1, 24, NULL),
(69, 29, 5, 49, NULL),
(70, 29, 15, NULL, NULL),
(71, 29, 8, NULL, NULL),
(72, 29, 13, NULL, NULL),
(73, 30, 4, 35, NULL),
(74, 30, 5, 24, NULL),
(75, 30, 15, 24, NULL),
(76, 30, 8, 24, NULL),
(77, 30, 13, 20, NULL),
(78, 31, 4, 20, NULL),
(79, 31, 5, NULL, NULL),
(80, 31, 15, NULL, NULL),
(81, 31, 8, NULL, NULL),
(82, 31, 13, NULL, NULL),
(83, 32, 3, 37, NULL),
(84, 32, 15, 37, NULL),
(85, 32, 15, 60, NULL),
(86, 32, 5, 60, NULL),
(87, 32, 4, 60, NULL),
(88, 32, 5, 37, NULL),
(89, 32, 4, 37, NULL),
(90, 32, 3, 60, NULL),
(91, 33, 15, 62, NULL),
(92, 33, 5, 28, NULL),
(93, 33, 4, 28, NULL),
(94, 33, 3, 28, NULL),
(95, 33, 3, 62, NULL),
(96, 33, 15, 28, NULL),
(97, 33, 5, 62, NULL),
(98, 33, 4, 62, NULL),
(99, 34, 3, 28, NULL),
(100, 34, 5, 65, NULL),
(101, 34, 4, 65, NULL),
(102, 34, 5, 28, NULL),
(103, 34, 4, 28, NULL),
(104, 34, 3, 65, NULL),
(105, 34, 15, 28, NULL),
(106, 34, 15, 65, NULL),
(107, 35, 15, 28, NULL),
(108, 35, 5, 68, NULL),
(109, 35, 4, 68, NULL),
(110, 35, 5, 28, NULL),
(111, 35, 3, 28, NULL),
(112, 35, 3, 68, NULL),
(113, 35, 15, 68, NULL),
(114, 35, 4, 28, NULL),
(115, 36, 3, 31, NULL),
(116, 36, 15, 31, NULL),
(117, 36, 15, 71, NULL),
(118, 36, 5, 71, NULL),
(119, 36, 4, 71, NULL),
(120, 36, 5, 31, NULL),
(121, 36, 4, 31, NULL),
(122, 36, 3, 71, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `demo_education_level_data`
--

CREATE TABLE `demo_education_level_data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `EDUCATION_LEVEL_ID` smallint(5) UNSIGNED NOT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demo_ethnicity_data`
--

CREATE TABLE `demo_ethnicity_data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `ETHNICITY_ID` smallint(5) UNSIGNED NOT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_ethnicity_data`
--

INSERT INTO `demo_ethnicity_data` (`ID`, `PATIENT_ID`, `ETHNICITY_ID`, `VISIT_ID`) VALUES
(1, 12, 6, NULL),
(2, 13, 6, NULL),
(3, 14, 6, NULL),
(4, 15, 6, NULL),
(5, 16, 6, NULL),
(6, 37, 4, NULL),
(7, 38, 6, NULL),
(8, 39, 6, NULL),
(9, 40, 4, NULL),
(10, 41, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `demo_occupation_data`
--

CREATE TABLE `demo_occupation_data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `LOSS_OF_WORK_DUE_TO_PSS_ID` tinyint(4) UNSIGNED NOT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demo_pregnancy_data`
--

CREATE TABLE `demo_pregnancy_data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `CONCEPTION_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `OUTCOME_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `OUTCOME_ID` smallint(5) UNSIGNED NOT NULL,
  `SS_CONCORDANT_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `demo_sex_data`
--

CREATE TABLE `demo_sex_data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `SEX_ID` smallint(5) UNSIGNED NOT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_sex_data`
--

INSERT INTO `demo_sex_data` (`ID`, `PATIENT_ID`, `SEX_ID`, `VISIT_ID`) VALUES
(1, 12, 2, NULL),
(2, 13, 1, NULL),
(3, 14, 2, NULL),
(4, 15, 2, NULL),
(5, 16, 2, NULL),
(6, 17, 2, NULL),
(7, 18, 2, NULL),
(8, 19, 2, NULL),
(9, 20, 2, NULL),
(10, 21, 1, NULL),
(11, 22, 2, NULL),
(12, 23, 2, NULL),
(13, 24, 2, NULL),
(14, 25, 2, NULL),
(15, 27, 2, NULL),
(16, 28, 2, NULL),
(17, 29, 2, NULL),
(18, 30, 2, NULL),
(19, 31, 2, NULL),
(20, 32, 2, NULL),
(21, 33, 2, NULL),
(22, 34, 2, NULL),
(23, 35, 2, NULL),
(24, 36, 1, NULL),
(25, 37, 2, NULL),
(26, 38, 2, NULL),
(27, 39, 2, NULL),
(28, 40, 2, NULL),
(29, 41, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `demo_weight_data`
--

CREATE TABLE `demo_weight_data` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PATIENT_ID` int(11) UNSIGNED NOT NULL,
  `BMI_CLASS_ID` smallint(5) UNSIGNED NOT NULL,
  `VISIT_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(65, 'admin', 'logentry'),
(67, 'auth', 'group'),
(66, 'auth', 'permission'),
(68, 'auth', 'user'),
(69, 'contenttypes', 'contenttype'),
(70, 'sessions', 'session'),
(1, 'transfer', 'cohort'),
(2, 'transfer', 'conddiagnosis'),
(3, 'transfer', 'conddiagnosisorgans'),
(4, 'transfer', 'condlinkdiagnosislabtests'),
(5, 'transfer', 'condlinkdiagnosissymptoms'),
(6, 'transfer', 'condsymptom'),
(7, 'transfer', 'demoeducationleveldata'),
(8, 'transfer', 'demoethnicitydata'),
(9, 'transfer', 'demooccupationdata'),
(10, 'transfer', 'demopregnancydata'),
(11, 'transfer', 'demosexdata'),
(12, 'transfer', 'demoweightdata'),
(13, 'transfer', 'dtamount'),
(14, 'transfer', 'dtamountrange'),
(15, 'transfer', 'dtdate'),
(16, 'transfer', 'dtintrange'),
(17, 'transfer', 'dtperiodoftime'),
(18, 'transfer', 'exambiopsy'),
(19, 'transfer', 'examcacicondition'),
(20, 'transfer', 'examessdaidomain'),
(21, 'transfer', 'examlabtest'),
(22, 'transfer', 'exammedicalimagingtest'),
(23, 'transfer', 'examquestionnairescore'),
(24, 'transfer', 'intervchemotherapy'),
(25, 'transfer', 'intervmedication'),
(26, 'transfer', 'intervsurgery'),
(27, 'transfer', 'lifestylesmoking'),
(28, 'transfer', 'otherclinicaltrials'),
(29, 'transfer', 'otherfamilyhistory'),
(30, 'transfer', 'otherhealthcarevisit'),
(31, 'transfer', 'patient'),
(32, 'transfer', 'patientvisit'),
(33, 'transfer', 'vocactivitylevel'),
(34, 'transfer', 'vocanapattern'),
(35, 'transfer', 'vocassessment'),
(36, 'transfer', 'vocbiopsy'),
(37, 'transfer', 'vocbmiclass'),
(38, 'transfer', 'voccacicondition'),
(39, 'transfer', 'vocconfirmation'),
(40, 'transfer', 'voccryotype'),
(41, 'transfer', 'vocdirection'),
(42, 'transfer', 'voceducationlevel'),
(43, 'transfer', 'vocessdaidomain'),
(44, 'transfer', 'vocethnicity'),
(45, 'transfer', 'vocexamoutcometype'),
(46, 'transfer', 'vocipirisk'),
(47, 'transfer', 'voclabtest'),
(48, 'transfer', 'voclabtesttype'),
(49, 'transfer', 'voclymphomaorgan'),
(50, 'transfer', 'voclymphomastage'),
(51, 'transfer', 'vocmedicalcondition'),
(52, 'transfer', 'vocmedicalimagingtest'),
(53, 'transfer', 'vocperformancestatus'),
(54, 'transfer', 'vocpharmdrug'),
(55, 'transfer', 'vocpregnancyoutcome'),
(56, 'transfer', 'vocquestionnaire'),
(57, 'transfer', 'vocrelativedegree'),
(58, 'transfer', 'vocsex'),
(59, 'transfer', 'vocsmokingstatus'),
(60, 'transfer', 'vocspecialist'),
(61, 'transfer', 'vocsymptomsign'),
(62, 'transfer', 'vocunit'),
(63, 'transfer', 'vocvisitstatus'),
(64, 'transfer', 'vocvisittype');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-09-15 05:46:36.989958'),
(2, 'auth', '0001_initial', '2019-09-15 05:46:52.750410'),
(3, 'admin', '0001_initial', '2019-09-15 05:46:57.222356'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-09-15 05:46:57.367455'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-15 05:46:57.439507'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-09-15 05:47:01.554596'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-09-15 05:47:05.002171'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-09-15 05:47:09.438668'),
(9, 'auth', '0004_alter_user_username_opts', '2019-09-15 05:47:09.563665'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-09-15 05:47:10.793709'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-09-15 05:47:10.887462'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-09-15 05:47:10.965587'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-09-15 05:47:13.416985'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-09-15 05:47:14.933994'),
(15, 'sessions', '0001_initial', '2019-09-15 05:47:16.060963'),
(16, 'transfer', '0001_initial', '2019-09-15 05:47:16.630183'),
(17, 'transfer', '0002_auto_20190915_1239', '2019-09-15 07:01:04.422331'),
(18, 'transfer', '0002_cohort_conddiagnosis_conddiagnosisorgans_condlinkdiagnosislabtests_condlinkdiagnosissymptoms_condsym', '2019-09-17 06:05:25.749317'),
(19, 'transfer', '0002_auto_20190917_1307', '2019-09-17 07:25:28.984522'),
(20, 'transfer', '0003_auto_20190917_1311', '2019-09-17 07:26:13.507451'),
(21, 'transfer', '0004_auto_20190917_1541', '2019-09-17 09:58:21.199314'),
(22, 'transfer', '0005_auto_20190917_1543', '2019-09-17 09:58:22.306170'),
(23, 'transfer', '0006_auto_20190917_1543', '2019-09-17 09:58:43.614277'),
(24, 'transfer', '0007_auto_20190918_1924', '2019-09-18 13:39:35.631312'),
(25, 'transfer', '0008_auto_20190918_1924', '2019-09-18 13:39:59.718617'),
(26, 'transfer', '0009_auto_20190918_1925', '2019-09-18 13:40:27.984116'),
(27, 'transfer', '0010_auto_20190918_1925', '2019-09-18 13:41:53.327236'),
(28, 'transfer', '0011_auto_20190918_2242', '2019-09-18 16:58:11.123661'),
(29, 'transfer', '0012_auto_20190919_2318', '2019-09-19 17:33:26.841443'),
(30, 'transfer', '0013_auto_20190920_0854', '2019-09-20 03:09:39.534092'),
(31, 'transfer', '0014_auto_20190920_0915', '2019-09-20 03:30:50.226249');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('g5iak9irva4jb7fqkbrs6n9dxbti57ad', 'YjFiNDE1MmIyMDZlZTRlNDkwNjE2NzUzOTc4ZDQ5MGI0NWI2ODgwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjZiMjAyNjkxYzg2ZTQxZDI1MWU2YmFjODY4ZTQ1ODc0NjUwY2RkIn0=', '2019-09-29 07:02:55.182444'),
('yquzlg9afxbjrhnqrx1dz1rj44uxbfiy', 'YjFiNDE1MmIyMDZlZTRlNDkwNjE2NzUzOTc4ZDQ5MGI0NWI2ODgwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjZiMjAyNjkxYzg2ZTQxZDI1MWU2YmFjODY4ZTQ1ODc0NjUwY2RkIn0=', '2019-09-29 05:49:15.940580');

-- --------------------------------------------------------

--
-- Table structure for table `dt_amount`
--

CREATE TABLE `dt_amount` (
  `ID` int(10) UNSIGNED NOT NULL,
  `VALUE` float NOT NULL,
  `UNIT_ID` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_amount`
--

INSERT INTO `dt_amount` (`ID`, `VALUE`, `UNIT_ID`) VALUES
(141, 4, 19),
(142, 3300, 1),
(143, 194000, 1),
(144, 125, 8),
(145, 12, 8),
(146, 7, 14),
(147, 2.1, 19),
(148, 8800, 1),
(149, 238000, 1),
(150, 131, 8),
(151, 23, 8),
(152, 1020, 19),
(153, 6, 14),
(154, 0, 7),
(155, 2.5, 19),
(156, 4410, 1),
(157, 221000, 1),
(158, 111, 8),
(159, 34, 8),
(160, 0.000390625, 19),
(161, 4640, 1),
(162, 359000, 1),
(163, 90, 8),
(164, 6, 8),
(165, 1016, 19),
(166, 2.2, 19),
(167, 5800, 1),
(168, 226000, 1),
(169, 52, 8),
(170, 13, 8),
(171, 1026, 19),
(172, 5.5, 14),
(173, 1.6, 19),
(174, 2.1, 19),
(175, 0.000390625, 19),
(176, 2.2, 19),
(177, 1.6, 19),
(178, 2.1, 19),
(179, 0.000390625, 19),
(180, 2.2, 19),
(181, 1.6, 19),
(182, 2.1, 19),
(183, 0.000390625, 19),
(184, 2.2, 19),
(185, 1.6, 19),
(186, 2.1, 19),
(187, 0.000390625, 19),
(188, 2.2, 19),
(189, 1.6, 19),
(190, 2.1, 19),
(191, 2.1, 19),
(192, 2.1, 19),
(193, 0.000390625, 19),
(194, 2.2, 19),
(195, 1.6, 19),
(196, 2.1, 19),
(197, 0.000390625, 19),
(198, 2.2, 19),
(199, 1.6, 19),
(200, 2.1, 19),
(201, 0.000390625, 19),
(202, 2.2, 19),
(203, 1.6, 19),
(204, 2.1, 19),
(205, 0.000390625, 19),
(206, 2.2, 19),
(207, 1.6, 19),
(208, 2.1, 19),
(209, 0.000390625, 19),
(210, 2.2, 19),
(211, 1.6, 19),
(212, 2.1, 19),
(213, 0.000390625, 19),
(214, 2.2, 19),
(215, 1.6, 19),
(216, 2.1, 19),
(217, 0.000390625, 19),
(218, 2.2, 19),
(219, 1.6, 19),
(220, 2.1, 19),
(221, 0.000390625, 19),
(222, 2.2, 19),
(223, 1.6, 19),
(224, 2.1, 19),
(225, 0.000390625, 19),
(226, 2.2, 19),
(227, 1.6, 19),
(228, 2.1, 19),
(229, 0.000390625, 19),
(230, 2.2, 19),
(231, 1.6, 19),
(232, 2.1, 19),
(233, 0.000390625, 19),
(234, 2.2, 19),
(235, 1.6, 19),
(236, 2.1, 19),
(237, 2.1, 19),
(238, 0.000390625, 19),
(239, 2.2, 19),
(240, 1.6, 19),
(241, 2.1, 19),
(242, 0.000390625, 19),
(243, 2.2, 19),
(244, 1.6, 19),
(245, 2.1, 19),
(246, 0.000390625, 19),
(247, 2.2, 19),
(248, 2.1, 19),
(249, 1.6, 19),
(250, 0.000390625, 19),
(251, 2.2, 19),
(252, 1.6, 19),
(253, 2.1, 19),
(254, 2.1, 19),
(255, 0.000390625, 19),
(256, 2.2, 19),
(257, 1.6, 19),
(258, 2.1, 19),
(259, 2.1, 19),
(260, 0.000390625, 19),
(261, 2.2, 19),
(262, 0.000390625, 19),
(263, 2.2, 19),
(264, 1.6, 19),
(265, 1.6, 19),
(266, 2.1, 19),
(267, 2.1, 19),
(268, 0.000390625, 19),
(269, 2.2, 19),
(270, 0.000390625, 19),
(271, 2.2, 19),
(272, 1.6, 19),
(273, 1.6, 19),
(274, 15, 5),
(275, 140, 8),
(276, 5, 19),
(277, 3, 19),
(278, 69, 8),
(279, 2.1, 19),
(280, 0.000390625, 19),
(281, 2.2, 19),
(282, 1.6, 19),
(283, 2.1, 19),
(284, 0.000390625, 19),
(285, 2.2, 19),
(286, 1.6, 19),
(287, 1, 19),
(288, 77, 8),
(289, 128, 8),
(290, 9, 8),
(291, 2.1, 19),
(292, 0.000390625, 19),
(293, 2.2, 19),
(294, 1.6, 19),
(295, 8, 14),
(296, 98, 8),
(297, 0.000390625, 19),
(298, 2.4, 19),
(299, 119, 8),
(300, 48, 8),
(301, 0.003125, 19),
(302, 2727, 1),
(303, 2484, 1),
(304, 253000, 1),
(305, 13.9, 4),
(306, 6060, 1),
(307, 5, 14),
(308, 48.37, 5),
(309, 0.59, 5),
(310, 12.73, 5),
(311, 66.8, 8),
(312, 12.2, 8),
(313, 0.000390625, 19),
(314, 2352, 1),
(315, 1428, 1),
(316, 254000, 1),
(317, 12.1, 4),
(318, 4200, 1),
(319, 1008, 19),
(320, 12, 19),
(321, 13.1, 5),
(322, 2.52, 5),
(323, 1.95, 5),
(324, 15.5, 8),
(325, 0.0015625, 19),
(326, 2968, 1),
(327, 1484, 1),
(328, 366000, 1),
(329, 12.7, 4),
(330, 5300, 1),
(331, 1012, 19),
(332, 6.5, 14),
(333, 4.71, 19),
(334, 2.83, 19),
(335, 1.05, 19),
(336, 15.5, 5),
(337, 1.86, 5),
(338, 3.41, 5),
(339, 91, 8),
(340, 22, 8),
(341, 0.0015625, 19),
(342, 1960, 1),
(343, 1010, 1),
(344, 191000, 1),
(345, 12, 4),
(346, 3440, 1),
(347, 1023, 19),
(348, 2.1, 19),
(349, 0.000390625, 19),
(350, 2.2, 19),
(351, 1.6, 19),
(352, 4000, 1),
(353, 1.5, 10),
(354, 100, 8),
(355, 19, 8),
(356, 2.83, 5),
(357, 26.3, 5),
(358, 1.12, 5),
(359, 0.0015625, 19),
(360, 157, 8),
(361, 6.03, 5),
(362, 30.6, 5),
(363, 0.76, 5),
(364, 0.0015625, 19),
(365, 110, 8),
(366, 29, 8),
(367, 2.96, 5),
(368, 1.06, 5),
(369, 0.0015625, 19),
(370, 101, 8),
(371, 3.07, 5),
(372, 21, 5),
(373, 0.76, 5),
(374, 0.0015625, 19),
(375, 112, 8),
(376, 28, 8),
(377, 1.86, 5),
(378, 14, 5),
(379, 0.95, 5),
(380, 2.1, 19),
(381, 0.000390625, 19),
(382, 2.2, 19),
(383, 1.6, 19),
(384, 2.1, 19),
(385, 0.000390625, 19),
(386, 0.000390625, 19),
(387, 2.83, 5),
(388, 26.3, 5),
(389, 1.12, 5),
(390, 0.0015625, 19),
(391, 6.03, 5),
(392, 30.6, 5),
(393, 0.76, 5),
(394, 0.0015625, 19),
(395, 2.96, 5),
(396, 1.06, 5),
(397, 0.0015625, 19),
(398, 3.07, 5),
(399, 0.76, 5),
(400, 0.0015625, 19),
(401, 1.86, 5),
(402, 0.95, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dt_amount_range`
--

CREATE TABLE `dt_amount_range` (
  `ID` int(10) UNSIGNED NOT NULL,
  `VALUE1` float DEFAULT NULL,
  `VALUE2` float DEFAULT NULL,
  `UNIT_ID` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[V1, V2] For >= V use [V, null] & For <= V use [null, V]';

--
-- Dumping data for table `dt_amount_range`
--

INSERT INTO `dt_amount_range` (`ID`, `VALUE1`, `VALUE2`, `UNIT_ID`) VALUES
(65, 0, 1, 19),
(66, NULL, 35, 6),
(67, 4000, 11000, 1),
(68, 140000, 400000, 1),
(69, 0, 1, 8),
(70, 0.6, 1, 8),
(71, 80, 160, 8),
(72, 16, 48, 8),
(73, NULL, 6.5, 14),
(74, 0.6, 1, 8),
(75, 1010, 1030, 19),
(76, NULL, 100, 7),
(77, 0.6, 1, 8),
(78, 0.6, 1, 8),
(79, 0.6, 1, 8),
(80, 0.6, 1, 8),
(81, 0.6, 1, 8),
(82, 0.6, 1, 8),
(83, 0.6, 1, 8),
(84, 0.6, 1, 8),
(85, 0.6, 1, 8),
(86, 0.6, 1, 8),
(87, 0.6, 1, 8),
(88, 0.6, 1, 8),
(89, 0.6, 1, 8),
(90, 0.6, 1, 8),
(91, 0.6, 1, 8),
(92, 0.6, 1, 8),
(93, 0.6, 1, 8),
(94, 0.6, 1, 8),
(95, 0.6, 1, 8),
(96, 0.6, 1, 8),
(97, 0.6, 1, 8),
(98, 0.6, 1, 8),
(99, 0.6, 1, 8),
(100, 0.6, 1, 8),
(101, 0.6, 1, 8),
(102, 0.6, 1, 8),
(103, 0.6, 1, 8),
(104, 0.6, 1, 8),
(105, 0.6, 1, 8),
(106, 0.6, 1, 8),
(107, 0.6, 1, 8),
(108, 0.6, 1, 8),
(109, 0.6, 1, 8),
(110, 0.6, 1, 8),
(111, 0.6, 1, 8),
(112, 0.6, 1, 8),
(113, 0.6, 1, 8),
(114, 0.6, 1, 8),
(115, 0.6, 1, 8),
(116, 0.6, 1, 8),
(117, 0.6, 1, 8),
(118, 0.6, 1, 8),
(119, 0.6, 1, 8),
(120, 0.6, 1, 8),
(121, 0.6, 1, 8),
(122, 0.6, 1, 8),
(123, 0.6, 1, 8),
(124, 0.6, 1, 8),
(125, 0.6, 1, 8),
(126, 0.6, 1, 8),
(127, 0.6, 1, 8),
(128, 0.6, 1, 8),
(129, 0.6, 1, 8),
(130, 0.6, 1, 8),
(131, 0.6, 1, 8),
(132, 0.6, 1, 8),
(133, 0.6, 1, 8),
(134, 0.6, 1, 8),
(135, 0.6, 1, 8),
(136, 0.6, 1, 8),
(137, 0.6, 1, 8),
(138, 0.6, 1, 8),
(139, 0.6, 1, 8),
(140, 0.6, 1, 8),
(141, 0.6, 1, 8),
(142, 0.6, 1, 8),
(143, 0.6, 1, 8),
(144, 0.6, 1, 8),
(145, 0.6, 1, 8),
(146, 0.6, 1, 8),
(147, 0.6, 1, 8),
(148, 0.6, 1, 8),
(149, 0.6, 1, 8),
(150, 0.6, 1, 8),
(151, 0.6, 1, 8),
(152, 0.6, 1, 8),
(153, 0.6, 1, 8),
(154, 0.6, 1, 8),
(155, 0.6, 1, 8),
(156, 0.6, 1, 8),
(157, 0.6, 1, 8),
(158, 0.6, 1, 8),
(159, 0.6, 1, 8),
(160, 0.6, 1, 8),
(161, 0.6, 1, 8),
(162, 0.6, 1, 8),
(163, 0.6, 1, 8),
(164, 0.6, 1, 8),
(165, 0.6, 1, 8),
(166, 0.6, 1, 8),
(167, 0.6, 1, 8),
(168, 0.6, 1, 8),
(169, 0.6, 1, 8),
(170, 0.6, 1, 8),
(171, 0.6, 1, 8),
(172, 0.6, 1, 8),
(173, 0.6, 1, 8),
(174, 0.6, 1, 8),
(175, 0.6, 1, 8),
(176, 0.6, 1, 8),
(177, 0.6, 1, 8),
(178, 0.6, 1, 8),
(179, 0.6, 1, 8),
(180, 0.6, 1, 8),
(181, 0.6, 1, 8),
(182, 0.6, 1, 8),
(183, 0.6, 1, 8),
(184, 0.6, 1, 8),
(185, 0.6, 1, 8),
(186, 0.6, 1, 8),
(187, 0.6, 1, 8),
(188, 0.6, 1, 8),
(189, 0.6, 1, 8),
(190, 0.6, 1, 8),
(191, 0.6, 1, 8),
(192, 0.6, 1, 8),
(193, 0.6, 1, 8),
(194, 0.6, 1, 8),
(195, 0.6, 1, 8),
(196, 0.6, 1, 8),
(197, 0.6, 1, 8),
(198, 0.6, 1, 8),
(199, 0.6, 1, 8),
(200, 0.6, 1, 8),
(201, 0.6, 1, 8),
(202, 0.6, 1, 8),
(203, 0.6, 1, 8),
(204, 0.6, 1, 8),
(205, 0.6, 1, 8),
(206, 0.6, 1, 8),
(207, 0.6, 1, 8),
(208, 0.6, 1, 8),
(209, 0.6, 1, 8),
(210, 0.6, 1, 8),
(211, 0.6, 1, 8),
(212, 0.6, 1, 8),
(213, 0.6, 1, 8),
(214, 0.6, 1, 8),
(215, 0.6, 1, 8),
(216, 0.6, 1, 8),
(217, 0.6, 1, 8),
(218, 12, 15, 4),
(219, 6.7, 14.5, 5),
(220, 6.7, 14.5, 5),
(221, 6.7, 14.5, 5),
(222, 6.7, 14.5, 5),
(223, 6.7, 14.5, 5),
(224, 6.7, 14.5, 5),
(225, 6.7, 14.5, 5),
(226, 6.7, 14.5, 5),
(227, 67, 129, 8),
(228, 6.7, 14.5, 5),
(229, 6.7, 14.5, 5),
(230, 6.7, 14.5, 5),
(231, 6.7, 14.5, 5),
(232, 6.7, 14.5, 5),
(233, 6.7, 14.5, 5),
(234, 0.6, 1, 8),
(235, 0.6, 1, 8),
(236, 0.6, 1, 8),
(237, 0.6, 1, 8),
(238, 0.6, 1, 8),
(239, 0.6, 1, 8),
(240, 0.6, 1, 8),
(241, 0.6, 1, 8),
(242, 0.6, 1, 8),
(243, 0.6, 1, 8),
(244, 6.7, 14.5, 5),
(245, 6.7, 14.5, 5),
(246, 6.7, 14.5, 5),
(247, 6.7, 14.5, 5),
(248, 6.7, 14.5, 5),
(249, 6.7, 14.5, 5),
(250, 6.7, 14.5, 5),
(251, 6.7, 14.5, 5),
(252, 6.7, 14.5, 5),
(253, 6.7, 14.5, 5),
(254, 6.7, 14.5, 5),
(255, 6.7, 14.5, 5),
(256, 6.7, 14.5, 5),
(257, 6.7, 14.5, 5),
(258, 6.7, 14.5, 5),
(259, 6.7, 14.5, 5),
(260, 6.7, 14.5, 5),
(261, 6.7, 14.5, 5),
(262, 6.7, 14.5, 5),
(263, 6.7, 14.5, 5),
(264, 6.7, 14.5, 5),
(265, 6.7, 14.5, 5),
(266, 6.7, 14.5, 5),
(267, 6.7, 14.5, 5),
(268, 6.7, 14.5, 5),
(269, 6.7, 14.5, 5),
(270, 13, 32, 8),
(271, 6.7, 14.5, 5),
(272, 6.7, 14.5, 5),
(273, 6.7, 14.5, 5),
(274, 6.7, 14.5, 5),
(275, 6.7, 14.5, 5),
(276, 6.7, 14.5, 5),
(277, 6.7, 14.5, 5),
(278, 6.7, 14.5, 5),
(279, 6.7, 14.5, 5),
(280, 6.7, 14.5, 5),
(281, 6.7, 14.5, 5),
(282, 6.7, 14.5, 5),
(283, 6.7, 14.5, 5),
(284, 6.7, 14.5, 5),
(285, 6.7, 14.5, 5),
(286, 6.7, 14.5, 5),
(287, 0.6, 1, 8),
(288, 0.6, 1, 8),
(289, 0.6, 1, 8),
(290, 0.6, 1, 8),
(291, 0.6, 1, 8),
(292, 0, 6, 14),
(293, NULL, 20, 6),
(294, 52, 125, 8),
(295, 20, 49, 8),
(296, 11, 18, 8),
(297, 1500, 6600, 1),
(298, 1200, 3400, 1),
(299, 140000, 440000, 1),
(300, 13.5, 18, 4),
(301, 4500, 11000, 1),
(302, 0, 5, 8),
(303, 7, 16, 5),
(304, 0.4, 2.3, 5),
(305, 0.7, 4, 5),
(306, 0.4, 2.3, 5),
(307, 0.7, 4, 5),
(308, 0.4, 2.3, 5),
(309, 0.7, 4, 5),
(310, 6.7, 14.5, 5),
(311, 6.7, 14.5, 5),
(312, 6.7, 14.5, 5),
(313, 6.7, 14.5, 5),
(314, 6.7, 14.5, 5),
(315, 0.6, 1, 8),
(316, 0.6, 1, 8),
(317, 0.6, 1, 8),
(318, 0.6, 1, 8),
(319, 0.6, 1, 8),
(320, 4800, 10800, 1),
(321, 0, 16, 5),
(322, 75, 165, 8),
(323, 14, 54, 8),
(324, 0.8, 4, 5),
(325, 5.5, 16.5, 5),
(326, 0.4, 2, 5),
(327, NULL, 15, 6),
(328, 0.8, 4, 5),
(329, 0.4, 2, 5),
(330, 0.8, 4, 5),
(331, 0.4, 2, 5),
(332, 0.8, 4, 5),
(333, 0.4, 2, 5),
(334, 0.8, 4, 5),
(335, 0.4, 2, 5),
(336, 0.6, 1, 8),
(337, 0.6, 1, 8),
(338, 0.6, 1, 8),
(339, 0.6, 1, 8),
(340, 0.6, 1, 8),
(341, 0.6, 1, 8),
(342, 0.6, 1, 8),
(343, 0.6, 1, 8),
(344, 6.7, 14.5, 5),
(345, 6.7, 14.5, 5),
(346, 6.7, 14.5, 5),
(347, 6.7, 14.5, 5),
(348, 6.7, 14.5, 5),
(349, 0.8, 4, 5),
(350, 0.4, 2, 5),
(351, 0.8, 4, 5),
(352, 0.4, 2, 5),
(353, 0.8, 4, 5),
(354, 0.4, 2, 5),
(355, 0.8, 4, 5),
(356, 0.4, 2, 5),
(357, 0.8, 4, 5),
(358, 0.4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dt_date`
--

CREATE TABLE `dt_date` (
  `ID` int(10) UNSIGNED NOT NULL,
  `YEAR` year(4) NOT NULL,
  `MONTH` smallint(5) UNSIGNED DEFAULT NULL,
  `DAY` smallint(5) UNSIGNED DEFAULT NULL,
  `OP_ID` tinyint(4) NOT NULL COMMENT 'Indicates whether we are interested about the period specified or the one before or after it.',
  `BEFORE_DATE_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'For dates ordering, if needed (e.g., when day/month missing)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_date`
--

INSERT INTO `dt_date` (`ID`, `YEAR`, `MONTH`, `DAY`, `OP_ID`, `BEFORE_DATE_ID`) VALUES
(18, 1949, 0, 0, 2, NULL),
(19, 2009, 0, 0, 2, NULL),
(20, 2014, 0, 0, 2, NULL),
(21, 1938, 0, 0, 2, NULL),
(22, 1998, 0, 0, 2, NULL),
(23, 2001, 0, 0, 2, NULL),
(24, 2008, 0, 0, 2, NULL),
(25, 2010, 0, 0, 2, NULL),
(26, 1959, 0, 0, 2, NULL),
(27, 2015, 0, 0, 2, NULL),
(28, 2017, 0, 0, 2, NULL),
(29, 1950, 0, 0, 2, NULL),
(30, 2002, 0, 0, 2, NULL),
(31, 2018, 0, 0, 2, NULL),
(32, 1962, 0, 0, 2, NULL),
(33, 2004, 0, 0, 2, NULL),
(34, 2005, 0, 0, 2, NULL),
(35, 2007, 0, 0, 2, NULL),
(36, 2011, 0, 0, 2, NULL),
(37, 2006, 0, 0, 2, NULL),
(38, 1946, 0, 0, 2, NULL),
(39, 1952, 0, 0, 2, NULL),
(40, 1993, 0, 0, 2, NULL),
(41, 2013, 0, 0, 2, NULL),
(42, 1982, 0, 0, 2, NULL),
(43, 1965, 0, 0, 2, NULL),
(44, 1990, 0, 0, 2, NULL),
(45, 2000, 0, 0, 2, NULL),
(46, 1971, 0, 0, 2, NULL),
(47, 1976, 0, 0, 2, NULL),
(48, 1960, 0, 0, 2, NULL),
(49, 2012, 0, 0, 2, NULL),
(50, 1944, 0, 0, 2, NULL),
(51, 1978, 0, 0, 2, NULL),
(52, 1992, 0, 0, 2, NULL),
(53, 1935, 0, 0, 2, NULL),
(54, 1996, 0, 0, 2, NULL),
(55, 1997, 0, 0, 2, NULL),
(56, 2016, 0, 0, 2, NULL),
(57, 1981, 0, 0, 2, NULL),
(58, 1956, 0, 0, 2, NULL),
(59, 1934, 6, 3, 2, NULL),
(60, 2009, 6, 19, 2, NULL),
(61, 1946, 4, 21, 2, NULL),
(62, 2017, 10, 3, 2, NULL),
(63, 2017, 6, 26, 2, NULL),
(64, 1965, 3, 8, 2, NULL),
(65, 2018, 6, 20, 2, NULL),
(66, 2017, 3, 12, 2, NULL),
(67, 1958, 6, 16, 2, NULL),
(68, 2017, 10, 11, 2, NULL),
(69, 2012, 3, 12, 2, NULL),
(70, 1950, 6, 18, 2, NULL),
(71, 2018, 4, 11, 2, NULL),
(72, 2017, 10, 18, 2, NULL),
(73, 1963, 0, 0, 2, NULL),
(74, 1958, 0, 0, 2, NULL),
(75, 1968, 0, 0, 2, NULL),
(76, 1972, 0, 0, 2, NULL),
(77, 1977, 0, 0, 2, NULL),
(78, 1955, 0, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dt_int_range`
--

CREATE TABLE `dt_int_range` (
  `ID` int(10) UNSIGNED NOT NULL,
  `INT1` int(11) DEFAULT NULL,
  `INT2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='[INT1, INT2] For >= N use [N, null] & For <= N use [null, N]';

--
-- Dumping data for table `dt_int_range`
--

INSERT INTO `dt_int_range` (`ID`, `INT1`, `INT2`) VALUES
(1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dt_period_of_time`
--

CREATE TABLE `dt_period_of_time` (
  `ID` int(10) UNSIGNED NOT NULL,
  `START_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `END_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `EXACT_ID` int(11) DEFAULT NULL,
  `BEFORE_PERIOD_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'For periods of time ordering, if needed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_period_of_time`
--

INSERT INTO `dt_period_of_time` (`ID`, `START_DATE_ID`, `END_DATE_ID`, `EXACT_ID`, `BEFORE_PERIOD_ID`) VALUES
(1, 35, NULL, NULL, NULL),
(2, 24, NULL, NULL, NULL),
(3, 35, 24, NULL, NULL),
(4, 23, 30, NULL, NULL),
(5, 30, 36, NULL, NULL),
(6, 37, NULL, NULL, NULL),
(7, 34, NULL, NULL, NULL),
(8, 24, 25, NULL, NULL),
(9, NULL, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_biopsy`
--

CREATE TABLE `exam_biopsy` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `BIOPSY_ID` smallint(5) UNSIGNED NOT NULL,
  `TEST_ID` smallint(5) UNSIGNED NOT NULL,
  `OUTCOME_AMOUNT_ID` int(10) UNSIGNED DEFAULT NULL,
  `NORMAL_RANGE_ID` int(10) UNSIGNED DEFAULT NULL,
  `ASSESSMENT_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `OUTCOME_CHECK_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `BIOPSY_DATE_ID` int(10) UNSIGNED NOT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_biopsy`
--

INSERT INTO `exam_biopsy` (`ID`, `PATIENT_ID`, `BIOPSY_ID`, `TEST_ID`, `OUTCOME_AMOUNT_ID`, `NORMAL_RANGE_ID`, `ASSESSMENT_ID`, `OUTCOME_CHECK_ID`, `BIOPSY_DATE_ID`, `VISIT_ID`) VALUES
(101, 12, 6, 505, NULL, NULL, NULL, NULL, 20, NULL),
(102, 12, 6, 502, NULL, NULL, NULL, NULL, 20, NULL),
(103, 12, 6, 507, 141, 65, 4, NULL, 20, NULL),
(104, 13, 6, 502, NULL, NULL, NULL, NULL, 23, NULL),
(105, 13, 5, 502, NULL, NULL, NULL, NULL, 24, NULL),
(106, 13, 6, 507, 147, 65, 4, NULL, 23, NULL),
(107, 14, 6, 505, NULL, NULL, NULL, NULL, 28, NULL),
(108, 14, 6, 502, NULL, NULL, NULL, NULL, 28, NULL),
(109, 14, 6, 507, 155, 65, 4, NULL, 28, NULL),
(110, 15, 6, 507, 166, 65, 4, NULL, 30, NULL),
(111, 16, 6, 507, 173, 65, 4, NULL, 24, NULL),
(112, 13, 6, 507, 174, 65, 4, NULL, 23, NULL),
(113, 15, 6, 507, 176, 65, 4, NULL, 30, NULL),
(114, 16, 6, 507, 177, 65, 4, NULL, 24, NULL),
(115, 13, 6, 507, 178, 65, 4, NULL, 23, NULL),
(116, 15, 6, 507, 180, 65, 4, NULL, 30, NULL),
(117, 16, 6, 507, 181, 65, 4, NULL, 24, NULL),
(118, 13, 6, 507, 182, 65, 4, NULL, 23, NULL),
(119, 15, 6, 507, 184, 65, 4, NULL, 30, NULL),
(120, 16, 6, 507, 185, 65, 4, NULL, 24, NULL),
(121, 13, 6, 507, 186, 65, 4, NULL, 23, NULL),
(122, 15, 6, 507, 188, 65, 4, NULL, 30, NULL),
(123, 16, 6, 507, 189, 65, 4, NULL, 24, NULL),
(124, 13, 6, 507, 190, 65, 4, NULL, 23, NULL),
(125, 13, 6, 507, 191, 65, 4, NULL, 23, NULL),
(126, 13, 6, 507, 192, 65, 4, NULL, 23, NULL),
(127, 15, 6, 507, 194, 65, 4, NULL, 30, NULL),
(128, 16, 6, 507, 195, 65, 4, NULL, 24, NULL),
(129, 13, 6, 507, 196, 65, 4, NULL, 23, NULL),
(130, 15, 6, 507, 198, 65, 4, NULL, 30, NULL),
(131, 16, 6, 507, 199, 65, 4, NULL, 24, NULL),
(132, 13, 6, 507, 200, 65, 4, NULL, 23, NULL),
(133, 15, 6, 507, 202, 65, 4, NULL, 30, NULL),
(134, 16, 6, 507, 203, 65, 4, NULL, 24, NULL),
(135, 13, 6, 507, 204, 65, 4, NULL, 23, NULL),
(136, 15, 6, 507, 206, 65, 4, NULL, 30, NULL),
(137, 16, 6, 507, 207, 65, 4, NULL, 24, NULL),
(138, 13, 6, 507, 208, 65, 4, NULL, 23, NULL),
(139, 15, 6, 507, 210, 65, 4, NULL, 30, NULL),
(140, 16, 6, 507, 211, 65, 4, NULL, 24, NULL),
(141, 13, 6, 507, 212, 65, 4, NULL, 23, NULL),
(142, 15, 6, 507, 214, 65, 4, NULL, 30, NULL),
(143, 16, 6, 507, 215, 65, 4, NULL, 24, NULL),
(144, 13, 6, 507, 216, 65, 4, NULL, 23, NULL),
(145, 15, 6, 507, 218, 65, 4, NULL, 30, NULL),
(146, 16, 6, 507, 219, 65, 4, NULL, 24, NULL),
(147, 13, 6, 507, 220, 65, 4, NULL, 23, NULL),
(148, 15, 6, 507, 222, 65, 4, NULL, 30, NULL),
(149, 16, 6, 507, 223, 65, 4, NULL, 24, NULL),
(150, 13, 6, 507, 224, 65, 4, NULL, 23, NULL),
(151, 15, 6, 507, 226, 65, 4, NULL, 30, NULL),
(152, 16, 6, 507, 227, 65, 4, NULL, 24, NULL),
(153, 13, 6, 507, 228, 65, 4, NULL, 23, NULL),
(154, 15, 6, 507, 230, 65, 4, NULL, 30, NULL),
(155, 16, 6, 507, 231, 65, 4, NULL, 24, NULL),
(156, 13, 6, 507, 232, 65, 4, NULL, 23, NULL),
(157, 15, 6, 507, 234, 65, 4, NULL, 30, NULL),
(158, 16, 6, 507, 235, 65, 4, NULL, 24, NULL),
(159, 13, 6, 507, 236, 65, 4, NULL, 23, NULL),
(160, 13, 6, 507, 237, 65, 4, NULL, 23, NULL),
(161, 15, 6, 507, 239, 65, 4, NULL, 30, NULL),
(162, 16, 6, 507, 240, 65, 4, NULL, 24, NULL),
(163, 13, 6, 507, 241, 65, 4, NULL, 23, NULL),
(164, 15, 6, 507, 243, 65, 4, NULL, 30, NULL),
(165, 16, 6, 507, 244, 65, 4, NULL, 24, NULL),
(166, 13, 6, 507, 245, 65, 4, NULL, 23, NULL),
(167, 15, 6, 507, 247, 65, 4, NULL, 30, NULL),
(168, 13, 6, 507, 248, 65, 4, NULL, 23, NULL),
(169, 16, 6, 507, 249, 65, 4, NULL, 24, NULL),
(170, 15, 6, 507, 251, 65, 4, NULL, 30, NULL),
(171, 16, 6, 507, 252, 65, 4, NULL, 24, NULL),
(172, 13, 6, 507, 253, 65, 4, NULL, 23, NULL),
(173, 13, 6, 507, 254, 65, 4, NULL, 23, NULL),
(174, 15, 6, 507, 256, 65, 4, NULL, 30, NULL),
(175, 16, 6, 507, 257, 65, 4, NULL, 24, NULL),
(176, 13, 6, 507, 258, 65, 4, NULL, 23, NULL),
(177, 13, 6, 507, 259, 65, 4, NULL, 23, NULL),
(178, 15, 6, 507, 261, 65, 4, NULL, 30, NULL),
(179, 15, 6, 507, 263, 65, 4, NULL, 30, NULL),
(180, 16, 6, 507, 264, 65, 4, NULL, 24, NULL),
(181, 16, 6, 507, 265, 65, 4, NULL, 24, NULL),
(182, 13, 6, 507, 266, 65, 4, NULL, 23, NULL),
(183, 13, 6, 507, 267, 65, 4, NULL, 23, NULL),
(184, 15, 6, 507, 269, 65, 4, NULL, 30, NULL),
(185, 15, 6, 507, 271, 65, 4, NULL, 30, NULL),
(186, 16, 6, 507, 272, 65, 4, NULL, 24, NULL),
(187, 16, 6, 507, 273, 65, 4, NULL, 24, NULL),
(188, 18, 5, 507, 276, NULL, NULL, NULL, 41, NULL),
(189, 19, 5, 507, 277, NULL, NULL, NULL, 41, NULL),
(190, 13, 6, 507, 279, 65, 4, NULL, 23, NULL),
(191, 15, 6, 507, 281, 65, 4, NULL, 30, NULL),
(192, 16, 6, 507, 282, 65, 4, NULL, 24, NULL),
(193, 13, 6, 507, 283, 65, 4, NULL, 23, NULL),
(194, 15, 6, 507, 285, 65, 4, NULL, 30, NULL),
(195, 16, 6, 507, 286, 65, 4, NULL, 24, NULL),
(196, 20, 5, 507, 287, NULL, NULL, NULL, 41, NULL),
(197, 21, 5, 502, NULL, NULL, NULL, NULL, 23, NULL),
(198, 21, 5, 507, 276, NULL, NULL, NULL, 23, NULL),
(199, 13, 6, 507, 291, 65, 4, NULL, 23, NULL),
(200, 15, 6, 507, 293, 65, 4, NULL, 30, NULL),
(201, 16, 6, 507, 294, 65, 4, NULL, 24, NULL),
(202, 27, 5, 502, NULL, NULL, NULL, NULL, 22, NULL),
(203, 27, 5, 505, NULL, NULL, NULL, NULL, 22, NULL),
(204, 27, 5, 507, 298, NULL, NULL, NULL, 22, NULL),
(205, 29, 5, 502, NULL, NULL, NULL, NULL, 20, NULL),
(206, 29, 5, 505, NULL, NULL, NULL, NULL, 20, NULL),
(207, 29, 5, 507, 320, NULL, NULL, NULL, 20, NULL),
(208, 30, 5, 502, NULL, NULL, NULL, NULL, 24, NULL),
(209, 30, 5, 507, 333, NULL, NULL, NULL, 24, NULL),
(210, 30, 5, 502, NULL, NULL, NULL, NULL, 49, NULL),
(211, 30, 5, 507, 334, NULL, NULL, NULL, 49, NULL),
(212, 30, 5, 507, 141, NULL, NULL, NULL, 41, NULL),
(213, 30, 5, 502, NULL, NULL, NULL, NULL, 27, NULL),
(214, 30, 5, 507, 335, NULL, NULL, NULL, 27, NULL),
(215, 31, 5, 502, NULL, NULL, NULL, NULL, 56, NULL),
(216, 31, 5, 505, NULL, NULL, NULL, NULL, 56, NULL),
(217, 31, 5, 507, 320, NULL, NULL, NULL, 56, NULL),
(218, 13, 6, 507, 348, 65, 4, NULL, 23, NULL),
(219, 15, 6, 507, 350, 65, 4, NULL, 30, NULL),
(220, 16, 6, 507, 351, 65, 4, NULL, 24, NULL),
(221, 37, 5, 504, NULL, NULL, NULL, NULL, 25, NULL),
(222, 38, 5, 504, NULL, NULL, NULL, NULL, 19, NULL),
(223, 39, 5, 504, NULL, NULL, NULL, NULL, 19, NULL),
(224, 40, 5, 504, NULL, NULL, NULL, NULL, 49, NULL),
(225, 41, 5, 504, NULL, NULL, NULL, NULL, 25, NULL),
(226, 13, 6, 507, 380, 65, 4, NULL, 23, NULL),
(227, 15, 6, 507, 382, 65, 4, NULL, 30, NULL),
(228, 16, 6, 507, 383, 65, 4, NULL, 24, NULL),
(229, 13, 6, 507, 384, 65, 4, NULL, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_caci_condition`
--

CREATE TABLE `exam_caci_condition` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `CACI_ID` smallint(5) UNSIGNED NOT NULL,
  `VALUE_ID` tinyint(3) UNSIGNED NOT NULL,
  `QUESTIONNAIRE_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_essdai_domain`
--

CREATE TABLE `exam_essdai_domain` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `DOMAIN_ID` smallint(5) UNSIGNED NOT NULL,
  `ACTIVITY_LEVEL_ID` smallint(11) UNSIGNED NOT NULL,
  `QUESTIONNAIRE_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_lab_test`
--

CREATE TABLE `exam_lab_test` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `TEST_ID` smallint(5) UNSIGNED NOT NULL,
  `OUTCOME_AMOUNT_ID` int(10) UNSIGNED DEFAULT NULL,
  `OUTCOME_ASSESSMENT_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `NORMAL_RANGE_ID` int(10) UNSIGNED DEFAULT NULL,
  `OUTCOME_TERM_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'For those test with outcome a Boolean Value or another Term',
  `SAMPLE_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_lab_test`
--

INSERT INTO `exam_lab_test` (`ID`, `PATIENT_ID`, `TEST_ID`, `OUTCOME_AMOUNT_ID`, `OUTCOME_ASSESSMENT_ID`, `NORMAL_RANGE_ID`, `OUTCOME_TERM_ID`, `SAMPLE_DATE_ID`, `VISIT_ID`) VALUES
(201, 12, 51, NULL, NULL, NULL, NULL, 20, NULL),
(202, 12, 53, NULL, NULL, NULL, NULL, 20, NULL),
(203, 12, 52, NULL, NULL, NULL, NULL, 20, NULL),
(204, 12, 54, NULL, NULL, NULL, NULL, 20, NULL),
(205, 12, 46, NULL, 1, 66, NULL, 20, NULL),
(206, 12, 59, NULL, NULL, NULL, NULL, 20, NULL),
(207, 12, 58, NULL, NULL, NULL, NULL, 20, NULL),
(208, 12, 60, NULL, NULL, NULL, NULL, 20, NULL),
(209, 12, 61, NULL, NULL, NULL, NULL, 20, NULL),
(210, 12, 81, NULL, NULL, NULL, NULL, 20, NULL),
(211, 12, 84, NULL, NULL, NULL, NULL, 20, NULL),
(212, 12, 401, NULL, 2, NULL, NULL, 20, NULL),
(213, 12, 402, NULL, 2, NULL, NULL, 20, NULL),
(214, 12, 3, 142, 3, 67, NULL, 20, NULL),
(215, 12, 6, 143, 1, 68, NULL, 20, NULL),
(216, 12, 94, NULL, 1, 69, NULL, NULL, NULL),
(217, 12, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 12, 9, NULL, 1, 70, NULL, NULL, NULL),
(219, 12, 16, NULL, 1, NULL, NULL, NULL, NULL),
(220, 12, 15, NULL, 1, NULL, NULL, NULL, NULL),
(221, 12, 17, NULL, 1, NULL, NULL, NULL, NULL),
(222, 12, 14, NULL, 1, NULL, NULL, NULL, NULL),
(223, 12, 18, NULL, 1, NULL, NULL, NULL, NULL),
(224, 12, 86, 144, 1, 71, NULL, 20, NULL),
(225, 12, 87, 145, 3, 72, NULL, 20, NULL),
(226, 12, 202, 146, 4, 73, NULL, 20, NULL),
(227, 12, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 12, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 12, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 12, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 13, 48, NULL, NULL, NULL, NULL, 22, NULL),
(232, 13, 51, NULL, NULL, NULL, NULL, 22, NULL),
(233, 13, 53, NULL, NULL, NULL, NULL, 22, NULL),
(234, 13, 52, NULL, NULL, NULL, NULL, 22, NULL),
(235, 13, 54, NULL, NULL, NULL, NULL, 22, NULL),
(236, 13, 46, NULL, 2, 66, NULL, 22, NULL),
(237, 13, 59, NULL, NULL, NULL, NULL, 24, NULL),
(238, 13, 58, NULL, NULL, NULL, NULL, 24, NULL),
(239, 13, 60, NULL, NULL, NULL, NULL, 24, NULL),
(240, 13, 61, NULL, NULL, NULL, NULL, 24, NULL),
(241, 13, 81, NULL, NULL, NULL, NULL, 24, NULL),
(242, 13, 84, NULL, NULL, NULL, NULL, 24, NULL),
(243, 13, 57, NULL, NULL, NULL, NULL, 24, NULL),
(244, 13, 83, NULL, NULL, NULL, NULL, 24, NULL),
(245, 13, 63, NULL, NULL, NULL, NULL, 24, NULL),
(246, 13, 401, NULL, 2, NULL, NULL, 22, NULL),
(247, 13, 3, 148, 1, 67, NULL, 24, NULL),
(248, 13, 6, 149, 1, 68, NULL, 24, NULL),
(249, 13, 94, NULL, 2, 69, NULL, NULL, NULL),
(250, 13, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 13, 9, NULL, 1, 74, NULL, NULL, NULL),
(252, 13, 16, NULL, 1, NULL, NULL, NULL, NULL),
(253, 13, 15, NULL, 1, NULL, NULL, NULL, NULL),
(254, 13, 17, NULL, 1, NULL, NULL, NULL, NULL),
(255, 13, 14, NULL, 1, NULL, NULL, NULL, NULL),
(256, 13, 18, NULL, 1, NULL, NULL, NULL, NULL),
(257, 13, 86, 150, 1, 71, NULL, 24, NULL),
(258, 13, 87, 151, 1, 72, NULL, 24, NULL),
(259, 13, 206, 152, 1, 75, NULL, 25, NULL),
(260, 13, 202, 153, 1, 73, NULL, 25, NULL),
(261, 13, 211, 154, 1, 76, NULL, NULL, NULL),
(262, 13, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 13, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 13, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 13, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 14, 48, NULL, NULL, NULL, NULL, 27, NULL),
(267, 14, 51, NULL, NULL, NULL, NULL, 27, NULL),
(268, 14, 53, NULL, NULL, NULL, NULL, 27, NULL),
(269, 14, 52, NULL, NULL, NULL, NULL, 27, NULL),
(270, 14, 54, NULL, NULL, NULL, NULL, 27, NULL),
(271, 14, 46, NULL, 1, 66, NULL, 27, NULL),
(272, 14, 59, NULL, NULL, NULL, NULL, 27, NULL),
(273, 14, 58, NULL, NULL, NULL, NULL, 27, NULL),
(274, 14, 60, NULL, NULL, NULL, NULL, 27, NULL),
(275, 14, 61, NULL, NULL, NULL, NULL, 27, NULL),
(276, 14, 81, NULL, NULL, NULL, NULL, 27, NULL),
(277, 14, 84, NULL, NULL, NULL, NULL, 27, NULL),
(278, 14, 57, NULL, NULL, NULL, NULL, 27, NULL),
(279, 14, 83, NULL, NULL, NULL, NULL, 27, NULL),
(280, 14, 63, NULL, NULL, NULL, NULL, 27, NULL),
(281, 14, 65, NULL, NULL, NULL, NULL, 27, NULL),
(282, 14, 401, NULL, 2, NULL, NULL, 27, NULL),
(283, 14, 3, 156, 1, 67, NULL, 27, NULL),
(284, 14, 6, 157, 1, 68, NULL, 27, NULL),
(285, 14, 94, NULL, 2, 69, NULL, NULL, NULL),
(286, 14, 9, NULL, 1, 77, NULL, NULL, NULL),
(287, 14, 16, NULL, 1, NULL, NULL, NULL, NULL),
(288, 14, 15, NULL, 1, NULL, NULL, NULL, NULL),
(289, 14, 17, NULL, 1, NULL, NULL, NULL, NULL),
(290, 14, 14, NULL, 1, NULL, NULL, NULL, NULL),
(291, 14, 18, NULL, 1, NULL, NULL, NULL, NULL),
(292, 14, 86, 158, 1, 71, NULL, 27, NULL),
(293, 14, 87, 159, 1, 72, NULL, 27, NULL),
(294, 14, 206, 152, 1, 75, NULL, 28, NULL),
(295, 14, 202, 153, 1, 73, NULL, 28, NULL),
(296, 14, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 14, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 14, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 14, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 15, 48, NULL, NULL, NULL, NULL, 30, NULL),
(301, 15, 49, 160, NULL, NULL, NULL, 30, NULL),
(302, 15, 51, NULL, NULL, NULL, NULL, 30, NULL),
(303, 15, 53, NULL, NULL, NULL, NULL, 30, NULL),
(304, 15, 52, NULL, NULL, NULL, NULL, 30, NULL),
(305, 15, 54, NULL, NULL, NULL, NULL, 30, NULL),
(306, 15, 46, NULL, 2, 66, NULL, 30, NULL),
(307, 15, 59, NULL, NULL, NULL, NULL, 30, NULL),
(308, 15, 58, NULL, NULL, NULL, NULL, 30, NULL),
(309, 15, 60, NULL, NULL, NULL, NULL, 30, NULL),
(310, 15, 61, NULL, NULL, NULL, NULL, 30, NULL),
(311, 15, 81, NULL, NULL, NULL, NULL, 30, NULL),
(312, 15, 84, NULL, NULL, NULL, NULL, 30, NULL),
(313, 15, 57, NULL, NULL, NULL, NULL, 30, NULL),
(314, 15, 83, NULL, NULL, NULL, NULL, 30, NULL),
(315, 15, 63, NULL, NULL, NULL, NULL, 30, NULL),
(316, 15, 65, NULL, NULL, NULL, NULL, 30, NULL),
(317, 15, 401, NULL, 2, NULL, NULL, 30, NULL),
(318, 15, 402, NULL, 2, NULL, NULL, 30, NULL),
(319, 15, 70, NULL, NULL, NULL, NULL, 30, NULL),
(320, 15, 71, NULL, NULL, NULL, NULL, 30, NULL),
(321, 15, 3, 161, 1, 67, NULL, 30, NULL),
(322, 15, 6, 162, 1, 68, NULL, 30, NULL),
(323, 15, 94, NULL, 1, 69, NULL, NULL, NULL),
(324, 15, 9, NULL, 1, 78, NULL, NULL, NULL),
(325, 15, 16, NULL, 1, NULL, NULL, NULL, NULL),
(326, 15, 15, NULL, 1, NULL, NULL, NULL, NULL),
(327, 15, 17, NULL, 1, NULL, NULL, NULL, NULL),
(328, 15, 14, NULL, 1, NULL, NULL, NULL, NULL),
(329, 15, 18, NULL, 1, NULL, NULL, NULL, NULL),
(330, 15, 86, 163, 1, 71, NULL, 30, NULL),
(331, 15, 87, 164, 3, 72, NULL, 30, NULL),
(332, 15, 206, 165, 1, 75, NULL, 31, NULL),
(333, 15, 202, 153, 1, 73, NULL, 31, NULL),
(334, 15, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 15, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 15, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 15, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 16, 48, NULL, NULL, NULL, NULL, 34, NULL),
(339, 16, 50, NULL, NULL, NULL, NULL, 34, NULL),
(340, 16, 51, NULL, NULL, NULL, NULL, 34, NULL),
(341, 16, 53, NULL, NULL, NULL, NULL, 34, NULL),
(342, 16, 52, NULL, NULL, NULL, NULL, 34, NULL),
(343, 16, 54, NULL, NULL, NULL, NULL, 34, NULL),
(344, 16, 46, NULL, 2, 66, NULL, 34, NULL),
(345, 16, 56, NULL, NULL, NULL, NULL, 34, NULL),
(346, 16, 59, NULL, NULL, NULL, NULL, 34, NULL),
(347, 16, 58, NULL, NULL, NULL, NULL, 34, NULL),
(348, 16, 60, NULL, NULL, NULL, NULL, 34, NULL),
(349, 16, 61, NULL, NULL, NULL, NULL, 34, NULL),
(350, 16, 81, NULL, NULL, NULL, NULL, 34, NULL),
(351, 16, 84, NULL, NULL, NULL, NULL, 34, NULL),
(352, 16, 57, NULL, NULL, NULL, NULL, 34, NULL),
(353, 16, 83, NULL, NULL, NULL, NULL, 34, NULL),
(354, 16, 63, NULL, NULL, NULL, NULL, 34, NULL),
(355, 16, 65, NULL, NULL, NULL, NULL, 34, NULL),
(356, 16, 401, NULL, 1, NULL, NULL, 34, NULL),
(357, 16, 402, NULL, 1, NULL, NULL, 34, NULL),
(358, 16, 70, NULL, NULL, NULL, NULL, 34, NULL),
(359, 16, 71, NULL, NULL, NULL, NULL, 34, NULL),
(360, 16, 3, 167, 1, 67, NULL, 34, NULL),
(361, 16, 6, 168, 1, 68, NULL, 34, NULL),
(362, 16, 94, NULL, 1, 69, NULL, NULL, NULL),
(363, 16, 9, NULL, 1, 79, NULL, NULL, NULL),
(364, 16, 16, NULL, 1, NULL, NULL, NULL, NULL),
(365, 16, 15, NULL, 1, NULL, NULL, NULL, NULL),
(366, 16, 17, NULL, 1, NULL, NULL, NULL, NULL),
(367, 16, 14, NULL, 1, NULL, NULL, NULL, NULL),
(368, 16, 18, NULL, 1, NULL, NULL, NULL, NULL),
(369, 16, 86, 169, 3, 71, NULL, 34, NULL),
(370, 16, 87, 170, 3, 72, NULL, 34, NULL),
(371, 16, 206, 171, 1, 75, NULL, 28, NULL),
(372, 16, 202, 172, 1, 73, NULL, 28, NULL),
(373, 16, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 16, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 16, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 16, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 12, 9, NULL, 1, 80, NULL, NULL, NULL),
(378, 13, 9, NULL, 1, 81, NULL, NULL, NULL),
(379, 14, 9, NULL, 1, 82, NULL, NULL, NULL),
(380, 15, 49, 175, NULL, NULL, NULL, 30, NULL),
(381, 15, 9, NULL, 1, 83, NULL, NULL, NULL),
(382, 16, 9, NULL, 1, 84, NULL, NULL, NULL),
(383, 12, 9, NULL, 1, 85, NULL, NULL, NULL),
(384, 13, 9, NULL, 1, 86, NULL, NULL, NULL),
(385, 14, 9, NULL, 1, 87, NULL, NULL, NULL),
(386, 15, 49, 179, NULL, NULL, NULL, 30, NULL),
(387, 15, 9, NULL, 1, 88, NULL, NULL, NULL),
(388, 16, 9, NULL, 1, 89, NULL, NULL, NULL),
(389, 12, 9, NULL, 1, 90, NULL, NULL, NULL),
(390, 12, 9, NULL, 1, 91, NULL, NULL, NULL),
(391, 12, 9, NULL, 1, 92, NULL, NULL, NULL),
(392, 12, 9, NULL, 1, 93, NULL, NULL, NULL),
(393, 12, 9, NULL, 1, 94, NULL, NULL, NULL),
(394, 12, 9, NULL, 1, 95, NULL, NULL, NULL),
(395, 13, 9, NULL, 1, 96, NULL, NULL, NULL),
(396, 14, 9, NULL, 1, 97, NULL, NULL, NULL),
(397, 15, 49, 183, NULL, NULL, NULL, 30, NULL),
(398, 15, 9, NULL, 1, 98, NULL, NULL, NULL),
(399, 16, 9, NULL, 1, 99, NULL, NULL, NULL),
(400, 12, 9, NULL, 1, 100, NULL, NULL, NULL),
(401, 13, 9, NULL, 1, 101, NULL, NULL, NULL),
(402, 14, 9, NULL, 1, 102, NULL, NULL, NULL),
(403, 15, 49, 187, NULL, NULL, NULL, 30, NULL),
(404, 15, 9, NULL, 1, 103, NULL, NULL, NULL),
(405, 16, 9, NULL, 1, 104, NULL, NULL, NULL),
(406, 12, 9, NULL, 1, 105, NULL, NULL, NULL),
(407, 13, 9, NULL, 1, 106, NULL, NULL, NULL),
(408, 12, 9, NULL, 1, 107, NULL, NULL, NULL),
(409, 13, 9, NULL, 1, 108, NULL, NULL, NULL),
(410, 12, 9, NULL, 1, 109, NULL, NULL, NULL),
(411, 13, 9, NULL, 1, 110, NULL, NULL, NULL),
(412, 14, 9, NULL, 1, 111, NULL, NULL, NULL),
(413, 15, 49, 193, NULL, NULL, NULL, 30, NULL),
(414, 15, 9, NULL, 1, 112, NULL, NULL, NULL),
(415, 16, 9, NULL, 1, 113, NULL, NULL, NULL),
(416, 12, 9, NULL, 1, 114, NULL, NULL, NULL),
(417, 13, 9, NULL, 1, 115, NULL, NULL, NULL),
(418, 14, 9, NULL, 1, 116, NULL, NULL, NULL),
(419, 15, 49, 197, NULL, NULL, NULL, 30, NULL),
(420, 15, 9, NULL, 1, 117, NULL, NULL, NULL),
(421, 16, 9, NULL, 1, 118, NULL, NULL, NULL),
(422, 12, 9, NULL, 1, 119, NULL, NULL, NULL),
(423, 13, 9, NULL, 1, 120, NULL, NULL, NULL),
(424, 14, 9, NULL, 1, 121, NULL, NULL, NULL),
(425, 15, 49, 201, NULL, NULL, NULL, 30, NULL),
(426, 15, 9, NULL, 1, 122, NULL, NULL, NULL),
(427, 16, 9, NULL, 1, 123, NULL, NULL, NULL),
(428, 12, 9, NULL, 1, 124, NULL, NULL, NULL),
(429, 13, 9, NULL, 1, 125, NULL, NULL, NULL),
(430, 14, 9, NULL, 1, 126, NULL, NULL, NULL),
(431, 15, 49, 205, NULL, NULL, NULL, 30, NULL),
(432, 15, 9, NULL, 1, 127, NULL, NULL, NULL),
(433, 16, 9, NULL, 1, 128, NULL, NULL, NULL),
(434, 12, 9, NULL, 1, 129, NULL, NULL, NULL),
(435, 13, 9, NULL, 1, 130, NULL, NULL, NULL),
(436, 14, 9, NULL, 1, 131, NULL, NULL, NULL),
(437, 15, 49, 209, NULL, NULL, NULL, 30, NULL),
(438, 15, 9, NULL, 1, 132, NULL, NULL, NULL),
(439, 16, 9, NULL, 1, 133, NULL, NULL, NULL),
(440, 12, 9, NULL, 1, 134, NULL, NULL, NULL),
(441, 13, 9, NULL, 1, 135, NULL, NULL, NULL),
(442, 14, 9, NULL, 1, 136, NULL, NULL, NULL),
(443, 15, 49, 213, NULL, NULL, NULL, 30, NULL),
(444, 15, 9, NULL, 1, 137, NULL, NULL, NULL),
(445, 16, 9, NULL, 1, 138, NULL, NULL, NULL),
(446, 12, 9, NULL, 1, 139, NULL, NULL, NULL),
(447, 13, 9, NULL, 1, 140, NULL, NULL, NULL),
(448, 14, 9, NULL, 1, 141, NULL, NULL, NULL),
(449, 15, 49, 217, NULL, NULL, NULL, 30, NULL),
(450, 15, 9, NULL, 1, 142, NULL, NULL, NULL),
(451, 16, 9, NULL, 1, 143, NULL, NULL, NULL),
(452, 12, 9, NULL, 1, 144, NULL, NULL, NULL),
(453, 13, 9, NULL, 1, 145, NULL, NULL, NULL),
(454, 14, 9, NULL, 1, 146, NULL, NULL, NULL),
(455, 15, 49, 221, NULL, NULL, NULL, 30, NULL),
(456, 15, 9, NULL, 1, 147, NULL, NULL, NULL),
(457, 16, 9, NULL, 1, 148, NULL, NULL, NULL),
(458, 12, 9, NULL, 1, 149, NULL, NULL, NULL),
(459, 13, 9, NULL, 1, 150, NULL, NULL, NULL),
(460, 14, 9, NULL, 1, 151, NULL, NULL, NULL),
(461, 15, 49, 225, NULL, NULL, NULL, 30, NULL),
(462, 15, 9, NULL, 1, 152, NULL, NULL, NULL),
(463, 16, 9, NULL, 1, 153, NULL, NULL, NULL),
(464, 12, 9, NULL, 1, 154, NULL, NULL, NULL),
(465, 13, 9, NULL, 1, 155, NULL, NULL, NULL),
(466, 14, 9, NULL, 1, 156, NULL, NULL, NULL),
(467, 15, 49, 229, NULL, NULL, NULL, 30, NULL),
(468, 15, 9, NULL, 1, 157, NULL, NULL, NULL),
(469, 16, 9, NULL, 1, 158, NULL, NULL, NULL),
(470, 12, 9, NULL, 1, 159, NULL, NULL, NULL),
(471, 12, 9, NULL, 1, 160, NULL, NULL, NULL),
(472, 12, 9, NULL, 1, 161, NULL, NULL, NULL),
(473, 12, 9, NULL, 1, 162, NULL, NULL, NULL),
(474, 12, 9, NULL, 1, 163, NULL, NULL, NULL),
(475, 12, 9, NULL, 1, 164, NULL, NULL, NULL),
(476, 13, 9, NULL, 1, 165, NULL, NULL, NULL),
(477, 14, 9, NULL, 1, 166, NULL, NULL, NULL),
(478, 15, 49, 233, NULL, NULL, NULL, 30, NULL),
(479, 15, 9, NULL, 1, 167, NULL, NULL, NULL),
(480, 16, 9, NULL, 1, 168, NULL, NULL, NULL),
(481, 12, 9, NULL, 1, 169, NULL, NULL, NULL),
(482, 13, 9, NULL, 1, 170, NULL, NULL, NULL),
(483, 12, 9, NULL, 1, 171, NULL, NULL, NULL),
(484, 13, 9, NULL, 1, 172, NULL, NULL, NULL),
(485, 14, 9, NULL, 1, 173, NULL, NULL, NULL),
(486, 15, 49, 238, NULL, NULL, NULL, 30, NULL),
(487, 15, 9, NULL, 1, 174, NULL, NULL, NULL),
(488, 16, 9, NULL, 1, 175, NULL, NULL, NULL),
(489, 12, 9, NULL, 1, 176, NULL, NULL, NULL),
(490, 13, 9, NULL, 1, 177, NULL, NULL, NULL),
(491, 14, 9, NULL, 1, 178, NULL, NULL, NULL),
(492, 15, 49, 242, NULL, NULL, NULL, 30, NULL),
(493, 15, 9, NULL, 1, 179, NULL, NULL, NULL),
(494, 16, 9, NULL, 1, 180, NULL, NULL, NULL),
(495, 12, 9, NULL, 1, 181, NULL, NULL, NULL),
(496, 13, 9, NULL, 1, 182, NULL, NULL, NULL),
(497, 14, 9, NULL, 1, 183, NULL, NULL, NULL),
(498, 15, 49, 246, NULL, NULL, NULL, 30, NULL),
(499, 15, 9, NULL, 1, 184, NULL, NULL, NULL),
(500, 12, 9, NULL, 1, 185, NULL, NULL, NULL),
(501, 16, 9, NULL, 1, 186, NULL, NULL, NULL),
(502, 13, 9, NULL, 1, 187, NULL, NULL, NULL),
(503, 14, 9, NULL, 1, 188, NULL, NULL, NULL),
(504, 15, 49, 250, NULL, NULL, NULL, 30, NULL),
(505, 15, 9, NULL, 1, 189, NULL, NULL, NULL),
(506, 16, 9, NULL, 1, 190, NULL, NULL, NULL),
(507, 12, 9, NULL, 1, 191, NULL, NULL, NULL),
(508, 13, 9, NULL, 1, 192, NULL, NULL, NULL),
(509, 12, 9, NULL, 1, 193, NULL, NULL, NULL),
(510, 13, 9, NULL, 1, 194, NULL, NULL, NULL),
(511, 14, 9, NULL, 1, 195, NULL, NULL, NULL),
(512, 15, 49, 255, NULL, NULL, NULL, 30, NULL),
(513, 15, 9, NULL, 1, 196, NULL, NULL, NULL),
(514, 16, 9, NULL, 1, 197, NULL, NULL, NULL),
(515, 12, 9, NULL, 1, 198, NULL, NULL, NULL),
(516, 12, 9, NULL, 1, 199, NULL, NULL, NULL),
(517, 13, 9, NULL, 1, 200, NULL, NULL, NULL),
(518, 13, 9, NULL, 1, 201, NULL, NULL, NULL),
(519, 14, 9, NULL, 1, 202, NULL, NULL, NULL),
(520, 14, 9, NULL, 1, 203, NULL, NULL, NULL),
(521, 15, 49, 260, NULL, NULL, NULL, 30, NULL),
(522, 15, 9, NULL, 1, 204, NULL, NULL, NULL),
(523, 15, 49, 262, NULL, NULL, NULL, 30, NULL),
(524, 15, 9, NULL, 1, 205, NULL, NULL, NULL),
(525, 16, 9, NULL, 1, 206, NULL, NULL, NULL),
(526, 16, 9, NULL, 1, 207, NULL, NULL, NULL),
(527, 12, 9, NULL, 1, 208, NULL, NULL, NULL),
(528, 12, 9, NULL, 1, 209, NULL, NULL, NULL),
(529, 13, 9, NULL, 1, 210, NULL, NULL, NULL),
(530, 13, 9, NULL, 1, 211, NULL, NULL, NULL),
(531, 14, 9, NULL, 1, 212, NULL, NULL, NULL),
(532, 14, 9, NULL, 1, 213, NULL, NULL, NULL),
(533, 15, 49, 268, NULL, NULL, NULL, 30, NULL),
(534, 15, 9, NULL, 1, 214, NULL, NULL, NULL),
(535, 15, 49, 270, NULL, NULL, NULL, 30, NULL),
(536, 15, 9, NULL, 1, 215, NULL, NULL, NULL),
(537, 16, 9, NULL, 1, 216, NULL, NULL, NULL),
(538, 16, 9, NULL, 1, 217, NULL, NULL, NULL),
(539, 17, 2, NULL, 1, 218, NULL, NULL, NULL),
(540, 17, 32, 274, 2, 219, NULL, NULL, NULL),
(541, 17, 32, 274, 2, 220, NULL, NULL, NULL),
(542, 17, 32, 274, 2, 221, NULL, NULL, NULL),
(543, 17, 32, 274, 2, 222, NULL, NULL, NULL),
(544, 17, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 17, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 17, 32, 274, 2, 223, NULL, NULL, NULL),
(547, 17, 32, 274, 2, 224, NULL, NULL, NULL),
(548, 17, 32, 274, 2, 225, NULL, NULL, NULL),
(549, 17, 32, 274, 2, 226, NULL, NULL, NULL),
(550, 17, 86, 275, 4, 227, NULL, NULL, NULL),
(551, 17, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 17, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 17, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 17, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 17, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 17, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 17, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 17, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 17, 32, 274, 2, 228, NULL, NULL, NULL),
(560, 18, 2, NULL, 1, 218, NULL, NULL, NULL),
(561, 18, 32, 274, 2, 229, NULL, NULL, NULL),
(562, 18, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 18, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 18, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 18, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 18, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 18, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 18, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 18, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 18, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 18, 46, NULL, 2, NULL, NULL, NULL, NULL),
(572, 19, 2, NULL, 1, 218, NULL, NULL, NULL),
(573, 19, 32, 274, 2, 230, NULL, NULL, NULL),
(574, 19, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 19, 86, 278, 1, 227, NULL, NULL, NULL),
(576, 19, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 19, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 19, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 19, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 19, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 19, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 19, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 19, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 19, 46, NULL, 2, NULL, NULL, NULL, NULL),
(585, 17, 32, 274, 2, 231, NULL, NULL, NULL),
(586, 18, 32, 274, 2, 232, NULL, NULL, NULL),
(587, 19, 32, 274, 2, 233, NULL, NULL, NULL),
(588, 12, 9, NULL, 1, 234, NULL, NULL, NULL),
(589, 13, 9, NULL, 1, 235, NULL, NULL, NULL),
(590, 14, 9, NULL, 1, 236, NULL, NULL, NULL),
(591, 15, 49, 280, NULL, NULL, NULL, 30, NULL),
(592, 15, 9, NULL, 1, 237, NULL, NULL, NULL),
(593, 16, 9, NULL, 1, 238, NULL, NULL, NULL),
(594, 12, 9, NULL, 1, 239, NULL, NULL, NULL),
(595, 13, 9, NULL, 1, 240, NULL, NULL, NULL),
(596, 14, 9, NULL, 1, 241, NULL, NULL, NULL),
(597, 15, 49, 284, NULL, NULL, NULL, 30, NULL),
(598, 15, 9, NULL, 1, 242, NULL, NULL, NULL),
(599, 16, 9, NULL, 1, 243, NULL, NULL, NULL),
(600, 17, 32, 274, 2, 244, NULL, NULL, NULL),
(601, 18, 32, 274, 2, 245, NULL, NULL, NULL),
(602, 19, 32, 274, 2, 246, NULL, NULL, NULL),
(603, 17, 32, 274, 2, 247, NULL, NULL, NULL),
(604, 18, 32, 274, 2, 248, NULL, NULL, NULL),
(605, 19, 32, 274, 2, 249, NULL, NULL, NULL),
(606, 17, 32, 274, 2, 250, NULL, NULL, NULL),
(607, 18, 32, 274, 2, 251, NULL, NULL, NULL),
(608, 19, 32, 274, 2, 252, NULL, NULL, NULL),
(609, 17, 32, 274, 2, 253, NULL, NULL, NULL),
(610, 18, 32, 274, 2, 254, NULL, NULL, NULL),
(611, 19, 32, 274, 2, 255, NULL, NULL, NULL),
(612, 17, 32, 274, 2, 256, NULL, NULL, NULL),
(613, 18, 32, 274, 2, 257, NULL, NULL, NULL),
(614, 19, 32, 274, 2, 258, NULL, NULL, NULL),
(615, 17, 32, 274, 2, 259, NULL, NULL, NULL),
(616, 18, 32, 274, 2, 260, NULL, NULL, NULL),
(617, 19, 32, 274, 2, 261, NULL, NULL, NULL),
(618, 17, 32, 274, 2, 262, NULL, NULL, NULL),
(619, 18, 32, 274, 2, 263, NULL, NULL, NULL),
(620, 19, 32, 274, 2, 264, NULL, NULL, NULL),
(621, 17, 32, 274, 2, 265, NULL, NULL, NULL),
(622, 18, 32, 274, 2, 266, NULL, NULL, NULL),
(623, 19, 32, 274, 2, 267, NULL, NULL, NULL),
(624, 20, 2, NULL, 1, 218, NULL, NULL, NULL),
(625, 20, 32, 274, 2, 268, NULL, NULL, NULL),
(626, 20, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 20, 86, 288, 1, 227, NULL, NULL, NULL),
(628, 20, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 20, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 20, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 20, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 20, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 20, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 20, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 20, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 21, 2, NULL, 3, 218, NULL, NULL, NULL),
(637, 21, 32, 274, 2, 269, NULL, NULL, NULL),
(638, 21, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 21, 86, 289, 1, 227, NULL, NULL, NULL),
(640, 21, 87, 290, 3, 270, NULL, NULL, NULL),
(641, 21, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 21, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 21, 53, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 21, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 21, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 21, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 21, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 21, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 21, 46, NULL, 1, NULL, NULL, NULL, NULL),
(650, 17, 32, 274, 2, 271, NULL, NULL, NULL),
(651, 18, 32, 274, 2, 272, NULL, NULL, NULL),
(652, 19, 32, 274, 2, 273, NULL, NULL, NULL),
(653, 20, 32, 274, 2, 274, NULL, NULL, NULL),
(654, 21, 32, 274, 2, 275, NULL, NULL, NULL),
(655, 17, 32, 274, 2, 276, NULL, NULL, NULL),
(656, 17, 32, 274, 2, 277, NULL, NULL, NULL),
(657, 18, 32, 274, 2, 278, NULL, NULL, NULL),
(658, 19, 32, 274, 2, 279, NULL, NULL, NULL),
(659, 20, 32, 274, 2, 280, NULL, NULL, NULL),
(660, 21, 32, 274, 2, 281, NULL, NULL, NULL),
(661, 17, 32, 274, 2, 282, NULL, NULL, NULL),
(662, 18, 32, 274, 2, 283, NULL, NULL, NULL),
(663, 19, 32, 274, 2, 284, NULL, NULL, NULL),
(664, 20, 32, 274, 2, 285, NULL, NULL, NULL),
(665, 21, 32, 274, 2, 286, NULL, NULL, NULL),
(666, 12, 9, NULL, 1, 287, NULL, NULL, NULL),
(667, 13, 9, NULL, 1, 288, NULL, NULL, NULL),
(668, 14, 9, NULL, 1, 289, NULL, NULL, NULL),
(669, 15, 49, 292, NULL, NULL, NULL, 30, NULL),
(670, 15, 9, NULL, 1, 290, NULL, NULL, NULL),
(671, 16, 9, NULL, 1, 291, NULL, NULL, NULL),
(672, 23, 202, 146, 4, 292, NULL, 25, NULL),
(673, 25, 202, 295, 4, 292, NULL, 35, NULL),
(674, 27, 51, NULL, NULL, NULL, NULL, 22, NULL),
(675, 27, 54, NULL, NULL, NULL, NULL, 22, NULL),
(676, 27, 48, NULL, NULL, NULL, NULL, 22, NULL),
(677, 27, 46, NULL, 2, 293, NULL, 22, NULL),
(678, 27, 86, 296, 1, 294, NULL, 22, NULL),
(679, 27, 87, 151, 1, 295, NULL, 22, NULL),
(680, 27, 49, 297, NULL, NULL, NULL, 22, NULL),
(681, 27, 27, NULL, NULL, NULL, NULL, 22, NULL),
(682, 27, 30, NULL, 4, 296, NULL, 22, NULL),
(683, 27, 38, NULL, NULL, NULL, NULL, 22, NULL),
(684, 28, 51, NULL, NULL, NULL, NULL, 56, NULL),
(685, 28, 54, NULL, NULL, NULL, NULL, 56, NULL),
(686, 28, 48, NULL, NULL, NULL, NULL, 56, NULL),
(687, 28, 46, NULL, 1, 293, NULL, 56, NULL),
(688, 28, 96, NULL, NULL, NULL, NULL, 56, NULL),
(689, 28, 95, NULL, NULL, NULL, NULL, 56, NULL),
(690, 28, 100, NULL, NULL, NULL, NULL, 56, NULL),
(691, 28, 86, 299, 1, 294, NULL, 56, NULL),
(692, 28, 87, 300, 1, 295, NULL, 56, NULL),
(693, 28, 49, 301, NULL, NULL, NULL, 56, NULL),
(694, 28, 71, NULL, NULL, NULL, NULL, 56, NULL),
(695, 28, 70, NULL, NULL, NULL, NULL, 56, NULL),
(696, 28, 4, 302, 1, 297, NULL, 56, NULL),
(697, 28, 5, 303, 1, 298, NULL, 56, NULL),
(698, 28, 6, 304, 1, 299, NULL, 56, NULL),
(699, 28, 2, 305, 1, 300, NULL, 56, NULL),
(700, 28, 3, 306, 1, 301, NULL, 56, NULL),
(701, 28, 27, NULL, NULL, NULL, NULL, 56, NULL),
(702, 28, 82, NULL, NULL, NULL, NULL, 56, NULL),
(703, 28, 30, NULL, 1, 296, NULL, 56, NULL),
(704, 28, 206, 152, 1, 75, NULL, 56, NULL),
(705, 28, 38, NULL, NULL, NULL, NULL, 56, NULL),
(706, 28, 18, NULL, 4, NULL, NULL, 56, NULL),
(707, 28, 94, NULL, 1, 302, NULL, 56, NULL),
(708, 28, 81, NULL, NULL, NULL, NULL, 56, NULL),
(709, 28, 202, 307, 1, 292, NULL, 56, NULL),
(710, 29, 51, NULL, NULL, NULL, NULL, 20, NULL),
(711, 29, 54, NULL, NULL, NULL, NULL, 20, NULL),
(712, 29, 48, NULL, NULL, NULL, NULL, 20, NULL),
(713, 29, 46, NULL, 1, 293, NULL, 20, NULL),
(714, 29, 96, NULL, NULL, NULL, NULL, 20, NULL),
(715, 29, 95, NULL, NULL, NULL, NULL, 20, NULL),
(716, 29, 32, 308, 4, 303, NULL, 20, NULL),
(717, 29, 34, 309, 1, 304, NULL, 20, NULL),
(718, 29, 31, 310, 4, 305, NULL, 20, NULL),
(719, 29, 86, 311, 1, 294, NULL, 20, NULL),
(720, 29, 87, 312, 3, 295, NULL, 20, NULL),
(721, 29, 49, 313, NULL, NULL, NULL, 20, NULL),
(722, 29, 4, 314, 1, 297, NULL, 20, NULL),
(723, 29, 5, 315, 1, 298, NULL, 20, NULL),
(724, 29, 6, 316, 1, 299, NULL, 20, NULL),
(725, 29, 2, 317, 3, 300, NULL, 20, NULL),
(726, 29, 3, 318, 3, 301, NULL, 20, NULL),
(727, 29, 27, NULL, NULL, NULL, NULL, 20, NULL),
(728, 29, 30, NULL, 4, 296, NULL, 20, NULL),
(729, 29, 206, 319, 3, 75, NULL, 20, NULL),
(730, 29, 38, NULL, NULL, NULL, NULL, 20, NULL),
(731, 29, 401, NULL, 1, NULL, NULL, 20, NULL),
(732, 29, 202, 295, 4, 292, NULL, 20, NULL),
(733, 30, 51, NULL, NULL, NULL, NULL, 24, NULL),
(734, 30, 54, NULL, NULL, NULL, NULL, 24, NULL),
(735, 30, 48, NULL, NULL, NULL, NULL, 24, NULL),
(736, 30, 46, NULL, 2, 293, NULL, 24, NULL),
(737, 30, 96, NULL, NULL, NULL, NULL, 24, NULL),
(738, 30, 95, NULL, NULL, NULL, NULL, 24, NULL),
(739, 30, 100, NULL, NULL, NULL, NULL, 24, NULL),
(740, 30, 32, 321, 1, 303, NULL, 24, NULL),
(741, 30, 34, 322, 4, 306, NULL, 24, NULL),
(742, 30, 31, 323, 1, 307, NULL, 24, NULL),
(743, 30, 86, 296, 1, 294, NULL, 24, NULL),
(744, 30, 87, 324, 3, 295, NULL, 24, NULL),
(745, 30, 49, 325, NULL, NULL, NULL, 24, NULL),
(746, 30, 71, NULL, NULL, NULL, NULL, 24, NULL),
(747, 30, 70, NULL, NULL, NULL, NULL, 24, NULL),
(748, 30, 4, 326, 1, 297, NULL, 24, NULL),
(749, 30, 5, 327, 1, 298, NULL, 24, NULL),
(750, 30, 6, 328, 1, 299, NULL, 24, NULL),
(751, 30, 2, 329, 3, 300, NULL, 24, NULL),
(752, 30, 3, 330, 1, 301, NULL, 24, NULL),
(753, 30, 27, NULL, NULL, NULL, NULL, 24, NULL),
(754, 30, 82, NULL, NULL, NULL, NULL, 24, NULL),
(755, 30, 30, NULL, 1, 296, NULL, 24, NULL),
(756, 30, 206, 331, 1, 75, NULL, 24, NULL),
(757, 30, 38, NULL, NULL, NULL, NULL, 24, NULL),
(758, 30, 18, NULL, 1, NULL, NULL, 24, NULL),
(759, 30, 94, NULL, 1, 302, NULL, 24, NULL),
(760, 30, 56, NULL, NULL, NULL, NULL, 24, NULL),
(761, 30, 73, NULL, NULL, NULL, NULL, 24, NULL),
(762, 30, 202, 332, 4, 292, NULL, 35, NULL),
(763, 30, 202, 153, 1, 292, NULL, 31, NULL),
(764, 31, 51, NULL, NULL, NULL, NULL, 56, NULL),
(765, 31, 54, NULL, NULL, NULL, NULL, 56, NULL),
(766, 31, 48, NULL, NULL, NULL, NULL, 56, NULL),
(767, 31, 46, NULL, 1, 293, NULL, 56, NULL),
(768, 31, 96, NULL, NULL, NULL, NULL, 56, NULL),
(769, 31, 95, NULL, NULL, NULL, NULL, 56, NULL),
(770, 31, 32, 336, 1, 303, NULL, 56, NULL),
(771, 31, 34, 337, 1, 308, NULL, 56, NULL),
(772, 31, 31, 338, 1, 309, NULL, 56, NULL),
(773, 31, 86, 339, 1, 294, NULL, 56, NULL),
(774, 31, 87, 340, 1, 295, NULL, 56, NULL),
(775, 31, 49, 341, NULL, NULL, NULL, 56, NULL),
(776, 31, 71, NULL, NULL, NULL, NULL, 56, NULL),
(777, 31, 70, NULL, NULL, NULL, NULL, 56, NULL),
(778, 31, 4, 342, 1, 297, NULL, 56, NULL),
(779, 31, 5, 343, 3, 298, NULL, 56, NULL),
(780, 31, 6, 344, 1, 299, NULL, 56, NULL),
(781, 31, 2, 345, 3, 300, NULL, 56, NULL),
(782, 31, 3, 346, 3, 301, NULL, 56, NULL),
(783, 31, 30, NULL, 4, 296, NULL, 56, NULL),
(784, 31, 206, 347, 1, 75, NULL, 56, NULL),
(785, 31, 38, NULL, NULL, NULL, NULL, 56, NULL),
(786, 31, 18, NULL, 1, NULL, NULL, 56, NULL),
(787, 31, 94, NULL, 1, 302, NULL, 56, NULL),
(788, 31, 401, NULL, 1, NULL, NULL, NULL, NULL),
(789, 31, 402, NULL, 1, NULL, NULL, NULL, NULL),
(790, 31, 202, 307, 1, 292, NULL, 56, NULL),
(791, 17, 32, 274, 2, 310, NULL, NULL, NULL),
(792, 18, 32, 274, 2, 311, NULL, NULL, NULL),
(793, 19, 32, 274, 2, 312, NULL, NULL, NULL),
(794, 20, 32, 274, 2, 313, NULL, NULL, NULL),
(795, 21, 32, 274, 2, 314, NULL, NULL, NULL),
(796, 12, 9, NULL, 1, 315, NULL, NULL, NULL),
(797, 13, 9, NULL, 1, 316, NULL, NULL, NULL),
(798, 14, 9, NULL, 1, 317, NULL, NULL, NULL),
(799, 15, 49, 349, NULL, NULL, NULL, 30, NULL),
(800, 15, 9, NULL, 1, 318, NULL, NULL, NULL),
(801, 16, 9, NULL, 1, 319, NULL, NULL, NULL),
(802, 32, 48, NULL, NULL, NULL, NULL, 37, NULL),
(803, 32, 48, NULL, NULL, NULL, NULL, 60, NULL),
(804, 32, 51, NULL, NULL, NULL, NULL, 37, NULL),
(805, 32, 51, NULL, NULL, NULL, NULL, 60, NULL),
(806, 32, 54, NULL, NULL, NULL, NULL, 37, NULL),
(807, 32, 54, NULL, NULL, NULL, NULL, 60, NULL),
(808, 32, 46, NULL, 4, NULL, NULL, 37, NULL),
(809, 32, 46, NULL, 4, NULL, NULL, 60, NULL),
(810, 32, 3, 352, NULL, 320, NULL, 37, NULL),
(811, 32, 3, 352, NULL, 320, NULL, 60, NULL),
(812, 32, 32, NULL, 2, 321, NULL, 37, NULL),
(813, 32, 32, NULL, 2, 321, NULL, 60, NULL),
(814, 32, 38, NULL, NULL, NULL, NULL, 37, NULL),
(815, 32, 38, NULL, NULL, NULL, NULL, 60, NULL),
(816, 32, 27, NULL, NULL, NULL, NULL, 37, NULL),
(817, 32, 27, NULL, NULL, NULL, NULL, 60, NULL),
(818, 32, 401, NULL, 3, NULL, NULL, 60, NULL),
(819, 32, 302, 353, NULL, NULL, NULL, 60, NULL),
(820, 32, 401, NULL, 1, NULL, NULL, 60, NULL),
(821, 32, 302, 353, NULL, NULL, NULL, 37, NULL),
(822, 33, 48, NULL, NULL, NULL, NULL, 28, NULL),
(823, 33, 48, NULL, NULL, NULL, NULL, 62, NULL),
(824, 33, 51, NULL, NULL, NULL, NULL, 28, NULL),
(825, 33, 51, NULL, NULL, NULL, NULL, 62, NULL),
(826, 33, 54, NULL, NULL, NULL, NULL, 28, NULL),
(827, 33, 54, NULL, NULL, NULL, NULL, 62, NULL),
(828, 33, 46, NULL, 1, NULL, NULL, 28, NULL),
(829, 33, 46, NULL, 1, NULL, NULL, 62, NULL),
(830, 33, 3, 352, 2, 320, NULL, 28, NULL),
(831, 33, 3, 352, 2, 320, NULL, 62, NULL),
(832, 33, 32, NULL, 2, 321, NULL, 28, NULL),
(833, 33, 32, NULL, 2, 321, NULL, 62, NULL),
(834, 33, 38, NULL, NULL, NULL, NULL, 28, NULL),
(835, 33, 38, NULL, NULL, NULL, NULL, 62, NULL),
(836, 33, 27, NULL, NULL, NULL, NULL, 28, NULL),
(837, 33, 27, NULL, NULL, NULL, NULL, 62, NULL),
(838, 33, 401, NULL, 1, NULL, NULL, 63, NULL),
(839, 33, 302, 353, NULL, NULL, NULL, 62, NULL),
(840, 33, 401, NULL, 1, NULL, NULL, 62, NULL),
(841, 33, 302, 353, NULL, NULL, NULL, 28, NULL),
(842, 34, 48, NULL, NULL, NULL, NULL, 28, NULL),
(843, 34, 48, NULL, NULL, NULL, NULL, 65, NULL),
(844, 34, 51, NULL, NULL, NULL, NULL, 28, NULL),
(845, 34, 51, NULL, NULL, NULL, NULL, 65, NULL),
(846, 34, 54, NULL, NULL, NULL, NULL, 28, NULL),
(847, 34, 54, NULL, NULL, NULL, NULL, 65, NULL),
(848, 34, 46, NULL, 4, NULL, NULL, 28, NULL),
(849, 34, 46, NULL, 4, NULL, NULL, 65, NULL),
(850, 34, 3, 352, NULL, 320, NULL, 28, NULL),
(851, 34, 3, 352, NULL, 320, NULL, 65, NULL),
(852, 34, 32, NULL, 1, 321, NULL, 28, NULL),
(853, 34, 32, NULL, 1, 321, NULL, 65, NULL),
(854, 34, 38, NULL, NULL, NULL, NULL, 28, NULL),
(855, 34, 38, NULL, NULL, NULL, NULL, 65, NULL),
(856, 34, 27, NULL, NULL, NULL, NULL, 28, NULL),
(857, 34, 27, NULL, NULL, NULL, NULL, 65, NULL),
(858, 34, 401, NULL, 3, NULL, NULL, 66, NULL),
(859, 34, 302, 353, NULL, NULL, NULL, 65, NULL),
(860, 34, 401, NULL, 3, NULL, NULL, 65, NULL),
(861, 34, 302, 353, NULL, NULL, NULL, 28, NULL),
(862, 35, 48, NULL, NULL, NULL, NULL, 28, NULL),
(863, 35, 48, NULL, NULL, NULL, NULL, 68, NULL),
(864, 35, 51, NULL, NULL, NULL, NULL, 28, NULL),
(865, 35, 51, NULL, NULL, NULL, NULL, 68, NULL),
(866, 35, 54, NULL, NULL, NULL, NULL, 28, NULL),
(867, 35, 54, NULL, NULL, NULL, NULL, 68, NULL),
(868, 35, 46, NULL, 1, NULL, NULL, 28, NULL),
(869, 35, 46, NULL, 1, NULL, NULL, 68, NULL),
(870, 35, 3, 352, NULL, 320, NULL, 28, NULL),
(871, 35, 3, 352, NULL, 320, NULL, 68, NULL),
(872, 35, 32, NULL, 1, 321, NULL, 28, NULL),
(873, 35, 32, NULL, 1, 321, NULL, 68, NULL),
(874, 35, 38, NULL, NULL, NULL, NULL, 28, NULL),
(875, 35, 38, NULL, NULL, NULL, NULL, 68, NULL),
(876, 35, 27, NULL, NULL, NULL, NULL, 28, NULL),
(877, 35, 27, NULL, NULL, NULL, NULL, 68, NULL),
(878, 35, 401, NULL, 1, NULL, NULL, 69, NULL),
(879, 35, 302, 353, NULL, NULL, NULL, 68, NULL),
(880, 35, 401, NULL, 1, NULL, NULL, 68, NULL),
(881, 35, 302, 353, NULL, NULL, NULL, 28, NULL),
(882, 36, 48, NULL, NULL, NULL, NULL, 31, NULL),
(883, 36, 48, NULL, NULL, NULL, NULL, 71, NULL),
(884, 36, 51, NULL, NULL, NULL, NULL, 31, NULL),
(885, 36, 51, NULL, NULL, NULL, NULL, 71, NULL),
(886, 36, 54, NULL, NULL, NULL, NULL, 31, NULL),
(887, 36, 54, NULL, NULL, NULL, NULL, 71, NULL),
(888, 36, 46, NULL, 1, NULL, NULL, 31, NULL),
(889, 36, 46, NULL, 1, NULL, NULL, 71, NULL),
(890, 36, 3, 352, NULL, 320, NULL, 31, NULL),
(891, 36, 3, 352, NULL, 320, NULL, 71, NULL),
(892, 36, 32, NULL, 2, 321, NULL, 31, NULL),
(893, 36, 32, NULL, 2, 321, NULL, 71, NULL),
(894, 36, 38, NULL, NULL, NULL, NULL, 31, NULL),
(895, 36, 38, NULL, NULL, NULL, NULL, 71, NULL),
(896, 36, 27, NULL, NULL, NULL, NULL, 31, NULL),
(897, 36, 27, NULL, NULL, NULL, NULL, 71, NULL),
(898, 36, 401, NULL, 3, NULL, NULL, 72, NULL),
(899, 36, 302, 353, NULL, NULL, NULL, 71, NULL),
(900, 36, 401, NULL, 3, NULL, NULL, 71, NULL),
(901, 36, 302, 353, NULL, NULL, NULL, 31, NULL),
(902, 37, 51, NULL, NULL, NULL, NULL, 25, NULL),
(903, 37, 54, NULL, NULL, NULL, NULL, 25, NULL),
(904, 37, 86, 354, 1, 322, NULL, 25, NULL),
(905, 37, 87, 355, 1, 323, NULL, 25, NULL),
(906, 37, 38, NULL, NULL, NULL, NULL, 25, NULL),
(907, 37, 31, 356, 1, 324, NULL, 25, NULL),
(908, 37, 32, 357, 4, 325, NULL, 25, NULL),
(909, 37, 34, 358, 1, 326, NULL, 25, NULL),
(910, 38, 51, NULL, NULL, NULL, NULL, 19, NULL),
(911, 38, 54, NULL, NULL, NULL, NULL, 19, NULL),
(912, 38, 48, NULL, NULL, NULL, NULL, 19, NULL),
(913, 38, 49, 359, NULL, NULL, NULL, 19, NULL),
(914, 38, 46, NULL, 4, 327, NULL, 19, NULL),
(915, 38, 86, 360, 1, 322, NULL, 19, NULL),
(916, 38, 87, 159, 1, 323, NULL, 19, NULL),
(917, 38, 38, NULL, NULL, NULL, NULL, 19, NULL),
(918, 38, 31, 361, 4, 328, NULL, 19, NULL),
(919, 38, 32, 362, 4, 325, NULL, 19, NULL),
(920, 38, 34, 363, 1, 329, NULL, 19, NULL),
(921, 39, 51, NULL, NULL, NULL, NULL, 19, NULL),
(922, 39, 54, NULL, NULL, NULL, NULL, 19, NULL),
(923, 39, 48, NULL, NULL, NULL, NULL, 19, NULL),
(924, 39, 49, 364, NULL, NULL, NULL, 19, NULL),
(925, 39, 46, NULL, 4, 327, NULL, 19, NULL),
(926, 39, 86, 365, 1, 322, NULL, 19, NULL),
(927, 39, 87, 366, 1, 323, NULL, 19, NULL),
(928, 39, 38, NULL, NULL, NULL, NULL, 19, NULL),
(929, 39, 31, 367, 1, 330, NULL, 19, NULL),
(930, 39, 32, 336, 1, 325, NULL, 19, NULL),
(931, 39, 34, 368, 1, 331, NULL, 19, NULL),
(932, 40, 51, NULL, NULL, NULL, NULL, 49, NULL),
(933, 40, 54, NULL, NULL, NULL, NULL, 49, NULL),
(934, 40, 48, NULL, NULL, NULL, NULL, 49, NULL),
(935, 40, 49, 369, NULL, NULL, NULL, 49, NULL),
(936, 40, 46, NULL, 4, 327, NULL, 49, NULL),
(937, 40, 86, 370, 1, 322, NULL, 49, NULL),
(938, 40, 87, 355, 1, 323, NULL, 49, NULL),
(939, 40, 38, NULL, NULL, NULL, NULL, 49, NULL),
(940, 40, 31, 371, 1, 332, NULL, 49, NULL),
(941, 40, 32, 372, 4, 325, NULL, 49, NULL),
(942, 40, 34, 373, 1, 333, NULL, 49, NULL),
(943, 41, 51, NULL, NULL, NULL, NULL, 25, NULL),
(944, 41, 54, NULL, NULL, NULL, NULL, 25, NULL),
(945, 41, 48, NULL, NULL, NULL, NULL, 25, NULL),
(946, 41, 49, 374, NULL, NULL, NULL, 25, NULL),
(947, 41, 46, NULL, 4, 327, NULL, 25, NULL),
(948, 41, 86, 375, 1, 322, NULL, 25, NULL),
(949, 41, 87, 376, 1, 323, NULL, 25, NULL),
(950, 41, 38, NULL, NULL, NULL, NULL, 25, NULL),
(951, 41, 31, 377, 1, 334, NULL, 25, NULL),
(952, 41, 32, 378, 1, 325, NULL, 25, NULL),
(953, 41, 34, 379, 1, 335, NULL, 25, NULL),
(954, 12, 9, NULL, 1, 336, NULL, NULL, NULL),
(955, 13, 9, NULL, 1, 337, NULL, NULL, NULL),
(956, 14, 9, NULL, 1, 338, NULL, NULL, NULL),
(957, 15, 49, 381, NULL, NULL, NULL, 30, NULL),
(958, 15, 9, NULL, 1, 339, NULL, NULL, NULL),
(959, 16, 9, NULL, 1, 340, NULL, NULL, NULL),
(960, 12, 9, NULL, 1, 341, NULL, NULL, NULL),
(961, 13, 9, NULL, 1, 342, NULL, NULL, NULL),
(962, 14, 9, NULL, 1, 343, NULL, NULL, NULL),
(963, 17, 32, 274, 2, 344, NULL, NULL, NULL),
(964, 18, 32, 274, 2, 345, NULL, NULL, NULL),
(965, 19, 32, 274, 2, 346, NULL, NULL, NULL),
(966, 20, 32, 274, 2, 347, NULL, NULL, NULL),
(967, 21, 32, 274, 2, 348, NULL, NULL, NULL),
(969, 37, 31, 387, 1, 349, NULL, 25, NULL),
(970, 37, 32, 388, 4, 325, NULL, 25, NULL),
(971, 37, 34, 389, 1, 350, NULL, 25, NULL),
(972, 38, 49, 390, NULL, NULL, NULL, 19, NULL),
(973, 38, 31, 391, 4, 351, NULL, 19, NULL),
(974, 38, 32, 392, 4, 325, NULL, 19, NULL),
(975, 38, 34, 393, 1, 352, NULL, 19, NULL),
(976, 39, 49, 394, NULL, NULL, NULL, 19, NULL),
(977, 39, 31, 395, 1, 353, NULL, 19, NULL),
(978, 39, 34, 396, 1, 354, NULL, 19, NULL),
(979, 40, 49, 397, NULL, NULL, NULL, 49, NULL),
(980, 40, 31, 398, 1, 355, NULL, 49, NULL),
(981, 40, 34, 399, 1, 356, NULL, 49, NULL),
(982, 41, 49, 400, NULL, NULL, NULL, 25, NULL),
(983, 41, 31, 401, 1, 357, NULL, 25, NULL),
(984, 41, 34, 402, 1, 358, NULL, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_medical_imaging_test`
--

CREATE TABLE `exam_medical_imaging_test` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `TEST_ID` smallint(5) UNSIGNED NOT NULL,
  `ASSESSMENT_ID` smallint(5) UNSIGNED NOT NULL,
  `TEST_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_questionnaire_score`
--

CREATE TABLE `exam_questionnaire_score` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `SCORE_ID` smallint(5) UNSIGNED NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `ASSESSMENT_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `NORMAL_RANGE_ID` int(10) UNSIGNED DEFAULT NULL,
  `OTHER_TERM_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'For those test with outcome: "Number and/or Term"',
  `QUESTIONNAIRE_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_questionnaire_score`
--

INSERT INTO `exam_questionnaire_score` (`ID`, `PATIENT_ID`, `SCORE_ID`, `VALUE`, `ASSESSMENT_ID`, `NORMAL_RANGE_ID`, `OTHER_TERM_ID`, `QUESTIONNAIRE_DATE_ID`, `VISIT_ID`) VALUES
(1, 32, 2, 6, NULL, NULL, NULL, 37, NULL),
(2, 32, 1, 3, NULL, NULL, NULL, 37, NULL),
(3, 33, 2, 8, NULL, NULL, NULL, 28, NULL),
(4, 33, 1, 0, NULL, NULL, NULL, 28, NULL),
(5, 34, 2, 5, NULL, NULL, NULL, 28, NULL),
(6, 34, 1, 1, NULL, NULL, NULL, 28, NULL),
(7, 35, 2, 6, NULL, NULL, NULL, 28, NULL),
(8, 35, 1, 0, NULL, NULL, NULL, 28, NULL),
(9, 36, 1, 0, NULL, NULL, NULL, 31, NULL),
(10, 37, 1, 7, 4, 1, NULL, 25, NULL),
(11, 38, 1, 9, 4, 1, NULL, 19, NULL),
(12, 39, 1, 6, 4, 1, NULL, 19, NULL),
(13, 40, 1, 6, 4, 1, NULL, 49, NULL),
(14, 41, 1, 9, 4, 1, NULL, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interv_chemotherapy`
--

CREATE TABLE `interv_chemotherapy` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `DUE_TO_PSS_ID` tinyint(4) UNSIGNED DEFAULT NULL,
  `PERIOD_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interv_medication`
--

CREATE TABLE `interv_medication` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `MEDICATION_ID` smallint(5) UNSIGNED NOT NULL,
  `DOSAGE_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'Dosage Amount/Frequency (specified in the unit)',
  `PERIOD_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interv_medication`
--

INSERT INTO `interv_medication` (`ID`, `PATIENT_ID`, `MEDICATION_ID`, `DOSAGE_ID`, `PERIOD_ID`, `VISIT_ID`) VALUES
(1, 13, 1, NULL, 1, NULL),
(2, 13, 6, NULL, 2, NULL),
(3, 13, 8, NULL, 3, NULL),
(4, 13, 24, NULL, 2, NULL),
(5, 14, 37, NULL, NULL, NULL),
(6, 15, 37, NULL, NULL, NULL),
(7, 15, 1, NULL, 4, NULL),
(8, 15, 8, NULL, 5, NULL),
(9, 16, 37, NULL, NULL, NULL),
(10, 16, 1, NULL, 6, NULL),
(11, 16, 5, NULL, 1, NULL),
(12, 16, 8, NULL, 7, NULL),
(13, 16, 19, NULL, 8, NULL),
(14, 12, 37, NULL, NULL, NULL),
(15, 12, 1, NULL, NULL, NULL),
(16, 12, 5, NULL, NULL, NULL),
(17, 12, 6, NULL, NULL, NULL),
(18, 12, 11, NULL, NULL, NULL),
(19, 12, 7, NULL, NULL, NULL),
(20, 12, 8, NULL, NULL, NULL),
(21, 12, 15, NULL, NULL, NULL),
(22, 12, 10, NULL, NULL, NULL),
(23, 12, 24, NULL, NULL, NULL),
(24, 12, 19, NULL, NULL, NULL),
(25, 12, 20, NULL, NULL, NULL),
(26, 12, 28, NULL, NULL, NULL),
(27, 12, 29, NULL, NULL, NULL),
(28, 13, 37, NULL, NULL, NULL),
(29, 13, 5, NULL, NULL, NULL),
(30, 13, 11, NULL, NULL, NULL),
(31, 13, 7, NULL, NULL, NULL),
(32, 13, 15, NULL, NULL, NULL),
(33, 13, 10, NULL, NULL, NULL),
(34, 13, 19, NULL, NULL, NULL),
(35, 13, 20, NULL, NULL, NULL),
(36, 13, 28, NULL, NULL, NULL),
(37, 13, 29, NULL, NULL, NULL),
(38, 14, 1, NULL, NULL, NULL),
(39, 14, 5, NULL, NULL, NULL),
(40, 14, 6, NULL, NULL, NULL),
(41, 14, 11, NULL, NULL, NULL),
(42, 14, 7, NULL, NULL, NULL),
(43, 14, 8, NULL, NULL, NULL),
(44, 14, 15, NULL, NULL, NULL),
(45, 14, 10, NULL, NULL, NULL),
(46, 14, 24, NULL, NULL, NULL),
(47, 14, 19, NULL, NULL, NULL),
(48, 14, 20, NULL, NULL, NULL),
(49, 14, 28, NULL, NULL, NULL),
(50, 14, 29, NULL, NULL, NULL),
(51, 15, 5, NULL, NULL, NULL),
(52, 15, 6, NULL, NULL, NULL),
(53, 15, 11, NULL, NULL, NULL),
(54, 15, 7, NULL, NULL, NULL),
(55, 15, 15, NULL, NULL, NULL),
(56, 15, 10, NULL, NULL, NULL),
(57, 15, 24, NULL, NULL, NULL),
(58, 15, 19, NULL, NULL, NULL),
(59, 15, 20, NULL, NULL, NULL),
(60, 15, 28, NULL, NULL, NULL),
(61, 15, 29, NULL, NULL, NULL),
(62, 16, 6, NULL, NULL, NULL),
(63, 16, 11, NULL, NULL, NULL),
(64, 16, 7, NULL, NULL, NULL),
(65, 16, 15, NULL, NULL, NULL),
(66, 16, 10, NULL, NULL, NULL),
(67, 16, 24, NULL, NULL, NULL),
(68, 16, 20, NULL, NULL, NULL),
(69, 16, 28, NULL, NULL, NULL),
(70, 16, 29, NULL, NULL, NULL),
(71, 30, 2, NULL, 9, NULL),
(72, 30, 8, NULL, 9, NULL),
(73, 30, 19, NULL, 9, NULL),
(74, 30, 37, NULL, 9, NULL),
(75, 30, 5, NULL, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interv_surgery`
--

CREATE TABLE `interv_surgery` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `DUE_TO_PSS_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `SURGERY_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lifestyle_smoking`
--

CREATE TABLE `lifestyle_smoking` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `STATUS_ID` smallint(5) UNSIGNED NOT NULL,
  `AMOUNT_ID` int(10) UNSIGNED DEFAULT NULL COMMENT 'packets of cigarettes per year',
  `PERIOD_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lifestyle_smoking`
--

INSERT INTO `lifestyle_smoking` (`ID`, `PATIENT_ID`, `STATUS_ID`, `AMOUNT_ID`, `PERIOD_ID`, `VISIT_ID`) VALUES
(1, 13, 3, NULL, NULL, NULL),
(2, 14, 3, NULL, NULL, NULL),
(3, 15, 3, NULL, NULL, NULL),
(4, 16, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `other_clinical_trials`
--

CREATE TABLE `other_clinical_trials` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `PERIOD_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `other_family_history`
--

CREATE TABLE `other_family_history` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `MEDICAL_CONDITION_ID` smallint(5) UNSIGNED NOT NULL,
  `RELATIVE_DEGREE_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `other_healthcare_visit`
--

CREATE TABLE `other_healthcare_visit` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `SPECIALIST_ID` smallint(5) UNSIGNED NOT NULL,
  `DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `VISIT_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(10) UNSIGNED NOT NULL,
  `UID` varchar(20) NOT NULL,
  `DATE_OF_BIRTH_ID` int(10) UNSIGNED DEFAULT NULL,
  `PSS_SYMPTOMS_ONSET_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `PSS_DIAGNOSIS_DATE_ID` int(10) UNSIGNED DEFAULT NULL,
  `COHORT_INCLUSION_DATE_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `UID`, `DATE_OF_BIRTH_ID`, `PSS_SYMPTOMS_ONSET_DATE_ID`, `PSS_DIAGNOSIS_DATE_ID`, `COHORT_INCLUSION_DATE_ID`) VALUES
(12, '36.1f', 18, 19, 20, NULL),
(13, '36.2f', 21, 22, 22, NULL),
(14, '36.3f', 26, 27, 27, NULL),
(15, '36.4f', 29, 30, 30, NULL),
(16, '36.5f', 32, 33, 34, NULL),
(17, '1', 38, 30, 37, NULL),
(18, '2', 39, 40, 41, NULL),
(19, '3', 42, 25, 41, NULL),
(20, '4', 43, NULL, 41, NULL),
(21, '5', 39, 44, 45, NULL),
(22, 'A01', 46, 36, 41, NULL),
(23, 'Bxyz', 47, 37, 19, NULL),
(24, 'Ccccccc', 48, 49, 41, NULL),
(25, 'D01dd', 50, 51, 52, NULL),
(27, '1', 53, 54, 22, NULL),
(28, '2', 18, 27, 56, NULL),
(29, '3', 57, 24, 20, NULL),
(30, '4', 58, 35, 24, NULL),
(31, '5', 43, 20, 56, NULL),
(32, '1', 59, NULL, 37, NULL),
(33, '2', 61, NULL, 28, NULL),
(34, '3', 64, NULL, 28, NULL),
(35, '4', 67, NULL, 28, NULL),
(36, '5', 70, NULL, 31, NULL),
(37, '5', 38, 73, 25, NULL),
(38, '284', 18, 74, 19, NULL),
(39, '7', 32, 75, 19, NULL),
(40, '3', 76, 77, 49, NULL),
(41, '1', 78, 74, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_visit`
--

CREATE TABLE `patient_visit` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PATIENT_ID` int(10) UNSIGNED NOT NULL,
  `VISIT_DATE_ID` int(10) UNSIGNED NOT NULL,
  `VISIT_TYPE_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `VISIT_STATUS_ID` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voc_activity_level`
--

CREATE TABLE `voc_activity_level` (
  `ID` smallint(10) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `ACTIVITY_LEVEL` varchar(10) NOT NULL,
  `VALUE` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_activity_level`
--

INSERT INTO `voc_activity_level` (`ID`, `CODE`, `ACTIVITY_LEVEL`, `VALUE`) VALUES
(0, 'ACTLVL-00', 'NO', 0),
(1, 'ACTLVL-01', 'LOW', 1),
(2, 'ACTLVL-02', 'MODERATE', 2),
(3, 'ACTLVL-03', 'HIGH', 3);

-- --------------------------------------------------------

--
-- Table structure for table `voc_ana_pattern`
--

CREATE TABLE `voc_ana_pattern` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_ana_pattern`
--

INSERT INTO `voc_ana_pattern` (`ID`, `CODE`, `NAME`) VALUES
(1, 'ANA-PAT-01', 'Nuclear speckled'),
(2, 'ANA-PAT-02', 'Nuclear homogeneous'),
(3, 'ANA-PAT-03', 'Nucleolar'),
(4, 'ANA-PAT-04', 'Anticentromere'),
(5, 'ANA-PAT-05', 'Cytoplasmic antimitochondrial'),
(6, 'ANA-PAT-06', 'Other nuclear '),
(7, 'ANA-PAT-07', 'Other cytoplasmic');

-- --------------------------------------------------------

--
-- Table structure for table `voc_assessment`
--

CREATE TABLE `voc_assessment` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Normal / Abnormal values';

--
-- Dumping data for table `voc_assessment`
--

INSERT INTO `voc_assessment` (`ID`, `CODE`, `NAME`, `BROADER_TERM_ID`) VALUES
(1, 'ASSESS-10', 'Normal ', NULL),
(2, 'ASSESS-20', 'Abnormal ', NULL),
(3, 'ASSESS-21', 'Below Down Normal Limit (DNL)', 2),
(4, 'ASSESS-22', 'Above Upper Normal Limit (UNL)', 2);

-- --------------------------------------------------------

--
-- Table structure for table `voc_biopsy`
--

CREATE TABLE `voc_biopsy` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salivary gland biopsy';

--
-- Dumping data for table `voc_biopsy`
--

INSERT INTO `voc_biopsy` (`ID`, `CODE`, `NAME`, `BROADER_TERM_ID`) VALUES
(1, 'SAL-BIO-10', 'Major Salivary Gland Biopsy', NULL),
(2, 'SAL-BIO-11', 'Parotid Gland Biopsy', 1),
(3, 'SAL-BIO-12', 'Submandibular Gland Biopsy', 1),
(4, 'SAL-BIO-13', 'Sublingual Gland Biopsy', 1),
(5, 'SAL-BIO-20', 'Minor Salivary Gland Biopsy', NULL),
(6, 'SAL-BIO-21', 'Labial Gland (lip) Biopsy', 5);

-- --------------------------------------------------------

--
-- Table structure for table `voc_bmi_class`
--

CREATE TABLE `voc_bmi_class` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Body mass index (BMI)';

--
-- Dumping data for table `voc_bmi_class`
--

INSERT INTO `voc_bmi_class` (`ID`, `CODE`, `NAME`) VALUES
(1, 'BMI-01', 'Underweight (BMI < 18.5)'),
(2, 'BMI-02', 'Normal Weight (BMI 18.5 - 24.9)'),
(3, 'BMI-03', 'Overweight (BMI 25 - 29.9)'),
(4, 'BMI-04', 'Obesity (BMI >= 30)');

-- --------------------------------------------------------

--
-- Table structure for table `voc_caci_condition`
--

CREATE TABLE `voc_caci_condition` (
  `ID` smallint(10) UNSIGNED NOT NULL,
  `CODE` varchar(20) NOT NULL,
  `CONDITION` varchar(150) NOT NULL,
  `SCORE` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Charlson-Age Comorbidity Index (CACI)';

--
-- Dumping data for table `voc_caci_condition`
--

INSERT INTO `voc_caci_condition` (`ID`, `CODE`, `CONDITION`, `SCORE`) VALUES
(1, 'CACI-01', 'Acquired immunodeficiency Syndrome (AIDS)', 6),
(2, 'CACI-02', 'Metastatic solid tumor', 6),
(3, 'CACI-03', 'Moderate or severe liver disease', 3),
(4, 'CACI-04', 'Any non-metastatic solid tumor', 2),
(5, 'CACI-05', 'Malignant lymphoma', 2),
(6, 'CACI-06', 'Leukemia', 2),
(7, 'CACI-07', 'Diabetes with end organ damage', 2),
(8, 'CACI-08', 'Moderate or severe renal disease', 2),
(9, 'CACI-09', 'Hemiplegia', 2),
(10, 'CACI-10', 'Diabetes without end organ damage', 1),
(11, 'CACI-11', 'Mild liver disease', 1),
(12, 'CACI-12', 'Ulcer disease', 1),
(13, 'CACI-13', 'Connective tissue disease', 1),
(14, 'CACI-14', 'Chronic pulmonary disease', 1),
(15, 'CACI-15', 'Dementia', 1),
(16, 'CACI-16', 'Cerebrovascular disease', 1),
(17, 'CACI-17', 'Peripheral vascular disease', 1),
(18, 'CACI-18', 'Congestive heart failure', 1),
(19, 'CACI-19', 'Myocardial infarction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voc_confirmation`
--

CREATE TABLE `voc_confirmation` (
  `ID` tinyint(3) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `ACRONYM` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Yes or No values';

--
-- Dumping data for table `voc_confirmation`
--

INSERT INTO `voc_confirmation` (`ID`, `CODE`, `NAME`, `ACRONYM`) VALUES
(1, 'CONFIRM-01', 'True / Yes', 'T'),
(2, 'CONFIRM-02', 'False / No', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `voc_cryo_type`
--

CREATE TABLE `voc_cryo_type` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cryoglobulin Type';

--
-- Dumping data for table `voc_cryo_type`
--

INSERT INTO `voc_cryo_type` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'CRYO-01', 'Type I', 'Monoclonal Cryoglobulin Monoclonal IgG, IgM, IgA, or their κ or λ light chains'),
(2, 'CRYO-02', 'Type II', 'Mixed Cryoglobulin with a Monoclonal component Monoclonal IgM plus polyclonal IgG or, rarely, IgA'),
(3, 'CRYO-03', 'Type III', 'Mixed Polyclonal Cryoglobulin Polyclonal IgM plus polyclonal IgG or IgA');

-- --------------------------------------------------------

--
-- Table structure for table `voc_direction`
--

CREATE TABLE `voc_direction` (
  `ID` tinyint(4) NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACRONYM` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_direction`
--

INSERT INTO `voc_direction` (`ID`, `CODE`, `NAME`, `ACRONYM`) VALUES
(1, 'OP-DBA-01', 'Before', 'B'),
(2, 'OP-DBA-02', 'During', 'D'),
(3, 'OP-DBA-03', 'After', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `voc_education_level`
--

CREATE TABLE `voc_education_level` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_education_level`
--

INSERT INTO `voc_education_level` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'EDU-LEV-01', 'Primary Education', 'Primary education and elementary education is typically the first stage of formal education, coming after preschool and before secondary education (The first two grades of primary school, Grades 1 and 2, are also part of early childhood education).'),
(2, 'EDU-LEV-02', 'Secondary Education', 'Secondary education covers two phases on the International Standard Classification of Education (ISCED) scale. Level 2 or lower secondary education (less common junior secondary education) is considered the second and final phase of basic education, and level 3 (upper) secondary education is the stage before tertiary education.'),
(3, 'EDU-LEV-03', 'Tertiary education', 'Tertiary education, also referred to as third stage, third level, and postsecondary education, is the educational level following the completion of a school providing a secondary education.'),
(4, 'EDU-LEV-99', 'Other Education Level', 'Another Education Level that do not belong in the three categories specified.');

-- --------------------------------------------------------

--
-- Table structure for table `voc_essdai_domain`
--

CREATE TABLE `voc_essdai_domain` (
  `ID` smallint(10) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `DOMAIN_NAME` varchar(100) NOT NULL,
  `DOMAIN_WEIGHT` smallint(5) UNSIGNED NOT NULL,
  `EXCLUDE_ACTIVITY_LEVEL` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='EULAR Sjögren''s syndrome disease activity index (ESSDAI)';

--
-- Dumping data for table `voc_essdai_domain`
--

INSERT INTO `voc_essdai_domain` (`ID`, `CODE`, `DOMAIN_NAME`, `DOMAIN_WEIGHT`, `EXCLUDE_ACTIVITY_LEVEL`) VALUES
(1, 'ESSDAI-01', 'Constitutional', 3, 3),
(2, 'ESSDAI-02', 'Lymphadenopathy and lymphoma', 4, NULL),
(3, 'ESSDAI-03', 'Glandular', 2, 3),
(4, 'ESSDAI-04', 'Articular', 2, NULL),
(5, 'ESSDAI-05', 'Cutaneous', 3, NULL),
(6, 'ESSDAI-06', 'Pulmonary', 5, NULL),
(7, 'ESSDAI-07', 'Renal', 5, NULL),
(8, 'ESSDAI-08', 'Muscular', 6, NULL),
(9, 'ESSDAI-09', 'Peripheral nervous system', 5, NULL),
(10, 'ESSDAI-10', 'Central nervous system', 5, 1),
(11, 'ESSDAI-11', 'Hematological', 2, NULL),
(12, 'ESSDAI-12', 'Biological', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voc_ethnicity`
--

CREATE TABLE `voc_ethnicity` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_ethnicity`
--

INSERT INTO `voc_ethnicity` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'ETHN-01', 'Latin', 'A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture or origin, regardless of race. The term, ''Spanish origin'', can be used in addition to ''Hispanic or Latino''.'),
(2, 'ETHN-02', 'American Indian or Alaska Native', 'A person having origins in any of the original peoples of North and South America (including Central America), and who maintains tribal affiliation or community attachment.'),
(3, 'ETHN-03', 'Asian', 'A person having origins in any of the original peoples of the Far East, Southeast Asia, or the Indian subcontinent, including, for example, Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Philippine Islands, Thailand, and Vietnam.'),
(4, 'ETHN-04', 'Black or African American', 'A person having origins in any of the black racial groups of Africa. Terms such as ''Haitian'' or ''Negro'' can be used in addition to ''Black or African American''.'),
(5, 'ETHN-05', 'Native Hawaiian or Other Pacific Islander', 'A person having origins in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific Islands.'),
(6, 'ETHN-06', 'Caucasian', 'A person having origins in any of the original peoples of Europe, the Middle East, or North Africa.');

-- --------------------------------------------------------

--
-- Table structure for table `voc_exam_outcome_type`
--

CREATE TABLE `voc_exam_outcome_type` (
  `ID` tinyint(3) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `NOTES` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_exam_outcome_type`
--

INSERT INTO `voc_exam_outcome_type` (`ID`, `CODE`, `NAME`, `NOTES`) VALUES
(1, 'VALUE-TYPE-01', 'Amount and/or Assessment', 'The value of a test is an amount. We would like to know both the specific amount measured (if available) and whether it was normal or not (including normal range of values, if available/applicable).'),
(2, 'VALUE-TYPE-02', 'Boolean (Yes/No)', 'The value of a test can be Yes/No. The user may still want to characterize whether the yes/no value indicates a normal condition or not. '),
(3, 'VALUE-TYPE-03', 'Assessment Only', 'The value of a test is an amount. However, we are only interested whether it was normal or not (including normal range of values, if available/applicable).'),
(4, 'VALUE-TYPE-04', 'Term', 'The value of a test is a term from a specific List (specified in another DB table).'),
(5, 'VALUE-TYPE-05', 'Number and/or Assessment', 'The value of a test is an number. We would like to know both the specific number (if available) and whether it was normal or not (including normal range of values, if available/applicable).'),
(6, 'VALUE-TYPE-06', 'Number and/or Term', 'The value of a test is an number. We would like to know both the specific number (if available) and whether it belongs to a specific class (from a predefined List of Classes/Terms).');

-- --------------------------------------------------------

--
-- Table structure for table `voc_ipi_risk`
--

CREATE TABLE `voc_ipi_risk` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Risk for non-Hodgkin Lymphoma';

--
-- Dumping data for table `voc_ipi_risk`
--

INSERT INTO `voc_ipi_risk` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'IPI-RISK-1', 'Low risk', 'Low risk (0-1 points) - 5-year survival of 73%'),
(2, 'IPI-RISK-2', 'Low-intermediate risk', 'Low-intermediate risk (2 points) - 5-year survival of 51%'),
(3, 'IPI-RISK-3', 'High-intermediate risk', 'High-intermediate risk (3 points) - 5-year survival of 43%'),
(4, 'IPI-RISK-4', 'High risk', 'High risk (4-5 points) - 5-year survival of 26%');

-- --------------------------------------------------------

--
-- Table structure for table `voc_lab_test`
--

CREATE TABLE `voc_lab_test` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `NAME` varchar(250) NOT NULL,
  `OUTCOME_VALUE_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `UNIT_ID` smallint(3) UNSIGNED DEFAULT NULL,
  `RANGE_NOTES` varchar(200) DEFAULT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `LAB_TEST_TYPE_ID` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_lab_test`
--

INSERT INTO `voc_lab_test` (`ID`, `CODE`, `NAME`, `OUTCOME_VALUE_ID`, `UNIT_ID`, `RANGE_NOTES`, `BROADER_TERM_ID`, `LAB_TEST_TYPE_ID`) VALUES
(1, 'BLOOD-100', 'Hematologic Test', NULL, NULL, NULL, NULL, 1),
(2, 'BLOOD-110', 'Hemoglobin [Mass/volume]', 1, 4, 'Anemia, "yes" if Hb < 12.0 g/dL females and < 13.0 g/dL males', 1, 1),
(3, 'BLOOD-120', 'Leukocytes [#/volume]', 1, 1, 'Leukopenia, "yes" if < 4000 /mm^3', 1, 1),
(4, 'BLOOD-130', 'Neutrophils [#/volume]', 1, 1, 'Neutropenia, "yes" if < 1500 /mm^3', 1, 1),
(5, 'BLOOD-140', 'Lymphocytes [#/volume]', 1, 1, 'Lymphopenia, "yes" if < 1000 /mm^3', 1, 1),
(6, 'BLOOD-150', 'Platelets (aka Thrombocytes)  [#/volume]', 1, 1, 'Thrombocytopenia, "yes" if < 150000 /mm^3', 1, 1),
(7, 'BLOOD-200', 'Biochemistry Test', NULL, NULL, NULL, NULL, 1),
(8, 'BLOOD-211', 'Albumin [Mass/volume]', 1, 4, 'Low serum albumin (Reference Range >= 3.5 g/dl)', 7, 1),
(9, 'BLOOD-212', 'Creatinine [Mass/volume]', 1, 8, NULL, 7, 1),
(10, 'BLOOD-213', 'Folate [Mass/volume]', 1, 15, NULL, 7, 1),
(11, 'BLOOD-214', 'Homocysteine Levels [Mass/volume]', 1, 17, NULL, 7, 1),
(12, 'BLOOD-215', 'Uric acid [Mass/volume]', 1, 8, 'Normal Value: < 6 mg/dL in female, < 7 mg/dL in males', 7, 1),
(13, 'BLOOD-216', 'Vitamin B12 [Mass/volume]', 1, 12, NULL, 7, 1),
(14, 'BLOOD-221', 'Alkaline phosphatase (ALP)', 3, NULL, NULL, 7, 1),
(15, 'BLOOD-222', 'Alanine aminotransferase (ALT)', 3, NULL, NULL, 7, 1),
(16, 'BLOOD-223', 'Aspartate aminotransferase (AST)', 3, NULL, NULL, 7, 1),
(17, 'BLOOD-224', 'Gamma glutamyl transferase (γ-GT)', 3, NULL, NULL, 7, 1),
(18, 'BLOOD-225', 'Lactate dehydrogenase (LDH)', 3, NULL, NULL, 7, 1),
(19, 'BLOOD-231', 'Potassium [Moles/Volume]', 1, 26, NULL, 7, 1),
(20, 'BLOOD-232', 'Sodium [Moles/Volume]', 1, 26, NULL, 7, 1),
(21, 'BLOOD-233', 'Creatine phosphokinase (CPK) Muscle Enzymes [Enzymatic activity/volume]', 1, 27, NULL, 7, 1),
(22, 'BLOOD-234', 'Calcium [Moles/Volume]', 1, 8, NULL, 7, 1),
(23, 'BLOOD-235', 'Bilirubin Total [Mass/Volume]', 1, 8, NULL, 7, 1),
(24, 'BLOOD-236', 'Bilirubin Indirect [Mass/Volume]', 1, 8, NULL, 7, 1),
(25, 'BLOOD-300', 'Serum Protein Test', NULL, NULL, NULL, NULL, 1),
(26, 'BLOOD-310', 'Cryoglobulin Test', NULL, NULL, NULL, 25, 1),
(27, 'BLOOD-311', 'Cryoglobulins [presence]', 2, NULL, NULL, 26, 1),
(28, 'BLOOD-312', 'Cryoglobulins Type [term]', 4, NULL, 'An ID from the Cryo Type (table)', 26, 1),
(29, 'BLOOD-320', 'Immunoglobulin Test', NULL, NULL, NULL, 25, 1),
(30, 'BLOOD-321', 'Immunoglobulins [Mass/volume] (in serum)', 1, 8, NULL, 29, 1),
(31, 'BLOOD-322', 'Immunoglobulin A (IgA) [Mass/volume]', 1, 5, NULL, 29, 1),
(32, 'BLOOD-323', 'Immunoglobulin G (IgG) [Mass/volume]', 1, 5, NULL, 29, 1),
(33, 'BLOOD-324', 'Immunoglobulin G4 (IgG4)', 3, NULL, NULL, 29, 1),
(34, 'BLOOD-325', 'Immunoglobulin M (IgM) [Mass/volume]', 1, 5, NULL, 29, 1),
(35, 'BLOOD-326', 'Kappa Free light chains [Mass/volume] (in Serum)', 1, 9, NULL, 29, 1),
(36, 'BLOOD-327', 'Lambda Free light chains [Mass/volume] (in Serum)', 1, 9, NULL, 29, 1),
(37, 'BLOOD-328', 'Free light (immunoglobulin) chains KAPPA/LAMBDA ratio', 1, 2, NULL, 29, 1),
(38, 'BLOOD-330', 'Monoclonal M-component [presence ] (in Serum)', 2, NULL, NULL, 25, 1),
(39, 'BLOOD-340', 'Haptoglobin', 3, NULL, NULL, 25, 1),
(40, 'BLOOD-400', 'Lipid Test', NULL, NULL, NULL, NULL, 1),
(41, 'BLOOD-410', 'Total cholesterol levels [Mass/volume]', 1, 8, NULL, 40, 1),
(42, 'BLOOD-420', 'Low-density lipoprotein (LDL) cholesterol [Mass/volume]', 1, 8, NULL, 40, 1),
(43, 'BLOOD-430', 'High-density lipoprotein (HDL) cholesterol [Mass/volume]', 1, 8, NULL, 40, 1),
(44, 'BLOOD-440', 'Triglyceride levels [Mass/volume]', 1, 8, NULL, 40, 1),
(45, 'BLOOD-500', 'Autoantibody Test', NULL, NULL, NULL, NULL, 1),
(46, 'BLOOD-511', 'Rheumatoid Factor (RF) [Units/volume]', 1, 6, NULL, 45, 1),
(47, 'BLOOD-512', 'Rheumatoid Factor (RF) titer [Units/volume]', 1, 6, NULL, 45, 1),
(48, 'BLOOD-521', 'Antinuclear Antibodies (ANA) [presence]', 2, NULL, NULL, 45, 1),
(49, 'BLOOD-522', 'Antinuclear Antibodies (ANA) titer', 5, NULL, 'The number is actually a fraction, e.g., 1/160', 45, 1),
(50, 'BLOOD-523', 'Antinuclear Antibodies (ANA) pattern [term]', 4, NULL, 'An ID from the ANA-Pattern (table)', 45, 1),
(51, 'BLOOD-530', 'Anti-Ro/SSA [presence]', 2, NULL, NULL, 45, 1),
(52, 'BLOOD-531', 'Anti-Ro52/SSA [presence]', 2, NULL, NULL, 51, 1),
(53, 'BLOOD-532', 'Anti-Ro60/SSA [presence]', 2, NULL, NULL, 51, 1),
(54, 'BLOOD-540', 'Anti-La/SSB [presence]', 2, NULL, NULL, 45, 1),
(55, 'BLOOD-550', 'Other Autoantibody Test', NULL, NULL, NULL, NULL, 1),
(56, 'BLOOD-551', 'Anti-CCP antibodies [Presence]', 2, NULL, NULL, 55, 1),
(57, 'BLOOD-552', 'Anti-dsDNA [Presence]', 2, NULL, NULL, 55, 1),
(58, 'BLOOD-553', 'Anti-Smith (Anti-Sm) antibodies [Presence]', 2, NULL, NULL, 55, 1),
(59, 'BLOOD-554', 'Anti-RNP antibodies [Presence]', 2, NULL, NULL, 55, 1),
(60, 'BLOOD-555', 'Anti-Scl-70 antibodies [Presence]', 2, NULL, NULL, 55, 1),
(61, 'BLOOD-556', 'Anti-synthetase antibodies (any) [Presence]', 2, NULL, NULL, 55, 1),
(62, 'BLOOD-557', 'Lupus Anticoagulant (LA) [Presence]', 2, NULL, NULL, 55, 1),
(63, 'BLOOD-558', 'Anti-cardiolipin (ACLA) IgG [Presence]', 2, NULL, NULL, 55, 1),
(64, 'BLOOD-559', 'Anti-cardiolipin (ACLA) IgM [Presence]', 2, NULL, NULL, 55, 1),
(65, 'BLOOD-561', 'Anti-beta 2 glycoprotein IgG [Presence]', 2, NULL, NULL, 55, 1),
(66, 'BLOOD-562', 'Anti-beta 2 glycoprotein IgM [Presence]', 2, NULL, NULL, 55, 1),
(67, 'BLOOD-563', 'Anti-neutrophil cytoplasmic (ANCA) antibodies [Presence]', 2, NULL, NULL, 55, 1),
(68, 'BLOOD-564', 'Anti-Saccharomyces cerevisiae (ASCA) IgG antibodies [Presence]', 2, NULL, NULL, 55, 1),
(69, 'BLOOD-565', 'Anti-Saccharomyces cerevisiae (ASCA) IgM antibodies [Presence]', 2, NULL, NULL, 55, 1),
(70, 'BLOOD-566', 'Anti-thyroglobulin (anti-Tg) antibody [Presence]', 2, NULL, NULL, 55, 1),
(71, 'BLOOD-567', 'Anti-thyroperoxidase (anti-TPO) antibodies [Presence]', 2, NULL, NULL, 55, 1),
(72, 'BLOOD-568', 'Anti-TSH Receptor (anti-TSHR) antibodies [Presence]', 2, NULL, NULL, 55, 1),
(73, 'BLOOD-569', 'Anti-gastric mucosa antibodies [Presence]', 2, NULL, NULL, 55, 1),
(74, 'BLOOD-571', 'Anti-transglutaminase IgA antibodies [Presence]', 2, NULL, NULL, 55, 1),
(75, 'BLOOD-572', 'Anti-transglutaminase IgG antibodies [Presence]', 2, NULL, NULL, 55, 1),
(76, 'BLOOD-573', 'Anti-LKM antibodies [Presence]', 2, NULL, NULL, 55, 1),
(77, 'BLOOD-574', 'Anti-Smooth Muscle Antibody (ASMA) [Presence]', 2, NULL, NULL, 55, 1),
(78, 'BLOOD-575', 'Coombs test direct', 2, NULL, NULL, 55, 1),
(79, 'BLOOD-576', 'Coombs test indirect', 2, NULL, NULL, 55, 1),
(80, 'BLOOD-577', 'Anti-platelets antibodies [Presence]', 2, NULL, NULL, 55, 1),
(81, 'BLOOD-578', 'Anti-centromere (any quantitative test)', 2, NULL, NULL, 55, 1),
(82, 'BLOOD-579', 'Anti-mitochondrial (any quantitative test)', 2, NULL, NULL, 55, 1),
(83, 'BLOOD-581', 'Anti-mitochondrial M2 (any quantitative test)', 2, NULL, NULL, 55, 1),
(84, 'BLOOD-582', 'Other autoantibodies [Presence]', 2, NULL, NULL, 55, 1),
(85, 'BLOOD-600', 'Complement Test', NULL, NULL, NULL, NULL, 1),
(86, 'BLOOD-610', 'C3 levels (Serum complement) [Mass/volume]', 1, 8, NULL, 85, 1),
(87, 'BLOOD-620', 'C4 levels (Serum complement) [Mass/volume]', 1, 8, NULL, 85, 1),
(88, 'BLOOD-700', 'Cluster of differentiation (CD) Test', NULL, NULL, NULL, NULL, 1),
(89, 'BLOOD-710', 'CD3 (T cells) [#/volume]', 1, 3, NULL, 88, 1),
(90, 'BLOOD-720', 'CD4 (T helper/inducer cells) [#/volume]', 1, 3, NULL, 88, 1),
(91, 'BLOOD-730', 'CD8 (T suppressor/cytotoxic cells) [#/volume]', 1, 3, NULL, 88, 1),
(92, 'BLOOD-740', 'CD19 (B-lymphocyte antigen) [#/volume]', 1, 3, NULL, 88, 1),
(93, 'BLOOD-800', 'Miscellaneous Test', NULL, NULL, NULL, NULL, 1),
(94, 'BLOOD-810', 'C reactive protein [Mass/volume]', 1, 8, 'Increased C-reactive protein, "yes" if > 0.5 mg/dL', 93, 1),
(95, 'BLOOD-820', 'Anti-Hepatitis C Virus (HCV) antibody [presence]', 2, NULL, NULL, 93, 1),
(96, 'BLOOD-830', 'Hepatitis B surface antigen (HBsAg) [Presence]', 2, NULL, NULL, 93, 1),
(97, 'BLOOD-840', 'Hepatitis B core antibody (HBcAb) [Presence]', 2, NULL, NULL, 93, 1),
(98, 'BLOOD-850', 'Hepatitis B surface antibody (HBsAb) [Presence]', 2, NULL, NULL, 93, 1),
(99, 'BLOOD-860', 'Hepatitis B virus (HBV) DNA [Presence]', 2, NULL, NULL, 93, 1),
(100, 'BLOOD-870', 'HIV I and II Antibodies [Presence]', 2, NULL, NULL, 93, 1),
(101, 'BLOOD-900', 'Blood Biomarker', NULL, NULL, NULL, NULL, 1),
(102, 'BLOOD-910', 'Beta-2 Microglobulin [Mass/volume] (in Serum)', 1, 16, NULL, 101, 1),
(103, 'BLOOD-920', 'B lymphocyte activating factor (BAFF) [Mass/volume] (in serum)', 1, 13, NULL, 101, 1),
(104, 'BLOOD-930', 'Chemokine Ligand 13 (CXCL13) [Mass/volume]  (in serum)', 1, 13, NULL, 101, 1),
(105, 'BLOOD-940', 'FMS-like tyrosine kinase 3 ligand (FLT3L) [Mass/volume]  (in serum)', 1, 13, NULL, 101, 1),
(106, 'BLOOD-950', 'Thymic stromal lymphopoietin (TSLP) [Mass/volume]  (in serum)', 1, 13, NULL, 101, 1),
(107, 'BLOOD-960', 'TNFAIP3 (A20) - DNA [presence]', 2, NULL, NULL, 101, 1),
(108, 'BLOOD-971', 'Interferon (IFN) signature Type I [presence] (in PBMCs)', 2, NULL, NULL, 101, 1),
(109, 'BLOOD-972', 'Interferon (IFN) signature Type II [presence] (in PBMCs)', 2, NULL, NULL, 101, 1),
(110, 'BLOOD-973', 'Interferon (IFN) signature Type I and II [presence] (in PBMCs)', 2, NULL, NULL, 101, 1),
(201, 'URINE-100', 'Urinalysis', 2, NULL, NULL, NULL, 2),
(202, 'URINE-110', 'Urine pH', 1, 14, 'High pH, Normal Value: < 6.5', 201, 2),
(203, 'URINE-120', 'Casts [Presence] in Urine', 2, NULL, 'Healthy: no', 201, 2),
(204, 'URINE-121', 'Red Blood Cell Casts [Presence] in Urine', 2, NULL, 'Healthy: no', 203, 2),
(205, 'URINE-122', 'White Blood Cell Casts [Presence] in Urine', 2, NULL, 'Healthy: no', 203, 2),
(206, 'URINE-130', 'Urine Specific Gravity', 5, 19, 'Normal Value: > 1010 and < 1030', 201, 2),
(207, 'URINE-140', 'Blood [Presence] in Urine', 2, NULL, NULL, 201, 2),
(208, 'URINE-141', 'Red Blood Cells [Presence] in Urine', 2, NULL, NULL, 207, 2),
(209, 'URINE-142', 'White Blood Cells [Presence] in Urine', 2, NULL, NULL, 207, 2),
(210, 'URINE-150', 'Protein [Presence] in Urine', 2, NULL, NULL, 201, 2),
(211, 'URINE-200', 'Proteins [Mass/time] (in 24 hour Urine)', 1, 7, 'Normal Value: < 500 mg/24h', NULL, 2),
(212, 'URINE-300', 'Bence-Jones Proteinuria [Presence]', 2, NULL, NULL, NULL, 2),
(301, 'ORAL-10', 'Saliva Flow''s test', 1, 10, NULL, NULL, 3),
(302, 'ORAL-11', 'Unstimulated saliva flow Value', 1, 10, 'Unstimulated whole saliva test POSITIVE IF <= 1.5 mL / 15 min (cut off values)', 301, 3),
(303, 'ORAL-12', 'Stimulated saliva flow (with any stimulus)', 1, 10, NULL, 301, 3),
(401, 'OCULAR-01', 'Schirmer''s Test (Worst Eye) Value', 3, NULL, 'Schirmer''s test POSITIVE IF <= 5 mm in 5 min in either eye (cut off values)', NULL, 4),
(402, 'OCULAR-02', 'Rose Bengal Staining / Van Bijsterveld Score', 3, NULL, 'Rose Bengal/van Bijsterveld''s: <= 4 (cut off values)', NULL, 4),
(403, 'OCULAR-03', 'Ocular Staining Score / Fluorescein Lissamine Green', 3, NULL, NULL, NULL, 4),
(501, 'BIOPSY-10', 'Biopsy Condition Exam', NULL, NULL, NULL, NULL, 5),
(502, 'BIOPSY-11', 'Germinal Centers [check]', 2, NULL, NULL, 501, 5),
(503, 'BIOPSY-12', 'Myoepithelial sialadenitis [check]', 2, NULL, NULL, 501, 5),
(504, 'BIOPSY-13', 'Lymphoma [check]', 2, NULL, NULL, 501, 5),
(505, 'BIOPSY-14', 'Fibrosis / AdiposeTissue / Atrophy [check]', 2, NULL, NULL, 501, 5),
(506, 'BIOPSY-20', 'Biopsy Score', NULL, NULL, NULL, NULL, 5),
(507, 'BIOPSY-21', 'Greenspan Focus Score', 5, NULL, NULL, 506, 5),
(508, 'BIOPSY-22', 'Chisholm-Mason Score', 5, NULL, NULL, 506, 5),
(509, 'BIOPSY-30', 'Tissue Biomarker', NULL, NULL, NULL, NULL, 5),
(510, 'BIOPSY-31', 'miRNA200b-5p', 1, 13, 'Normal: > 0.4156, Low: < 0.4156', 509, 5),
(511, 'BIOPSY-32', 'Interferon (IFN) signature Type I [check] (in salivary gland biopsy)', 2, NULL, NULL, 509, 5),
(512, 'BIOPSY-33', 'Interferon (IFN) signature Type II [check] (in salivary gland biopsy)', 2, NULL, NULL, 509, 5),
(513, 'BIOPSY-34', 'Interferon (IFN) signature Type I and II [check] (in salivary gland biopsy)', 2, NULL, NULL, 509, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voc_lab_test_type`
--

CREATE TABLE `voc_lab_test_type` (
  `ID` tinyint(3) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_lab_test_type`
--

INSERT INTO `voc_lab_test_type` (`ID`, `CODE`, `NAME`) VALUES
(1, 'TEST-TYPE-01', 'Blood / Serum / Plasma Test'),
(2, 'TEST-TYPE-02', 'Urine Test'),
(3, 'TEST-TYPE-03', 'Oral Test'),
(4, 'TEST-TYPE-04', 'Ocular Test'),
(5, 'TEST-TYPE-05', 'Salivary Gland (Biopsy) / Tissue Test');

-- --------------------------------------------------------

--
-- Table structure for table `voc_lymphoma_organ`
--

CREATE TABLE `voc_lymphoma_organ` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_lymphoma_organ`
--

INSERT INTO `voc_lymphoma_organ` (`ID`, `CODE`, `NAME`, `BROADER_TERM_ID`) VALUES
(1, 'ORGAN-01', 'Salivary Gland', NULL),
(2, 'ORGAN-02', 'Lacrimal Gland', NULL),
(3, 'ORGAN-03', 'Lung', NULL),
(4, 'ORGAN-04', 'Stomach', NULL),
(5, 'ORGAN-05', 'Liver', NULL),
(6, 'ORGAN-06', 'Spleen', NULL),
(7, 'ORGAN-07', 'Lymph Nodes', NULL),
(8, 'ORGAN-08', 'Bone Marrow', NULL),
(9, 'ORGAN-90', 'Other Site', NULL),
(10, 'ORGAN-91', 'Other MALT site', 9),
(11, 'ORGAN-92', 'Other non-MALT site', 9);

-- --------------------------------------------------------

--
-- Table structure for table `voc_lymphoma_stage`
--

CREATE TABLE `voc_lymphoma_stage` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lugano classification for staging of lymphomas.';

--
-- Dumping data for table `voc_lymphoma_stage`
--

INSERT INTO `voc_lymphoma_stage` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'STAGE-01', 'Stage I', 'Involvement of a single lymph node region (eg, cervical, axillary, inguinal, mediastinal) or lymphoid structure such as the spleen, thymus, or Waldeyer''s ring.'),
(2, 'STAGE-02', 'Stage II', 'Involvement of two or more lymph node regions or lymph node structures on the same side of the diaphragm. Hilar nodes should be considered to be ''lateralized'' and when involved on both sides, constitute stage II disease. For the purpose of defining the number of anatomic regions, all nodal disease within the mediastinum is considered to be a single lymph node region, and hilar involvement constitutes an additional site of involvement. The number of anatomic regions should be indicated by a subscript (eg, II-3).'),
(3, 'STAGE-03', 'Stage III', 'Involvement of lymph node regions or lymphoid structures on both sides of the diaphragm. This may be subdivided stage III-1 or III-2: stage III-1 is used for patients with involvement of the spleen or splenic hilar, celiac, or portal nodes; and stage III-2 is used for patients with involvement of the paraaortic, iliac, inguinal, or mesenteric nodes.'),
(4, 'STAGE-04', 'Stage IV', 'Diffuse or disseminated involvement of one or more extranodal organs or tissue beyond that designated E, with or without associated lymph node involvement.');

-- --------------------------------------------------------

--
-- Table structure for table `voc_medical_condition`
--

CREATE TABLE `voc_medical_condition` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `AKA` varchar(250) DEFAULT NULL COMMENT 'Comma separated terms with the same or similar meaning.',
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `FAMILY_HISTORY` char(1) DEFAULT NULL,
  `COMORBIDITIES` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Disorder / Medical Condition / Manifestation';

--
-- Dumping data for table `voc_medical_condition`
--

INSERT INTO `voc_medical_condition` (`ID`, `CODE`, `NAME`, `AKA`, `BROADER_TERM_ID`, `FAMILY_HISTORY`, `COMORBIDITIES`) VALUES
(1, 'COND-010000', 'Circulatory System Disease', NULL, NULL, NULL, 'X'),
(2, 'COND-011000', 'Coronary Artery Disease (CAD)', 'Ischemic heart disease, IHD', 1, NULL, 'X'),
(3, 'COND-011100', 'Myocardial Infarction (MI)', 'Heart attack', 2, NULL, 'X'),
(4, 'COND-011200', 'Angina', 'Angina pectoris', 2, NULL, 'X'),
(5, 'COND-011210', 'Stable Angina', NULL, 4, NULL, 'X'),
(6, 'COND-011220', 'Unstable Angina (UA)', NULL, 4, NULL, 'X'),
(7, 'COND-020000', 'Digestive System Disease', NULL, NULL, NULL, 'X'),
(8, 'COND-021000', 'Liver Disease', NULL, 7, NULL, 'X'),
(9, 'COND-021100', 'Autoimmune Hepatitis (AIH)', 'Lupoid Hepatitis', 8, NULL, 'X'),
(10, 'COND-021200', 'Primary Biliary Cholangitis (PBC)', 'Primary Biliary Cirrhosis', 8, NULL, 'X'),
(11, 'COND-022000', 'Celiac Disease', 'sprue, nontropical sprue, gluten-sensitive enteropathy', 7, NULL, 'X'),
(12, 'COND-023000', 'Autoimmune Gastritis', NULL, 7, NULL, 'X'),
(13, 'COND-030000', 'Endocrine System Disease', NULL, NULL, NULL, 'X'),
(14, 'COND-031000', 'Autoimmune Thyroid Disease', NULL, 13, NULL, 'X'),
(15, 'COND-032000', 'Autoimmune Adrenal Disease', NULL, 13, NULL, 'X'),
(16, 'COND-033000', 'Autoimmune Ovarian Disease', NULL, 13, NULL, 'X'),
(17, 'COND-040000', 'Cutaneous Disease', NULL, NULL, NULL, 'X'),
(18, 'COND-041000', 'Maculopapular Rash', NULL, 17, NULL, 'X'),
(19, 'COND-042000', 'Annular Rash', NULL, 17, NULL, 'X'),
(20, 'COND-043000', 'Erythema multiform (EM)', NULL, 17, NULL, 'X'),
(21, 'COND-044000', 'Urticarial Rash', 'Hives', 17, NULL, 'X'),
(22, 'COND-045000', 'Palpable Purpura', NULL, 17, NULL, 'X'),
(23, 'COND-046000', 'Vasculitic Ulcer', NULL, 17, NULL, 'X'),
(24, 'COND-047000', 'Photosensitivity', NULL, 17, NULL, 'X'),
(25, 'COND-050000', 'Lymphatic System Disease', NULL, NULL, NULL, 'X'),
(26, 'COND-051000', 'Regional Lymphadenopathy', NULL, 25, NULL, 'X'),
(27, 'COND-051100', 'Cervical Lymphadenopathy', NULL, 26, NULL, 'X'),
(28, 'COND-051200', 'Other Region Lymphadenopathy', NULL, 26, NULL, 'X'),
(29, 'COND-052000', 'Generalized Lymphadenopathy', NULL, 25, NULL, 'X'),
(30, 'COND-052100', 'Generalized Lymphadenopathy non-associated with Lymphoma', NULL, 29, NULL, 'X'),
(31, 'COND-052200', 'Lymphoma', NULL, 29, NULL, 'X'),
(32, 'COND-052300', 'Hodgkin''s Lymphoma (HL)', NULL, 31, NULL, 'X'),
(33, 'COND-052400', 'Non-Hodgkin lymphoma (NHL) (NHL)', NULL, 31, NULL, 'X'),
(34, 'COND-052500', 'Mature B-cell neoplasms (MBCN)', NULL, 33, NULL, 'X'),
(35, 'COND-052510', 'B-cell Marginal Zone Lymphoma', NULL, 34, NULL, 'X'),
(36, 'COND-052511', 'B-cell Mucosa-associated Lymphoid Tissue (MALT) Lymphoma', 'MALT lymphoma', 35, NULL, 'X'),
(37, 'COND-052512', 'B-cell Nodal Marginal Zone Lymphoma (NMZL)', NULL, 35, NULL, 'X'),
(38, 'COND-052513', 'B-cell Splenic Marginal Zone Lymphoma (SMZL)', NULL, 35, NULL, 'X'),
(39, 'COND-052521', 'B-cell Small Lymphocytic Lymphoma / Chronic lymphocytic leukemia (CLL)', NULL, 34, NULL, 'X'),
(40, 'COND-052522', 'Diffuse Large B-cell Lymphoma (DLBCL)', NULL, 34, NULL, 'X'),
(41, 'COND-052523', 'Mantle B-cell Lymphoma (MCL)', NULL, 34, NULL, 'X'),
(42, 'COND-052524', 'T-Cell/Histiocyte-Rich B-Cell Lymphoma (THRLBCL)', NULL, 34, NULL, 'X'),
(43, 'COND-052525', 'Follicular B-cell Lymphoma', 'FO B cells lymphoma', 34, NULL, 'X'),
(44, 'COND-052526', 'Burkitt Lymphoma', NULL, 34, NULL, 'X'),
(45, 'COND-052527', 'Anaplastic large cell lymphoma (ALCL)', NULL, 34, NULL, 'X'),
(46, 'COND-052529', 'Monoclonal gammopathy of undetermined significance (MGUS)', NULL, 34, NULL, 'X'),
(47, 'COND-052531', 'Lymphoplasmacytic lymphoma (LPL)', NULL, 34, NULL, 'X'),
(48, 'COND-052532', 'EBV–positive Large B-cell Lymphoma (EBV–positive LBCL)', NULL, 34, NULL, 'X'),
(49, 'COND-052590', 'Multiple Myeloma (MM)', NULL, 34, NULL, 'X'),
(50, 'COND-052591', 'Other mature B-cell neoplasms', NULL, 34, NULL, 'X'),
(51, 'COND-052600', 'Mature T- and NK- cell neoplasms', NULL, 33, NULL, 'X'),
(52, 'COND-052700', 'Histiocytic and Dendritic cell neoplasms', NULL, 33, NULL, 'X'),
(53, 'COND-052800', 'Posttransplant lymphoproliferative disorder (PTLD)', NULL, 33, NULL, 'X'),
(54, 'COND-060000', 'Muscular System Disease', 'Myositis', NULL, NULL, 'X'),
(55, 'COND-061000', 'Idiopathic Inflammatory Myopathy (IIM)', NULL, 54, NULL, 'X'),
(56, 'COND-062000', 'Inclusion Body Myositis (IBM) documented with Biopsy', 'Inclusion-Body Myositis, IBM', 54, NULL, 'X'),
(57, 'COND-070000', 'Nervous System Disease', 'Neurological disorders', NULL, NULL, 'X'),
(58, 'COND-071000', 'Central Nervous System Disease (CNS)', NULL, 57, NULL, 'X'),
(59, 'COND-071100', 'Multiple Sclerosis (MS) like', NULL, 58, NULL, 'X'),
(60, 'COND-071200', 'Neuromyelitis Optica (NMO)', 'Devic''s disease, Devic''s syndrome', 58, NULL, 'X'),
(61, 'COND-071300', 'Transverse Myelitis (TM)', NULL, 58, NULL, 'X'),
(62, 'COND-071400', 'Cerebral Vasculitis', 'Central nervous system vasculitis, CNS vasculitis', 58, NULL, 'X'),
(63, 'COND-071500', 'Lymphocytic Meningitis', NULL, 58, NULL, 'X'),
(64, 'COND-071600', 'Cerebral Stroke', 'Cerebrovascular accident, CVA', 58, NULL, 'X'),
(65, 'COND-072000', 'Peripheral Nervous System Disease', NULL, 57, NULL, 'X'),
(66, 'COND-072100', 'Mononeuritis Multiplex', NULL, 65, NULL, 'X'),
(67, 'COND-072200', 'Sensorimotor Axonal Polyneuropathy', NULL, 65, NULL, 'X'),
(68, 'COND-072300', 'Painful Sensory Neuropathy', 'Small Fiber Disease', 65, NULL, 'X'),
(69, 'COND-072400', 'Sensory Ataxic Neuropathy and Autonomic Dysfunction', NULL, 65, NULL, 'X'),
(70, 'COND-072500', 'Cranial Nerve Neuropathy', NULL, 65, NULL, 'X'),
(71, 'COND-072600', 'Trigeminal Neuropathy', NULL, 65, NULL, 'X'),
(72, 'COND-080000', 'Renal / Urogenital System Disease', NULL, NULL, NULL, 'X'),
(73, 'COND-081000', 'Renal Disease', 'Kidney Disease', 72, NULL, 'X'),
(74, 'COND-081100', 'Glomerulopathy', NULL, 73, NULL, 'X'),
(75, 'COND-081110', 'Glomerulopathy Syndrome', NULL, 74, NULL, 'X'),
(76, 'COND-081111', 'Nephritic syndrome', NULL, 75, NULL, 'X'),
(77, 'COND-081112', 'Nephrotic syndrome', NULL, 75, NULL, 'X'),
(78, 'COND-081120', 'Kidney Biopsy Finding', NULL, 74, NULL, 'X'),
(79, 'COND-081121', 'Membranoproliferative Glomerulonephritis (MPGN)', 'mesangiocapillary glomerulonephritis', 78, NULL, 'X'),
(80, 'COND-081122', 'Mesangioproliferative Glomerulonephritis (MPGN)', NULL, 78, NULL, 'X'),
(81, 'COND-081123', 'Membranous Glomerulonephritis (MGN)', NULL, 78, NULL, 'X'),
(82, 'COND-081124', 'Other Glomerulonephritis', NULL, 78, NULL, 'X'),
(83, 'COND-081130', 'Proteinuria', NULL, 74, NULL, 'X'),
(84, 'COND-081140', 'Hematuria', NULL, 74, NULL, 'X'),
(85, 'COND-081200', 'Tubulointerstitial Nephritis', 'Interstitial Nephritis', 73, NULL, 'X'),
(86, 'COND-081210', 'Distal Renal Tubular Acidosis (dRTA)', 'Type 1 renal tubular acidosis, Type 1 RTA', 85, NULL, 'X'),
(87, 'COND-081211', 'Incomplete Distal Renal Tubular Acidosis (dRTA)', NULL, 86, NULL, 'X'),
(88, 'COND-081212', 'Complete Distal Renal Tubular Acidosis (dRTA)', NULL, 86, NULL, 'X'),
(89, 'COND-081220', 'Proximal Renal Tubular Acidosis (pRTA)', 'Type 2 renal tubular acidosis, Type 2 RTA', 85, NULL, 'X'),
(90, 'COND-081230', 'Fanconi Syndrome', NULL, 85, NULL, 'X'),
(91, 'COND-081240', 'Nephrogenic Diabetes Insidious (NDI)', 'Renal diabetes insipidus', 85, NULL, 'X'),
(92, 'COND-082000', 'Urogenital Disease', NULL, 72, NULL, 'X'),
(93, 'COND-082100', 'Interstitial Cystitis (IC)', 'bladder pain syndrome, BPS', 92, NULL, 'X'),
(94, 'COND-082200', 'Gynecologic Manifestations', NULL, 92, NULL, 'X'),
(95, 'COND-082210', 'Dyspareunia', NULL, 94, NULL, 'X'),
(96, 'COND-082220', 'Dryness', NULL, 94, NULL, 'X'),
(97, 'COND-082230', 'Vaginal Pruritus', NULL, 94, NULL, 'X'),
(98, 'COND-090000', 'Respiratory System Disease', NULL, NULL, NULL, 'X'),
(99, 'COND-091000', 'Pulmonary Disease', NULL, 98, NULL, 'X'),
(100, 'COND-091100', 'Small Airway Disease', NULL, 99, NULL, 'X'),
(101, 'COND-091200', 'Nonspecific Interstitial Pneumonia (NSIP)', NULL, 99, NULL, 'X'),
(102, 'COND-091300', 'Usual Interstitial Pneumonia (UIP)', NULL, 99, NULL, 'X'),
(103, 'COND-091400', 'Lymphocytic Interstitial Pneumonia (LIP)', NULL, 99, NULL, 'X'),
(104, 'COND-091500', 'Cryptogenic Organizing Pneumonia (COP)', NULL, 99, NULL, 'X'),
(105, 'COND-100000', 'Skeletal System Disease', NULL, NULL, NULL, 'X'),
(106, 'COND-101000', 'Arthritis', NULL, 105, NULL, 'X'),
(107, 'COND-101100', 'Non erosive Arthritis', NULL, 106, NULL, 'X'),
(108, 'COND-101110', 'Non erosive Arthritis affecting Hands/feet/wrist/ankles', NULL, 107, NULL, 'X'),
(109, 'COND-101120', 'Non erosive Arthritis affecting other joints', NULL, 107, NULL, 'X'),
(110, 'COND-101200', 'Erosive Arthritis', NULL, 106, NULL, 'X'),
(111, 'COND-101210', 'Erosive Arthritis affecting Hands/feet/wrist/ankles', NULL, 110, NULL, 'X'),
(112, 'COND-101220', 'Erosive Arthritis affecting other joints', NULL, 110, NULL, 'X'),
(113, 'COND-102000', 'Fibromyalgia (FM)', NULL, 105, NULL, 'X'),
(114, 'COND-110000', 'Hematologic Disease', NULL, NULL, NULL, 'X'),
(115, 'COND-111000', 'Anemia', NULL, 114, NULL, 'X'),
(116, 'COND-111100', 'Hemolytic Anemia', NULL, 115, NULL, 'X'),
(117, 'COND-111200', 'Anemia of Chronic Disease', NULL, 115, NULL, 'X'),
(118, 'COND-112000', 'Leukopenia', NULL, 114, NULL, 'X'),
(119, 'COND-113000', 'Neutropenia', NULL, 114, NULL, 'X'),
(120, 'COND-114000', 'Lymphopenia', NULL, 114, NULL, 'X'),
(121, 'COND-115000', 'Thrombocytopenia', NULL, 114, NULL, 'X'),
(122, 'COND-120000', 'Other Systemic Disorder', NULL, NULL, NULL, 'X'),
(123, 'COND-121000', 'Cryoglobulinemic vasculitis', NULL, 122, NULL, 'X'),
(124, 'COND-130000', 'Ocular / Oral Complication', NULL, NULL, NULL, 'X'),
(125, 'COND-131000', 'Cheilitis', NULL, 124, NULL, 'X'),
(126, 'COND-132000', 'Mycosis', NULL, 124, NULL, 'X'),
(127, 'COND-133000', 'Teeth Loss', 'Edentulism', 124, NULL, 'X'),
(128, 'COND-134000', 'Oral Ulcers', NULL, 124, NULL, 'X'),
(129, 'COND-135000', 'Burning Mouth Syndrome (BMS)', NULL, 124, NULL, 'X'),
(130, 'COND-136000', 'Corneal Ulcers', NULL, 124, NULL, 'X'),
(131, 'COND-140000', 'Cancer', NULL, NULL, 'X', NULL),
(132, 'COND-150000', 'Auto-immune Disease', NULL, NULL, 'X', 'X'),
(133, 'COND-150100', 'Sjogren''s Syndrome (SS)', NULL, 132, 'X', NULL),
(134, 'COND-150200', 'Type 1 Diabetes Mellitus', NULL, 132, 'X', 'X'),
(135, 'COND-150300', 'Systemic lupus erythematosus (SLE)', NULL, 132, 'X', NULL),
(136, 'COND-150400', 'Systemic sclerosis', 'Diffuse scleroderma, Systemic sclerosis', 132, 'X', NULL),
(137, 'COND-150500', 'Idiopathic Inflammatory Myopathy (IIM)', NULL, 132, 'X', NULL),
(138, 'COND-150600', 'Mixed connective tissue disease (MCTD)', NULL, 132, 'X', NULL),
(139, 'COND-150700', 'Antiphospholipid syndrome (APS)', 'Hughes syndrome', 132, 'X', 'X'),
(140, 'COND-150800', 'Rheumatoid arthritis (RA)', NULL, 132, 'X', NULL),
(141, 'COND-150900', 'Autoimmune thyreopathy', NULL, 132, 'X', 'X'),
(142, 'COND-151000', 'Autoimmune gastritis', NULL, 132, 'X', 'X'),
(143, 'COND-151100', 'Autoimmune hepatitis', NULL, 132, 'X', 'X'),
(144, 'COND-151200', 'Primary biliary cirrhosis (PBC)', 'Primary biliary cholangitis', 132, 'X', 'X'),
(145, 'COND-151300', 'Sclerosing cholangitis', NULL, 132, 'X', 'X'),
(146, 'COND-151400', 'Celiac disease', NULL, 132, 'X', 'X'),
(147, 'COND-151500', 'Autoimmune haemolytic anemia (AIHA)', NULL, 132, 'X', 'X'),
(148, 'COND-151600', 'Autoimmune thrombocytopenia (AITP)', NULL, 132, 'X', 'X'),
(149, 'COND-151700', 'Common variable Immunodeficiency (CVID)', NULL, 132, 'X', 'X'),
(150, 'COND-151800', 'IgA deficiency (IGAD)', 'Immunoglobulin A deficiency', 132, 'X', 'X'),
(151, 'COND-151900', 'Other primary immunodeficiency', NULL, 132, 'X', 'X'),
(152, 'COND-152000', 'Psoriasis', NULL, 132, 'X', 'X'),
(153, 'COND-152100', 'Psoriatic arthritis', NULL, 132, 'X', 'X'),
(154, 'COND-152200', 'Inflammatory bowel disease (IBD)', NULL, 132, 'X', 'X'),
(155, 'COND-152300', 'Other autoimmune disease', NULL, 132, 'X', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `voc_medical_imaging_test`
--

CREATE TABLE `voc_medical_imaging_test` (
  `ID` smallint(10) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `OUTCOME_TYPE_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `CATEGORY_ID` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_medical_imaging_test`
--

INSERT INTO `voc_medical_imaging_test` (`ID`, `CODE`, `NAME`, `OUTCOME_TYPE_ID`, `CATEGORY_ID`) VALUES
(1, 'IMG-11', 'Parotid and Submandibular Gland Ultrasound', 3, 1),
(2, 'IMG-12', 'MRI Sialography', 3, 1),
(3, 'IMG-13', 'Salivary Gland Scintigraphy', 3, 1),
(4, 'IMG-14', 'MRI of Major Salivary Glands', 3, 1),
(5, 'IMG-21', 'Intima Media Thickness score in Carotid or Femoral Arteries', 3, 2),
(6, 'IMG-22', 'Carotid Plaque by Ultrasound', 3, 2),
(7, 'IMG-23', 'Femoral Plaque by Ultrasound', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voc_performance_status`
--

CREATE TABLE `voc_performance_status` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ECOG Performance Status';

--
-- Dumping data for table `voc_performance_status`
--

INSERT INTO `voc_performance_status` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(0, 'PERFORM-00', 'Grade 0', 'Fully active, able to carry on all pre-disease performance without restriction'),
(1, 'PERFORM-01', 'Grade 1', 'Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work'),
(2, 'PERFORM-02', 'Grade 2', 'Ambulatory and capable of all selfcare but unable to carry out any work activities; up and about more than 50% of waking hours'),
(3, 'PERFORM-03', 'Grade 3', 'Capable of only limited selfcare; confined to bed or chair more than 50% of waking hours'),
(4, 'PERFORM-04', 'Grade 4', 'Completely disabled; cannot carry on any selfcare; totally confined to bed or chair'),
(5, 'PERFORM-05', 'Grade 5', 'Dead');

-- --------------------------------------------------------

--
-- Table structure for table `voc_pharm_drug`
--

CREATE TABLE `voc_pharm_drug` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `AKA` varchar(255) DEFAULT NULL COMMENT 'Comma separated terms with the same or similar meaning.',
  `DOSAGE_UNIT_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pharmaceutical Drug or Substance';

--
-- Dumping data for table `voc_pharm_drug`
--

INSERT INTO `voc_pharm_drug` (`ID`, `CODE`, `NAME`, `AKA`, `DOSAGE_UNIT_ID`, `BROADER_TERM_ID`) VALUES
(1, 'CHEM-10000', 'Glucocorticoids (GCC)', NULL, NULL, NULL),
(2, 'CHEM-11000', 'Prednisone (PDN)', NULL, 21, 1),
(3, 'CHEM-20000', 'Disease-modifying antirheumatic drugs (DMARD)', NULL, NULL, NULL),
(4, 'CHEM-21000', 'Conventional Disease-modifying Antirheumatic Drug (cDMARD)', NULL, NULL, 3),
(5, 'CHEM-21010', 'Methotrexate (MTX)', 'amethopterin', 22, 4),
(6, 'CHEM-21020', 'Leflunomide', 'Arava', 21, 4),
(7, 'CHEM-21030', 'Azathioprine (AZA)', NULL, 21, 4),
(8, 'CHEM-21040', 'Hydroxychloroquine (HCQ)', 'Plaquenil', 21, 4),
(9, 'CHEM-21050', 'Chloroquine', NULL, 21, 4),
(10, 'CHEM-21060', 'Mycophenolate', 'prodrug mycophenolate mofetil, MMF', 21, 4),
(11, 'CHEM-21070', 'Cyclosporine', 'Ciclosporin, Cyclosporin', 21, 4),
(12, 'CHEM-21080', 'Sulphasalazine (SSZ)', 'Azulfidine', 21, 4),
(13, 'CHEM-21090', 'Colchicine', 'Colcrys, Mitigare', 21, 4),
(14, 'CHEM-21100', 'Tacrolimus', 'Fujimycin, FK506', 21, 4),
(15, 'CHEM-21110', 'Cyclophosphamide (CP)', 'cytophosphane', 23, 4),
(16, 'CHEM-21120', 'Intravenous Immunoglobulin (IVIG)', NULL, 20, 4),
(17, 'CHEM-21130', 'Therapeutic plasma exchange (TPE)', 'plasmapheresis', 25, 4),
(18, 'CHEM-22000', 'Biological Disease-modifying Antirheumatic Drug (bDMARD)', NULL, NULL, 3),
(19, 'CHEM-22100', 'Rituximab', 'Rituxan', 24, 18),
(20, 'CHEM-22200', 'Belimumab', 'Benlysta, LymphoStat-B', 23, 18),
(21, 'CHEM-22300', 'Abatacept', 'Orencia', NULL, 18),
(22, 'CHEM-22900', 'Other Biological Agent', NULL, NULL, 18),
(23, 'CHEM-22901', 'Ofatumumab', 'Arzerra, HuMax-CD20', NULL, 22),
(24, 'CHEM-22902', 'Anti-TNF (any)', NULL, NULL, 22),
(25, 'CHEM-22903', 'Anti-CD40', NULL, NULL, 22),
(26, 'CHEM-22904', 'IFNα/β inhibitor', NULL, NULL, 22),
(27, 'CHEM-22905', 'ICOS inhibitor', NULL, NULL, 22),
(28, 'CHEM-22906', 'IL-6 inhibitor', NULL, NULL, 22),
(29, 'CHEM-22907', 'Anakinra', 'Kineret', NULL, 22),
(30, 'CHEM-22908', 'JAK inhibitor', NULL, NULL, 22),
(31, 'CHEM-22909', 'Secukinumab', 'Cosentyx', NULL, 22),
(32, 'CHEM-22910', 'Ustekinumab', 'Stelara', NULL, 22),
(33, 'CHEM-30000', 'Nonsteroidal Anti-inflammatory Drug (NSAID)', NULL, NULL, NULL),
(34, 'CHEM-40000', 'Local / Dryness Treatment', NULL, NULL, NULL),
(35, 'CHEM-41000', 'Natural Tears', NULL, NULL, 34),
(36, 'CHEM-42000', 'Oral / Eye Moisturizing Agent', NULL, NULL, 34),
(37, 'CHEM-43000', 'Oral Pilocarpine', NULL, NULL, 34),
(38, 'CHEM-44000', 'Vaginal Moisturizing Agent', NULL, NULL, 34),
(39, 'CHEM-45000', 'Autologous Serum', NULL, NULL, 34),
(40, 'CHEM-46000', 'Cyclosporine Eye Drops', NULL, NULL, 34),
(41, 'CHEM-50000', 'SS Related / Co-morbidity Treatment', NULL, NULL, NULL),
(42, 'CHEM-50100', 'Calcium Supplements', NULL, NULL, 41),
(43, 'CHEM-50200', 'Vitamin D', NULL, NULL, 41),
(44, 'CHEM-50300', 'Bisphoshonates', NULL, NULL, 41),
(45, 'CHEM-50400', 'Denosumab', 'Prolia, Xgeva', NULL, 41),
(46, 'CHEM-50500', 'Teriparatide', NULL, NULL, 41),
(47, 'CHEM-50600', 'Antidepressants', NULL, NULL, 41),
(48, 'CHEM-50700', 'Thyroid Substitution Treatment', NULL, NULL, 41),
(49, 'CHEM-50800', 'Inhaled β2 Agonist', 'bronchodilators', NULL, 41),
(50, 'CHEM-50900', 'Inhaled Steroids', 'corticosteroids', NULL, 41),
(51, 'CHEM-51000', 'Ursodeoxycholic Acid (USAN)', 'ursodiol', NULL, 41),
(52, 'CHEM-51100', 'H1/H2 Inhibitor', NULL, NULL, 41),
(53, 'CHEM-51200', 'Vasodilators', NULL, NULL, 41),
(54, 'CHEM-51300', 'Oral Alkali Supplements with or without Potassium', NULL, NULL, 41),
(55, 'CHEM-51400', 'Anti-convulsive Treatment', 'antiepileptic drug, antiseizure drug', NULL, 41),
(56, 'CHEM-51500', 'Other Common Treatment', NULL, NULL, 41),
(57, 'CHEM-51501', 'Anti-hypertensive', NULL, NULL, 56),
(58, 'CHEM-51502', 'Antibiotic', NULL, NULL, 56),
(59, 'CHEM-51503', 'Lipid Lowering Agent', NULL, NULL, 56),
(60, 'CHEM-51504', 'Anti-diabetic Treatment', NULL, NULL, 56),
(61, 'CHEM-60000', 'Vaccination', NULL, NULL, NULL),
(62, 'CHEM-61000', 'Flu Vaccination', NULL, NULL, 61),
(63, 'CHEM-62000', 'Pneumococcus Vaccination', NULL, NULL, 61);

-- --------------------------------------------------------

--
-- Table structure for table `voc_pregnancy_outcome`
--

CREATE TABLE `voc_pregnancy_outcome` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `DESCRIPTION` text,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_pregnancy_outcome`
--

INSERT INTO `voc_pregnancy_outcome` (`ID`, `CODE`, `NAME`, `DESCRIPTION`, `BROADER_TERM_ID`) VALUES
(1, 'PREG-OUT-100', 'Single ', 'When a fetus, whatever its gestational age, exits the maternal body.', NULL),
(2, 'PREG-OUT-110', 'Single Live birth (full term or preterm birth)', 'A live birth occurs when a fetus, whatever its gestational age, exits the maternal body and subsequently shows any sign of life, such as voluntary movement, heartbeat, or pulsation of the umbilical cord, for however brief a time and regardless of whether the umbilical cord or placenta are intact.', 1),
(3, 'PREG-OUT-120', 'Single Stillbirth: Fetal death after 20 wk', 'Stillbirth is typically defined as fetal death at or after 20 to 28 weeks of pregnancy. It results in a baby born without signs of life.', 1),
(4, 'PREG-OUT-200', 'Twins', 'Twins are two offspring produced by the same pregnancy. Twins can be either monozygotic (''identical''), meaning that they develop from one zygote, which splits and forms two embryos, or dizygotic (''fraternal''), meaning that each twin develops from a separate egg and each egg is fertilized by its own sperm cell.', NULL),
(5, 'PREG-OUT-210', 'Twins, both live born', 'Two offspring produced by the same pregnancy, both of which shown any sign of life.', 4),
(6, 'PREG-OUT-211', 'Twins Live Born Monozygotic', 'They develop from one zygote, which splits and forms two embryos', 5),
(7, 'PREG-OUT-212', 'Twins Live Born Dizygotic', 'Each twin develops from a separate egg and each egg is fertilized by its own sperm cell.', 5),
(8, 'PREG-OUT-220', 'Twins, both stillborn', 'Two offspring produced by the same pregnancy, both of which born without any sign of life.', 4),
(9, 'PREG-OUT-221', 'Twins, both stillborn Monozygotic', NULL, 8),
(10, 'PREG-OUT-222', 'Twins, both stillborn Dizygotic', NULL, 8),
(11, 'PREG-OUT-230', 'Twins, one live born and one still born', 'Two offspring produced by the same pregnancy, one of which shown sings of life, while the other one born without any sign of life.', 4),
(12, 'PREG-OUT-231', 'Twins, one live born and one still born, Monozygotic', NULL, 11),
(13, 'PREG-OUT-232', 'Twins, one live born and one still born, Dizygotic', NULL, 11),
(14, 'PREG-OUT-300', 'Abortion', 'Abortion is the ending of pregnancy due to removing an embryo or fetus before it can survive outside the uterus. Death of the fetus or passage of products of conception (fetus and placenta) before 20 wk gestation', NULL),
(15, 'PREG-OUT-310', 'Spontaneous abortion / Miscarriage', 'Miscarriage, also known as spontaneous abortion and pregnancy loss, is when an abortion happens but it is not deliberate or mindful.', 14),
(16, 'PREG-OUT-320', 'Induced abortion', 'Termination of pregnancy for medical or elective reasons.', 14),
(17, 'PREG-OUT-900', 'Other, unspecified', 'Another pregnancy outcome, not covered by the other terms. (e.g., a multiple pregnancy involves more than two offspring)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voc_questionnaire`
--

CREATE TABLE `voc_questionnaire` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `ACRONYM` varchar(15) DEFAULT NULL,
  `SCORE_TYPE_ID` tinyint(3) UNSIGNED DEFAULT NULL,
  `SCORE_NOTES` varchar(255) DEFAULT NULL,
  `SCORE_NORMAL_RANGE` varchar(255) DEFAULT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_questionnaire`
--

INSERT INTO `voc_questionnaire` (`ID`, `CODE`, `NAME`, `ACRONYM`, `SCORE_TYPE_ID`, `SCORE_NOTES`, `SCORE_NORMAL_RANGE`, `BROADER_TERM_ID`) VALUES
(1, 'QUEST-010', 'EULAR Sjogren''s syndrome Disease Activity Index (ESSDAI) score', 'ESSDAI', 5, NULL, '0', NULL),
(2, 'QUEST-020', 'EULAR Sjogren''s Syndrome Patient Reported Index (ESSPRI) score', 'ESSPRI', 5, NULL, '0', NULL),
(3, 'QUEST-021', 'EULAR Sjogren''s Syndrome Patient Reported Index (ESSPRI) Pain score', 'ESSPRI Pain', 5, NULL, '0', 2),
(4, 'QUEST-022', 'EULAR Sjogren''s Syndrome Patient Reported Index (ESSPRI) Fatigue score', 'ESSPRI Fatigue', 5, NULL, '0', 2),
(5, 'QUEST-023', 'EULAR Sjogren''s Syndrome Patient Reported Index (ESSPRI) Dryness score', 'ESSPRI Dryness', 5, NULL, '0', 2),
(6, 'QUEST-030', 'Charlson Age-Comorbidity Index (CACI) score', 'CACI', 5, NULL, '0', NULL),
(7, 'QUEST-040', 'Short Form (36) Health Survey score', 'SF36', 5, NULL, '100', NULL),
(8, 'QUEST-050', 'Functional Assessment of Chronic Illness Therapy-Fatigue (FACIT-F) 13-item score', 'FACIT-F-13', 5, NULL, '0', NULL),
(9, 'QUEST-060', 'EuroQol Group - Five Dimensions - Three Level scale (EQ-5D-3L) Health State', 'EQ-5D-3L', 5, 'State: a Number of 5 digits in range 1-5', '11111', NULL),
(10, 'QUEST-070', 'International Prognostic Index (IPI) score', 'IPI', 6, 'An ID from table voc_ipi_risk', NULL, NULL),
(11, 'QUEST-080', 'Visual Analogue Scale (VAS) score', 'VAS score', NULL, NULL, NULL, NULL),
(12, 'QUEST-081', 'Oral Sicca Visual Analogue Scale (VAS) score', 'Oral-VAS', 5, NULL, '0', 11),
(13, 'QUEST-082', 'Ocular Sicca Visual Analogue Scale (VAS) score', 'Ocular-VAS', 5, NULL, '0', 11),
(14, 'QUEST-083', 'Vaginal sicca Visual Analogue Scale (VAS) score', 'Vaginal-VAS', 5, NULL, '0', 11),
(15, 'QUEST-084', 'Dyspareunia Visual Analogue Scale (VAS) score', 'Dyspareunia-VAS', 5, NULL, '0', 11),
(16, 'QUEST-085', 'Fatigue Visual Analogue Scale (VAS) score', 'Fatigue-VAS', 5, NULL, '0', 11),
(17, 'QUEST-086', 'EuroQol Group (EQ) Visual Analogue Scale (VAS) score', 'EQ-VAS', 5, NULL, '100', 11),
(18, 'QUEST-090', 'Eysenck Personality Questionnaire (EPQ) score', 'EPQ', 3, NULL, NULL, NULL),
(19, 'QUEST-091', 'Eysenck Personality Questionnaire (EPQ) - Extraversion/Introversion value', 'EPQ-E', 5, NULL, '=/< 9', 18),
(20, 'QUEST-092', 'Eysenck Personality Questionnaire (EPQ) - Neuroticism/Stability value', 'EPQ-N', 5, NULL, '=/< 12', 18),
(21, 'QUEST-093', 'Eysenck Personality Questionnaire (EPQ) - Psychoticism/Socialisation value', 'EPQ-P', 5, NULL, '=/< 2', 18),
(22, 'QUEST-094', 'Eysenck Personality Questionnaire (EPQ) - Lie/Social Desirability value', 'EPQ-L', 5, NULL, '=/< 12', 18),
(23, 'QUEST-100', 'State-Trait Anxiety Inventory (STAI) score', 'STAI', 3, NULL, NULL, NULL),
(24, 'QUEST-101', 'State-Trait Anxiety Inventory (STAI) - State Anxiety score', 'STAI-S', 5, NULL, '=/< 35', 23),
(25, 'QUEST-102', 'State-Trait Anxiety Inventory (STAI) - Trait Anxiety score', 'STAI-T', 5, NULL, '=/< 35', 23),
(26, 'QUEST-110', 'Hospital anxiety and depression scale (HADS) score', 'HADS', 3, NULL, '0', NULL),
(27, 'QUEST-111', 'HADS - Anxiety Score', 'HADS-A', 5, NULL, '0', 26),
(28, 'QUEST-112', 'HADS - Depression Score', 'HADS-D', 5, NULL, '0', 26),
(29, 'QUEST-120', 'Athens Insomnia Scale (AIS) score', 'AIS', 5, NULL, '=/< 6', NULL),
(30, 'QUEST-130', 'Zung Self-Rating Depression Scale (ZSDS) score', 'ZSDS', 5, NULL, '=/< 40', NULL),
(31, 'QUEST-140', 'Profile of Fatigue and Discomfort (PROFAD) score', 'PROFAD', 5, NULL, '0', NULL),
(32, 'QUEST-150', 'Sicca Symptoms Inventory (SSI) score', 'SSI', 5, NULL, '0', NULL),
(33, 'QUEST-160', 'Profile of Fatigue and Discomfort - Sicca Symptoms Inventory - Short Form (PROFAD-SSI-SF) score', 'PROFAD-SSI-SF', 5, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voc_relative_degree`
--

CREATE TABLE `voc_relative_degree` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `VALUE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_relative_degree`
--

INSERT INTO `voc_relative_degree` (`ID`, `CODE`, `VALUE`) VALUES
(1, 'REL-DEG-01', 'First Degree'),
(2, 'REL-DEG-02', 'Second Degree'),
(3, 'REL-DEG-03', 'Third Degree'),
(4, 'REL-DEG-99', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `voc_sex`
--

CREATE TABLE `voc_sex` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_sex`
--

INSERT INTO `voc_sex` (`ID`, `CODE`, `NAME`) VALUES
(1, 'SEX-01', 'Male'),
(2, 'SEX-02', 'Female'),
(3, 'SEX-99', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `voc_smoking_status`
--

CREATE TABLE `voc_smoking_status` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_smoking_status`
--

INSERT INTO `voc_smoking_status` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'SMOK-STAT-01', 'Active ', 'The person is a Current smoker. Someone who has smoked greater than 100 cigarettes (including hand rolled cigarettes, cigars, cigarillos etc) in their lifetime and has smoked in the last 28 days.'),
(2, 'SMOK-STAT-02', 'Ex-Smoker ', 'The person was smoking in the past (being an ex-smoker) Ex-smoker is someone who has smoked greater than 100 cigarettes in their lifetime but has not smoked in the last 28 days.'),
(3, 'SMOK-STAT-03', 'Never Smoker', 'He/She has never smoked in his life. Never smoker is someone who has not smoked greater than 100 cigarettes in their lifetime and does not currently smoke.');

-- --------------------------------------------------------

--
-- Table structure for table `voc_specialist`
--

CREATE TABLE `voc_specialist` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_specialist`
--

INSERT INTO `voc_specialist` (`ID`, `CODE`, `NAME`) VALUES
(1, 'SPEC-01', 'Ophthalmologist'),
(2, 'SPEC-02', 'Oral medicine / dentist'),
(3, 'SPEC-03', 'Ear, Nose, and Throat (ENT)'),
(4, 'SPEC-04', 'Nephrologist'),
(5, 'SPEC-05', 'Pulmonologist'),
(6, 'SPEC-06', 'Hematologist'),
(7, 'SPEC-07', 'Gastroenterologist'),
(8, 'SPEC-08', 'Neurologist'),
(9, 'SPEC-09', 'Psychiatrist'),
(10, 'SPEC-10', 'Gynecologist'),
(11, 'SPEC-11', 'Endocrinologists'),
(12, 'SPEC-12', 'Dermatologist'),
(13, 'SPEC-99', 'Other specialist');

-- --------------------------------------------------------

--
-- Table structure for table `voc_symptom_sign`
--

CREATE TABLE `voc_symptom_sign` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `BROADER_TERM_ID` smallint(5) UNSIGNED DEFAULT NULL,
  `CATEGORY_ID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Symptom / Sign';

--
-- Dumping data for table `voc_symptom_sign`
--

INSERT INTO `voc_symptom_sign` (`ID`, `CODE`, `NAME`, `BROADER_TERM_ID`, `CATEGORY_ID`) VALUES
(1, 'SYMPT-010', 'Parotid or Submandibular swelling', NULL, 1),
(2, 'SYMPT-011', 'Parotid Gland swelling', 1, 1),
(3, 'SYMPT-012', 'Submandibular salivary gland swelling', 1, 1),
(4, 'SYMPT-020', 'Dry Mouth (aka Xerostomia)', NULL, 1),
(5, 'SYMPT-030', 'Dry Eyes', NULL, 1),
(6, 'SYMPT-110', 'Dry Nose', NULL, 2),
(7, 'SYMPT-120', 'Dry Cough', NULL, 2),
(8, 'SYMPT-130', 'Dry Skin', NULL, 2),
(9, 'SYMPT-140', 'Fever', NULL, 2),
(10, 'SYMPT-141', 'Fever Low Grade', 9, 2),
(11, 'SYMPT-142', 'Fever > 38°C', 9, 2),
(12, 'SYMPT-150', 'Night Sweats', NULL, 2),
(13, 'SYMPT-160', 'Fatigue', NULL, 2),
(14, 'SYMPT-170', 'Weight Loss > 5% of Body Weight', NULL, 2),
(15, 'SYMPT-180', 'Raynaud''s Phenomenon', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voc_unit`
--

CREATE TABLE `voc_unit` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `EXPRESSION` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_unit`
--

INSERT INTO `voc_unit` (`ID`, `CODE`, `EXPRESSION`, `NAME`) VALUES
(1, 'UNITEXP-01', '#/mm^3', 'Number / Cube Millimetre (mm^3)'),
(2, 'UNITEXP-02', '%', 'Percent (%)'),
(3, 'UNITEXP-03', 'cells/μL', 'Cells / microliter (μL)'),
(4, 'UNITEXP-04', 'g/dL', 'Gram (g) / Decilitre (dL)'),
(5, 'UNITEXP-05', 'g/L', 'Gram (g) / Litre (L)'),
(6, 'UNITEXP-06', 'IU/mL', 'International Unit (IU) / Millilitre (mL)'),
(7, 'UNITEXP-07', 'mg/24h', 'Milligrams (mg) / 24 hours (h)'),
(8, 'UNITEXP-08', 'mg/dL', 'Milligrams (mg) / Decilitre (dL)'),
(9, 'UNITEXP-09', 'mg/L', 'Milligrams (mg) / Litre (L)'),
(10, 'UNITEXP-10', 'mL/15min', 'Millilitre (mL) / 15 minutes (min)'),
(11, 'UNITEXP-11', 'mm/5min', 'Millimetre (mm) / 5 minutes (min)'),
(12, 'UNITEXP-12', 'ng/mL', 'Nanogram (ng) / Millilitre (mL)'),
(13, 'UNITEXP-13', 'pg/mL', 'Picogram (pg) / Millilitre (mL)'),
(14, 'UNITEXP-14', 'pH', 'pH'),
(15, 'UNITEXP-15', 'μg/L', 'Micrograms (μg) / Litre (L)'),
(16, 'UNITEXP-16', 'μg/mL', 'Micrograms (μg) / Millilitre (mL)'),
(17, 'UNITEXP-17', 'μmol/L', 'Micromole (μmol) / Litre (L)'),
(18, 'UNITEXP-18', 'cigar-pack/year', 'Packets of cigarettes / Year'),
(19, 'UNITEXP-19', '#', 'Number (#)'),
(20, 'UNITEXP-20', 'mgr/Kg of BW/month', 'Milligrams (mg) / Kilograms (Kg) of BW / month'),
(21, 'UNITEXP-21', 'mg/day', 'Milligrams (mg) / Day'),
(22, 'UNITEXP-22', 'mg/week', 'Milligrams (mg) / Week'),
(23, 'UNITEXP-23', 'mg/month', 'Milligrams (mg) / Month'),
(24, 'UNITEXP-31', 'cycle/12-month', 'Cycles / 12-months'),
(25, 'UNITEXP-32', 'session numbers', 'Session Numbers'),
(26, 'UNITEXP-33', 'mEq/L', 'Milliequivalents (mEq) / Liter (L)'),
(27, 'UNITEXP-34', 'IU/L', '');

-- --------------------------------------------------------

--
-- Table structure for table `voc_visit_status`
--

CREATE TABLE `voc_visit_status` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_visit_status`
--

INSERT INTO `voc_visit_status` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'VIS-STAT-01', 'Visit ''Open''', 'Additional information can be recoded for a specific visit.'),
(2, 'VIS-STAT-02', 'Visit ''Closed''', 'No other information can be recorded for a patient, as part of the current visit.');

-- --------------------------------------------------------

--
-- Table structure for table `voc_visit_type`
--

CREATE TABLE `voc_visit_type` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voc_visit_type`
--

INSERT INTO `voc_visit_type` (`ID`, `CODE`, `NAME`, `DESCRIPTION`) VALUES
(1, 'VISIT-00', 'Data Harmonization Process', NULL),
(2, 'VISIT-01', 'Cohort inclusion (punctual)', NULL),
(3, 'VISIT-02', 'Ever', 'At any time during all the period from Cohort inclusion and the last visit during the HarmonicSS study (recorded as punctual point, but this records all the data if ever occurred, or the worst one , during the whole period)'),
(4, 'VISIT-03', 'Running at any other point (punctual)', NULL),
(5, 'VISIT-04', 'Last One (punctual)', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cohort`
--
ALTER TABLE `cohort`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PARAMETER` (`PARAMETER`);

--
-- Indexes for table `cond_diagnosis`
--
ALTER TABLE `cond_diagnosis`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `CONDITION_ID` (`CONDITION_ID`),
  ADD KEY `DATE_ID` (`DIAGNOSIS_DATE_ID`),
  ADD KEY `STAGE_ID` (`STAGE_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`),
  ADD KEY `PERFORMANCE_STATUS_ID` (`PERFORMANCE_STATUS_ID`);

--
-- Indexes for table `cond_diagnosis_organs`
--
ALTER TABLE `cond_diagnosis_organs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ORGAN_ID` (`ORGAN_ID`),
  ADD KEY `DIAGNOSIS_ID` (`DIAGNOSIS_ID`);

--
-- Indexes for table `cond_link_diagnosis_lab_tests`
--
ALTER TABLE `cond_link_diagnosis_lab_tests`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DIAGNOSIS_ID` (`DIAGNOSIS_ID`),
  ADD KEY `LAB_TEST_ID` (`LAB_TEST_ID`);

--
-- Indexes for table `cond_link_diagnosis_symptoms`
--
ALTER TABLE `cond_link_diagnosis_symptoms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `DIAGNOSIS_ID` (`DIAGNOSIS_ID`),
  ADD KEY `SYMPTOMS_ID` (`SYMPTOMS_ID`);

--
-- Indexes for table `cond_symptom`
--
ALTER TABLE `cond_symptom`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `CONDITION_ID` (`CONDITION_ID`),
  ADD KEY `DATE_ID` (`OBSERVE_DATE_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_education_level_data`
--
ALTER TABLE `demo_education_level_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EDUCATION_LEVEL_ID` (`EDUCATION_LEVEL_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_ethnicity_data`
--
ALTER TABLE `demo_ethnicity_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ETHNICITY_ID` (`ETHNICITY_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_occupation_data`
--
ALTER TABLE `demo_occupation_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `LOSS_OF_WORK_DUE_TO_PSS_ID` (`LOSS_OF_WORK_DUE_TO_PSS_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_pregnancy_data`
--
ALTER TABLE `demo_pregnancy_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `CONCEPTION_DATE_ID` (`CONCEPTION_DATE_ID`),
  ADD KEY `OUTCOME_DATE_ID` (`OUTCOME_DATE_ID`),
  ADD KEY `OUTCOME_ID` (`OUTCOME_ID`),
  ADD KEY `SS_CONCORDANT_ID` (`SS_CONCORDANT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_sex_data`
--
ALTER TABLE `demo_sex_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SEX_ID` (`SEX_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `demo_weight_data`
--
ALTER TABLE `demo_weight_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`),
  ADD KEY `BMI_CLASS_ID` (`BMI_CLASS_ID`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `dt_amount`
--
ALTER TABLE `dt_amount`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UNIT_ID` (`UNIT_ID`);

--
-- Indexes for table `dt_amount_range`
--
ALTER TABLE `dt_amount_range`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `UNIT_ID` (`UNIT_ID`);

--
-- Indexes for table `dt_date`
--
ALTER TABLE `dt_date`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `OP_ID` (`OP_ID`),
  ADD KEY `BEFORE_DATE_ID` (`BEFORE_DATE_ID`);

--
-- Indexes for table `dt_int_range`
--
ALTER TABLE `dt_int_range`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `dt_period_of_time`
--
ALTER TABLE `dt_period_of_time`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `START_DATE_ID` (`START_DATE_ID`),
  ADD KEY `END_DATE_ID` (`END_DATE_ID`),
  ADD KEY `EXACT_ID` (`EXACT_ID`),
  ADD KEY `BEFORE_PERIOD_ID` (`BEFORE_PERIOD_ID`);

--
-- Indexes for table `exam_biopsy`
--
ALTER TABLE `exam_biopsy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `BIOSPY_ID` (`BIOPSY_ID`),
  ADD KEY `SAMPLE_DATE_ID` (`BIOPSY_DATE_ID`),
  ADD KEY `ASSESSMENT_ID` (`ASSESSMENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`),
  ADD KEY `TEST_ID` (`TEST_ID`),
  ADD KEY `OUTCOME_AMOUNT_ID` (`OUTCOME_AMOUNT_ID`),
  ADD KEY `NORMAL_RANGE_ID` (`NORMAL_RANGE_ID`),
  ADD KEY `OUTCOME_CHECK_ID` (`OUTCOME_CHECK_ID`);

--
-- Indexes for table `exam_caci_condition`
--
ALTER TABLE `exam_caci_condition`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `CACI_ID` (`CACI_ID`),
  ADD KEY `DATE_ID` (`QUESTIONNAIRE_DATE_ID`),
  ADD KEY `VALUE_ID` (`VALUE_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `exam_essdai_domain`
--
ALTER TABLE `exam_essdai_domain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `DOMAIN_ID` (`DOMAIN_ID`),
  ADD KEY `DATE_ID` (`QUESTIONNAIRE_DATE_ID`),
  ADD KEY `ACTIVITY_LEVEL_ID` (`ACTIVITY_LEVEL_ID`);

--
-- Indexes for table `exam_lab_test`
--
ALTER TABLE `exam_lab_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `SAMPLE_DATE_ID` (`SAMPLE_DATE_ID`),
  ADD KEY `ASSESSMENT_ID` (`OUTCOME_ASSESSMENT_ID`),
  ADD KEY `NORMAL_RANGE_ID` (`NORMAL_RANGE_ID`),
  ADD KEY `TEST_ID` (`TEST_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`),
  ADD KEY `OUTCOME_AMOUNT_ID` (`OUTCOME_AMOUNT_ID`);

--
-- Indexes for table `exam_medical_imaging_test`
--
ALTER TABLE `exam_medical_imaging_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `TEST_ID` (`TEST_ID`),
  ADD KEY `DATE_ID` (`TEST_DATE_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`),
  ADD KEY `ASSESSMENT_ID` (`ASSESSMENT_ID`);

--
-- Indexes for table `exam_questionnaire_score`
--
ALTER TABLE `exam_questionnaire_score`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `SCORE_ID` (`SCORE_ID`),
  ADD KEY `DATE_ID` (`QUESTIONNAIRE_DATE_ID`),
  ADD KEY `ASSESSMENT_ID` (`ASSESSMENT_ID`),
  ADD KEY `NORMAL_RANGE_ID` (`NORMAL_RANGE_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `interv_chemotherapy`
--
ALTER TABLE `interv_chemotherapy`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `PERIOD_OF_TIME_ID` (`PERIOD_ID`),
  ADD KEY `DUE_TO_PSS_ID` (`DUE_TO_PSS_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `interv_medication`
--
ALTER TABLE `interv_medication`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `MEDICATION_ID` (`MEDICATION_ID`),
  ADD KEY `DOSAGE_ID` (`DOSAGE_ID`),
  ADD KEY `PERIOD_OF_TIME_ID` (`PERIOD_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `interv_surgery`
--
ALTER TABLE `interv_surgery`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `DATE_ID` (`SURGERY_DATE_ID`),
  ADD KEY `DUE_TO_PSS_ID` (`DUE_TO_PSS_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `lifestyle_smoking`
--
ALTER TABLE `lifestyle_smoking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `STATUS_ID` (`STATUS_ID`),
  ADD KEY `AMOUNT_ID` (`AMOUNT_ID`),
  ADD KEY `PERIOD_ID` (`PERIOD_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `other_clinical_trials`
--
ALTER TABLE `other_clinical_trials`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `PERIOD_OF_TIME` (`PERIOD_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `other_family_history`
--
ALTER TABLE `other_family_history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `MEDICAL_CONDITION_ID` (`MEDICAL_CONDITION_ID`),
  ADD KEY `RELATIONSHIP_DEGREE_ID` (`RELATIVE_DEGREE_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `other_healthcare_visit`
--
ALTER TABLE `other_healthcare_visit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_DATE_ID` (`DATE_ID`),
  ADD KEY `SPECIALIST_ID` (`SPECIALIST_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `PSS_SYMPTOMS_ONSET_DATE_ID` (`PSS_SYMPTOMS_ONSET_DATE_ID`),
  ADD KEY `PSS_DIAGNOSIS_DATE_ID` (`PSS_DIAGNOSIS_DATE_ID`),
  ADD KEY `COHORT_INCLUSION_DATE_ID` (`COHORT_INCLUSION_DATE_ID`),
  ADD KEY `DATE_OF_BIRTH_ID` (`DATE_OF_BIRTH_ID`);

--
-- Indexes for table `patient_visit`
--
ALTER TABLE `patient_visit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `VISIT_TYPE_ID` (`VISIT_TYPE_ID`),
  ADD KEY `VISIT_STATUS_ID` (`VISIT_STATUS_ID`),
  ADD KEY `VISIT_DATE_ID` (`VISIT_DATE_ID`);

--
-- Indexes for table `voc_activity_level`
--
ALTER TABLE `voc_activity_level`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_ana_pattern`
--
ALTER TABLE `voc_ana_pattern`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_assessment`
--
ALTER TABLE `voc_assessment`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_biopsy`
--
ALTER TABLE `voc_biopsy`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_bmi_class`
--
ALTER TABLE `voc_bmi_class`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voc_caci_condition`
--
ALTER TABLE `voc_caci_condition`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_confirmation`
--
ALTER TABLE `voc_confirmation`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD UNIQUE KEY `Acronym_Index` (`ACRONYM`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_cryo_type`
--
ALTER TABLE `voc_cryo_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_direction`
--
ALTER TABLE `voc_direction`
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD UNIQUE KEY `Acronym_Index` (`ACRONYM`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_education_level`
--
ALTER TABLE `voc_education_level`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_essdai_domain`
--
ALTER TABLE `voc_essdai_domain`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `EXCLUDE_ACTIVITY_LEVEL` (`EXCLUDE_ACTIVITY_LEVEL`);

--
-- Indexes for table `voc_ethnicity`
--
ALTER TABLE `voc_ethnicity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_exam_outcome_type`
--
ALTER TABLE `voc_exam_outcome_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD UNIQUE KEY `Acronym_Index` (`NOTES`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_ipi_risk`
--
ALTER TABLE `voc_ipi_risk`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voc_lab_test`
--
ALTER TABLE `voc_lab_test`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `UNIT_ID` (`UNIT_ID`),
  ADD KEY `OUTCOME_VALUE_ID` (`OUTCOME_VALUE_ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`),
  ADD KEY `LAB_TEST_TYPE_ID` (`LAB_TEST_TYPE_ID`);

--
-- Indexes for table `voc_lab_test_type`
--
ALTER TABLE `voc_lab_test_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_lymphoma_organ`
--
ALTER TABLE `voc_lymphoma_organ`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_lymphoma_stage`
--
ALTER TABLE `voc_lymphoma_stage`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_medical_condition`
--
ALTER TABLE `voc_medical_condition`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_medical_imaging_test`
--
ALTER TABLE `voc_medical_imaging_test`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `OUTCOME_TYPE_ID` (`OUTCOME_TYPE_ID`);

--
-- Indexes for table `voc_performance_status`
--
ALTER TABLE `voc_performance_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voc_pharm_drug`
--
ALTER TABLE `voc_pharm_drug`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`),
  ADD KEY `UNIT_ID` (`DOSAGE_UNIT_ID`),
  ADD KEY `Acronym_Index` (`AKA`);

--
-- Indexes for table `voc_pregnancy_outcome`
--
ALTER TABLE `voc_pregnancy_outcome`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Iindex` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_questionnaire`
--
ALTER TABLE `voc_questionnaire`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Acronym_Index` (`ACRONYM`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`),
  ADD KEY `SCORE_TYPE_ID` (`SCORE_TYPE_ID`);

--
-- Indexes for table `voc_relative_degree`
--
ALTER TABLE `voc_relative_degree`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_sex`
--
ALTER TABLE `voc_sex`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_smoking_status`
--
ALTER TABLE `voc_smoking_status`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_specialist`
--
ALTER TABLE `voc_specialist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voc_symptom_sign`
--
ALTER TABLE `voc_symptom_sign`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD KEY `ID_Index` (`ID`),
  ADD KEY `BROADER_TERM_ID` (`BROADER_TERM_ID`);

--
-- Indexes for table `voc_unit`
--
ALTER TABLE `voc_unit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code_Index` (`CODE`),
  ADD UNIQUE KEY `Expression_Index` (`EXPRESSION`),
  ADD KEY `ID_Index` (`ID`);

--
-- Indexes for table `voc_visit_status`
--
ALTER TABLE `voc_visit_status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voc_visit_type`
--
ALTER TABLE `voc_visit_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cohort`
--
ALTER TABLE `cohort`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `cond_diagnosis`
--
ALTER TABLE `cond_diagnosis`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;
--
-- AUTO_INCREMENT for table `cond_diagnosis_organs`
--
ALTER TABLE `cond_diagnosis_organs`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cond_link_diagnosis_lab_tests`
--
ALTER TABLE `cond_link_diagnosis_lab_tests`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cond_link_diagnosis_symptoms`
--
ALTER TABLE `cond_link_diagnosis_symptoms`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cond_symptom`
--
ALTER TABLE `cond_symptom`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `demo_education_level_data`
--
ALTER TABLE `demo_education_level_data`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo_ethnicity_data`
--
ALTER TABLE `demo_ethnicity_data`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `demo_occupation_data`
--
ALTER TABLE `demo_occupation_data`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo_pregnancy_data`
--
ALTER TABLE `demo_pregnancy_data`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo_sex_data`
--
ALTER TABLE `demo_sex_data`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `demo_weight_data`
--
ALTER TABLE `demo_weight_data`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `dt_amount`
--
ALTER TABLE `dt_amount`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `dt_amount_range`
--
ALTER TABLE `dt_amount_range`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;
--
-- AUTO_INCREMENT for table `dt_date`
--
ALTER TABLE `dt_date`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `dt_int_range`
--
ALTER TABLE `dt_int_range`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dt_period_of_time`
--
ALTER TABLE `dt_period_of_time`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `exam_biopsy`
--
ALTER TABLE `exam_biopsy`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `exam_caci_condition`
--
ALTER TABLE `exam_caci_condition`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_essdai_domain`
--
ALTER TABLE `exam_essdai_domain`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_lab_test`
--
ALTER TABLE `exam_lab_test`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;
--
-- AUTO_INCREMENT for table `exam_medical_imaging_test`
--
ALTER TABLE `exam_medical_imaging_test`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_questionnaire_score`
--
ALTER TABLE `exam_questionnaire_score`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `interv_chemotherapy`
--
ALTER TABLE `interv_chemotherapy`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interv_medication`
--
ALTER TABLE `interv_medication`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `interv_surgery`
--
ALTER TABLE `interv_surgery`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lifestyle_smoking`
--
ALTER TABLE `lifestyle_smoking`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `other_clinical_trials`
--
ALTER TABLE `other_clinical_trials`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_family_history`
--
ALTER TABLE `other_family_history`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_healthcare_visit`
--
ALTER TABLE `other_healthcare_visit`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `patient_visit`
--
ALTER TABLE `patient_visit`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voc_activity_level`
--
ALTER TABLE `voc_activity_level`
  MODIFY `ID` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voc_ana_pattern`
--
ALTER TABLE `voc_ana_pattern`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `voc_assessment`
--
ALTER TABLE `voc_assessment`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_biopsy`
--
ALTER TABLE `voc_biopsy`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `voc_bmi_class`
--
ALTER TABLE `voc_bmi_class`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_caci_condition`
--
ALTER TABLE `voc_caci_condition`
  MODIFY `ID` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `voc_confirmation`
--
ALTER TABLE `voc_confirmation`
  MODIFY `ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `voc_cryo_type`
--
ALTER TABLE `voc_cryo_type`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voc_education_level`
--
ALTER TABLE `voc_education_level`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_essdai_domain`
--
ALTER TABLE `voc_essdai_domain`
  MODIFY `ID` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `voc_ethnicity`
--
ALTER TABLE `voc_ethnicity`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `voc_exam_outcome_type`
--
ALTER TABLE `voc_exam_outcome_type`
  MODIFY `ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `voc_ipi_risk`
--
ALTER TABLE `voc_ipi_risk`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_lab_test`
--
ALTER TABLE `voc_lab_test`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;
--
-- AUTO_INCREMENT for table `voc_lab_test_type`
--
ALTER TABLE `voc_lab_test_type`
  MODIFY `ID` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `voc_lymphoma_organ`
--
ALTER TABLE `voc_lymphoma_organ`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `voc_lymphoma_stage`
--
ALTER TABLE `voc_lymphoma_stage`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_medical_condition`
--
ALTER TABLE `voc_medical_condition`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `voc_medical_imaging_test`
--
ALTER TABLE `voc_medical_imaging_test`
  MODIFY `ID` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `voc_performance_status`
--
ALTER TABLE `voc_performance_status`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `voc_pharm_drug`
--
ALTER TABLE `voc_pharm_drug`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `voc_pregnancy_outcome`
--
ALTER TABLE `voc_pregnancy_outcome`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `voc_questionnaire`
--
ALTER TABLE `voc_questionnaire`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `voc_relative_degree`
--
ALTER TABLE `voc_relative_degree`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `voc_sex`
--
ALTER TABLE `voc_sex`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voc_smoking_status`
--
ALTER TABLE `voc_smoking_status`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voc_specialist`
--
ALTER TABLE `voc_specialist`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `voc_symptom_sign`
--
ALTER TABLE `voc_symptom_sign`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `voc_unit`
--
ALTER TABLE `voc_unit`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `voc_visit_status`
--
ALTER TABLE `voc_visit_status`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `voc_visit_type`
--
ALTER TABLE `voc_visit_type`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cond_diagnosis`
--
ALTER TABLE `cond_diagnosis`
  ADD CONSTRAINT `cond_diagnosis_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `cond_diagnosis_ibfk_2` FOREIGN KEY (`CONDITION_ID`) REFERENCES `voc_medical_condition` (`ID`),
  ADD CONSTRAINT `cond_diagnosis_ibfk_3` FOREIGN KEY (`DIAGNOSIS_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `cond_diagnosis_ibfk_4` FOREIGN KEY (`STAGE_ID`) REFERENCES `voc_lymphoma_stage` (`ID`),
  ADD CONSTRAINT `cond_diagnosis_ibfk_6` FOREIGN KEY (`PERFORMANCE_STATUS_ID`) REFERENCES `voc_performance_status` (`ID`);

--
-- Constraints for table `cond_diagnosis_organs`
--
ALTER TABLE `cond_diagnosis_organs`
  ADD CONSTRAINT `cond_diagnosis_organs_ibfk_1` FOREIGN KEY (`ORGAN_ID`) REFERENCES `voc_lymphoma_organ` (`ID`),
  ADD CONSTRAINT `cond_diagnosis_organs_ibfk_2` FOREIGN KEY (`DIAGNOSIS_ID`) REFERENCES `cond_diagnosis` (`ID`);

--
-- Constraints for table `cond_link_diagnosis_lab_tests`
--
ALTER TABLE `cond_link_diagnosis_lab_tests`
  ADD CONSTRAINT `cond_link_diagnosis_lab_tests_ibfk_1` FOREIGN KEY (`DIAGNOSIS_ID`) REFERENCES `cond_diagnosis` (`ID`),
  ADD CONSTRAINT `cond_link_diagnosis_lab_tests_ibfk_2` FOREIGN KEY (`LAB_TEST_ID`) REFERENCES `exam_lab_test` (`ID`);

--
-- Constraints for table `cond_link_diagnosis_symptoms`
--
ALTER TABLE `cond_link_diagnosis_symptoms`
  ADD CONSTRAINT `cond_link_diagnosis_symptoms_ibfk_1` FOREIGN KEY (`DIAGNOSIS_ID`) REFERENCES `cond_diagnosis` (`ID`),
  ADD CONSTRAINT `cond_link_diagnosis_symptoms_ibfk_2` FOREIGN KEY (`SYMPTOMS_ID`) REFERENCES `cond_symptom` (`ID`);

--
-- Constraints for table `cond_symptom`
--
ALTER TABLE `cond_symptom`
  ADD CONSTRAINT `cond_symptom_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `cond_symptom_ibfk_2` FOREIGN KEY (`CONDITION_ID`) REFERENCES `voc_symptom_sign` (`ID`),
  ADD CONSTRAINT `cond_symptom_ibfk_3` FOREIGN KEY (`OBSERVE_DATE_ID`) REFERENCES `dt_date` (`ID`);

--
-- Constraints for table `demo_education_level_data`
--
ALTER TABLE `demo_education_level_data`
  ADD CONSTRAINT `demo_education_level_data_ibfk_3` FOREIGN KEY (`EDUCATION_LEVEL_ID`) REFERENCES `voc_education_level` (`ID`),
  ADD CONSTRAINT `demo_education_level_data_ibfk_4` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `demo_education_level_data_ibfk_6` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `demo_ethnicity_data`
--
ALTER TABLE `demo_ethnicity_data`
  ADD CONSTRAINT `demo_ethnicity_data_ibfk_3` FOREIGN KEY (`ETHNICITY_ID`) REFERENCES `voc_ethnicity` (`ID`),
  ADD CONSTRAINT `demo_ethnicity_data_ibfk_4` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `demo_occupation_data`
--
ALTER TABLE `demo_occupation_data`
  ADD CONSTRAINT `demo_occupation_data_data_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `demo_occupation_data_ibfk_1` FOREIGN KEY (`LOSS_OF_WORK_DUE_TO_PSS_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `demo_occupation_data_ibfk_3` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `demo_pregnancy_data`
--
ALTER TABLE `demo_pregnancy_data`
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_2` FOREIGN KEY (`CONCEPTION_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_3` FOREIGN KEY (`OUTCOME_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_4` FOREIGN KEY (`OUTCOME_ID`) REFERENCES `voc_pregnancy_outcome` (`ID`),
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_5` FOREIGN KEY (`SS_CONCORDANT_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `demo_pregnancy_data_ibfk_6` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `demo_sex_data`
--
ALTER TABLE `demo_sex_data`
  ADD CONSTRAINT `demo_sex_data_ibfk_3` FOREIGN KEY (`SEX_ID`) REFERENCES `voc_sex` (`ID`),
  ADD CONSTRAINT `demo_sex_data_ibfk_4` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `demo_weight_data`
--
ALTER TABLE `demo_weight_data`
  ADD CONSTRAINT `demo_weight_data_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `demo_weight_data_ibfk_2` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`),
  ADD CONSTRAINT `demo_weight_data_ibfk_3` FOREIGN KEY (`BMI_CLASS_ID`) REFERENCES `voc_bmi_class` (`ID`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dt_amount`
--
ALTER TABLE `dt_amount`
  ADD CONSTRAINT `dt_amount_ibfk_1` FOREIGN KEY (`UNIT_ID`) REFERENCES `voc_unit` (`ID`);

--
-- Constraints for table `dt_amount_range`
--
ALTER TABLE `dt_amount_range`
  ADD CONSTRAINT `dt_amount_range_ibfk_1` FOREIGN KEY (`UNIT_ID`) REFERENCES `voc_unit` (`ID`);

--
-- Constraints for table `dt_date`
--
ALTER TABLE `dt_date`
  ADD CONSTRAINT `dt_date_ibfk_1` FOREIGN KEY (`OP_ID`) REFERENCES `voc_direction` (`ID`),
  ADD CONSTRAINT `dt_date_ibfk_2` FOREIGN KEY (`BEFORE_DATE_ID`) REFERENCES `dt_date` (`ID`);

--
-- Constraints for table `dt_period_of_time`
--
ALTER TABLE `dt_period_of_time`
  ADD CONSTRAINT `dt_period_of_time_ibfk_1` FOREIGN KEY (`START_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `dt_period_of_time_ibfk_2` FOREIGN KEY (`END_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `dt_period_of_time_ibfk_4` FOREIGN KEY (`BEFORE_PERIOD_ID`) REFERENCES `dt_period_of_time` (`ID`);

--
-- Constraints for table `exam_biopsy`
--
ALTER TABLE `exam_biopsy`
  ADD CONSTRAINT `exam_biopsy_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_10` FOREIGN KEY (`OUTCOME_AMOUNT_ID`) REFERENCES `dt_amount` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_11` FOREIGN KEY (`NORMAL_RANGE_ID`) REFERENCES `dt_amount_range` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_12` FOREIGN KEY (`OUTCOME_CHECK_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_2` FOREIGN KEY (`BIOPSY_ID`) REFERENCES `voc_biopsy` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_3` FOREIGN KEY (`BIOPSY_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_7` FOREIGN KEY (`ASSESSMENT_ID`) REFERENCES `voc_assessment` (`ID`),
  ADD CONSTRAINT `exam_biopsy_ibfk_9` FOREIGN KEY (`TEST_ID`) REFERENCES `voc_lab_test` (`ID`);

--
-- Constraints for table `exam_caci_condition`
--
ALTER TABLE `exam_caci_condition`
  ADD CONSTRAINT `exam_caci_condition_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `exam_caci_condition_ibfk_2` FOREIGN KEY (`CACI_ID`) REFERENCES `voc_caci_condition` (`ID`),
  ADD CONSTRAINT `exam_caci_condition_ibfk_3` FOREIGN KEY (`QUESTIONNAIRE_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_caci_condition_ibfk_4` FOREIGN KEY (`VALUE_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `exam_caci_condition_ibfk_5` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `exam_essdai_domain`
--
ALTER TABLE `exam_essdai_domain`
  ADD CONSTRAINT `exam_essdai_domain_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `exam_essdai_domain_ibfk_2` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `voc_essdai_domain` (`ID`),
  ADD CONSTRAINT `exam_essdai_domain_ibfk_3` FOREIGN KEY (`QUESTIONNAIRE_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_essdai_domain_ibfk_4` FOREIGN KEY (`ACTIVITY_LEVEL_ID`) REFERENCES `voc_activity_level` (`ID`);

--
-- Constraints for table `exam_lab_test`
--
ALTER TABLE `exam_lab_test`
  ADD CONSTRAINT `exam_lab_test_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `exam_lab_test_ibfk_3` FOREIGN KEY (`SAMPLE_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_lab_test_ibfk_5` FOREIGN KEY (`OUTCOME_ASSESSMENT_ID`) REFERENCES `voc_assessment` (`ID`),
  ADD CONSTRAINT `exam_lab_test_ibfk_6` FOREIGN KEY (`NORMAL_RANGE_ID`) REFERENCES `dt_amount_range` (`ID`),
  ADD CONSTRAINT `exam_lab_test_ibfk_7` FOREIGN KEY (`TEST_ID`) REFERENCES `voc_lab_test` (`ID`),
  ADD CONSTRAINT `exam_lab_test_ibfk_9` FOREIGN KEY (`OUTCOME_AMOUNT_ID`) REFERENCES `dt_amount` (`ID`);

--
-- Constraints for table `exam_medical_imaging_test`
--
ALTER TABLE `exam_medical_imaging_test`
  ADD CONSTRAINT `exam_medical_imaging_test_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `exam_medical_imaging_test_ibfk_2` FOREIGN KEY (`TEST_ID`) REFERENCES `voc_medical_imaging_test` (`ID`),
  ADD CONSTRAINT `exam_medical_imaging_test_ibfk_3` FOREIGN KEY (`TEST_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_medical_imaging_test_ibfk_5` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`),
  ADD CONSTRAINT `exam_medical_imaging_test_ibfk_6` FOREIGN KEY (`ASSESSMENT_ID`) REFERENCES `voc_assessment` (`ID`);

--
-- Constraints for table `exam_questionnaire_score`
--
ALTER TABLE `exam_questionnaire_score`
  ADD CONSTRAINT `exam_questionnaire_score_ibfk_2` FOREIGN KEY (`SCORE_ID`) REFERENCES `voc_questionnaire` (`ID`),
  ADD CONSTRAINT `exam_questionnaire_score_ibfk_3` FOREIGN KEY (`QUESTIONNAIRE_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `exam_questionnaire_score_ibfk_4` FOREIGN KEY (`ASSESSMENT_ID`) REFERENCES `voc_assessment` (`ID`),
  ADD CONSTRAINT `exam_questionnaire_score_ibfk_5` FOREIGN KEY (`NORMAL_RANGE_ID`) REFERENCES `dt_int_range` (`ID`),
  ADD CONSTRAINT `exam_questionnaire_score_ibfk_6` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`);

--
-- Constraints for table `interv_chemotherapy`
--
ALTER TABLE `interv_chemotherapy`
  ADD CONSTRAINT `interv_chemotherapy_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `interv_chemotherapy_ibfk_2` FOREIGN KEY (`PERIOD_ID`) REFERENCES `dt_period_of_time` (`ID`),
  ADD CONSTRAINT `interv_chemotherapy_ibfk_3` FOREIGN KEY (`DUE_TO_PSS_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `interv_chemotherapy_ibfk_4` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `interv_medication`
--
ALTER TABLE `interv_medication`
  ADD CONSTRAINT `interv_medication_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `interv_medication_ibfk_2` FOREIGN KEY (`MEDICATION_ID`) REFERENCES `voc_pharm_drug` (`ID`),
  ADD CONSTRAINT `interv_medication_ibfk_3` FOREIGN KEY (`DOSAGE_ID`) REFERENCES `dt_amount` (`ID`),
  ADD CONSTRAINT `interv_medication_ibfk_4` FOREIGN KEY (`PERIOD_ID`) REFERENCES `dt_period_of_time` (`ID`);

--
-- Constraints for table `interv_surgery`
--
ALTER TABLE `interv_surgery`
  ADD CONSTRAINT `interv_surgery_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `interv_surgery_ibfk_2` FOREIGN KEY (`SURGERY_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `interv_surgery_ibfk_3` FOREIGN KEY (`DUE_TO_PSS_ID`) REFERENCES `voc_confirmation` (`ID`),
  ADD CONSTRAINT `interv_surgery_ibfk_4` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `lifestyle_smoking`
--
ALTER TABLE `lifestyle_smoking`
  ADD CONSTRAINT `lifestyle_smoking_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `lifestyle_smoking_ibfk_2` FOREIGN KEY (`STATUS_ID`) REFERENCES `voc_smoking_status` (`ID`),
  ADD CONSTRAINT `lifestyle_smoking_ibfk_3` FOREIGN KEY (`AMOUNT_ID`) REFERENCES `dt_amount` (`ID`),
  ADD CONSTRAINT `lifestyle_smoking_ibfk_5` FOREIGN KEY (`PERIOD_ID`) REFERENCES `dt_period_of_time` (`ID`);

--
-- Constraints for table `other_clinical_trials`
--
ALTER TABLE `other_clinical_trials`
  ADD CONSTRAINT `other_clinical_trials_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `other_clinical_trials_ibfk_2` FOREIGN KEY (`PERIOD_ID`) REFERENCES `dt_period_of_time` (`ID`),
  ADD CONSTRAINT `other_clinical_trials_ibfk_3` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `other_family_history`
--
ALTER TABLE `other_family_history`
  ADD CONSTRAINT `other_family_history_ibfk_1` FOREIGN KEY (`MEDICAL_CONDITION_ID`) REFERENCES `voc_medical_condition` (`ID`),
  ADD CONSTRAINT `other_family_history_ibfk_2` FOREIGN KEY (`RELATIVE_DEGREE_ID`) REFERENCES `voc_relative_degree` (`ID`),
  ADD CONSTRAINT `other_family_history_ibfk_4` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `other_family_history_ibfk_5` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `other_healthcare_visit`
--
ALTER TABLE `other_healthcare_visit`
  ADD CONSTRAINT `other_healthcare_visit_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `other_healthcare_visit_ibfk_2` FOREIGN KEY (`DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `other_healthcare_visit_ibfk_3` FOREIGN KEY (`SPECIALIST_ID`) REFERENCES `voc_specialist` (`ID`),
  ADD CONSTRAINT `other_healthcare_visit_ibfk_4` FOREIGN KEY (`VISIT_ID`) REFERENCES `patient_visit` (`ID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`DATE_OF_BIRTH_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`PSS_SYMPTOMS_ONSET_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`PSS_DIAGNOSIS_DATE_ID`) REFERENCES `dt_date` (`ID`),
  ADD CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`COHORT_INCLUSION_DATE_ID`) REFERENCES `dt_date` (`ID`);

--
-- Constraints for table `patient_visit`
--
ALTER TABLE `patient_visit`
  ADD CONSTRAINT `patient_visit_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`ID`),
  ADD CONSTRAINT `patient_visit_ibfk_2` FOREIGN KEY (`VISIT_TYPE_ID`) REFERENCES `voc_visit_type` (`ID`),
  ADD CONSTRAINT `patient_visit_ibfk_3` FOREIGN KEY (`VISIT_STATUS_ID`) REFERENCES `voc_visit_status` (`ID`),
  ADD CONSTRAINT `patient_visit_ibfk_4` FOREIGN KEY (`VISIT_DATE_ID`) REFERENCES `dt_date` (`ID`);

--
-- Constraints for table `voc_assessment`
--
ALTER TABLE `voc_assessment`
  ADD CONSTRAINT `voc_assessment_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_assessment` (`ID`);

--
-- Constraints for table `voc_biopsy`
--
ALTER TABLE `voc_biopsy`
  ADD CONSTRAINT `voc_biopsy_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_biopsy` (`ID`);

--
-- Constraints for table `voc_essdai_domain`
--
ALTER TABLE `voc_essdai_domain`
  ADD CONSTRAINT `voc_essdai_domain_ibfk_1` FOREIGN KEY (`EXCLUDE_ACTIVITY_LEVEL`) REFERENCES `voc_activity_level` (`ID`);

--
-- Constraints for table `voc_lab_test`
--
ALTER TABLE `voc_lab_test`
  ADD CONSTRAINT `voc_lab_test_ibfk_3` FOREIGN KEY (`UNIT_ID`) REFERENCES `voc_unit` (`ID`),
  ADD CONSTRAINT `voc_lab_test_ibfk_5` FOREIGN KEY (`OUTCOME_VALUE_ID`) REFERENCES `voc_exam_outcome_type` (`ID`),
  ADD CONSTRAINT `voc_lab_test_ibfk_6` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_lab_test` (`ID`),
  ADD CONSTRAINT `voc_lab_test_ibfk_7` FOREIGN KEY (`LAB_TEST_TYPE_ID`) REFERENCES `voc_lab_test_type` (`ID`);

--
-- Constraints for table `voc_lymphoma_organ`
--
ALTER TABLE `voc_lymphoma_organ`
  ADD CONSTRAINT `voc_lymphoma_organ_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_lymphoma_organ` (`ID`);

--
-- Constraints for table `voc_medical_condition`
--
ALTER TABLE `voc_medical_condition`
  ADD CONSTRAINT `voc_medical_condition_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_medical_condition` (`ID`);

--
-- Constraints for table `voc_medical_imaging_test`
--
ALTER TABLE `voc_medical_imaging_test`
  ADD CONSTRAINT `voc_medical_imaging_test_ibfk_1` FOREIGN KEY (`OUTCOME_TYPE_ID`) REFERENCES `voc_exam_outcome_type` (`ID`);

--
-- Constraints for table `voc_pharm_drug`
--
ALTER TABLE `voc_pharm_drug`
  ADD CONSTRAINT `voc_pharm_drug_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_pharm_drug` (`ID`),
  ADD CONSTRAINT `voc_pharm_drug_ibfk_2` FOREIGN KEY (`DOSAGE_UNIT_ID`) REFERENCES `voc_unit` (`ID`);

--
-- Constraints for table `voc_pregnancy_outcome`
--
ALTER TABLE `voc_pregnancy_outcome`
  ADD CONSTRAINT `voc_pregnancy_outcome_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_pregnancy_outcome` (`ID`);

--
-- Constraints for table `voc_questionnaire`
--
ALTER TABLE `voc_questionnaire`
  ADD CONSTRAINT `voc_questionnaire_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_questionnaire` (`ID`),
  ADD CONSTRAINT `voc_questionnaire_ibfk_2` FOREIGN KEY (`SCORE_TYPE_ID`) REFERENCES `voc_exam_outcome_type` (`ID`);

--
-- Constraints for table `voc_symptom_sign`
--
ALTER TABLE `voc_symptom_sign`
  ADD CONSTRAINT `voc_symptom_sign_ibfk_1` FOREIGN KEY (`BROADER_TERM_ID`) REFERENCES `voc_symptom_sign` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
