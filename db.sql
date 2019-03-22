/*
SQLyog Community v13.1.0 (64 bit)
MySQL - 5.7.19 : Database - aphotenew
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aphotenew` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aphotenew`;

/*Table structure for table `age_of_property` */

DROP TABLE IF EXISTS `age_of_property`;

CREATE TABLE `age_of_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `age_of_property` */

/*Table structure for table `amenities` */

DROP TABLE IF EXISTS `amenities`;

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `amenities` */

/*Table structure for table `area_unit` */

DROP TABLE IF EXISTS `area_unit`;

CREATE TABLE `area_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `area_unit` */

/*Table structure for table `availability` */

DROP TABLE IF EXISTS `availability`;

CREATE TABLE `availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `availability` */

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cities` */

/*Table structure for table `cms_apicustom` */

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_apicustom` */

/*Table structure for table `cms_apikey` */

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_apikey` */

/*Table structure for table `cms_dashboard` */

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_dashboard` */

/*Table structure for table `cms_email_queues` */

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_email_queues` */

/*Table structure for table `cms_email_templates` */

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_email_templates` */

insert  into `cms_email_templates`(`id`,`name`,`slug`,`subject`,`content`,`description`,`from_name`,`from_email`,`cc_email`,`created_at`,`updated_at`) values 
(1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2018-08-28 04:49:23',NULL);

/*Table structure for table `cms_logs` */

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_logs` */

