-- CLM Optimus Prod Back-Up

	-- CLM_OPT_PROD_DB

		-- Tables

-- CLM_OPT_PROD_DB.`_ad_server_client_auth_token` definition

CREATE TABLE `_ad_server_client_auth_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_dmp_audience_code` definition

CREATE TABLE `_dmp_audience_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `audience_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_dmp_country_link` (`country_id`),
  KEY `audience_code_key` (`audience_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_otp_log` definition

CREATE TABLE `_otp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requested_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `otp_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time_zone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expire_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers` definition

CREATE TABLE `_process_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) DEFAULT NULL,
  `bankcode` text,
  `displayname` text,
  `customernumber` text,
  `phonenumber` text,
  `mobilephone` text,
  `workphone` text,
  `email` text,
  `createddate` text,
  `riskscore` text,
  `domicilebranchnumber` text,
  `transactingbranchnumber` text,
  `hascreditcard` text,
  `hasdebitcard` text,
  `hashomeloan` text,
  `hassavings` text,
  `hastermdeposit` text,
  `salaryindicator` text,
  `customercategorydesc` text,
  `registeredmobile` text,
  `hasmobilebanking` text,
  `hasonlinebanking` text,
  `hasusedmobilebanking` text,
  `hasusedonlinebanking` text,
  `hasusedcreditcard` text,
  `hasuseddebitcard` text,
  `customersegment` text,
  `rmcode` text,
  `rmname` text,
  `rmabnumber` text,
  `rmofficetelephonenumber` text,
  `rmofficemobilenumber` text,
  `rmemailaddress` text,
  `kycstatusdescription` text,
  `genderdescription` text,
  `dateofbirth` text,
  `dateofanniversary` text,
  `marketingoption` text,
  `creditcardlasttransactedsince` text,
  `internetbankinglasttransactedsince` text,
  `mobilebankinglasttransactedsince` text,
  `debitcardlasttransactedsince` text,
  `bicparentdesc` text,
  `dtfscore` text,
  `hascaf` text,
  `hasbib` text,
  `hastradeloan` text,
  `hasfx` text,
  `haspos` text,
  `numofaccounts` text,
  `finnonfinbib` text,
  `customertenureinmonths` text,
  `domicilebranchname` text,
  `domicilebranchaddress` text,
  `transactingbranchname` text,
  `transactingbranchaddress` text,
  `hasstudentloan` text,
  `haspersonalloan` text,
  `hascarloan` text,
  `customerdayonbook` text,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text,
  `hasoverdraft` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.`_process_customers_botswana` definition

CREATE TABLE `_process_customers_botswana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB AUTO_INCREMENT=384685 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_ghana` definition

CREATE TABLE `_process_customers_ghana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_kenya` definition

CREATE TABLE `_process_customers_kenya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB AUTO_INCREMENT=846200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_mauritius` definition

CREATE TABLE `_process_customers_mauritius` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_mozambique` definition

CREATE TABLE `_process_customers_mozambique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB AUTO_INCREMENT=21131789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_nbc` definition

CREATE TABLE `_process_customers_nbc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_seychelles` definition

CREATE TABLE `_process_customers_seychelles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_tanzania` definition

CREATE TABLE `_process_customers_tanzania` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_uganda` definition

CREATE TABLE `_process_customers_uganda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB AUTO_INCREMENT=250001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_customers_zambia` definition

CREATE TABLE `_process_customers_zambia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` text COLLATE utf8mb4_unicode_ci,
  `displayname` text COLLATE utf8mb4_unicode_ci,
  `customernumber` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` text COLLATE utf8mb4_unicode_ci,
  `mobilephone` text COLLATE utf8mb4_unicode_ci,
  `workphone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `createddate` text COLLATE utf8mb4_unicode_ci,
  `riskscore` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchnumber` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `hascreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasdebitcard` text COLLATE utf8mb4_unicode_ci,
  `hashomeloan` text COLLATE utf8mb4_unicode_ci,
  `hassavings` text COLLATE utf8mb4_unicode_ci,
  `hastermdeposit` text COLLATE utf8mb4_unicode_ci,
  `salaryindicator` text COLLATE utf8mb4_unicode_ci,
  `customercategorydesc` text COLLATE utf8mb4_unicode_ci,
  `registeredmobile` text COLLATE utf8mb4_unicode_ci,
  `hasmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedmobilebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedonlinebanking` text COLLATE utf8mb4_unicode_ci,
  `hasusedcreditcard` text COLLATE utf8mb4_unicode_ci,
  `hasuseddebitcard` text COLLATE utf8mb4_unicode_ci,
  `customersegment` text COLLATE utf8mb4_unicode_ci,
  `rmcode` text COLLATE utf8mb4_unicode_ci,
  `rmname` text COLLATE utf8mb4_unicode_ci,
  `rmabnumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficetelephonenumber` text COLLATE utf8mb4_unicode_ci,
  `rmofficemobilenumber` text COLLATE utf8mb4_unicode_ci,
  `rmemailaddress` text COLLATE utf8mb4_unicode_ci,
  `kycstatusdescription` text COLLATE utf8mb4_unicode_ci,
  `genderdescription` text COLLATE utf8mb4_unicode_ci,
  `dateofbirth` text COLLATE utf8mb4_unicode_ci,
  `dateofanniversary` text COLLATE utf8mb4_unicode_ci,
  `marketingoption` text COLLATE utf8mb4_unicode_ci,
  `creditcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `internetbankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `mobilebankinglasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `debitcardlasttransactedsince` text COLLATE utf8mb4_unicode_ci,
  `bicparentdesc` text COLLATE utf8mb4_unicode_ci,
  `dtfscore` text COLLATE utf8mb4_unicode_ci,
  `hascaf` text COLLATE utf8mb4_unicode_ci,
  `hasbib` text COLLATE utf8mb4_unicode_ci,
  `hastradeloan` text COLLATE utf8mb4_unicode_ci,
  `hasfx` text COLLATE utf8mb4_unicode_ci,
  `haspos` text COLLATE utf8mb4_unicode_ci,
  `numofaccounts` text COLLATE utf8mb4_unicode_ci,
  `finnonfinbib` text COLLATE utf8mb4_unicode_ci,
  `customertenureinmonths` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchname` text COLLATE utf8mb4_unicode_ci,
  `domicilebranchaddress` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchname` text COLLATE utf8mb4_unicode_ci,
  `transactingbranchaddress` text COLLATE utf8mb4_unicode_ci,
  `hasstudentloan` text COLLATE utf8mb4_unicode_ci,
  `haspersonalloan` text COLLATE utf8mb4_unicode_ci,
  `hascarloan` text COLLATE utf8mb4_unicode_ci,
  `customerdayonbook` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clmcounter` text COLLATE utf8mb4_unicode_ci,
  `hasoverdraft` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_customer_key` (`country_id`,`customerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products` definition

CREATE TABLE `_process_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) DEFAULT NULL,
  `accountnumber` varchar(255) DEFAULT NULL,
  `branchnumber` varchar(255) DEFAULT NULL,
  `monthkey` varchar(255) DEFAULT NULL,
  `bankcode` varchar(255) DEFAULT NULL,
  `productkey` varchar(255) DEFAULT NULL,
  `productcode` varchar(255) DEFAULT NULL,
  `category` text,
  `dateopened` text,
  `currentbalance` text,
  `numberoftransactions` text,
  `accountcategory` text,
  `productname` text,
  `currencycode` text,
  `iban` text,
  `avgcreditbal` text,
  `avgdebitbal` text,
  `creditturnover` text,
  `certificatenumber` text,
  `term` text,
  `interestrate` text,
  `maturitydate` text,
  `daystomaturity` text,
  `maturityamt` text,
  `maturityind` text,
  `validlimitamt` text,
  `dayssinceregistration` text,
  `lastlogindate` text,
  `dayssincelastlogin` text,
  `firsttransactionind` text,
  `firsttransactiondate` text,
  `dayssincelasttransacted` text,
  `dayssinceissued` text,
  `receiveddate` text,
  `activatedind` text,
  `activateddate` text,
  `dayssincenotactivated` text,
  `profileusername` text,
  `accountstatus` text,
  `beneficiarynumber` text,
  `emifrequencyind` text,
  `emifrequencydata` text,
  `emidebitaccountnumber` text,
  `emidebitbranchnumber` text,
  `daystonextemi` text,
  `eminotpaidsince` text,
  `minimumaccountbal` text,
  `dayssinceopened` text,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.`_process_products_botswana` definition

CREATE TABLE `_process_products_botswana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1339650 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_ghana` definition

CREATE TABLE `_process_products_ghana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- CLM_OPT_PROD_DB.`_process_products_kenya` definition

CREATE TABLE `_process_products_kenya` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1500001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_mauritius` definition

CREATE TABLE `_process_products_mauritius` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_mozambique` definition

CREATE TABLE `_process_products_mozambique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64135629 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_nbc` definition

CREATE TABLE `_process_products_nbc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_seychelles` definition

CREATE TABLE `_process_products_seychelles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_tanzania` definition

CREATE TABLE `_process_products_tanzania` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_uganda` definition

CREATE TABLE `_process_products_uganda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_process_products_zambia` definition

CREATE TABLE `_process_products_zambia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customerkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci,
  `dateopened` text COLLATE utf8mb4_unicode_ci,
  `currentbalance` text COLLATE utf8mb4_unicode_ci,
  `numberoftransactions` text COLLATE utf8mb4_unicode_ci,
  `accountcategory` text COLLATE utf8mb4_unicode_ci,
  `productname` text COLLATE utf8mb4_unicode_ci,
  `currencycode` text COLLATE utf8mb4_unicode_ci,
  `iban` text COLLATE utf8mb4_unicode_ci,
  `avgcreditbal` text COLLATE utf8mb4_unicode_ci,
  `avgdebitbal` text COLLATE utf8mb4_unicode_ci,
  `creditturnover` text COLLATE utf8mb4_unicode_ci,
  `certificatenumber` text COLLATE utf8mb4_unicode_ci,
  `term` text COLLATE utf8mb4_unicode_ci,
  `interestrate` text COLLATE utf8mb4_unicode_ci,
  `maturitydate` text COLLATE utf8mb4_unicode_ci,
  `daystomaturity` text COLLATE utf8mb4_unicode_ci,
  `maturityamt` text COLLATE utf8mb4_unicode_ci,
  `maturityind` text COLLATE utf8mb4_unicode_ci,
  `validlimitamt` text COLLATE utf8mb4_unicode_ci,
  `dayssinceregistration` text COLLATE utf8mb4_unicode_ci,
  `lastlogindate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelastlogin` text COLLATE utf8mb4_unicode_ci,
  `firsttransactionind` text COLLATE utf8mb4_unicode_ci,
  `firsttransactiondate` text COLLATE utf8mb4_unicode_ci,
  `dayssincelasttransacted` text COLLATE utf8mb4_unicode_ci,
  `dayssinceissued` text COLLATE utf8mb4_unicode_ci,
  `receiveddate` text COLLATE utf8mb4_unicode_ci,
  `activatedind` text COLLATE utf8mb4_unicode_ci,
  `activateddate` text COLLATE utf8mb4_unicode_ci,
  `dayssincenotactivated` text COLLATE utf8mb4_unicode_ci,
  `profileusername` text COLLATE utf8mb4_unicode_ci,
  `accountstatus` text COLLATE utf8mb4_unicode_ci,
  `beneficiarynumber` text COLLATE utf8mb4_unicode_ci,
  `emifrequencyind` text COLLATE utf8mb4_unicode_ci,
  `emifrequencydata` text COLLATE utf8mb4_unicode_ci,
  `emidebitaccountnumber` text COLLATE utf8mb4_unicode_ci,
  `emidebitbranchnumber` text COLLATE utf8mb4_unicode_ci,
  `daystonextemi` text COLLATE utf8mb4_unicode_ci,
  `eminotpaidsince` text COLLATE utf8mb4_unicode_ci,
  `minimumaccountbal` text COLLATE utf8mb4_unicode_ci,
  `dayssinceopened` text COLLATE utf8mb4_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `accountcategorygroup` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.`_settings` definition

CREATE TABLE `_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `setting_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_sms_numbers_whitelist` definition

CREATE TABLE `_sms_numbers_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_timezones` definition

CREATE TABLE `_timezones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_user_password_log` definition

CREATE TABLE `_user_password_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `password_hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_password_hash` (`user_id`,`password_hash`),
  KEY `user_id` (`user_id`),
  KEY `password_hash` (`password_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=13811 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_user_sessions` definition

CREATE TABLE `_user_sessions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `login_date` datetime NOT NULL,
  `last_activity_date` datetime NOT NULL,
  `user_agent` text,
  `ip_address` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_unique` (`user_id`),
  UNIQUE KEY `session_id_unique` (`session_id`),
  KEY `user_id_index` (`user_id`),
  KEY `session_id_index` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=357478 DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.`_user_system_usage_activity` definition

CREATE TABLE `_user_system_usage_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `route` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creative_tags definition

CREATE TABLE `ad_creative_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_slug` (`tag_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creatives definition

CREATE TABLE `ad_creatives` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `creative_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creative_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dsp_provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_creative_slug` (`country_id`,`creative_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creatives_audit_table definition

CREATE TABLE `ad_creatives_audit_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `creative_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `file_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name_UNIQUE` (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.allowed_lead_statuses definition

CREATE TABLE `allowed_lead_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `lead_status_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.anniversary_campaign_details definition

CREATE TABLE `anniversary_campaign_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `parent_campaign_id` int(11) NOT NULL,
  `campaign_type_id` int(11) NOT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `email_template_id` int(11) DEFAULT NULL,
  `primary_approver_user_id` int(11) DEFAULT NULL,
  `secondary_approver_user_id` int(11) DEFAULT NULL,
  `holiday_id` int(11) DEFAULT NULL,
  `notification_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raw_query` longtext COLLATE utf8_unicode_ci,
  `anniversary_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `database_id` int(11) DEFAULT NULL,
  `column_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `automatic_approval` enum('automatic','manual') COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_column_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_on` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.anniversary_notifications_staging definition

CREATE TABLE `anniversary_notifications_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `anniversary_campaign_id` int(11) NOT NULL,
  `customer_cif` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `date_logged` date NOT NULL,
  `is_processed` tinyint(4) DEFAULT '0',
  `date_to_be_sent` date NOT NULL,
  `optimus_notifications_staging_table_id` bigint(20) DEFAULT NULL,
  `is_skipped_due_to_duplicate_communication` tinyint(4) DEFAULT '0',
  `approval_at` datetime DEFAULT NULL,
  `automatic_approval` tinyint(4) DEFAULT '0',
  `approval_by` tinyint(4) DEFAULT NULL,
  `error_message_while_processing_communication` text COLLATE utf8mb4_unicode_ci,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `has_error` tinyint(4) DEFAULT '0',
  `can_send` int(11) DEFAULT NULL,
  `is_picked_for_sending` tinyint(4) NOT NULL DEFAULT '0',
  `date_picked_for_sending` datetime DEFAULT NULL,
  `is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `tracking_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staging_status` tinyint(4) DEFAULT NULL,
  `is_duplicated_in_notification_staging_table` tinyint(4) DEFAULT NULL,
  `is_picked_for_notification_staging` tinyint(4) DEFAULT '0',
  `picked_for_notification_staging_on` datetime DEFAULT NULL,
  `picked_for_notification_staging_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_notification_staging_by_hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staged_on` datetime DEFAULT NULL,
  `notification_sender_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_subject` text COLLATE utf8mb4_unicode_ci,
  `recipient_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `recipient_attachments` text COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `anniversary_notifications_staging_tracking_code_unique` (`tracking_code`),
  KEY `tracking_code_index` (`tracking_code`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.anniversary_processing_staging definition

CREATE TABLE `anniversary_processing_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `anniversary_campaign_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `date_logged` date NOT NULL,
  `date_to_be_sent` date NOT NULL,
  `is_processed` tinyint(4) NOT NULL DEFAULT '0',
  `date_processed` datetime DEFAULT NULL,
  `is_picked_for_processing` tinyint(4) NOT NULL DEFAULT '0',
  `picked_for_processing_on` datetime DEFAULT NULL,
  `picked_for_processing_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_processing_by_hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_query_raw` text COLLATE utf8mb4_unicode_ci,
  `error_message` text COLLATE utf8mb4_unicode_ci,
  `event_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_time` double(10,4) DEFAULT NULL,
  `customers_who_match_conditions` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.anniversary_report definition

CREATE TABLE `anniversary_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customer_journey_campaign_id` int(11) NOT NULL,
  `contact_id` bigint(20) NOT NULL,
  `notification_method` enum('EMAIL','SMS') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `date_logged` date NOT NULL,
  `notification_sender_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_subject` text COLLATE utf8mb4_unicode_ci,
  `recipient_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.audience_lms_lead_status definition

CREATE TABLE `audience_lms_lead_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `lead_status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime NOT NULL,
  `lead_status_start_date` datetime DEFAULT NULL,
  `lead_status_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_audience_id` (`country_id`,`audience_id`),
  KEY `FK2_audience_lms_lead_status_audience_link` (`audience_id`),
  KEY `FK3_audience_lms_lead_status_lead_status_link` (`lead_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_web_visit_urls definition

CREATE TABLE `audience_web_visit_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `website_visit_url_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime NOT NULL,
  `web_visit_start_date` datetime DEFAULT NULL,
  `web_visit_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_audience_id_website_visit_url_id` (`country_id`,`audience_id`,`website_visit_url_id`),
  KEY `FK2_audience_web_visit_urls_audience_link` (`audience_id`),
  KEY `FK3_audience_web_visit_urls_website_link` (`website_visit_url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audiences definition

CREATE TABLE `audiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audience_type_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `target_country_id` int(11) DEFAULT NULL,
  `target_gender` enum('F','M','All') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lead_status_start_date` datetime DEFAULT NULL,
  `lead_status_end_date` datetime DEFAULT NULL,
  `web_visit_start_date` datetime DEFAULT NULL,
  `web_visit_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_name` (`country_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.branches_audit_table definition

CREATE TABLE `branches_audit_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `branch_code` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_manager_id` int(11) DEFAULT NULL,
  `location_region_id` int(11) DEFAULT NULL,
  `location_town_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.bulk_leads_staging definition

CREATE TABLE `bulk_leads_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upload_type` enum('STANDARD_FILE','EXTENDED_FILE_WITH_TRANSACTIONAL_DATA') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'STANDARD_FILE',
  `raw_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `error_message` text COLLATE utf8_unicode_ci,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `is_picked_for_processing` tinyint(4) NOT NULL DEFAULT '0',
  `date_picked_for_processing` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `collection_date` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source_id` int(11) DEFAULT NULL,
  `assignment_rule` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.bulk_report_staging definition

CREATE TABLE `bulk_report_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_processed` tinyint(4) NOT NULL DEFAULT '0',
  `is_processed_clm` tinyint(4) NOT NULL DEFAULT '0',
  `is_picked_for_processing` tinyint(4) NOT NULL DEFAULT '0',
  `is_picked_for_clm_processing` tinyint(4) NOT NULL DEFAULT '0',
  `date_picked_for_processing` datetime DEFAULT NULL,
  `date_picked_for_clm_processing` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.bulk_uploaded_leads_log definition

CREATE TABLE `bulk_uploaded_leads_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` tinyint(4) NOT NULL,
  `import_id` int(11) DEFAULT NULL,
  `file_name` text COLLATE utf8_unicode_ci,
  `lead_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_successful` tinyint(4) NOT NULL DEFAULT '0',
  `error_message` text COLLATE utf8_unicode_ci,
  `is_assigned` tinyint(4) NOT NULL DEFAULT '0',
  `assigned_to` int(10) DEFAULT NULL,
  `assigned_message` text COLLATE utf8_unicode_ci,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_import_id_lead_id` (`import_id`,`lead_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1373513 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.c360_leads_staging definition

CREATE TABLE `c360_leads_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `processed` tinyint(4) NOT NULL DEFAULT '0',
  `is_picked_for_processing` tinyint(4) NOT NULL DEFAULT '0',
  `time_picked_for_processing` datetime DEFAULT NULL,
  `picked_for_processing_by_ip` varchar(255) DEFAULT NULL,
  `picked_for_processing_by_hostname` varchar(255) DEFAULT NULL,
  `time_last_record_was_processed` datetime DEFAULT NULL,
  `last_record_was_processed_by_ip` varchar(255) DEFAULT NULL,
  `last_record_was_processed_by_hostname` varchar(255) DEFAULT NULL,
  `content_category` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `attributes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `total_contacts` int(11) DEFAULT NULL,
  `total_imported_contacts` int(11) DEFAULT NULL,
  `total_failed_contacts` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.cached_lead_assignment_criteria definition

CREATE TABLE `cached_lead_assignment_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `assignment_level` enum('GLOBAL_USER_LEVEL','COUNTRY_USER_LEVEL','REGIONAL_USER_LEVEL','BRANCH_USER_LEVEL') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requires_specific_user_id` tinyint(4) NOT NULL DEFAULT '0',
  `requires_specific_branch_id` tinyint(4) NOT NULL DEFAULT '0',
  `requires_specific_region_id` tinyint(4) NOT NULL DEFAULT '0',
  `primary_system_role_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_ad_exchanges definition

CREATE TABLE `cached_supported_ad_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_ad_placement_positions definition

CREATE TABLE `cached_supported_ad_placement_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_ad_placement_types definition

CREATE TABLE `cached_supported_ad_placement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_age_groups definition

CREATE TABLE `cached_supported_age_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_audience_types definition

CREATE TABLE `cached_supported_audience_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_campaign_actions definition

CREATE TABLE `cached_supported_campaign_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_campaign_objectives definition

CREATE TABLE `cached_supported_campaign_objectives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objective` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objective` (`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_countries definition

CREATE TABLE `cached_supported_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `country_code` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_country_states definition

CREATE TABLE `cached_supported_country_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `state_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `supported_country_id` int(11) NOT NULL,
  `state_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id_state_name` (`provider_id`,`state_name`),
  UNIQUE KEY `supported_country_id_state_code` (`supported_country_id`,`state_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_device_browsers definition

CREATE TABLE `cached_supported_device_browsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_device_connections definition

CREATE TABLE `cached_supported_device_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_device_types definition

CREATE TABLE `cached_supported_device_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_lead_statuses definition

CREATE TABLE `cached_supported_lead_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_oss definition

CREATE TABLE `cached_supported_oss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_id` (`provider_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_private_market_places definition

CREATE TABLE `cached_supported_private_market_places` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `supported_country_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supported_country_id_name` (`supported_country_id`,`name`),
  UNIQUE KEY `provider_id` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.cached_supported_telco_operators definition

CREATE TABLE `cached_supported_telco_operators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `supported_country_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supported_country_id_name` (`supported_country_id`,`name`),
  UNIQUE KEY `provider_id` (`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_approval_reject definition

CREATE TABLE `campaign_approval_reject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `reject_reason` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_failed_communications definition

CREATE TABLE `campaign_failed_communications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_action_conditions definition

CREATE TABLE `campaign_ma_action_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `action_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selected_product_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `condition_combination_operator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74737 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_decision_tree_categories definition

CREATE TABLE `campaign_ma_decision_tree_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_decision_tree_event_contact_log definition

CREATE TABLE `campaign_ma_decision_tree_event_contact_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `event_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_date` datetime NOT NULL,
  `date_completed` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_decision_tree_events_processing_staging definition

CREATE TABLE `campaign_ma_decision_tree_events_processing_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customer_journey_campaign_id` int(11) NOT NULL,
  `customer_journey_event_id` int(11) NOT NULL,
  `date_logged` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_processed` tinyint(4) NOT NULL DEFAULT '0',
  `date_processed` datetime DEFAULT NULL,
  `is_picked_for_processing` tinyint(4) NOT NULL DEFAULT '0',
  `picked_for_processing_on` datetime DEFAULT NULL,
  `picked_for_processing_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_processing_by_hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_query_raw` text COLLATE utf8mb4_unicode_ci,
  `error_message` text COLLATE utf8mb4_unicode_ci,
  `event_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_time` double(10,4) DEFAULT NULL,
  `customers_who_match_conditions` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_event` (`country_id`,`customer_journey_campaign_id`,`customer_journey_event_id`,`date_logged`)
) ENGINE=InnoDB AUTO_INCREMENT=671246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_objectives definition

CREATE TABLE `campaign_ma_objectives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `objective_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objective_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `raw_query` longtext COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_objectives_settings definition

CREATE TABLE `campaign_ma_objectives_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `objective_id` int(11) DEFAULT NULL,
  `database_id` int(11) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  `db_value` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_report_settings definition

CREATE TABLE `campaign_report_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `check_day` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaigns_approval_log definition

CREATE TABLE `campaigns_approval_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.campaigns_audit_table definition

CREATE TABLE `campaigns_audit_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `campaign_tracking_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advert_domain` text COLLATE utf8_unicode_ci,
  `landing_page_url` text COLLATE utf8_unicode_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `target_country_id` int(11) DEFAULT NULL,
  `bid_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_budget` double(10,5) DEFAULT NULL,
  `daily_budget` double(10,5) DEFAULT NULL,
  `houly_schedule` text COLLATE utf8_unicode_ci,
  `target_wifi_devices` tinyint(1) DEFAULT '1',
  `automatically_start` tinyint(1) DEFAULT '0',
  `amount_spent` double(10,5) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `budget` double(10,5) DEFAULT NULL,
  `cap_impressions` int(11) DEFAULT NULL,
  `cap_clicks` int(11) DEFAULT NULL,
  `cap_impression_interval` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cap_impression_interval_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cap_impression_interval_type_value` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_spend` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_impressions` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaigns_log definition

CREATE TABLE `campaigns_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `user_action` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '0',
  `is_checked_out` tinyint(4) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1060 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.client_auth_token definition

CREATE TABLE `client_auth_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_category_meta_backup definition

CREATE TABLE `contact_category_meta_backup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_contact_cif` (`country_id`,`contact_id`,`category_id`,`attribute`),
  KEY `FK3_contact_category_meta_country_link` (`country_id`),
  KEY `FK1_contact_category_meta_category_link` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.contact_interest_log definition

CREATE TABLE `contact_interest_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `dmp_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `interest_frequency` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_tags definition

CREATE TABLE `contact_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contacts_category_imports definition

CREATE TABLE `contacts_category_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `raw_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_procedure_run` tinyint(1) NOT NULL DEFAULT '1',
  `is_picked_for_processing` tinyint(4) DEFAULT '0',
  `date_picked_for_processing` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14069 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contacts_category_imports_zip definition

CREATE TABLE `contacts_category_imports_zip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_processed` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(4) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_picked_for_processing` tinyint(4) DEFAULT '0',
  `date_picked_for_processing` datetime DEFAULT NULL,
  `date_finished_processing` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.contacts_category_stats definition

CREATE TABLE `contacts_category_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `bounced_count` int(11) DEFAULT NULL,
  `invalid_count` int(11) DEFAULT NULL,
  `spam_count` int(11) DEFAULT NULL,
  `blocked_count` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.contacts_dnc definition

CREATE TABLE `contacts_dnc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.countries definition

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_app_url` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `external_coms_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_coms_email_sender_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internal_coms_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internal_coms_sender_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_integration_endpoint` text COLLATE utf8_unicode_ci,
  `sms_integration_username` text COLLATE utf8_unicode_ci,
  `sms_integration_access_key` text COLLATE utf8_unicode_ci,
  `sms_integration_sender_identifier` text COLLATE utf8_unicode_ci,
  `sms_integration_connection_headers` text COLLATE utf8_unicode_ci,
  `time_zone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itouch_email_endpoint` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itouch_email_api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itouch_campaign_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocate_leads_by_working_hours` tinyint(1) DEFAULT '0',
  `skip_lead_allocation_on_holidays` tinyint(1) DEFAULT '0',
  `country_call_code` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_usd_conversion_rate` double(10,2) DEFAULT NULL,
  `allow_multiple_sms` tinyint(1) DEFAULT '0',
  `user_management_disabled` tinyint(1) DEFAULT '0',
  `archiving_style` enum('','static','dynamic') COLLATE utf8_unicode_ci DEFAULT NULL,
  `archiving_period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `updated_by` tinyint(1) DEFAULT NULL,
  `deleted_by` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.countries_old definition

CREATE TABLE `countries_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `external_coms_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_coms_email_sender_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internal_coms_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internal_coms_sender_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_integration_endpoint` text COLLATE utf8_unicode_ci,
  `sms_integration_username` text COLLATE utf8_unicode_ci,
  `sms_integration_access_key` text COLLATE utf8_unicode_ci,
  `sms_integration_sender_identifier` text COLLATE utf8_unicode_ci,
  `sms_integration_connection_headers` text COLLATE utf8_unicode_ci,
  `time_zone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allocate_leads_by_working_hours` tinyint(1) DEFAULT '0',
  `skip_lead_allocation_on_holidays` tinyint(1) DEFAULT '0',
  `country_call_code` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `average_usd_conversion_rate` double(10,2) DEFAULT NULL,
  `allow_multiple_sms` tinyint(1) DEFAULT '0',
  `created_by` tinyint(1) DEFAULT NULL,
  `updated_by` tinyint(1) DEFAULT NULL,
  `deleted_by` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.country_holidays definition

CREATE TABLE `country_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `holiday` date NOT NULL,
  `holiday_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `holiday_name_slug` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_recurring` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `message_of_the_day` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.country_possible_customer_employers definition

CREATE TABLE `country_possible_customer_employers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `employer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employer_name` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_employer_slug` (`country_id`,`employer_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=165503 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.country_possible_customer_employment_sectors definition

CREATE TABLE `country_possible_customer_employment_sectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `employment_sector_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employment_sector_name` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_employment_sector_slug` (`country_id`,`employment_sector_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=296089 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.country_possible_customer_segments definition

CREATE TABLE `country_possible_customer_segments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `segment_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segment_name` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_segment_slug` (`country_id`,`segment_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.country_possible_loan_types definition

CREATE TABLE `country_possible_loan_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `loan_type_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_type_name` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_loan_type_slug` (`country_id`,`loan_type_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=74308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.country_sms_senders definition

CREATE TABLE `country_sms_senders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sender_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_api_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sender_api_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_api_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_sender_name` (`country_id`,`sender_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.country_working_hours definition

CREATE TABLE `country_working_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `weekday_start_work` time DEFAULT NULL,
  `weekday_end_work` time DEFAULT NULL,
  `weekend_start_work` time DEFAULT NULL,
  `weekend_end_work` time DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.customer_journey_contacts definition

CREATE TABLE `customer_journey_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cif` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_funded` tinyint(1) NOT NULL DEFAULT '0',
  `registered_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `active_bir` tinyint(1) NOT NULL DEFAULT '0',
  `has_used_debit_card` tinyint(1) NOT NULL DEFAULT '0',
  `has_picked_credit_card` tinyint(1) NOT NULL DEFAULT '0',
  `has_savings_account` tinyint(1) NOT NULL DEFAULT '0',
  `has_loan_account` tinyint(1) NOT NULL DEFAULT '0',
  `has_mortgage` tinyint(1) NOT NULL DEFAULT '0',
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.customer_journey_notifications_staging definition

CREATE TABLE `customer_journey_notifications_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customer_journey_campaign_id` int(11) NOT NULL,
  `customer_journey_event_id` int(11) NOT NULL,
  `customer_cif` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `date_logged` date NOT NULL,
  `optimus_notifications_staging_table_id` bigint(20) DEFAULT NULL,
  `is_skipped_due_to_duplicate_communication` tinyint(4) DEFAULT '0',
  `approval_at` datetime DEFAULT NULL,
  `automatic_approval` tinyint(4) DEFAULT '0',
  `approval_by` tinyint(4) DEFAULT NULL,
  `error_message_while_processing_communication` text COLLATE utf8mb4_unicode_ci,
  `tracking_code` text COLLATE utf8mb4_unicode_ci,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `has_error` tinyint(4) DEFAULT '0',
  `can_send` tinyint(4) DEFAULT NULL,
  `is_picked_for_sending` tinyint(4) DEFAULT '0',
  `is_sent` tinyint(4) DEFAULT '0',
  `date_picked_for_sending` datetime DEFAULT NULL,
  `notification_staging_status` tinyint(4) DEFAULT NULL,
  `is_duplicated_in_notification_staging_table` tinyint(4) DEFAULT NULL,
  `is_picked_for_notification_staging` tinyint(4) DEFAULT '0',
  `picked_for_notification_staging_on` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `picked_for_notification_staging_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_notification_staging_by_hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staged_on` datetime DEFAULT NULL,
  `notification_sender_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_subject` text COLLATE utf8mb4_unicode_ci,
  `recipient_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'sent',
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `recipient_attachments` text COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_staged_contact` (`country_id`,`customer_journey_campaign_id`,`customer_journey_event_id`,`customer_cif`,`notification_method`),
  KEY `customer_journey_notifications_staging_can_send_index` (`can_send`),
  KEY `clm_schedules_index` (`can_send`,`is_picked_for_sending`,`notification_method`)
) ENGINE=InnoDB AUTO_INCREMENT=16164917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.customer_transaction_data_categories definition

CREATE TABLE `customer_transaction_data_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `list_population_end_point` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `date_checked_out` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_category_slug` (`country_id`,`category_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.department_organogram definition

CREATE TABLE `department_organogram` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `department_head_id` int(10) unsigned NOT NULL,
  `is_overall_head` tinyint(1) DEFAULT '0',
  `is_country_head` tinyint(1) DEFAULT '0',
  `is_branch_head` tinyint(1) DEFAULT '0',
  `branch` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.departments definition

CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `department_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `department_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `department_description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_department_slug` (`country_id`,`department_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.display_media definition

CREATE TABLE `display_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `display_media_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_media_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_media_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dnc_imports definition

CREATE TABLE `dnc_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.document_types definition

CREATE TABLE `document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `type_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_slug` (`type_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dt_imports definition

CREATE TABLE `dt_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sms',
  `raw_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dt_products definition

CREATE TABLE `dt_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_slug` (`country_id`,`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dt_products_meta definition

CREATE TABLE `dt_products_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3_contact_category_meta_country_link` (`country_id`),
  KEY `FK2_contact_category_meta_contact_link` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dt_products_old definition

CREATE TABLE `dt_products_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_slug` (`country_id`,`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dt_staging definition

CREATE TABLE `dt_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `email_template_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `customer_cif` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'sms',
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_notification_staging_country_link` (`country_id`),
  KEY `FK2_notification_staging_campaign_link` (`campaign_id`),
  KEY `FK3_notification_staging_contact_link` (`contact_id`),
  KEY `FK4_notifications_staging_link_email_template` (`email_template_id`),
  KEY `FK5_notifications_staging_link_notification_type` (`notification_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.dump_customer_journey_notifications_staging definition

CREATE TABLE `dump_customer_journey_notifications_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `customer_journey_campaign_id` int(11) NOT NULL,
  `customer_journey_event_id` int(11) NOT NULL,
  `customer_cif` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `date_logged` date NOT NULL,
  `optimus_notifications_staging_table_id` bigint(20) DEFAULT NULL,
  `is_skipped_due_to_duplicate_communication` tinyint(4) DEFAULT '0',
  `approval_at` datetime DEFAULT NULL,
  `automatic_approval` tinyint(4) DEFAULT '0',
  `approval_by` tinyint(4) DEFAULT NULL,
  `error_message_while_processing_communication` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tracking_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `has_error` tinyint(4) DEFAULT '0',
  `can_send` tinyint(4) DEFAULT NULL,
  `is_picked_for_sending` tinyint(4) DEFAULT '0',
  `is_sent` tinyint(4) DEFAULT '0',
  `date_picked_for_sending` datetime DEFAULT NULL,
  `notification_staging_status` tinyint(4) DEFAULT NULL,
  `is_duplicated_in_notification_staging_table` tinyint(4) DEFAULT NULL,
  `is_picked_for_notification_staging` tinyint(4) DEFAULT '0',
  `picked_for_notification_staging_on` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `picked_for_notification_staging_by_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_notification_staging_by_hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staged_on` datetime DEFAULT NULL,
  `notification_sender_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sender_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `recipient_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sent',
  `recipient_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `recipient_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_staged_contact` (`country_id`,`customer_journey_campaign_id`,`customer_journey_event_id`,`customer_cif`,`notification_method`) USING BTREE,
  KEY `customer_journey_notifications_staging_can_send_index` (`can_send`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14383845 DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.duplicate_cif definition

CREATE TABLE `duplicate_cif` (
  `customer_cif` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.email_template_categories definition

CREATE TABLE `email_template_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.email_template_tags definition

CREATE TABLE `email_template_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `tag_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_template_tags_tag_slug_unique` (`tag_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.email_templates definition

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `emailer_category_id` int(11) DEFAULT NULL,
  `email_title_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `email_markup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_folder` text COLLATE utf8_unicode_ci,
  `email_markdown` text COLLATE utf8_unicode_ci,
  `linked_images` text COLLATE utf8_unicode_ci,
  `linked_attachments` text COLLATE utf8_unicode_ci,
  `mcr_primary_approver_user_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_approver_user_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mcr_approval_request_at` datetime DEFAULT NULL,
  `mcr_approval_request_by` tinyint(4) DEFAULT NULL,
  `mcr_template_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `template_approval_status` enum('Draft','Asked for Approval','Rejected','Approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Draft',
  `approval_request_at` datetime DEFAULT NULL,
  `approval_request_by` tinyint(4) DEFAULT NULL,
  `template_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `business_approval_evidence` text COLLATE utf8_unicode_ci,
  `mcr_approval_evidence` text COLLATE utf8_unicode_ci,
  `originally_assigned_to_name` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `templates_tags` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_email_title_slug` (`country_id`,`email_title_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2359 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.email_templates_assets definition

CREATE TABLE `email_templates_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filepath` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.email_templates_log definition

CREATE TABLE `email_templates_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_action` text COLLATE utf8mb4_unicode_ci,
  `emailer_category_id` int(11) DEFAULT NULL,
  `email_title_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email_markup` text COLLATE utf8mb4_unicode_ci,
  `previous_markup` text COLLATE utf8mb4_unicode_ci,
  `email_placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template_folder` text COLLATE utf8mb4_unicode_ci,
  `email_markdown` text COLLATE utf8mb4_unicode_ci,
  `linked_images` text COLLATE utf8mb4_unicode_ci,
  `linked_attachments` text COLLATE utf8mb4_unicode_ci,
  `templates_tags` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '0',
  `is_checked_out` tinyint(4) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.email_templates_placeholders definition

CREATE TABLE `email_templates_placeholders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `database_id` int(11) DEFAULT NULL,
  `column_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4753 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.email_templates_reject definition

CREATE TABLE `email_templates_reject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned DEFAULT NULL,
  `reject_reason` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_campaign_categories definition

CREATE TABLE `emailer_campaign_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_campaign_types definition

CREATE TABLE `emailer_campaign_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_event_performance definition

CREATE TABLE `emailer_event_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `report_date_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_notifications_staged` int(11) DEFAULT '0',
  `total_notifications_sent_system` int(11) DEFAULT '0',
  `total_notifications_sent_provider` int(11) DEFAULT '0',
  `total_notifications_delivered_by_provider` int(11) DEFAULT '0',
  `total_notifications_queued_by_provider` int(11) DEFAULT '0',
  `total_notifications_opened_by_customer` int(11) DEFAULT '0',
  `total_notifications_clicked_by_customer` int(11) DEFAULT '0',
  `total_notifications_bounced` int(11) DEFAULT '0',
  `total_notifications_spammed_by_customer` int(11) DEFAULT '0',
  `total_notifications_blocked_by_customer` int(11) DEFAULT '0',
  `total_notifications_unsubscribe_by_customer` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_emailer_event_performance_link` (`event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.exported_leads_staging definition

CREATE TABLE `exported_leads_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload_data` text COLLATE utf8mb4_unicode_ci,
  `filter_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_message` text COLLATE utf8mb4_unicode_ci,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `is_picked_for_processing` tinyint(1) NOT NULL DEFAULT '0',
  `date_picked_for_processing` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.failed_jobs definition

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `exception` text COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=510838 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.feed_notifications_staging definition

CREATE TABLE `feed_notifications_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `feed_campaign_id` int(11) NOT NULL,
  `customer_cif` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_id` int(11) DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT '0',
  `notification_method` enum('EMAIL','SMS') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `date_logged` date NOT NULL,
  `is_processed` tinyint(4) DEFAULT '0',
  `date_to_be_sent` date NOT NULL,
  `optimus_notifications_staging_table_id` bigint(20) DEFAULT NULL,
  `is_skipped_due_to_duplicate_communication` tinyint(4) DEFAULT '0',
  `approval_at` datetime DEFAULT NULL,
  `mcr_approval_at` datetime DEFAULT NULL,
  `automatic_approval` tinyint(4) DEFAULT '0',
  `approval_by` tinyint(4) DEFAULT NULL,
  `error_message_while_processing_communication` text COLLATE utf8mb4_unicode_ci,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `has_error` tinyint(4) DEFAULT '0',
  `can_send` int(11) DEFAULT NULL,
  `is_picked_for_sending` tinyint(4) NOT NULL DEFAULT '0',
  `date_picked_for_sending` datetime DEFAULT NULL,
  `is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `tracking_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staging_status` tinyint(4) DEFAULT NULL,
  `is_duplicated_in_notification_staging_table` tinyint(4) DEFAULT NULL,
  `is_picked_for_notification_staging` tinyint(4) DEFAULT '0',
  `picked_for_notification_staging_on` datetime DEFAULT NULL,
  `picked_for_notification_staging_by_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_for_notification_staging_by_hostname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_staged_on` datetime DEFAULT NULL,
  `notification_sender_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_subject` text COLLATE utf8mb4_unicode_ci,
  `recipient_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `imgUrl` text COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `feed_notifications_staging_tracking_code_unique` (`tracking_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.feeds definition

CREATE TABLE `feeds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.form_field_types definition

CREATE TABLE `form_field_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_checked_out` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked_out_by` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_slug` (`type_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.global_product_segments definition

CREATE TABLE `global_product_segments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.hadoop_contacts definition

CREATE TABLE `hadoop_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `preferred_title` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_cif` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_classification` int(11) DEFAULT NULL,
  `customer_cif_slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `preferred_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_name_slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_profile_image` text COLLATE utf8mb4_unicode_ci,
  `location_town_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `physical_address` text COLLATE utf8mb4_unicode_ci,
  `is_existing_customer` tinyint(4) DEFAULT '0',
  `has_primary_data` tinyint(4) DEFAULT '0',
  `is_deleted` tinyint(4) DEFAULT '0',
  `is_temp` tinyint(4) DEFAULT '0',
  `dont_contact` tinyint(4) DEFAULT '0',
  `facebook_profile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_identifier` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_handle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_handle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_profile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foursquare_profile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_handle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customersegment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofanniversary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genderdescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kycstatusdescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmemailaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmofficetelephonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmabnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rmcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email_address_not_valid` tinyint(4) DEFAULT '0',
  `reason_why_email_address_not_valid` text COLLATE utf8mb4_unicode_ci,
  `contact_email_address_not_reachable` tinyint(4) DEFAULT '0',
  `has_blocked_our_email_address` tinyint(4) DEFAULT '0',
  `has_marked_our_email_address_as_spam` tinyint(4) DEFAULT '0',
  `recipient_email_blocked` tinyint(4) DEFAULT '0',
  `recipient_has_unsubscribed_emails` tinyint(4) DEFAULT '0',
  `recipient_unsubscribed_emails_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_contact_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.holidays definition

CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.itouch_log definition

CREATE TABLE `itouch_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `itouch_payload` longtext COLLATE utf8mb4_unicode_ci,
  `itouch_response` longtext COLLATE utf8mb4_unicode_ci,
  `recipient_payload` longtext COLLATE utf8mb4_unicode_ci,
  `itouch_error_code` longtext COLLATE utf8mb4_unicode_ci,
  `itouch_error_message` longtext COLLATE utf8mb4_unicode_ci,
  `itouch_request_headers` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.jobs definition

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=10830 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_assignment_among_users_tracker definition

CREATE TABLE `lead_assignment_among_users_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `assigned_leads_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_assignment_among_users_tracker_user_id_unique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.lead_closure_reasons definition

CREATE TABLE `lead_closure_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_slug_key` (`reason_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_conversations definition

CREATE TABLE `lead_conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_capture_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46768 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_creatives definition

CREATE TABLE `lead_creatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `creative_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creative_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creative_url` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_creatives_creative_slug_unique` (`creative_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_imports definition

CREATE TABLE `lead_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `collection_date` int(11) NOT NULL,
  `lead_source_id` int(11) NOT NULL,
  `assignment_rule` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `raw_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_sent` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `completed` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_sale_level_types definition

CREATE TABLE `lead_sale_level_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `trophy_style` text COLLATE utf8_unicode_ci,
  `lead_count_lower_limit` int(11) DEFAULT NULL,
  `lead_count_upper_limit` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_sales_achievement_types definition

CREATE TABLE `lead_sales_achievement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `achievement` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `style` text COLLATE utf8_unicode_ci,
  `image_path` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_scoring_types definition

CREATE TABLE `lead_scoring_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `is_weighted` tinyint(1) DEFAULT '1',
  `provider_endpoint` text COLLATE utf8_unicode_ci,
  `auto_created` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_search_key_words definition

CREATE TABLE `lead_search_key_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `lead_source_key_word_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_id_lead_source_key_word_id` (`lead_id`,`lead_source_key_word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_source_medium definition

CREATE TABLE `lead_source_medium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medium_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `medium` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medium_slug` (`medium_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_source_search_key_words definition

CREATE TABLE `lead_source_search_key_words` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_source_id` int(11) NOT NULL,
  `key_word_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_word` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_source_id_key_word_slug` (`lead_source_id`,`key_word_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_source_utm_campaign_content definition

CREATE TABLE `lead_source_utm_campaign_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `lead_source_id` bigint(20) NOT NULL,
  `content_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_id_lead_source_id_content_slug` (`lead_id`,`lead_source_id`,`content_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_sources definition

CREATE TABLE `lead_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_source_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `aro` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_source_slug` (`lead_source_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_statues definition

CREATE TABLE `lead_statues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lead_action` enum('AddMobilizedBusiness','Reassign','Update','Archive') COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_transactional_history definition

CREATE TABLE `lead_transactional_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `customer_credit_limit` decimal(12,2) DEFAULT NULL,
  `wpb_code` text COLLATE utf8mb4_unicode_ci,
  `domicile_branch_number` text COLLATE utf8mb4_unicode_ci,
  `country_possible_customer_employers_id` int(11) DEFAULT NULL,
  `country_possible_customer_employment_sector_id` int(11) DEFAULT NULL,
  `customer_date_birth` date DEFAULT NULL,
  `customer_last_last_month_salary` double(12,3) DEFAULT NULL,
  `customer_last_previous_month_salary` double(12,3) DEFAULT NULL,
  `customer_last_three_months_salary` double(12,3) DEFAULT NULL,
  `has_cas_product` tinyint(4) DEFAULT NULL,
  `has_loan_product` tinyint(4) DEFAULT NULL,
  `has_credit_card` tinyint(4) DEFAULT NULL,
  `has_insurance_product` tinyint(4) DEFAULT NULL,
  `has_multiple_products` tinyint(4) DEFAULT NULL,
  `customer_current_loan_installment_amount` double(12,3) DEFAULT NULL,
  `country_possible_loan_type_id` int(11) DEFAULT NULL,
  `customer_current_loan_maturity_date` date DEFAULT NULL,
  `customer_current_loan_disbursement_date` date DEFAULT NULL,
  `sector` int(11) DEFAULT '0',
  `segment` int(11) DEFAULT '0',
  `customer_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_average_balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_products` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_deposit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_deposit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integrator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_bib` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_trade_loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turnover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rm_code` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_transactional_history_lead_id_unique` (`lead_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1125761 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.leads_archive definition

CREATE TABLE `leads_archive` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `batch_import_id` int(11) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `dmp_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `preferred_phone_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_email_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_account_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_score_summary` enum('Hot','Lukewarm','Cold') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assigned_on` datetime DEFAULT NULL,
  `assigned_user_timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reassignment_message` text COLLATE utf8mb4_unicode_ci,
  `originally_assigned_to` int(11) DEFAULT NULL,
  `originally_assigned_on` datetime DEFAULT NULL,
  `originally_assigned_user_timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originally_contacted_on` datetime DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `current_location_id` int(11) DEFAULT NULL,
  `preferred_branch_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `lead_status_id` int(11) DEFAULT NULL,
  `lead_closure_reason_comment` text COLLATE utf8mb4_unicode_ci,
  `lead_closure_reason_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `display_media_id` int(11) DEFAULT NULL,
  `lead_source_id` int(10) unsigned DEFAULT NULL,
  `creative_id` int(11) DEFAULT NULL,
  `lead_source_medium_id` int(10) unsigned DEFAULT NULL,
  `lead_source_url_id` int(10) unsigned DEFAULT NULL,
  `product_value` double DEFAULT NULL,
  `product_value_usd` double(10,2) DEFAULT NULL,
  `product_purchase_code` text COLLATE utf8mb4_unicode_ci,
  `product_approved_value` bigint(20) DEFAULT NULL,
  `customer_number` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` enum('Individual Customer','Non Individual') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_registration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `product_taken_up` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_open_date` datetime DEFAULT NULL,
  `is_existing_customer` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_details` text COLLATE utf8mb4_unicode_ci,
  `preferred_timezone` text COLLATE utf8mb4_unicode_ci,
  `preferred_contact_time` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_locale` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `is_duplicate` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_archived` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checkout_date` datetime DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `lead_first_contact_tat` double(8,2) NOT NULL DEFAULT '0.00',
  `lead_branch_contact_tat` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `rm_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `rm_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sana_campaign_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_source` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_number` (`lead_number`),
  KEY `FK_leads_country_link` (`country_id`),
  KEY `FK_leads_product_link` (`product_id`),
  KEY `FK_leads_user_link` (`assigned_to`),
  KEY `assigned_user_timezone` (`assigned_user_timezone`),
  KEY `originally_assigned_user_timezone` (`originally_assigned_user_timezone`),
  KEY `FK_leads_status_link` (`lead_status_id`),
  KEY `FK_leads_lead_source_link` (`lead_source_id`),
  KEY `leads_archive_lead_first_contact_tat_index` (`lead_first_contact_tat`),
  KEY `leads_archive_lead_branch_contact_tat_index` (`lead_branch_contact_tat`)
) ENGINE=InnoDB AUTO_INCREMENT=1418401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.leads_audit_table definition

CREATE TABLE `leads_audit_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `dmp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `preferred_phone_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_score_summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assigned_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reassignment_message` text COLLATE utf8_unicode_ci,
  `originally_assigned_to` int(11) DEFAULT NULL,
  `originally_assigned_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originally_contacted_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `current_location_id` int(11) DEFAULT NULL,
  `preferred_branch_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `lead_status_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `display_media_id` int(11) DEFAULT NULL,
  `lead_source_id` int(10) unsigned DEFAULT '0',
  `lead_source_medium_id` int(10) unsigned DEFAULT '0',
  `lead_source_url_id` int(10) unsigned DEFAULT '0',
  `product_value` double DEFAULT NULL,
  `product_purchase_code` text COLLATE utf8_unicode_ci,
  `product_sold` int(11) DEFAULT NULL,
  `is_existing_customer` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_details` text COLLATE utf8_unicode_ci,
  `preferred_timezone` text COLLATE utf8_unicode_ci,
  `preferred_contact_time` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_locale` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `date_last_viewed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_duplicate` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `date_contacted` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checkout_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1874597 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lms_campaign_mixed_details definition

CREATE TABLE `lms_campaign_mixed_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `lead_ids` json DEFAULT NULL,
  `is_processed` int(11) NOT NULL DEFAULT '0',
  `campaign_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.lms_performance_reports definition

CREATE TABLE `lms_performance_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `report_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ma_life_cycle_key_matrix definition

CREATE TABLE `ma_life_cycle_key_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_category_id` int(11) NOT NULL,
  `attribute` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `positive_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `negative_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neutral_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_contact_category_id_attribute` (`country_id`,`contact_category_id`,`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.meta_summary definition

CREATE TABLE `meta_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attributes` longtext COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_values` longtext COLLATE utf8_unicode_ci,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_category_attribute` (`category_id`,`attribute_name`),
  UNIQUE KEY `unique_category_attribute_names` (`category_id`,`attribute_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19051597 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.migrations definition

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.notification_summary definition

CREATE TABLE `notification_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `email_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.notification_types definition

CREATE TABLE `notification_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_slug` (`type_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.notifications definition

CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `sender_address` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS','BOTH') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'EMAIL',
  `recipient_address_is_invalid` tinyint(1) DEFAULT '0',
  `recipient_email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `subject` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_attachments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `recipient_message_images` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sending_error` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tracking_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_code_uuid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `message_vendor_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `url_clicked_if_clicked` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `provider_status` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'sent',
  `retry_sending_on` datetime DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  `opened_on` datetime DEFAULT NULL,
  `opened_from_ip` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `opened_from_location` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `opened_from_user_agent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `bounced_on` datetime DEFAULT NULL,
  `recipient_email_is_blocked` tinyint(1) DEFAULT '0',
  `recipient_blocked_reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `recipient_blocked_us` tinyint(1) DEFAULT '0',
  `recipient_marked_email_as_spam` tinyint(1) DEFAULT '0',
  `spammed_on` datetime DEFAULT NULL,
  `spam_flag_source` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `blocked_on` datetime DEFAULT NULL,
  `unsubscribed_emails_on` datetime DEFAULT NULL,
  `message_is_hard_bounce` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_bounce_reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_manually_processed` tinyint(4) DEFAULT '0',
  `hostname` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_campaign_sms_recipient` (`campaign_id`,`recipient_phone_number`,`notification_method`),
  UNIQUE KEY `unique_campaign_email_recepients` (`campaign_id`,`recipient_email`,`notification_method`)
) ENGINE=InnoDB AUTO_INCREMENT=3380893 DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.notifications_call_to_action_clicks definition

CREATE TABLE `notifications_call_to_action_clicks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notification_id` bigint(20) NOT NULL,
  `url_clicked` text COLLATE utf8_unicode_ci NOT NULL,
  `clicked_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.notifications_intermediate definition

CREATE TABLE `notifications_intermediate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `sender_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS','BOTH') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `recipient_address_is_invalid` tinyint(4) DEFAULT '0',
  `recipient_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_attachments` text COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text COLLATE utf8mb4_unicode_ci,
  `sending_error` text COLLATE utf8mb4_unicode_ci,
  `tracking_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code_uuid` text COLLATE utf8mb4_unicode_ci,
  `message_vendor_url` text COLLATE utf8mb4_unicode_ci,
  `url_clicked_if_clicked` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '0',
  `provider_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'sent',
  `retry_sending_on` datetime DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  `opened_on` datetime DEFAULT NULL,
  `opened_from_ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opened_from_location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opened_from_user_agent` text COLLATE utf8mb4_unicode_ci,
  `bounced_on` datetime DEFAULT NULL,
  `recipient_email_is_blocked` tinyint(4) DEFAULT '0',
  `recipient_blocked_reason` text COLLATE utf8mb4_unicode_ci,
  `recipient_blocked_us` tinyint(4) DEFAULT '0',
  `recipient_marked_email_as_spam` tinyint(4) DEFAULT '0',
  `spammed_on` datetime DEFAULT NULL,
  `spam_flag_source` text COLLATE utf8mb4_unicode_ci,
  `blocked_on` datetime DEFAULT NULL,
  `unsubscribed_emails_on` datetime DEFAULT NULL,
  `message_is_hard_bounce` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_bounce_reason` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_manually_processed` tinyint(4) DEFAULT '0',
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_successful` text COLLATE utf8mb4_unicode_ci,
  `sending_error_message` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_campaign_email_recipient` (`campaign_id`,`recipient_email`,`notification_method`),
  UNIQUE KEY `unique_campaign_sms_recipient` (`campaign_id`,`recipient_phone_number`,`notification_method`),
  KEY `tracking_code_index` (`tracking_code`)
) ENGINE=InnoDB AUTO_INCREMENT=87620722 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.notifications_intermediate_restored definition

CREATE TABLE `notifications_intermediate_restored` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `sender_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS','BOTH') COLLATE utf8mb4_unicode_ci DEFAULT 'EMAIL',
  `recipient_address_is_invalid` tinyint(4) DEFAULT '0',
  `recipient_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient_attachments` text COLLATE utf8mb4_unicode_ci,
  `recipient_message_images` text COLLATE utf8mb4_unicode_ci,
  `sending_error` text COLLATE utf8mb4_unicode_ci,
  `tracking_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_code_uuid` text COLLATE utf8mb4_unicode_ci,
  `message_vendor_url` text COLLATE utf8mb4_unicode_ci,
  `url_clicked_if_clicked` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '0',
  `provider_status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'sent',
  `retry_sending_on` datetime DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  `opened_on` datetime DEFAULT NULL,
  `opened_from_ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opened_from_location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opened_from_user_agent` text COLLATE utf8mb4_unicode_ci,
  `bounced_on` datetime DEFAULT NULL,
  `recipient_email_is_blocked` tinyint(4) DEFAULT '0',
  `recipient_blocked_reason` text COLLATE utf8mb4_unicode_ci,
  `recipient_blocked_us` tinyint(4) DEFAULT '0',
  `recipient_marked_email_as_spam` tinyint(4) DEFAULT '0',
  `spammed_on` datetime DEFAULT NULL,
  `spam_flag_source` text COLLATE utf8mb4_unicode_ci,
  `blocked_on` datetime DEFAULT NULL,
  `unsubscribed_emails_on` datetime DEFAULT NULL,
  `message_is_hard_bounce` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_bounce_reason` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_manually_processed` tinyint(4) DEFAULT '0',
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_successful` text COLLATE utf8mb4_unicode_ci,
  `sending_error_message` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_campaign_email_recipient` (`campaign_id`,`recipient_email`,`notification_method`),
  UNIQUE KEY `unique_campaign_sms_recipient` (`campaign_id`,`recipient_phone_number`,`notification_method`),
  KEY `tracking_code_index` (`tracking_code`)
) ENGINE=InnoDB AUTO_INCREMENT=78337655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.notifications_old definition

CREATE TABLE `notifications_old` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `sender_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS','BOTH') COLLATE utf8_unicode_ci DEFAULT 'EMAIL',
  `recipient_address_is_invalid` tinyint(1) DEFAULT '0',
  `recipient_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8_unicode_ci,
  `subject` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_attachments` text COLLATE utf8_unicode_ci,
  `recipient_message_images` text COLLATE utf8_unicode_ci,
  `sending_error` text COLLATE utf8_unicode_ci,
  `tracking_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_code_uuid` text COLLATE utf8_unicode_ci,
  `message_vendor_url` text COLLATE utf8_unicode_ci,
  `url_clicked_if_clicked` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `provider_status` varchar(250) COLLATE utf8_unicode_ci DEFAULT 'sent',
  `retry_sending_on` datetime DEFAULT NULL,
  `sent_on` datetime DEFAULT NULL,
  `opened_on` datetime DEFAULT NULL,
  `opened_from_ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opened_from_location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opened_from_user_agent` text COLLATE utf8_unicode_ci,
  `bounced_on` datetime DEFAULT NULL,
  `recipient_email_is_blocked` tinyint(1) DEFAULT '0',
  `recipient_blocked_reason` text COLLATE utf8_unicode_ci,
  `recipient_blocked_us` tinyint(1) DEFAULT '0',
  `recipient_marked_email_as_spam` tinyint(1) DEFAULT '0',
  `spammed_on` datetime DEFAULT NULL,
  `spam_flag_source` text COLLATE utf8_unicode_ci,
  `blocked_on` datetime DEFAULT NULL,
  `unsubscribed_emails_on` datetime DEFAULT NULL,
  `message_is_hard_bounce` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_bounce_reason` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_manually_processed` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_notification_country_link` (`country_id`),
  KEY `FK_notification_campaign_link` (`campaign_id`),
  KEY `contact_id` (`contact_id`),
  KEY `recipient_email` (`recipient_email`),
  KEY `provider_status` (`provider_status`),
  KEY `notifications_unique_tracking_code` (`tracking_code`),
  KEY `notifications_notification_method` (`notification_method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.product_imports definition

CREATE TABLE `product_imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `raw_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `total_contacts` int(11) DEFAULT '0',
  `total_imported_contacts` int(11) DEFAULT '0',
  `total_failed_contacts` int(11) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.product_meta_summary definition

CREATE TABLE `product_meta_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attributes` longtext COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_values` longtext COLLATE utf8_unicode_ci,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_product_attribute_name` (`product_id`,`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.products_audit_table definition

CREATE TABLE `products_audit_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `overall_product_head_id` int(11) DEFAULT NULL,
  `product_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_value` double(10,5) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `create_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.pseudo_rows definition

CREATE TABLE `pseudo_rows` (
  `row` int(10) unsigned NOT NULL,
  PRIMARY KEY (`row`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- CLM_OPT_PROD_DB.sales_conversion_rate_tracker definition

CREATE TABLE `sales_conversion_rate_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `conversion_rate` double DEFAULT NULL,
  `user_level_points` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sana_campaigns definition

CREATE TABLE `sana_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.scoring_criteria definition

CREATE TABLE `scoring_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `points` double(10,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `criteria_slug` (`criteria_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_campaign_categories definition

CREATE TABLE `sms_campaign_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sms_campaign_categories_country_link` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4558 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_campaign_contact_sources definition

CREATE TABLE `sms_campaign_contact_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sms_campaign_id` int(11) NOT NULL,
  `contact_category_id` int(11) NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_sms_campaign_contact_sources_link_sms_campaign` (`sms_campaign_id`),
  KEY `FK2_sms_campaign_contact_sources_link_contact_category` (`contact_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4809 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_campaign_types definition

CREATE TABLE `sms_campaign_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_template_categories definition

CREATE TABLE `sms_template_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_category_slug` (`country_id`,`category_slug`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_templates definition

CREATE TABLE `sms_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sms_template_category_id` int(11) DEFAULT NULL,
  `template_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `template_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_content` text COLLATE utf8_unicode_ci,
  `sms_placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `mcr_primary_approver_user_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_approver_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mcr_approval_request_at` datetime DEFAULT NULL,
  `mcr_approval_request_by` tinyint(4) DEFAULT NULL,
  `mcr_template_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `template_approval_status` enum('Draft','Asked for Approval','Rejected','Approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Draft',
  `approval_request_at` datetime DEFAULT NULL,
  `approval_request_by` tinyint(4) DEFAULT NULL,
  `template_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `business_approval_evidence` text COLLATE utf8_unicode_ci,
  `mcr_approval_evidence` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_template_slug` (`country_id`,`template_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2614 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_templates_log definition

CREATE TABLE `sms_templates_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_action` text COLLATE utf8mb4_unicode_ci,
  `sms_template_category_id` int(11) DEFAULT NULL,
  `template_slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_content` text COLLATE utf8mb4_unicode_ci,
  `previous_sms_content` text COLLATE utf8mb4_unicode_ci,
  `sms_placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '0',
  `is_checked_out` tinyint(4) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.sms_templates_placeholders definition

CREATE TABLE `sms_templates_placeholders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `database_id` int(11) DEFAULT NULL,
  `column_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_templates_reject definition

CREATE TABLE `sms_templates_reject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned DEFAULT NULL,
  `reject_reason` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.staging_notification_summary definition

CREATE TABLE `staging_notification_summary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `staged_batches` int(11) DEFAULT NULL,
  `sucessful_batches` int(11) DEFAULT NULL,
  `errors_batches` longtext COLLATE utf8mb4_unicode_ci,
  `campaign_summary_sent` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_summary_sent_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- CLM_OPT_PROD_DB.supported_interests definition

CREATE TABLE `supported_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `provider_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.system_permissions definition

CREATE TABLE `system_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` varchar(191) COLLATE utf8_unicode_ci DEFAULT '0',
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endpoint_url` text COLLATE utf8_unicode_ci,
  `icon_class` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `route_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `route_name_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `associated_routes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.system_roles definition

CREATE TABLE `system_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `allowed_lead_assignable_roles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_type` enum('GLOBAL_ROLE','COUNTRY_ROLE','REGIONAL_ROLE','BRANCH_ROLE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_lead_assigment_criteria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_url` text COLLATE utf8_unicode_ci,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.team_types definition

CREATE TABLE `team_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_slug` (`type_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.temp_mu_leads definition

CREATE TABLE `temp_mu_leads` (
  `lead_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.template_tags definition

CREATE TABLE `template_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.tmp_id definition

CREATE TABLE `tmp_id` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- CLM_OPT_PROD_DB.user_logins definition

CREATE TABLE `user_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` text COLLATE utf8_unicode_ci,
  `login_was_successful` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466621 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.users definition

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `user_role_id` int(10) unsigned DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `business_user` text COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pf_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rm_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_use_ad` tinyint(1) DEFAULT '1',
  `do_not_assign_leads` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `do_not_send_summary_email` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `user_branch_id` int(11) DEFAULT NULL,
  `user_region_id` int(11) DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_expiry_date` datetime DEFAULT NULL,
  `force_password_reset` tinyint(1) DEFAULT '0',
  `last_password_change` datetime DEFAULT NULL,
  `next_password_change` date DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `show_aro_form` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_user_name` (`country_id`,`user_name`),
  UNIQUE KEY `user_emaill_address_UNIQUE` (`user_email_address`),
  KEY `FK2_user_role_link` (`user_role_id`),
  KEY `FK_user_branch_link` (`user_branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_country_configurations` definition

CREATE TABLE `_country_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `configuration` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_country_configuration_country_link` (`country_id`),
  CONSTRAINT `FK1_country_configuration_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creative_files definition

CREATE TABLE `ad_creative_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creative_id` bigint(20) NOT NULL,
  `file_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `creative_id_file_name` (`creative_id`,`file_name`),
  CONSTRAINT `FK_ad_creative_files_creative_link` FOREIGN KEY (`creative_id`) REFERENCES `ad_creatives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creative_ma_report definition

CREATE TABLE `ad_creative_ma_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `ad_creative_id` bigint(20) DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `provider_creative_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query_start_date` datetime DEFAULT NULL,
  `query_end_Date` datetime DEFAULT NULL,
  `impressions` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `win_rate` double DEFAULT NULL,
  `ctr` double DEFAULT NULL,
  `cpm` double DEFAULT NULL,
  `cpc` double DEFAULT NULL,
  `spend_so_far` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_ad_creative_id_report_date` (`country_id`,`ad_creative_id`,`report_date`),
  KEY `FK_ad_creative_ma_report_creative_link` (`ad_creative_id`),
  CONSTRAINT `FK_ad_creative_ma_report_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ad_creative_ma_report_creative_link` FOREIGN KEY (`ad_creative_id`) REFERENCES `ad_creatives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creative_reports definition

CREATE TABLE `ad_creative_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_creative_id` bigint(20) DEFAULT NULL,
  `filtered_date_from` datetime DEFAULT NULL,
  `filtered_date_to` datetime DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `impressions` bigint(20) DEFAULT NULL,
  `clicks` bigint(20) DEFAULT NULL,
  `win_rate` double DEFAULT NULL,
  `ctr` double DEFAULT NULL,
  `cpm` double DEFAULT NULL,
  `cpc` double DEFAULT NULL,
  `spent` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ad_creative_reports_creative_link` (`ad_creative_id`),
  CONSTRAINT `FK_ad_creative_reports_creative_link` FOREIGN KEY (`ad_creative_id`) REFERENCES `ad_creatives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.ad_creative_tag_list definition

CREATE TABLE `ad_creative_tag_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ad_creative_file_id` bigint(20) NOT NULL,
  `ad_creative_tag_id` bigint(20) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ad_creative_id_ad_creative_tag_id` (`ad_creative_file_id`,`ad_creative_tag_id`),
  KEY `FK_ad_creative_tag_list_tags` (`ad_creative_tag_id`),
  CONSTRAINT `FK_ad_creative_tag_list_file_link` FOREIGN KEY (`ad_creative_file_id`) REFERENCES `ad_creative_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ad_creative_tag_list_tags` FOREIGN KEY (`ad_creative_tag_id`) REFERENCES `ad_creative_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_age_groups definition

CREATE TABLE `audience_age_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audience_id` int(11) NOT NULL,
  `supported_age_group_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_supported_age_group_id` (`audience_id`,`supported_age_group_id`),
  KEY `FK_audience_age_group_link` (`audience_id`),
  CONSTRAINT `FK_audience_age_group_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_dmp_ids definition

CREATE TABLE `audience_dmp_ids` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audience_id` int(11) NOT NULL,
  `dmp_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_dmp_id` (`audience_id`,`dmp_id`),
  CONSTRAINT `FK_audience_dmp_ids_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_interests definition

CREATE TABLE `audience_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audience_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_interest_id` (`audience_id`,`interest_id`),
  KEY `FK_audience_interests_interest_link` (`interest_id`),
  CONSTRAINT `FK_audience_interests_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_audience_interests_interest_link` FOREIGN KEY (`interest_id`) REFERENCES `supported_interests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_telco_operators definition

CREATE TABLE `audience_telco_operators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `telco_operator_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_audience_country_link` (`country_id`),
  KEY `FK_audience_telco_operators_link` (`audience_id`),
  KEY `FK_audience_target_telco_operators_link` (`telco_operator_id`),
  CONSTRAINT `audience_telco_operators_audience_id_foreign` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`),
  CONSTRAINT `audience_telco_operators_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`),
  CONSTRAINT `audience_telco_operators_telco_operator_id_foreign` FOREIGN KEY (`telco_operator_id`) REFERENCES `cached_supported_telco_operators` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaigns definition

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `campaign_type` enum('MA','LMS','DT','SMS','EMAIL','LMS CAMPAIGN') COLLATE utf8_unicode_ci DEFAULT NULL,
  `lms_campaign_sub_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_name_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `campaign_category_id` int(11) DEFAULT NULL,
  `notification_sender_id` int(11) DEFAULT NULL,
  `is_emailer_campaign` tinyint(1) DEFAULT NULL,
  `campaign_tracking_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_assignment_criterion` int(11) DEFAULT NULL,
  `lead_assignment_branch_id` int(11) DEFAULT NULL,
  `lead_assignment_team_id` int(11) DEFAULT NULL,
  `advert_domain` text COLLATE utf8_unicode_ci,
  `landing_page_url` text COLLATE utf8_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `target_country_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bid_size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_budget` double(10,5) DEFAULT NULL,
  `daily_budget` double(10,5) DEFAULT NULL,
  `expected_leads` int(11) DEFAULT NULL,
  `expected_cpl` double DEFAULT NULL,
  `hourly_schedule` text COLLATE utf8_unicode_ci,
  `target_wifi_devices` tinyint(1) DEFAULT '1',
  `automatically_start` tinyint(1) DEFAULT '0',
  `provider_status` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_spent` double(10,5) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `aro` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `budget` double(10,5) DEFAULT NULL,
  `cap_impressions` int(11) DEFAULT NULL,
  `cap_clicks` int(11) DEFAULT NULL,
  `cap_impression_interval` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cap_impression_interval_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_spend` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_type_target` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optimization_impressions` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raw_decision_tree` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_globally_locked` tinyint(4) NOT NULL DEFAULT '0',
  `primary_approver_user_id` int(11) DEFAULT NULL,
  `secondary_approver_user_id` int(11) DEFAULT NULL,
  `mcr_approval_request_at` datetime DEFAULT NULL,
  `mcr_approval_request_by` tinyint(4) DEFAULT NULL,
  `mcr_campaign_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_approval_status` enum('Draft','Asked for Approval','Rejected','Approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Draft',
  `approval_request_at` datetime DEFAULT NULL,
  `approval_request_by` tinyint(4) DEFAULT NULL,
  `campaign_approval_request_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `require_lead_location_details` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `staged_notifications` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_campaign_name_slug` (`country_id`,`campaign_name_slug`),
  KEY `FK_campaign_assigment_criteria_link` (`lead_assignment_criterion`),
  CONSTRAINT `FK_campaigns_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6519 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_categories definition

CREATE TABLE `contact_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_database` int(11) DEFAULT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `parent_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `aro` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contact_count` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `headers` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_slug` (`country_id`,`slug`),
  CONSTRAINT `FK_contact_category_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5539 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_category_meta definition

CREATE TABLE `contact_category_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_contact_cif` (`country_id`,`contact_id`,`category_id`,`attribute`),
  KEY `FK3_contact_category_meta_country_link` (`country_id`),
  KEY `FK1_contact_category_meta_category_link` (`category_id`),
  CONSTRAINT `FK1_contact_category_meta_category_link` FOREIGN KEY (`category_id`) REFERENCES `contact_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_contact_category_meta_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1404912 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_classifications definition

CREATE TABLE `contact_classifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `classification_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `classification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon_class` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_classification_slug` (`country_id`,`classification_slug`),
  CONSTRAINT `FK1_contact_classifications_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contacts definition

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `preferred_title` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_cif` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_classification` int(11) DEFAULT NULL,
  `customer_cif_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `preferred_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_name_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_phone_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_email_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_identification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_identifier` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_profile_image` text COLLATE utf8_unicode_ci,
  `location_town_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `physical_address` text COLLATE utf8_unicode_ci,
  `is_existing_customer` tinyint(1) DEFAULT '0',
  `has_primary_data` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_temp` tinyint(4) DEFAULT '0',
  `dont_contact` tinyint(1) DEFAULT '0',
  `facebook_profile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_identifier` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_handle` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_handle` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_profile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foursquare_profile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telegram_handle` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customersegment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateofanniversary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateofbirth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genderdescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kycstatusdescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rmemailaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rmofficetelephonenumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rmabnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rmname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rmcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email_address_not_valid` tinyint(1) DEFAULT '0',
  `reason_why_email_address_not_valid` text COLLATE utf8_unicode_ci,
  `contact_email_address_not_reachable` tinyint(1) DEFAULT '0',
  `has_blocked_our_email_address` tinyint(1) DEFAULT '0',
  `has_marked_our_email_address_as_spam` tinyint(1) DEFAULT '0',
  `recipient_email_blocked` tinyint(1) DEFAULT '0',
  `recipient_has_unsubscribed_emails` tinyint(1) DEFAULT '0',
  `recipient_unsubscribed_emails_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `meta` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_contact_cif` (`country_id`,`customer_cif`),
  KEY `FK_contact_country_id` (`country_id`),
  KEY `customer_cif` (`customer_cif`),
  CONSTRAINT `FK_contact_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=193301534 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.country_email_senders definition

CREATE TABLE `country_email_senders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sender_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default_customer_journey_sender` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_sender_email` (`country_id`,`sender_email`),
  CONSTRAINT `FK1_countries_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.customer_transaction_data definition

CREATE TABLE `customer_transaction_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_id` bigint(20) NOT NULL,
  `transaction_data_category_id` int(11) NOT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id_transaction_data_category_id_attribute_value` (`contact_id`,`transaction_data_category_id`,`attribute`,`value`),
  KEY `FK_country_transcation_data` (`country_id`),
  CONSTRAINT `FK_contact_transcation_data` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_country_transcation_data` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_campaign_details definition

CREATE TABLE `emailer_campaign_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `parent_campaign_id` int(11) NOT NULL,
  `is_picked_for_process` int(11) NOT NULL DEFAULT '0',
  `is_summary_processed` tinyint(4) NOT NULL DEFAULT '0',
  `summary_processed_on` datetime DEFAULT NULL,
  `date_picked_for_process` datetime DEFAULT NULL,
  `picked_for_processing_by_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picked_for_processing_by_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailer_campaign_type_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `campaign_stakeholders_to_cc` text COLLATE utf8_unicode_ci,
  `error_message` longtext COLLATE utf8_unicode_ci,
  `campaign_approval_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_current_status` enum('Staging','Sending','Suspended','Queueing','Staged','Queued','Sent') COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_approver_user_id` int(11) DEFAULT NULL,
  `campaign_sending_is_approved` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_sending_approved_on` datetime DEFAULT NULL,
  `campaign_sending_approved_by` int(11) DEFAULT NULL,
  `schedule_emails_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `repeat_frequency` enum('Once','Daily','Weekly','Monthly','Yearly') COLLATE utf8_unicode_ci DEFAULT NULL,
  `repeat_on_specific_day` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_campaign` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_email_schedule` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT '0',
  `completed_on` datetime DEFAULT NULL,
  `total_failed_contacts` int(11) NOT NULL DEFAULT '0',
  `total_imported_contacts` int(11) NOT NULL DEFAULT '0',
  `total_contacts` int(11) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `date_checked_out` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_parent_campaign_link` (`parent_campaign_id`),
  CONSTRAINT `FK1_parent_campaign_link` FOREIGN KEY (`parent_campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1312 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_campaign_performance definition

CREATE TABLE `emailer_campaign_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `report_date_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_notifications_staged` int(11) DEFAULT '0',
  `total_notifications_sent_system` int(11) DEFAULT '0',
  `total_notifications_delivered_by_provider` int(11) DEFAULT '0',
  `total_notifications_sent_provider` int(11) DEFAULT '0',
  `total_notification_delivered_to_customer` int(11) NOT NULL DEFAULT '0',
  `total_notifications_queued_by_provider` int(11) DEFAULT '0',
  `total_notifications_opened_by_customer` int(11) DEFAULT '0',
  `total_notifications_opened_by_provider` int(11) DEFAULT NULL,
  `total_notifications_clicked_by_customer` int(11) DEFAULT '0',
  `total_notifications_bounced` int(11) DEFAULT '0',
  `total_notifications_spammed_by_customer` int(11) DEFAULT '0',
  `total_notifications_blocked_by_customer` int(11) DEFAULT '0',
  `total_notifications_unsubscribe_by_customer` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_emailer_campaign_performance_campaign_link` (`campaign_id`),
  CONSTRAINT `FK1_emailer_campaign_performance_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=946 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.form_widgets definition

CREATE TABLE `form_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `form_widget_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_assignment_criterion` int(11) DEFAULT NULL,
  `assigned_team_id` int(11) DEFAULT NULL,
  `assigned_branch_id` int(11) DEFAULT NULL,
  `assigned_segment_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `aro` tinyint(1) DEFAULT '0',
  `is_globally_locked` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_slug` (`country_id`,`slug`),
  UNIQUE KEY `form_widget_code` (`form_widget_code`),
  KEY `FK1_form_widget_assigment_criterion_link` (`lead_assignment_criterion`),
  CONSTRAINT `FK1_form_widget_assigment_criterion_link` FOREIGN KEY (`lead_assignment_criterion`) REFERENCES `cached_lead_assignment_criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_source_urls definition

CREATE TABLE `lead_source_urls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_source_id` int(10) unsigned NOT NULL,
  `url_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lead_source_medium_id` int(11) DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `url_path` text COLLATE utf8_unicode_ci,
  `raw_url` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_source_id_url_slug` (`lead_source_id`,`url_slug`),
  CONSTRAINT `FK1_lead_source_urls_lead_soure_link` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1983 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.notifications_staging definition

CREATE TABLE `notifications_staging` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `email_template_id` int(11) DEFAULT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `can_send` int(11) DEFAULT NULL,
  `send_status` tinyint(1) DEFAULT '0',
  `sent_on` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT '0',
  `last_attempted_on` datetime DEFAULT NULL,
  `notification_method` enum('EMAIL','SMS') COLLATE utf8_unicode_ci DEFAULT 'EMAIL',
  `sender_address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_phone_number` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_message` text COLLATE utf8_unicode_ci,
  `recipient_attachments` text COLLATE utf8_unicode_ci,
  `recipient_message_images` text COLLATE utf8_unicode_ci,
  `bulk_sending` tinyint(4) DEFAULT '0',
  `contacts_list` longtext COLLATE utf8_unicode_ci,
  `recipients_payload` longtext COLLATE utf8_unicode_ci,
  `sending_error_message` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `provider_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_campaign_sms_recipient` (`campaign_id`,`recipient_phone_number`,`notification_method`),
  UNIQUE KEY `unique_campaign_email_recipient` (`campaign_id`,`recipient_email`,`notification_method`),
  KEY `FK1_notification_staging_country_link` (`country_id`),
  KEY `FK2_notification_staging_campaign_link` (`campaign_id`),
  KEY `send_status` (`send_status`),
  KEY `notification_method` (`notification_method`),
  KEY `notifications_staging_recipient_email_index` (`recipient_email`),
  CONSTRAINT `FK1_notification_staging_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_notification_staging_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18934019 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.product_categories definition

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `category_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_category_slug` (`country_id`,`category_slug`),
  KEY `FK_product_categories_creator_link` (`created_by`),
  KEY `FK_product_categories_updater_link` (`updated_by`),
  CONSTRAINT `FK_product_categories_creator_link` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_product_categories_updater_link` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.product_segments definition

CREATE TABLE `product_segments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `global_head` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_checked_out` tinyint(1) DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_segments_slug_country_id` (`slug`,`country_id`),
  KEY `FK1_product_segment_global_head_link` (`global_head`),
  KEY `FK2_product_segment_country_link` (`country_id`),
  CONSTRAINT `FK1_product_segment_global_head_link` FOREIGN KEY (`global_head`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_product_segment_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.products definition

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `product_title_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_segment_id` int(11) DEFAULT NULL,
  `product_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` enum('LMS','DT') COLLATE utf8_unicode_ci DEFAULT 'LMS',
  `product_priority` int(11) DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `product_category_id` int(11) DEFAULT NULL,
  `overall_product_head_id` int(11) DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_value` double DEFAULT NULL,
  `email_addresses_to_cc` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_product_title_slug_product_segment_id` (`country_id`,`product_title_slug`,`product_segment_id`),
  KEY `FK_product_segment_link` (`product_segment_id`),
  KEY `product_title` (`product_title`),
  KEY `FK_products_product_head_link` (`overall_product_head_id`),
  KEY `FK_products_creator_link` (`created_by`),
  KEY `FK_products_updater_link` (`updated_by`),
  CONSTRAINT `FK_product_segment_link` FOREIGN KEY (`product_segment_id`) REFERENCES `product_segments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_products_creator_link` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_products_product_head_link` FOREIGN KEY (`overall_product_head_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_products_updater_link` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1291 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.regions definition

CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `region_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `region_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `region_head_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_region_slug` (`country_id`,`region_slug`),
  KEY `FK2_region_head_id` (`region_head_id`),
  CONSTRAINT `FK1_region_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`),
  CONSTRAINT `FK2_region_head_id` FOREIGN KEY (`region_head_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_campaign_details definition

CREATE TABLE `sms_campaign_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `parent_campaign_id` int(11) NOT NULL,
  `is_picked_for_process` tinyint(4) NOT NULL DEFAULT '0',
  `date_picked_for_process` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `number_of_target_contacts` int(11) NOT NULL DEFAULT '0',
  `number_of_staged_notifications` int(11) NOT NULL DEFAULT '0',
  `number_of_failed_staging_notifications` int(11) NOT NULL DEFAULT '0',
  `last_notification_staged_at` datetime DEFAULT NULL,
  `number_of_sent_notifications` int(11) DEFAULT NULL,
  `number_of_failed_sent_notifications` int(11) NOT NULL DEFAULT '0',
  `last_notification_sent_at` datetime DEFAULT NULL,
  `campaign_type_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `notification_type_id` int(11) DEFAULT NULL,
  `campaign_stakeholders_to_cc` text COLLATE utf8_unicode_ci,
  `campaign_approval_is_sent` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_current_status` enum('Staging','Sending','Suspended','Queueing','Staged','Queued','Sent') COLLATE utf8_unicode_ci NOT NULL,
  `error_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_approver_user_id` int(11) DEFAULT NULL,
  `campaign_sending_is_approved` tinyint(4) NOT NULL DEFAULT '0',
  `campaign_sending_approved_on` datetime DEFAULT NULL,
  `campaign_sending_approved_by` int(11) DEFAULT NULL,
  `schedule_sms_on` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `repeat_frequency` enum('Once','Daily','Weekly','Monthly','Yearly') COLLATE utf8_unicode_ci DEFAULT NULL,
  `repeat_on_specific_day` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_sms_schedule` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT '0',
  `completed_on` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checked_out_by` int(11) DEFAULT NULL,
  `date_checked_out` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_sms_campaign_detail_link` (`parent_campaign_id`),
  CONSTRAINT `FK1_sms_campaign_detail_link` FOREIGN KEY (`parent_campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4575 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_campaign_performance definition

CREATE TABLE `sms_campaign_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `report_date_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_notifications_staged` int(11) DEFAULT '0',
  `total_notifications_sent_system` int(11) DEFAULT '0',
  `total_notifications_sent_provider` int(11) DEFAULT '0',
  `total_notifications_delivered_by_provider` int(11) DEFAULT '0',
  `total_notifications_queued_by_provider` int(11) DEFAULT '0',
  `total_notifications_opened_by_customer` int(11) DEFAULT '0',
  `total_notifications_clicked_by_customer` int(11) DEFAULT '0',
  `total_notifications_bounced` int(11) DEFAULT '0',
  `total_notifications_spammed_by_customer` int(11) DEFAULT '0',
  `total_notifications_blocked_by_customer` int(11) DEFAULT '0',
  `total_notifications_unsubscribe_by_customer` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_notifications_submitted_to_smsc` int(11) DEFAULT '0',
  `total_notifications_submit_error` int(11) DEFAULT '0',
  `total_notifications_expired` int(11) DEFAULT '0',
  `total_notifications_suspended` int(11) DEFAULT '0',
  `total_notifications_expired_before_submission` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK1_sms_campaign_performance_campaign_link` (`campaign_id`),
  CONSTRAINT `FK1_sms_campaign_performance_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.system_permission_role definition

CREATE TABLE `system_permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `ordering` int(10) unsigned DEFAULT '0',
  `created_by` int(10) unsigned DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `FK_system_permission_role_role_link` (`role_id`),
  CONSTRAINT `FK_system_permission_role_permission_link` FOREIGN KEY (`permission_id`) REFERENCES `system_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_system_permission_role_role_link` FOREIGN KEY (`role_id`) REFERENCES `system_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.system_role_user definition

CREATE TABLE `system_role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_system_users_role_role_link` (`role_id`),
  CONSTRAINT `FK_system_users_role_role_link` FOREIGN KEY (`role_id`) REFERENCES `system_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_system_users_role_user_link` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.teams definition

CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `team_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `team_type_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `team_leader_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `team_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_team_slug` (`country_id`,`team_slug`),
  KEY `FK_teams_type_link` (`team_type_id`),
  CONSTRAINT `FK_teams_type_link` FOREIGN KEY (`team_type_id`) REFERENCES `team_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.towns definition

CREATE TABLE `towns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `region_id` int(10) unsigned NOT NULL,
  `town_slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_id_town_slug` (`region_id`,`town_slug`),
  KEY `FK2_towns_country_link` (`country_id`),
  CONSTRAINT `FK2_towns_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_towns_region_link` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.user_linked_product_segments definition

CREATE TABLE `user_linked_product_segments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `segment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_user_linked_product_segments_linked_user` (`user_id`),
  KEY `FK2_user_linked_product_segments_segment_link` (`segment_id`),
  CONSTRAINT `FK1_user_linked_product_segments_linked_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_user_linked_product_segments_segment_link` FOREIGN KEY (`segment_id`) REFERENCES `product_segments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2406 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_contact_list definition

CREATE TABLE `audience_contact_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `contact_id` bigint(20) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_audience_id_contact_id_is_deleted` (`country_id`,`audience_id`,`contact_id`,`is_deleted`),
  KEY `FK2_audience_contact_list_audience_link` (`audience_id`),
  KEY `FK3_audience_contact_list_contact_link` (`contact_id`),
  CONSTRAINT `FK1_audience_contact_list_coutry` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_audience_contact_list_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_audience_contact_list_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_locations definition

CREATE TABLE `audience_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audience_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_location_id` (`audience_id`,`location_id`),
  KEY `FK_audience_locations_town_link` (`location_id`),
  CONSTRAINT `FK_audience_locations_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_audience_locations_town_link` FOREIGN KEY (`location_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.audience_transactional_data definition

CREATE TABLE `audience_transactional_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_category_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `filter_type` enum('Include','Exclude') COLLATE utf8_unicode_ci NOT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_contact_category_id_audience_id_type_attribute` (`country_id`,`contact_category_id`,`audience_id`,`filter_type`,`attribute`),
  KEY `FK_audience_transactional_data_category_link` (`contact_category_id`),
  KEY `FK_audience_transactional_data_audience_link` (`audience_id`),
  CONSTRAINT `FK_audience_transactional_data_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_audience_transactional_data_category_link` FOREIGN KEY (`contact_category_id`) REFERENCES `contact_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_audience_transactional_data_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.branches definition

CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `branch_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `region_id` int(10) unsigned DEFAULT NULL,
  `branch_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_manager_id` int(11) DEFAULT NULL,
  `branch_assistant_id` int(11) DEFAULT '0',
  `location_town_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_branch_slug` (`country_id`,`branch_slug`),
  KEY `FK_branches_region_link` (`region_id`),
  KEY `FK2_branches_manager_link` (`branch_manager_id`),
  KEY `FK4_branches_town_link` (`location_town_id`),
  CONSTRAINT `FK2_branches_manager_link` FOREIGN KEY (`branch_manager_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK3_branches_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`),
  CONSTRAINT `FK4_branches_town_link` FOREIGN KEY (`location_town_id`) REFERENCES `towns` (`id`),
  CONSTRAINT `FK_branches_region_link` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ad_exchanges definition

CREATE TABLE `campaign_ad_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_ad_exchange_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_ad_exchange_id` (`campaign_id`,`supported_ad_exchange_id`),
  KEY `FK_campaign_ad_exchanges_exchange_link` (`supported_ad_exchange_id`),
  CONSTRAINT `FK_campaign_ad_exchanges_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_ad_exchanges_exchange_link` FOREIGN KEY (`supported_ad_exchange_id`) REFERENCES `cached_supported_ad_exchanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ad_placement_types definition

CREATE TABLE `campaign_ad_placement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `ad_placement_type_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_ad_placement_type_id` (`campaign_id`,`ad_placement_type_id`),
  KEY `FK_campaign_ad_placement_type_type_link` (`ad_placement_type_id`),
  CONSTRAINT `FK_campaign_ad_placement_type_type_link` FOREIGN KEY (`ad_placement_type_id`) REFERENCES `cached_supported_ad_placement_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_ad_placement_types_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ad_positions definition

CREATE TABLE `campaign_ad_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `ad_position_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_ad_position_id` (`campaign_id`,`ad_position_id`),
  KEY `FK_campaign_ad_positions_position_link` (`ad_position_id`),
  CONSTRAINT `FK_campaign_ad_positions_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_ad_positions_position_link` FOREIGN KEY (`ad_position_id`) REFERENCES `cached_supported_ad_placement_positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_age_groups definition

CREATE TABLE `campaign_age_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_age_group_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_campaign_age_group_link` (`campaign_id`),
  KEY `FK_campaign_age_group_group_link` (`supported_age_group_id`),
  CONSTRAINT `FK_campaign_age_group_group_link` FOREIGN KEY (`supported_age_group_id`) REFERENCES `cached_supported_age_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_age_group_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_audinces definition

CREATE TABLE `campaign_audinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_audience_id` (`campaign_id`,`audience_id`),
  KEY `FK_campaign_audiences_audience_link` (`audience_id`),
  CONSTRAINT `FK_campaign_audiences_audience_link` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_audiences_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_browsers definition

CREATE TABLE `campaign_browsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_device_browser_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_device_browser_id` (`campaign_id`,`supported_device_browser_id`),
  KEY `FK_campaign_browser_brower_link` (`supported_device_browser_id`),
  CONSTRAINT `FK_campaign_browser_brower_link` FOREIGN KEY (`supported_device_browser_id`) REFERENCES `cached_supported_device_browsers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_browser_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_creatives definition

CREATE TABLE `campaign_creatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `ad_creative_id` bigint(20) NOT NULL,
  `publisher_status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_ad_creative_id` (`campaign_id`,`ad_creative_id`),
  KEY `FK_campaign_creatives_ad_creative_link` (`ad_creative_id`),
  CONSTRAINT `FK_campaign_creatives_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_creatives_creative_link` FOREIGN KEY (`ad_creative_id`) REFERENCES `ad_creatives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_device_connections definition

CREATE TABLE `campaign_device_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_device_connection_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_device_connection_id` (`campaign_id`,`supported_device_connection_id`),
  KEY `FK_campaign_device_connections_connection_link` (`supported_device_connection_id`),
  CONSTRAINT `FK_campaign_device_connections_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_device_connections_connection_link` FOREIGN KEY (`supported_device_connection_id`) REFERENCES `cached_supported_device_connections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_device_types definition

CREATE TABLE `campaign_device_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_device_type_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_id_device_type_id` (`campaign_id`,`supported_device_type_id`),
  KEY `FK_campaign_device_types_type_link` (`supported_device_type_id`),
  CONSTRAINT `FK_campaign_device_types_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_device_types_type_link` FOREIGN KEY (`supported_device_type_id`) REFERENCES `cached_supported_device_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_events definition

CREATE TABLE `campaign_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `typeIndex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_order` tinyint(1) DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `trigger_date` datetime DEFAULT NULL,
  `trigger_interval` int(11) DEFAULT NULL,
  `trigger_interval_unit` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trigger_mode` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decision_path` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_campaign_events_campaign_link` (`campaign_id`),
  CONSTRAINT `FK_campaign_events_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_form_widget definition

CREATE TABLE `campaign_form_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `form_widget_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_form_widget_id` (`campaign_id`,`form_widget_id`),
  KEY `FK_campaign_form_widgets_form_link` (`form_widget_id`),
  CONSTRAINT `FK_campaign_form_widgets_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_form_widgets_form_link` FOREIGN KEY (`form_widget_id`) REFERENCES `form_widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_impressions definition

CREATE TABLE `campaign_impressions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `page` text COLLATE utf8_unicode_ci NOT NULL,
  `referrer` text COLLATE utf8_unicode_ci NOT NULL,
  `landing_page_cookie` text COLLATE utf8_unicode_ci,
  `user_ip` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_campaign_impressions_campaign_link` (`campaign_id`),
  CONSTRAINT `FK_campaign_impressions_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_contact_sources definition

CREATE TABLE `campaign_ma_contact_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `source_type` enum('Audience','ContactList') COLLATE utf8_unicode_ci NOT NULL,
  `source_type_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_contact_sources_country_link` (`country_id`),
  KEY `FK_contact_source_campaign_link` (`campaign_id`),
  CONSTRAINT `FK_contact_source_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_contact_sources_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1868 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_decision_tree_events definition

CREATE TABLE `campaign_ma_decision_tree_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `event_slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `event_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `event_description` text COLLATE utf8_unicode_ci NOT NULL,
  `event_ui_droppedX` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `event_ui_droppedY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `event_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_action` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_parent_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_mode` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_interval_unit` enum('s','h','d','m','y') COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_interval_value` int(11) DEFAULT NULL,
  `contact_category_id` int(11) DEFAULT NULL,
  `event_trigger_form_field` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_form_field_operator` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_trigger_form_value` text COLLATE utf8_unicode_ci,
  `event_trigger_date` datetime DEFAULT NULL,
  `event_email_template_id` int(11) DEFAULT NULL,
  `event_sms_template_id` int(11) DEFAULT NULL,
  `event_trigger_campaign` int(11) DEFAULT NULL,
  `event_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_checked_out` tinyint(1) DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `repeat` int(11) DEFAULT NULL,
  `repeat_mode` int(11) DEFAULT NULL,
  `repeat_frequency` int(11) DEFAULT NULL,
  `raw_query` longtext COLLATE utf8_unicode_ci,
  `objective_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_campaign_ma_decision_tree_events_country_link` (`country_id`),
  KEY `FK_campaign_ma_decision_tree_events` (`campaign_id`),
  CONSTRAINT `FK_campaign_ma_decision_tree_events` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_ma_decision_tree_events_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_ma_report definition

CREATE TABLE `campaign_ma_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `report_date` datetime DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query_start_date` datetime DEFAULT NULL,
  `query_end_date` datetime DEFAULT NULL,
  `impressions` int(10) unsigned DEFAULT '0',
  `clicks` int(11) DEFAULT '0',
  `win_rate` double DEFAULT '0',
  `ctr` double DEFAULT '0',
  `cpm` double DEFAULT '0',
  `cpc` double DEFAULT '0',
  `spend_so_far` double DEFAULT '0',
  `reach` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_campaign_id_report_date` (`country_id`,`campaign_id`,`report_date`),
  KEY `FK_campaign_ma_report_campaign_link` (`campaign_id`),
  CONSTRAINT `FK_campaign_ma_report_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_ma_report_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_objectives definition

CREATE TABLE `campaign_objectives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `ad_objective_id` int(11) NOT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_ad_objective_id` (`campaign_id`,`ad_objective_id`),
  KEY `FK_campaign_objectives_objective_link` (`ad_objective_id`),
  CONSTRAINT `FK_campaign_objectives_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_campaign_objectives_objective_link` FOREIGN KEY (`ad_objective_id`) REFERENCES `cached_supported_campaign_objectives` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_oss definition

CREATE TABLE `campaign_oss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supported_os_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `os_id_campaign_id` (`supported_os_id`,`campaign_id`),
  KEY `FK_campaign_oss_campaign_link` (`campaign_id`),
  CONSTRAINT `FK_campaign_oss_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_private_market_places definition

CREATE TABLE `campaign_private_market_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `supported_private_market_place_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_private_market_place_id` (`campaign_id`,`supported_private_market_place_id`),
  CONSTRAINT `FK_campaign_private_market_place_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_target_states definition

CREATE TABLE `campaign_target_states` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `country_state_id` bigint(20) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_country_state_id` (`campaign_id`,`country_state_id`),
  CONSTRAINT `FK_campaign_target_country_states_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.campaign_telco_operators definition

CREATE TABLE `campaign_telco_operators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `telco_operator_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id_telco_operator_id` (`campaign_id`,`telco_operator_id`),
  CONSTRAINT `FK_campaign_telco_operators_campaign_link` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_category_meta_change definition

CREATE TABLE `contact_category_meta_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `is_deleted` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3_contact_category_meta_change_country_link` (`country_id`),
  KEY `FK2_contact_category_meta_change_contact_link` (`contact_id`),
  KEY `FK1_contact_category_meta_change_category_link` (`category_id`),
  CONSTRAINT `FK1_contact_category_change_meta_category_link` FOREIGN KEY (`category_id`) REFERENCES `contact_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_contact_category_change_meta_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_contact_category_meta__change_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_classification_attribute_mix definition

CREATE TABLE `contact_classification_attribute_mix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_category_id` int(11) NOT NULL,
  `classification_id` int(11) NOT NULL,
  `attribute` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_value` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_classification_contact_category_id_attribute` (`country_id`,`classification_id`,`contact_category_id`,`attribute`),
  KEY `FK2_contact_classification_attribute_mix_contact_category_link` (`contact_category_id`),
  KEY `FK3_contact_classification_attribute_mix_link` (`classification_id`),
  CONSTRAINT `FK2_contact_classification_attribute_mix_contact_category_link` FOREIGN KEY (`contact_category_id`) REFERENCES `contact_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_contact_classification_attribute_mix_link` FOREIGN KEY (`classification_id`) REFERENCES `contact_classifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_contact_classification_attribute_mix_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_dmp_ids definition

CREATE TABLE `contact_dmp_ids` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `dmp_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `yob` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id_dmp_id` (`contact_id`,`dmp_id`),
  CONSTRAINT `FK_contact_dmp_ids_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25837 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_interests definition

CREATE TABLE `contact_interests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `dmp_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `interest_frequency` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id_interest_id_dmp_id` (`contact_id`,`interest_id`,`dmp_id`),
  CONSTRAINT `FK_contact_interests_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_onboarded_products definition

CREATE TABLE `contact_onboarded_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `contact_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id_product_id` (`contact_id`,`product_id`),
  KEY `FK1_contact_onboarded_products_country_link` (`country_id`),
  KEY `FK3_contact_onboarded_products_product_link` (`product_id`),
  CONSTRAINT `FK1_contact_onboarded_products_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2_contact_onboarded_products_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_contact_onboarded_products_product_link` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.contact_scores definition

CREATE TABLE `contact_scores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_id` bigint(20) NOT NULL,
  `contact_scoring_criteria_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id_contact_scoring_criteria_id` (`contact_id`,`contact_scoring_criteria_id`),
  KEY `FK_contact_scores_criteria_link` (`contact_scoring_criteria_id`),
  CONSTRAINT `FK_contact_scores_contact_link` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_contact_scores_criteria_link` FOREIGN KEY (`contact_scoring_criteria_id`) REFERENCES `scoring_criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.emailer_campaign_contact_sources definition

CREATE TABLE `emailer_campaign_contact_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailer_campaign_id` int(11) NOT NULL,
  `contact_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_contact_sources_emailer_campaign_link` (`emailer_campaign_id`),
  KEY `FK1_contact_sources_category_link` (`contact_category_id`),
  CONSTRAINT `FK1_contact_sources_category_link` FOREIGN KEY (`contact_category_id`) REFERENCES `contact_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK1_contact_sources_emailer_campaign_link` FOREIGN KEY (`emailer_campaign_id`) REFERENCES `emailer_campaign_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1628 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.form_submissions definition

CREATE TABLE `form_submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_widget_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `form_widget_id` int(11) NOT NULL,
  `form_field` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `form_field_value` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_form_submission_form_link` (`form_widget_id`),
  CONSTRAINT `FK_form_submission_form_link` FOREIGN KEY (`form_widget_id`) REFERENCES `form_widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.form_widget_fields definition

CREATE TABLE `form_widget_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `form_widget_id` int(11) NOT NULL,
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_sub_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_style` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_label` tinyint(1) DEFAULT NULL,
  `form_field_type_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) DEFAULT NULL,
  `custom_parameters` text COLLATE utf8_unicode_ci,
  `default_value` text COLLATE utf8_unicode_ci,
  `is_required` tinyint(1) DEFAULT '0',
  `validation_message` text COLLATE utf8_unicode_ci,
  `help_message` text COLLATE utf8_unicode_ci,
  `placeholder_text` text COLLATE utf8_unicode_ci,
  `field_class_name` text COLLATE utf8_unicode_ci,
  `field_order` text COLLATE utf8_unicode_ci,
  `properties` text COLLATE utf8_unicode_ci,
  `label_attributes` text COLLATE utf8_unicode_ci,
  `input_attributes` text COLLATE utf8_unicode_ci,
  `container_attributes` text COLLATE utf8_unicode_ci,
  `save_result` tinyint(1) DEFAULT NULL,
  `allow_auto_fill` tinyint(1) DEFAULT '0',
  `show_when_value_exists` text COLLATE utf8_unicode_ci,
  `show_after_x_number_of_submissions` int(11) DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `checked_out_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_widget_id_field_name` (`form_widget_id`,`field_name`),
  KEY `FK_form_widget_fields_form_link` (`form_widget_id`),
  KEY `FK_form_field_type_link` (`form_field_type_id`),
  CONSTRAINT `FK_form_field_type_link` FOREIGN KEY (`form_field_type_id`) REFERENCES `form_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_form_widget_fields_form_link` FOREIGN KEY (`form_widget_id`) REFERENCES `form_widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.leads definition

CREATE TABLE `leads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `batch_import_id` int(11) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `dmp_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `preferred_phone_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_email_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_account_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_score_summary` enum('Hot','Lukewarm','Cold') COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assigned_on` datetime DEFAULT NULL,
  `assigned_user_timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reassignment_message` text COLLATE utf8_unicode_ci,
  `originally_assigned_to` int(11) DEFAULT NULL,
  `originally_assigned_on` datetime DEFAULT NULL,
  `originally_assigned_user_timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originally_contacted_on` datetime DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `current_location_id` int(11) DEFAULT NULL,
  `preferred_branch_id` int(11) DEFAULT NULL,
  `contact_id` bigint(20) DEFAULT NULL,
  `lead_status_id` int(11) DEFAULT NULL,
  `lead_closure_reason_comment` text COLLATE utf8_unicode_ci,
  `lead_closure_reason_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `display_media_id` int(11) DEFAULT NULL,
  `lead_source_id` int(10) unsigned DEFAULT NULL,
  `creative_id` int(11) DEFAULT NULL,
  `lead_source_medium_id` int(10) unsigned DEFAULT NULL,
  `lead_source_url_id` int(10) unsigned DEFAULT NULL,
  `product_value` double DEFAULT NULL,
  `product_value_usd` double(10,2) DEFAULT NULL,
  `product_purchase_code` text COLLATE utf8_unicode_ci,
  `product_approved_value` bigint(20) DEFAULT NULL,
  `customer_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_type` enum('Individual Customer','Non Individual') COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_registration` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `product_taken_up` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_open_date` datetime DEFAULT NULL,
  `is_existing_customer` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_details` text COLLATE utf8_unicode_ci,
  `preferred_timezone` text COLLATE utf8_unicode_ci,
  `preferred_contact_time` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferred_locale` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `is_duplicate` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_archived` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_checked_out` tinyint(1) DEFAULT '0',
  `checkout_date` datetime DEFAULT NULL,
  `checked_out_by` int(11) DEFAULT NULL,
  `lead_first_contact_tat` double(8,2) NOT NULL DEFAULT '0.00',
  `lead_branch_contact_tat` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `rm_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `rm_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `sana_campaign_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raw_source` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_number` (`lead_number`),
  KEY `FK_leads_country_link` (`country_id`),
  KEY `FK_leads_product_link` (`product_id`),
  KEY `FK_leads_user_link` (`assigned_to`),
  KEY `FK_leads_status_link` (`lead_status_id`),
  KEY `FK_leads_lead_source_link` (`lead_source_id`),
  KEY `assigned_user_timezone` (`assigned_user_timezone`),
  KEY `originally_assigned_user_timezone` (`originally_assigned_user_timezone`),
  KEY `leads_lead_first_contact_tat_index` (`lead_first_contact_tat`),
  KEY `leads_lead_branch_contact_tat_index` (`lead_branch_contact_tat`),
  CONSTRAINT `FK_leads_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_leads_lead_source_link` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_leads_product_link` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_leads_status_link` FOREIGN KEY (`lead_status_id`) REFERENCES `cached_supported_lead_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_leads_user_link` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1971840 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='FK_leads_branches_link';


-- CLM_OPT_PROD_DB.product_organogram definition

CREATE TABLE `product_organogram` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_head` int(11) NOT NULL,
  `is_global_head` int(11) DEFAULT NULL,
  `is_country_head` int(11) DEFAULT NULL,
  `is_branch_head` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_organogram_product_link` (`product_id`),
  CONSTRAINT `FK_product_organogram_product_link` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.product_segment_organogram definition

CREATE TABLE `product_segment_organogram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `segment_id` int(11) NOT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `country_head` int(11) DEFAULT NULL,
  `regional_head` int(11) DEFAULT NULL,
  `branch_head` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2_product_segment_organogram_country_link` (`country_id`),
  KEY `FK_product_segment_organogram_segment_link` (`segment_id`),
  KEY `FK6_product_segment_organogram_region_link` (`region_id`),
  KEY `FK7_product_segment_organogram_branch_link` (`branch_id`),
  KEY `FK3_product_segment_organogram_country_head` (`country_head`),
  KEY `FK4_product_segment_organogram_regional_head` (`regional_head`),
  KEY `FK5_product_segment_organogram_branch_head` (`branch_head`),
  CONSTRAINT `FK2_product_segment_organogram_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3_product_segment_organogram_country_head` FOREIGN KEY (`country_head`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK4_product_segment_organogram_regional_head` FOREIGN KEY (`regional_head`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK5_product_segment_organogram_branch_head` FOREIGN KEY (`branch_head`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK6_product_segment_organogram_region_link` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK7_product_segment_organogram_branch_link` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_product_segment_organogram_segment_link` FOREIGN KEY (`segment_id`) REFERENCES `product_segments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.region_branches definition

CREATE TABLE `region_branches` (
  `region_id` int(10) unsigned NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`region_id`,`branch_id`),
  UNIQUE KEY `region_id_branch_id` (`region_id`,`branch_id`),
  KEY `FK_region_branches_branch_id` (`branch_id`),
  CONSTRAINT `FK_region_branches_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_region_branches_region_id` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.sms_event_performance definition

CREATE TABLE `sms_event_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `sms_campaign_id` int(11) NOT NULL,
  `sms_event_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `report_date` datetime NOT NULL,
  `report_date_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_notifications_staged` int(11) DEFAULT '0',
  `total_notifications_sent_system` int(11) DEFAULT '0',
  `total_notifications_sent_provider` int(11) DEFAULT '0',
  `total_notifications_delivered_by_provider` int(11) DEFAULT '0',
  `total_notifications_queued_by_provider` int(11) DEFAULT '0',
  `total_notifications_opened_by_customer` int(11) DEFAULT '0',
  `total_notifications_clicked_by_customer` int(11) DEFAULT '0',
  `total_notifications_bounced` int(11) DEFAULT '0',
  `total_notifications_spammed_by_customer` int(11) DEFAULT '0',
  `total_notifications_blocked_by_customer` int(11) DEFAULT '0',
  `total_notifications_unsubscribe_by_customer` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_notifications_submitted_to_smsc` int(11) DEFAULT '0',
  `total_notifications_submit_error` int(11) DEFAULT '0',
  `total_notifications_expired` int(11) DEFAULT '0',
  `total_notifications_suspended` int(11) DEFAULT '0',
  `total_notifications_expired_before_submission` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK1_sms_event_performance_link` (`sms_event_id`),
  CONSTRAINT `FK1_sms_event_performance_link` FOREIGN KEY (`sms_event_id`) REFERENCES `campaign_ma_decision_tree_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.team_members definition

CREATE TABLE `team_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_team_members_team_link` (`team_id`),
  KEY `FK_team_members_user_link` (`member_id`),
  CONSTRAINT `FK_team_members_team_link` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_team_members_user_link` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.`_reporting_user_performance` definition

CREATE TABLE `_reporting_user_performance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `user_role_id` int(10) unsigned DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL,
  `average_turn_around_time` double DEFAULT NULL,
  `total_converted_leads` int(11) DEFAULT NULL,
  `total_assigned_leads` int(11) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1__reporting_user_performance_country_link` (`country_id`),
  KEY `FK2__reporting_user_performance_user_link` (`user_id`),
  KEY `FK3__reporting_user_performance_branch_link` (`branch_id`),
  KEY `FK5__reporting_user_performance_region_link` (`region_id`),
  KEY `FK4__reporting_user_performance_user_role_id` (`user_role_id`),
  CONSTRAINT `FK1__reporting_user_performance_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries_old` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2__reporting_user_performance_user_link` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK3__reporting_user_performance_branch_link` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK4__reporting_user_performance_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `system_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=376750 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_activities definition

CREATE TABLE `lead_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_capture_id` bigint(20) NOT NULL,
  `activity_type` enum('Created','Assigned','Contacted','Reassigned','Converted','Follow Up') COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `actioned_by_id` int(11) DEFAULT NULL,
  `received_by_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lead_activity_lead_link` (`lead_capture_id`),
  CONSTRAINT `FK_lead_activity_lead_link` FOREIGN KEY (`lead_capture_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=388057539 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_documents definition

CREATE TABLE `lead_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `document_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `document_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `document_description` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lead_documents_lead_link` (`lead_id`),
  KEY `FK_lead_documents_type_link` (`document_type_id`),
  CONSTRAINT `FK_lead_documents_lead_link` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_documents_type_link` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_followups definition

CREATE TABLE `lead_followups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `lead_id` bigint(20) NOT NULL,
  `followup_by` int(11) NOT NULL,
  `followup_comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT '0',
  `followup_time` datetime DEFAULT NULL,
  `follow_status` tinyint(1) DEFAULT '0',
  `user_notified` tinyint(1) DEFAULT '0',
  `contacted_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lead_followups_lead_link` (`lead_id`),
  KEY `FK_lead_followups_user_link` (`followup_by`),
  KEY `FK1_country_link` (`country_id`),
  CONSTRAINT `FK1_country_link` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_followups_lead_link` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_followups_user_link` FOREIGN KEY (`followup_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63695 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_notes definition

CREATE TABLE `lead_notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `recorded_by` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lead_notes_lead_link` (`lead_id`),
  KEY `FK_lead_notes_user_link` (`recorded_by`),
  CONSTRAINT `FK_lead_notes_lead_link` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_notes_user_link` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_scores definition

CREATE TABLE `lead_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_capture_id` bigint(20) NOT NULL,
  `lead_scoring_type_id` int(10) unsigned NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_capture_id_lead_scoring_type_id` (`lead_capture_id`,`lead_scoring_type_id`),
  KEY `FK_lead_score_type_link` (`lead_scoring_type_id`),
  CONSTRAINT `FK_lead_score_lead_link` FOREIGN KEY (`lead_capture_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_score_type_link` FOREIGN KEY (`lead_scoring_type_id`) REFERENCES `lead_scoring_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- CLM_OPT_PROD_DB.lead_statues_tracker definition

CREATE TABLE `lead_statues_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) NOT NULL,
  `lead_status_id` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `previously_assigned_to` int(11) DEFAULT NULL,
  `currently_assigned_to` int(11) NOT NULL,
  `previous_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lead_statues_tracker_lead_link` (`lead_id`),
  KEY `FK_lead_statues_tracker_update_user_link` (`updated_by`),
  KEY `FK_lead_statues_tracker_previous_user_link` (`previously_assigned_to`),
  KEY `FK_lead_statues_tracker_current_user_link` (`currently_assigned_to`),
  CONSTRAINT `FK_lead_statues_tracker_current_user_link` FOREIGN KEY (`currently_assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_statues_tracker_lead_link` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_statues_tracker_previous_user_link` FOREIGN KEY (`previously_assigned_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_lead_statues_tracker_update_user_link` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

		-- Views

-- CLM_OPT_PROD_DB.branch_performance_view source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `CLM_OPT_PROD_DB`.`branch_performance_view` AS
select
    `l`.`preferred_branch_id` AS `preferred_branch_id`,
    `b`.`branch_name` AS `Branch Name`,
    count(`l`.`id`) AS `Total Leads`,
    (
    select
        count(`sl`.`id`)
    from
        `CLM_OPT_PROD_DB`.`leads` `sl`
    where
        ((`sl`.`lead_status_id` = 3)
            and (`sl`.`is_deleted` = 0)
                and (`sl`.`preferred_branch_id` = `b`.`id`))) AS `Converted`,
    ((
    select
        (`Converted` / count(`l`.`id`))) * 100) AS `Conversion Rate`,
    (
    select
        count(`sl`.`id`)
    from
        `CLM_OPT_PROD_DB`.`leads` `sl`
    where
        ((`sl`.`lead_status_id` = 1)
            and (`sl`.`preferred_branch_id` = `l`.`preferred_branch_id`))) AS `Open`,
    (
    select
        count(`sl`.`id`)
    from
        `CLM_OPT_PROD_DB`.`leads` `sl`
    where
        ((`sl`.`lead_status_id` in (4, 10, 13, 14, 15, 18))
            and (`sl`.`preferred_branch_id` = `l`.`preferred_branch_id`))) AS `Follow_Ups`,
    (
    select
        count(`sl`.`id`)
    from
        `CLM_OPT_PROD_DB`.`leads` `sl`
    where
        ((`sl`.`lead_status_id` = 16)
            and (`sl`.`preferred_branch_id` = `l`.`preferred_branch_id`))) AS `Other Product Sold`,
    (
    select
        sum(`l`.`product_value`)) AS `Total Product Value`,
    (
    select
        avg(`l`.`lead_branch_contact_tat`)) AS `Average Branch TAT`
from
    (`CLM_OPT_PROD_DB`.`leads` `l`
join `CLM_OPT_PROD_DB`.`branches` `b` on
    ((`l`.`preferred_branch_id` = `b`.`id`)))
where
    ((`l`.`is_archived` = 0)
        and (`l`.`country_id` = 1))
group by
    `l`.`preferred_branch_id`;


-- CLM_OPT_PROD_DB.contact_in_category source

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `CLM_OPT_PROD_DB`.`contact_in_category` AS
select
    distinct `CLM_OPT_PROD_DB`.`contact_category_meta`.`country_id` AS `country_id`,
    `CLM_OPT_PROD_DB`.`contact_category_meta`.`category_id` AS `category_id`,
    `CLM_OPT_PROD_DB`.`contact_category_meta`.`contact_id` AS `contact_id`
from
    `CLM_OPT_PROD_DB`.`contact_category_meta`
order by
    `CLM_OPT_PROD_DB`.`contact_category_meta`.`category_id`;

		-- Indexes



		-- Procedures

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`contact_meta`(IN contact_category_id int)
BEGIN
    DECLARE raw_data, contact_arr, single_contact json;
    DECLARE attribute_arr, attribute, attribute_value json;
    DECLARE i INT DEFAULT 0;
    DECLARE s INT DEFAULT 0;
    DECLARE contact_counter INT DEFAULT 0;
    DECLARE cursor_values LONGTEXT;
    DECLARE cursor_attr VARCHAR(255);
    DECLARE cursor_cat INT;
    DECLARE contact_id INT;
    DECLARE country_id INT;
    DECLARE category_id INT;
    DECLARE cci_id INT;
    DECLARE created_by INT;
    DECLARE record_exists INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE contacts_import_cursor CURSOR FOR select cc.country_id,cci.category_id,cci.raw_data,cci.created_by,cci.id from contacts_category_imports cci inner join contact_categories cc on cc.id=cci.category_id
                                              where cc.id=contact_category_id and is_procedure_run=0 limit 2;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    SET unique_checks = 0;
	SET foreign_key_checks = 0;
    OPEN contacts_import_cursor;
    read_loop:
    LOOP
        FETCH contacts_import_cursor INTO country_id,category_id,raw_data,created_by,cci_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        set @data_length = JSON_LENGTH(raw_data);
# select country_id;
# select category_id;
# select raw_data;
# select created_by;

        set i=0;
        call Import_contacts (raw_data,category_id,country_id,created_by,cci_id);
    END LOOP read_loop;
    CLOSE contacts_import_cursor;
    SET unique_checks = 1;
SET foreign_key_checks = 1;
END;

CREATE DEFINER=`app_account`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`copy_into_notifications`()
BEGIN DECLARE max_id INT DEFAULT 4985;
DECLARE min_id INT DEFAULT 4849;
  while min_id < max_id DO
  	insert into notifications
(country_id, campaign_id, event_id, notification_type_id, template_id, contact_id, sender_address, sender_name, provider, notification_method, recipient_address_is_invalid, recipient_email, recipient_phone_number,recipient_name, recipient_message, subject, recipient_attachments, recipient_message_images, sending_error, tracking_code, tracking_code_uuid, message_vendor_url, url_clicked_if_clicked, status, provider_status, retry_sending_on, sent_on, opened_on, opened_from_ip, opened_from_location, opened_from_user_agent, bounced_on, recipient_email_is_blocked, recipient_blocked_reason, recipient_blocked_us, recipient_marked_email_as_spam, spammed_on, spam_flag_source, blocked_on, unsubscribed_emails_on, message_is_hard_bounce, message_bounce_reason, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, is_manually_processed, hostname, ip_address, email_token)
select distinct country_id, campaign_id, event_id, notification_type_id, template_id, contact_id, sender_address, sender_name, provider, notification_method, recipient_address_is_invalid, recipient_email, recipient_phone_number,recipient_name, recipient_message, subject, recipient_attachments, recipient_message_images, sending_error, tracking_code, tracking_code_uuid, message_vendor_url, url_clicked_if_clicked, status, provider_status, retry_sending_on, sent_on, opened_on, opened_from_ip, opened_from_location, opened_from_user_agent, bounced_on, recipient_email_is_blocked, recipient_blocked_reason, recipient_blocked_us, recipient_marked_email_as_spam, spammed_on, spam_flag_source, blocked_on, unsubscribed_emails_on, message_is_hard_bounce, message_bounce_reason, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, is_manually_processed, hostname, ip_address, email_token
from dump_notifications WHERE campaign_id = min_id;
	#INSERT IGNORE INTO dump_notifications SELECT * FROM notifications WHERE campaign_id = min_id;
	SET min_id = min_id + 1;
  END while;
END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`create_contact_category_meta`(IN metaData longtext, IN contact_category_id int, IN country_id int, IN user_id int)
BEGIN
    DECLARE raw_data, contact_arr, single_contact longtext ;
    DECLARE attribute_arr, attribute, attribute_value json;
    DECLARE i INT DEFAULT 0;
    DECLARE s INT DEFAULT 0;
    DECLARE contact_counter INT DEFAULT 0;
    DECLARE cursor_values LONGTEXT;
    DECLARE cursor_attr VARCHAR(255);
    DECLARE cursor_cat INT;
    DECLARE contact_id INT;
    DECLARE record_exists INT;
    DECLARE done INT DEFAULT FALSE;
    DECLARE contacts_cursor CURSOR FOR select id
                                       from contacts
                                       where `customer_cif` IN (SELECT JSON_UNQUOTE(
																JSON_EXTRACT(metaData, CONCAT('$[', pseudo_rows.row, '].cif'))) AS cif_no
                                                                FROM contacts_category_imports
																JOIN pseudo_rows
                                                                HAVING cif_no IS NOT NULL);

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

SET unique_checks = 0;
SET foreign_key_checks = 0;
OPEN contacts_cursor;
read_loop:
    LOOP
        FETCH contacts_cursor INTO contact_id;
        IF done THEN
            LEAVE read_loop;
END IF;
        set @data_length = JSON_LENGTH(metaData);
        set i=0;
        WHILE i < @data_length
            DO
BEGIN
SELECT JSON_EXTRACT(metaData, CONCAT('$[', i, ']')) INTO single_contact;
set s = 0;
                set @keys = JSON_KEYS(single_contact);
                WHILE s < JSON_LENGTH(@`keys`)
                    DO
                        set @key_name = JSON_UNQUOTE(JSON_EXTRACT(@`keys`, CONCAT('$[', s, ']')));
                        set @attribute_value = JSON_UNQUOTE(JSON_EXTRACT(single_contact, CONCAT('$.', @key_name)));
                        insert ignore into contact_category_meta (country_id, contact_id, category_id, attribute, `value`,
                                                           created_by, created_at)
                        values (country_id, contact_id, contact_category_id, @key_name, @attribute_value, user_id,
                                CURRENT_TIMESTAMP)
                        on duplicate key update `value`=@attribute_value
;
#                         SELECT s + 1 INTO s;
set s= s + 1;
END WHILE;

                set i= i + 1 ;
END;
END WHILE;
END LOOP read_loop;
CLOSE contacts_cursor;

SET unique_checks = 1;
SET foreign_key_checks = 1;
END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`Import_contacts`(IN contact_arr longtext, IN contact_category_id int,
                                                       IN country_id int, IN user_id int, IN import_id int)
BEGIN

    DECLARE single_contact json;
    DECLARE i INT DEFAULT 0;
SET unique_checks = 0;
SET foreign_key_checks = 0;

    WHILE i < JSON_LENGTH(contact_arr) DO
            SELECT JSON_EXTRACT(contact_arr,CONCAT('$[',i,']')) INTO single_contact;

            set @cif= JSON_UNQUOTE(single_contact->'$.cif');
            set @name= JSON_UNQUOTE(single_contact->'$.first_name');
            set @email= JSON_UNQUOTE(single_contact->'$.email');
            set @other_names= JSON_UNQUOTE(single_contact->'$.other_names');
            set @phone_number= JSON_UNQUOTE(single_contact->'$.phone_number');
            insert into contacts (country_id, email_address,phone_number,customer_cif,customer_cif_slug,
                                  created_at,created_by,first_name,preferred_name,last_name,meta)
            values (country_id,@email,@phone_number,@cif,@cif,CURRENT_TIMESTAMP,user_id,@name,@name,@other_names,JSON_INSERT(single_contact,'$.contact_category_id',contact_category_id))
            on duplicate key update email_address=@email,phone_number=@phone_number,meta=JSON_INSERT(single_contact,'$.contact_category_id',contact_category_id) ;


            SELECT i + 1 INTO i;
        END WHILE;
        update contacts_category_imports set total_imported_contacts=i,is_procedure_run=1 where id=import_id;
        
SET unique_checks = 1;
SET foreign_key_checks = 1;
END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`kill_sleeping_processes`()
BEGIN
  DECLARE finished INT DEFAULT 0;
  DECLARE proc_id INT;
  DECLARE proc_id_cursor CURSOR FOR SELECT id FROM information_schema.processlist WHERE `User` = 'CLM_OPT_PROD_DB' AND `Time` > 100;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

  OPEN proc_id_cursor;
  proc_id_cursor_loop: LOOP
    FETCH proc_id_cursor INTO proc_id;

    IF proc_id <> CONNECTION_ID() THEN
      KILL proc_id;
    END IF;

  END LOOP proc_id_cursor_loop;
  CLOSE proc_id_cursor;
END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`MoveCategoryMeta`()
BEGIN
		DECLARE cursor_values LONGTEXT;
		DECLARE cursor_attr VARCHAR(255);
		DECLARE cursor_cat INT;
		DECLARE record_exists INT;
		DECLARE done INT DEFAULT FALSE;
		DECLARE cursor_i CURSOR FOR SELECT DISTINCT attribute, category_id, CONCAT('["',GROUP_CONCAT(DISTINCT VALUE SEPARATOR '","'),'"]') AS unique_values FROM contact_category_meta GROUP BY category_id,attribute ORDER BY category_id;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		OPEN cursor_i;
		read_loop: LOOP
			FETCH cursor_i INTO cursor_attr, cursor_cat, cursor_values;
			IF done THEN
				LEAVE read_loop;
			END IF;
			#check if the category, attribute combination exists
			SELECT COUNT(*) INTO record_exists FROM meta_summary WHERE category_id=cursor_cat AND attribute_name = cursor_attr;
			#select cursor_values;
			IF record_exists = 0 THEN
				INSERT INTO meta_summary(category_id, attribute_name,attribute_values) VALUES(cursor_cat,cursor_attr,cursor_values);
			ELSE
				UPDATE meta_summary SET attribute_values = cursor_values WHERE category_id=cursor_cat AND attribute_name = cursor_attr;
			END IF;
		END LOOP;
		CLOSE cursor_i;
	END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`MoveProdctMeta`()
BEGIN
		DECLARE cursor_values LONGTEXT;
		DECLARE cursor_attr VARCHAR(255);
		DECLARE cursor_cat INT;
		DECLARE record_exists INT;
		DECLARE done INT DEFAULT FALSE;
		DECLARE cursor_i CURSOR FOR SELECT DISTINCT attribute, product_id, CONCAT('["',GROUP_CONCAT(DISTINCT VALUE SEPARATOR '","'),'"]') AS unique_values FROM dt_products_meta GROUP BY product_id,attribute ORDER BY product_id;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		OPEN cursor_i;
		read_loop: LOOP
			FETCH cursor_i INTO cursor_attr, cursor_cat, cursor_values;
			IF done THEN
				LEAVE read_loop;
			END IF;
			#check if the category, attribute combination exists
			SELECT COUNT(*) INTO record_exists FROM product_meta_summary WHERE product_id=cursor_cat AND attribute_name = cursor_attr;
			#select cursor_values;
			IF record_exists = 0 THEN
				INSERT INTO product_meta_summary(product_id, attribute_name,attribute_values) VALUES(cursor_cat,cursor_attr,cursor_values);
			ELSE
				UPDATE product_meta_summary SET attribute_values = cursor_values WHERE product_id=cursor_cat AND attribute_name = cursor_attr;
			END IF;
		END LOOP;
		CLOSE cursor_i;
	END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`StageCampaignFromHadoop`(IN country_id int, IN template_id int, IN campaign_id int,
                                                         IN email_subject text)
BEGIN

    DECLARE current_email Text;
    DECLARE current_email_markup BLOB;
    DECLARE json_path Text;
    DECLARE current_payload JSON;
    DECLARE current_contact_list JSON;
    DECLARE current_contact_item JSON;
    DECLARE email_payload JSON;
    DECLARE i INT DEFAULT 0;
    DECLARE j INT DEFAULT 0;
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE cursor_i CURSOR FOR SELECT  email from _process_customers WHERE  country_id=country_id AND marketingoption='N' AND email !='-1';

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    set current_payload= JSON_ARRAY();
    set email_payload= JSON_ARRAY();
    set current_contact_list= JSON_ARRAY();
    SELECT   email_markup into current_email_markup from email_templates WHERE  id=template_id;

    OPEN cursor_i;
    read_loop: LOOP
        FETCH cursor_i INTO current_email;
        set current_contact_item =CONCAT('{"recipient_email":"',current_email,'","contact_id":"","ricipient_name":""}');

        IF done THEN
            SET email_payload= JSON_ARRAY_insert(email_payload,  CONCAT('$[',j,']'),current_payload);
            INSERT into notifications_staging (country_id,campaign_id,email_template_id,notification_method,sender_address,
                                               sender_name,subject,recipient_message,bulk_sending,contacts_list,recipients_payload,
                                               recipient_attachments,created_at,event_id,can_send,send_status)
            values (country_id, campaign_id,template_id,'EMAIL','Service.Excellence@absa.africa',
                    'Absa Ghana',email_subject,current_email_markup,1,current_contact_list,
                    current_payload,"",CURRENT_TIMESTAMP,NULL,0,0);
            LEAVE read_loop;
        END IF;
        #select cursor_values;;

        IF MOD(i,20)=0 THEN
            IF i!=0 then

                SET email_payload= JSON_ARRAY_insert(email_payload,  CONCAT('$[',j,']'),current_payload);
                
                #TODO Insert
                INSERT into notifications_staging (country_id,campaign_id,email_template_id,notification_method,sender_address,
                                                   sender_name,subject,recipient_message,bulk_sending,contacts_list,recipients_payload,
                                                   recipient_attachments,created_at,event_id,can_send,send_status)
                values (country_id, campaign_id,template_id,'EMAIL','Service.Excellence@absa.africa',
                        'Absa Ghana',email_subject,current_email_markup,1,current_contact_list,
                        current_payload,"",CURRENT_TIMESTAMP,NULL,0,0);

                set j=j+1;
                set current_payload= JSON_ARRAY();
                set current_contact_list= JSON_ARRAY();

            END IF;
        END IF;
        #set email_payload =JSON_ARRAY_APPEND(email_payload, '$[1]',current_email);
        SET current_payload= JSON_ARRAY_insert(current_payload, CONCAT('$[',i,']'),current_email);
        SET current_contact_list= JSON_ARRAY_insert(current_contact_list, CONCAT('$[',i,']'),current_contact_item);


        set i=i+1;

        #select current_payload;

    END LOOP;
    CLOSE cursor_i;


END;

CREATE DEFINER=`CLM_Optprod01`@`%` PROCEDURE `CLM_OPT_PROD_DB`.`StageSMSCampaignJSON`(
	IN `country_id` int,
	IN `template_id` int,
	IN `campaign_id` int,
	IN `email_subject` text
)
BEGIN

    DECLARE current_raw_data JSON;
    DECLARE current_email_markup BLOB;
    DECLARE phone_number Text;
    DECLARE customer_name Text;
    DECLARE cif Text;
    DECLARE msg Text;
    DECLARE indx Text;
    DECLARE json_path Text;
    DECLARE current_contact Text;
    DECLARE current_payload JSON;
    DECLARE current_contact_list JSON;
    DECLARE current_contact_item JSON;
    DECLARE email_payload JSON;
    DECLARE i INT DEFAULT 0;
    DECLARE raw_data_index INT DEFAULT 0;
    DECLARE j INT DEFAULT 0;
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE cursor_i CURSOR FOR select raw_data from contacts_category_imports where category_id=3130;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    set current_payload= JSON_ARRAY();
    set email_payload= JSON_ARRAY();
    set current_contact_list= JSON_ARRAY();

    OPEN cursor_i;
    read_loop: LOOP
        FETCH cursor_i INTO current_raw_data;
        IF done THEN
            LEAVE read_loop;
        END IF;

#         select current_raw_data;
#         get phone number and stage
        set raw_data_index=0;
        WHILE raw_data_index < json_length(current_raw_data) DO
#         WHILE raw_data_index < 5 DO
                SET current_contact :=
                        JSON_EXTRACT(current_raw_data, CONCAT('$[', raw_data_index, ']'));
#                 get current number
                set cif := JSON_EXTRACT(current_contact, '$.cif');
                set phone_number := JSON_EXTRACT(current_contact, '$.phone_number');
                set customer_name := JSON_EXTRACT(current_contact, '$.first_name');
                set msg := REPLACE('Dear {NAME}, there is no us without you because it takes two to bring possibilities to life. \r\nToday, we are proud to share our 2nd anniversary with you. We appreciate you.',
                    '{NAME}',customer_name);
                INSERT IGNORE INTO `notifications_staging` ( `country_id`, `campaign_id`, `contact_id`, `email_template_id`,
                                                     `notification_type_id`, `sms_template_id`, `can_send`, `send_status`, `sent_on`,
                                                     `attempts`, `last_attempted_on`, `notification_method`, `sender_address`,
                                                     `sender_name`, `subject`, `recipient_email`, `recipient_phone_number`,
                                                     `recipient_name`, `recipient_message`, `recipient_attachments`,
                                                     `recipient_message_images`, `bulk_sending`, `contacts_list`, `recipients_payload`,
                                                     `sending_error_message`, `created_by`, `updated_by`, `deleted_by`, `created_at`,
                                                     `updated_at`, `deleted_at`, `provider_status`, `event_id`)
                VALUES (6, 3864, cif, NULL, 1, 2518, 0, 0, NULL, 0, NULL, 'SMS', NULL, NULL, NULL, NULL,  REPLACE(phone_number,'"',''),
                        REPLACE(customer_name,'"',''),
                         REPLACE(msg,'"',''),
                        NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, current_timestamp, NULL, NULL, NULL, NULL);
#                 message replace



                SET raw_data_index := raw_data_index + 1;
        END WHILE;

    END LOOP;
    CLOSE cursor_i;


END;

		Triggers
		Events
		