insert  into `cms_logs`(`id`,`ipaddress`,`useragent`,`url`,`description`,`details`,`id_cms_users`,`created_at`,`updated_at`) values 
(1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address ::1','',1,'2018-08-28 04:56:04',NULL),
(2,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address ::1','',1,'2018-08-29 04:30:06',NULL),
(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','http://localhost/laravel/crudbooster/project/public/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1','',1,'2018-08-29 04:39:45',NULL),
(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36','http://localhost:8000/admin/menu_management/add-save','Add New Data Master at Menu Management','',1,'2019-03-22 14:11:40',NULL);

/*Table structure for table `cms_menus` */

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_menus` */

insert  into `cms_menus`(`id`,`name`,`type`,`path`,`color`,`icon`,`parent_id`,`is_active`,`is_dashboard`,`id_cms_privileges`,`sorting`,`created_at`,`updated_at`) values 
(1,'States','Route','AdminStatesControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,1,'2019-03-22 12:34:28',NULL),
(2,'Cities','Route','AdminCitiesControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,2,'2019-03-22 12:35:08',NULL),
(3,'Zone','Route','AdminZoneControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,3,'2019-03-22 12:36:48',NULL),
(4,'Amenities','Route','AdminAmenitiesControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,4,'2019-03-22 12:37:50',NULL),
(5,'What\'s Near By','Route','AdminNearbyControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,5,'2019-03-22 12:38:47',NULL),
(6,'List Property For','Route','AdminListPropertyForControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,6,'2019-03-22 12:39:31',NULL),
(7,'Sale Type','Route','AdminSaleTypeControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,7,'2019-03-22 12:40:10',NULL),
(8,'Property Type','Route','AdminPropertyTypeControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,8,'2019-03-22 12:40:55',NULL),
(9,'Sub Property Type','Route','AdminSubPropertyTypeControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,9,'2019-03-22 12:41:54',NULL),
(10,'Sub Sub Property Type','Route','AdminSubSubProperyTypeControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,10,'2019-03-22 12:42:48',NULL),
(11,'Area/Unit','Route','AdminAreaUnitControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,11,'2019-03-22 12:43:38',NULL),
(12,'Rera Registration Status','Route','AdminReraRegistrationStatusControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,12,'2019-03-22 12:44:23',NULL),
(13,'Possession By','Route','AdminPossessionByControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,13,'2019-03-22 12:45:24',NULL),
(14,'Ownership','Route','AdminOwnershipControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,14,'2019-03-22 12:45:55',NULL),
(15,'Overlooking','Route','AdminOverlookingControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,15,'2019-03-22 12:46:29',NULL),
(16,'Facing','Route','AdminFacingControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,16,'2019-03-22 12:47:04',NULL),
(17,'Type Of Flooring','Route','AdminTypeOfFlooringControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,17,'2019-03-22 12:48:07',NULL),
(18,'Furnishing','Route','AdminFurnishingControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,18,'2019-03-22 12:48:53',NULL),
(19,'Power Backup','Route','AdminPowerBackupControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,19,'2019-03-22 12:49:32',NULL),
(20,'Availability','Route','AdminAvailabilityControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,20,'2019-03-22 12:50:09',NULL),
(21,'Age Of Property','Route','AdminAgeOfPropertyControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,21,'2019-03-22 12:50:52',NULL),
(22,'Quality Rating','Route','AdminQualityRatingControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,22,'2019-03-22 12:51:41',NULL),
(23,'Flags','Route','AdminFlagsControllerGetIndex',NULL,'fa fa-glass',25,1,0,1,23,'2019-03-22 12:52:41',NULL),
(24,'Pages','Route','AdminPagesControllerGetIndex',NULL,'fa fa-glass',0,1,0,1,2,'2019-03-22 13:09:11',NULL),
(25,'Master','URL','#','normal','fa fa-glass',0,1,0,1,1,'2019-03-22 14:11:39',NULL);

/*Table structure for table `cms_menus_privileges` */

DROP TABLE IF EXISTS `cms_menus_privileges`;

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_menus_privileges` */

insert  into `cms_menus_privileges`(`id`,`id_cms_menus`,`id_cms_privileges`) values 
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(6,6,1),
(7,7,1),
(8,8,1),
(9,9,1),
(10,10,1),
(11,11,1),
(12,12,1),
(13,13,1),
(14,14,1),
(15,15,1),
(16,16,1),
(17,17,1),
(18,18,1),
(19,19,1),
(20,20,1),
(21,21,1),
(22,22,1),
(23,23,1),
(24,24,1),
(25,25,1);

/*Table structure for table `cms_moduls` */

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_moduls` */

insert  into `cms_moduls`(`id`,`name`,`icon`,`path`,`table_name`,`controller`,`is_protected`,`is_active`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(4,'Users Management','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2018-08-28 04:49:22',NULL,NULL),
(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(8,'Email Templates','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(11,'Log User Access','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2018-08-28 04:49:22',NULL,NULL),
(12,'States','fa fa-glass','states','states','AdminStatesController',0,0,'2019-03-22 12:34:28',NULL,NULL),
(13,'Cities','fa fa-glass','cities','cities','AdminCitiesController',0,0,'2019-03-22 12:35:08',NULL,NULL),
(14,'Zone','fa fa-glass','zone','zone','AdminZoneController',0,0,'2019-03-22 12:36:48',NULL,NULL),
(15,'Amenities','fa fa-glass','amenities','amenities','AdminAmenitiesController',0,0,'2019-03-22 12:37:50',NULL,NULL),
(16,'What\'s Near By','fa fa-glass','nearby','nearby','AdminNearbyController',0,0,'2019-03-22 12:38:46',NULL,NULL),
(17,'List Property For','fa fa-glass','list_property_for','list_property_for','AdminListPropertyForController',0,0,'2019-03-22 12:39:31',NULL,NULL),
(18,'Sale Type','fa fa-glass','sale_type','sale_type','AdminSaleTypeController',0,0,'2019-03-22 12:40:10',NULL,NULL),
(19,'Property Type','fa fa-glass','property_type','property_type','AdminPropertyTypeController',0,0,'2019-03-22 12:40:55',NULL,NULL),
(20,'Sub Property Type','fa fa-glass','sub_property_type','sub_property_type','AdminSubPropertyTypeController',0,0,'2019-03-22 12:41:54',NULL,NULL),
(21,'Sub Sub Property Type','fa fa-glass','sub_sub_propery_type','sub_sub_propery_type','AdminSubSubProperyTypeController',0,0,'2019-03-22 12:42:48',NULL,NULL),
(22,'Area/Unit','fa fa-glass','area_unit','area_unit','AdminAreaUnitController',0,0,'2019-03-22 12:43:38',NULL,NULL),
(23,'Rera Registration Status','fa fa-glass','rera_registration_status','rera_registration_status','AdminReraRegistrationStatusController',0,0,'2019-03-22 12:44:23',NULL,NULL),
(24,'Possession By','fa fa-glass','possession_by','possession_by','AdminPossessionByController',0,0,'2019-03-22 12:45:24',NULL,NULL),
(25,'Ownership','fa fa-glass','ownership','ownership','AdminOwnershipController',0,0,'2019-03-22 12:45:55',NULL,NULL),
(26,'Overlooking','fa fa-glass','overlooking','overlooking','AdminOverlookingController',0,0,'2019-03-22 12:46:29',NULL,NULL),
(27,'Facing','fa fa-glass','facing','facing','AdminFacingController',0,0,'2019-03-22 12:47:04',NULL,NULL),
(28,'Type Of Flooring','fa fa-glass','type_of_flooring','type_of_flooring','AdminTypeOfFlooringController',0,0,'2019-03-22 12:48:06',NULL,NULL),
(29,'Furnishing','fa fa-glass','furnishing','furnishing','AdminFurnishingController',0,0,'2019-03-22 12:48:53',NULL,NULL),
(30,'Power Backup','fa fa-glass','power_backup','power_backup','AdminPowerBackupController',0,0,'2019-03-22 12:49:32',NULL,NULL),
(31,'Availability','fa fa-glass','availability','availability','AdminAvailabilityController',0,0,'2019-03-22 12:50:09',NULL,NULL),
(32,'Age Of Property','fa fa-glass','age_of_property','age_of_property','AdminAgeOfPropertyController',0,0,'2019-03-22 12:50:52',NULL,NULL),
(33,'Quality Rating','fa fa-glass','quality_rating','quality_rating','AdminQualityRatingController',0,0,'2019-03-22 12:51:41',NULL,NULL),
(34,'Flags','fa fa-glass','flags','flags','AdminFlagsController',0,0,'2019-03-22 12:52:41',NULL,NULL),
(35,'Pages','fa fa-glass','pages','pages','AdminPagesController',0,0,'2019-03-22 13:09:11',NULL,NULL);

/*Table structure for table `cms_notifications` */

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_notifications` */

/*Table structure for table `cms_privileges` */

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_privileges` */

insert  into `cms_privileges`(`id`,`name`,`is_superadmin`,`theme_color`,`created_at`,`updated_at`) values 
(1,'Super Administrator',1,'skin-red','2018-08-28 04:49:22',NULL),
(2,'Aphote Admin',0,'skin-blue',NULL,NULL),
(3,'Aphote Staff',0,'skin-blue',NULL,NULL),
(4,'Builder Admin',0,'skin-blue',NULL,NULL),
(5,'Builder Staff',0,'skin-blue',NULL,NULL),
(6,'Customer',0,'skin-blue',NULL,NULL);

/*Table structure for table `cms_privileges_roles` */

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_privileges_roles` */

insert  into `cms_privileges_roles`(`id`,`is_visible`,`is_create`,`is_read`,`is_edit`,`is_delete`,`id_cms_privileges`,`id_cms_moduls`,`created_at`,`updated_at`) values 
(1,1,0,0,0,0,1,1,'2018-08-28 04:49:22',NULL),
(2,1,1,1,1,1,1,2,'2018-08-28 04:49:22',NULL),
(3,0,1,1,1,1,1,3,'2018-08-28 04:49:22',NULL),
(4,1,1,1,1,1,1,4,'2018-08-28 04:49:22',NULL),
(5,1,1,1,1,1,1,5,'2018-08-28 04:49:22',NULL),
(6,1,1,1,1,1,1,6,'2018-08-28 04:49:22',NULL),
(7,1,1,1,1,1,1,7,'2018-08-28 04:49:22',NULL),
(8,1,1,1,1,1,1,8,'2018-08-28 04:49:22',NULL),
(9,1,1,1,1,1,1,9,'2018-08-28 04:49:22',NULL),
(10,1,1,1,1,1,1,10,'2018-08-28 04:49:22',NULL),
(11,1,0,1,0,1,1,11,'2018-08-28 04:49:22',NULL),
(12,1,1,1,1,1,1,12,NULL,NULL),
(13,1,1,1,1,1,1,13,NULL,NULL),
(14,1,1,1,1,1,1,14,NULL,NULL),
(15,1,1,1,1,1,1,15,NULL,NULL),
(16,1,1,1,1,1,1,16,NULL,NULL),
(17,1,1,1,1,1,1,17,NULL,NULL),
(18,1,1,1,1,1,1,18,NULL,NULL),
(19,1,1,1,1,1,1,19,NULL,NULL),
(20,1,1,1,1,1,1,20,NULL,NULL),
(21,1,1,1,1,1,1,21,NULL,NULL),
(22,1,1,1,1,1,1,22,NULL,NULL),
(23,1,1,1,1,1,1,23,NULL,NULL),
(24,1,1,1,1,1,1,24,NULL,NULL),
(25,1,1,1,1,1,1,25,NULL,NULL),
(26,1,1,1,1,1,1,26,NULL,NULL),
(27,1,1,1,1,1,1,27,NULL,NULL),
(28,1,1,1,1,1,1,28,NULL,NULL),
(29,1,1,1,1,1,1,29,NULL,NULL),
(30,1,1,1,1,1,1,30,NULL,NULL),
(31,1,1,1,1,1,1,31,NULL,NULL),
(32,1,1,1,1,1,1,32,NULL,NULL),
(33,1,1,1,1,1,1,33,NULL,NULL),
(34,1,1,1,1,1,1,34,NULL,NULL),
(35,1,1,1,1,1,1,35,NULL,NULL);

/*Table structure for table `cms_settings` */

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_settings` */

insert  into `cms_settings`(`id`,`name`,`content`,`content_input_type`,`dataenum`,`helper`,`created_at`,`updated_at`,`group_setting`,`label`) values 
(1,'login_background_color',NULL,'text',NULL,'Input hexacode','2018-08-28 04:49:22',NULL,'Login Register Style','Login Background Color'),
(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2018-08-28 04:49:22',NULL,'Login Register Style','Login Font Color'),
(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Login Register Style','Login Background Image'),
(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','Email Sender'),
(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2018-08-28 04:49:22',NULL,'Email Setting','Mail Driver'),
(6,'smtp_host','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Host'),
(7,'smtp_port','25','text',NULL,'default 25','2018-08-28 04:49:22',NULL,'Email Setting','SMTP Port'),
(8,'smtp_username','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Username'),
(9,'smtp_password','','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Email Setting','SMTP Password'),
(10,'appname','APHOTE','text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Application Name'),
(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2018-08-28 04:49:22',NULL,'Application Setting','Default Paper Print Size'),
(12,'logo',NULL,'upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Logo'),
(13,'favicon',NULL,'upload_image',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Favicon'),
(14,'api_debug_mode','true','select','true,false',NULL,'2018-08-28 04:49:22',NULL,'Application Setting','API Debug Mode'),
(15,'google_api_key',NULL,'text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Google API Key'),
(16,'google_fcm_key',NULL,'text',NULL,NULL,'2018-08-28 04:49:22',NULL,'Application Setting','Google FCM Key');

/*Table structure for table `cms_statistic_components` */

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_statistic_components` */

/*Table structure for table `cms_statistics` */

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_statistics` */

/*Table structure for table `cms_users` */

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cms_users` */

insert  into `cms_users`(`id`,`name`,`photo`,`email`,`password`,`id_cms_privileges`,`created_at`,`updated_at`,`status`) values 
(1,'Super Admin',NULL,'admin@crudbooster.com','$2y$10$t7CoA1F8awcb4kf/nUdJsuVymjMyEQb/bm5ha96MUlfldg25nXn5y',1,'2018-08-28 04:49:21',NULL,'Active');

/*Table structure for table `facing` */

DROP TABLE IF EXISTS `facing`;

CREATE TABLE `facing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facing` */

/*Table structure for table `flags` */

DROP TABLE IF EXISTS `flags`;

CREATE TABLE `flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `flags` */

/*Table structure for table `furnishing` */

DROP TABLE IF EXISTS `furnishing`;

CREATE TABLE `furnishing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `furnishing` */

/*Table structure for table `list_property_for` */

DROP TABLE IF EXISTS `list_property_for`;

CREATE TABLE `list_property_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `list_property_for` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `nearby` */

DROP TABLE IF EXISTS `nearby`;

CREATE TABLE `nearby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nearby` */

/*Table structure for table `overlooking` */

DROP TABLE IF EXISTS `overlooking`;

CREATE TABLE `overlooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `overlooking` */

/*Table structure for table `ownership` */

DROP TABLE IF EXISTS `ownership`;

CREATE TABLE `ownership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownership` */

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `main_content` longtext,
  `sub_content` longtext,
  `template` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

/*Table structure for table `possession_by` */

DROP TABLE IF EXISTS `possession_by`;

CREATE TABLE `possession_by` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `possession_by` */

/*Table structure for table `power_backup` */

DROP TABLE IF EXISTS `power_backup`;

CREATE TABLE `power_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `power_backup` */

/*Table structure for table `property_type` */

DROP TABLE IF EXISTS `property_type`;

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `property_type` */

/*Table structure for table `quality_rating` */

DROP TABLE IF EXISTS `quality_rating`;

CREATE TABLE `quality_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quality_rating` */

/*Table structure for table `rera_registration_status` */

DROP TABLE IF EXISTS `rera_registration_status`;

CREATE TABLE `rera_registration_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rera_registration_status` */

/*Table structure for table `sale_type` */

DROP TABLE IF EXISTS `sale_type`;

CREATE TABLE `sale_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sale_type` */

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `states` */

/*Table structure for table `sub_property_type` */

DROP TABLE IF EXISTS `sub_property_type`;

CREATE TABLE `sub_property_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `property_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sub_property_type` */

/*Table structure for table `sub_sub_propery_type` */

DROP TABLE IF EXISTS `sub_sub_propery_type`;

CREATE TABLE `sub_sub_propery_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_property_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sub_sub_propery_type` */

/*Table structure for table `type_of_flooring` */

DROP TABLE IF EXISTS `type_of_flooring`;

CREATE TABLE `type_of_flooring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `type_of_flooring` */

/*Table structure for table `zone` */

DROP TABLE IF EXISTS `zone`;

CREATE TABLE `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `zone` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
