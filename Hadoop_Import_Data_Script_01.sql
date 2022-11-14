-- PROCEDURE: HadoopMigration.dataimport()

-- DROP PROCEDURE "HadoopMigration".dataimport();

CREATE OR REPLACE PROCEDURE "HadoopMigration".dataimport(
	)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN

truncate "HadoopMigration".accuralrecord_hadoop;
truncate "HadoopMigration".atmconfig_hadoop;
truncate "HadoopMigration".atmintegrationrecords_hadoop;
truncate "HadoopMigration".authlevel_hadoop;
truncate "HadoopMigration".blacklistuser_hadoop;
truncate "HadoopMigration".businessproduct_hadoop;
truncate "HadoopMigration".channelbusinessproduct_hadoop;
truncate "HadoopMigration".channel_hadoop;
truncate "HadoopMigration".charges_hadoop;
truncate "HadoopMigration".country_hadoop;
truncate "HadoopMigration".creditinfodetail_hadoop;
truncate "HadoopMigration".creditlimit_hadoop;
truncate "HadoopMigration".currency_hadoop;
truncate "HadoopMigration".depositaccural_hadoop;
truncate "HadoopMigration".faq_hadoop;
truncate "HadoopMigration".favourite_hadoop;
truncate "HadoopMigration".insuranceproduct_hadoop;
truncate "HadoopMigration".insurancesubscription_hadoop;
truncate "HadoopMigration".iprsuserdetails_hadoop;
truncate "HadoopMigration".loanaccural_hadoop;
truncate "HadoopMigration".loanbucket_hadoop;
truncate "HadoopMigration".loan_hadoop;
truncate "HadoopMigration".loanproduct_hadoop;
truncate "HadoopMigration".loanschedule_hadoop;
truncate "HadoopMigration".moduletransaction_hadoop;
truncate "HadoopMigration".occupation_hadoop;
truncate "HadoopMigration".offerbusinessproduct_hadoop;
truncate "HadoopMigration".offertype_hadoop;
truncate "HadoopMigration".rdproductassociation_hadoop;
truncate "HadoopMigration".rdproduct_hadoop;
truncate "HadoopMigration".referraloffer_hadoop;
truncate "HadoopMigration".role_hadoop;
truncate "HadoopMigration".rolespecialfield_hadoop;
truncate "HadoopMigration".rolewalletsetting_hadoop;
truncate "HadoopMigration".safaricomcustomercreditscoredetails_hadoop;
truncate "HadoopMigration".specialfield_hadoop;
truncate "HadoopMigration".userenhancekyc_hadoop;
truncate "HadoopMigration".userkycdetails_hadoop;
truncate "HadoopMigration".userkyc_hadoop;
truncate "HadoopMigration".userreferral_hadoop;
truncate "HadoopMigration".users_hadoop;
truncate "HadoopMigration".walletbalance_hadoop;
truncate "HadoopMigration".wallettype_hadoop;
truncate "HadoopMigration".creditlimit_hadoop;
truncate "HadoopMigration".atmconfigaudit_hadoop;
truncate "HadoopMigration".authlevelaudit_hadoop;
truncate "HadoopMigration".businessproductaudit_hadoop;
truncate "HadoopMigration".channelaudit_hadoop;
truncate "HadoopMigration".chargesaudit_hadoop;
truncate "HadoopMigration".coaaudit_hadoop;
truncate "HadoopMigration".currencyaudit_hadoop;
truncate "HadoopMigration".faqaudit_hadoop;
truncate "HadoopMigration".favouriteaudit_hadoop;
truncate "HadoopMigration".offertypeaudit_hadoop;
truncate "HadoopMigration".referralofferaudit_hadoop;
truncate "HadoopMigration".roleaudit_hadoop;
truncate "HadoopMigration".rolewalletsettingaudit_hadoop;
truncate "HadoopMigration".specialfieldaudit_hadoop;
truncate "HadoopMigration".userenhancekycaudit_hadoop;
truncate "HadoopMigration".usersaudit_hadoop;
truncate "HadoopMigration".wallettypeaudit_hadoop;
truncate "HadoopMigration".wallettypeaudit_hadoop;
truncate "HadoopMigration".biller_hadoop;
truncate "HadoopMigration".securityquestion_hadoop;
truncate "HadoopMigration".wallettransactions_hadoop;
truncate "HadoopMigration".pendingtransaction_hadoop;
truncate "HadoopMigration".notification_hadoop;
truncate "HadoopMigration".coaqueue_hadoop;
truncate "HadoopMigration".coaeod_hadoop;

-- stored procedure body
--Full load

INSERT INTO "HadoopMigration".biller_hadoop
SELECT CAST (nextval('seq_hadoop_biller') AS INT) AS sequenceid, *
FROM public.biller;

INSERT INTO "HadoopMigration".coa_hadoop
SELECT CAST (nextval('seq_hadoop_coa') AS INT) AS sequenceid, *
FROM public.coa;

INSERT INTO "HadoopMigration".securityquestion_hadoop
SELECT CAST (nextval('seq_hadoop_securityquestion') AS INT) AS sequenceid, *
FROM public.securityquestion;

INSERT INTO "HadoopMigration".accuralrecord_hadoop
SELECT CAST (nextval('seq_hadoop_accuralrecord') AS INT) AS sequenceid, *
FROM public.accuralrecord;

INSERT INTO "HadoopMigration".atmconfig_hadoop
SELECT CAST (nextval('seq_hadoop_atmconfig') AS INT) AS sequenceid, *
FROM public.atmconfig; 

INSERT INTO "HadoopMigration".atmintegrationrecords_hadoop
SELECT CAST (nextval('seq_hadoop_atmintegrationrecords') AS INT) AS sequenceid, *
FROM public.atmintegrationrecords; 

INSERT INTO "HadoopMigration".authlevel_hadoop
SELECT CAST (nextval('seq_hadoop_authlevel') AS INT) AS sequenceid, *
FROM public.authlevel; 

INSERT INTO "HadoopMigration".businessproduct_hadoop
SELECT CAST (nextval('seq_hadoop_businessproduct') AS INT) AS sequenceid, *
FROM public.businessproduct;

INSERT INTO "HadoopMigration".channelbusinessproduct_hadoop
SELECT CAST (nextval('seq_hadoop_channelbusinessproduct') AS INT) AS sequenceid, *
FROM public.channelbusinessproduct; 

INSERT INTO "HadoopMigration".channel_hadoop
SELECT CAST (nextval('seq_hadoop_channel') AS INT) AS sequenceid, *
FROM public.channel; 

INSERT INTO "HadoopMigration".charges_hadoop
SELECT CAST (nextval('seq_hadoop_charges') AS INT) AS sequenceid, *
FROM public.charges; 

INSERT INTO "HadoopMigration".country_hadoop
SELECT CAST (nextval('seq_hadoop_country') AS INT) AS sequenceid, *
FROM public.country;  

INSERT INTO "HadoopMigration".creditinfodetail_hadoop
SELECT CAST (nextval('seq_hadoop_creditinfodetail') AS INT) AS sequenceid, *
FROM public.creditinfodetail; 

INSERT INTO "HadoopMigration".creditlimit_hadoop
SELECT CAST (nextval('seq_hadoop_creditlimit') AS INT) AS sequenceid, id, userid, creditlimit, creditlimittype, loanterm, termtype, limitsource, limitlastupdatedon, limitlastupdatedby, 
termsource, termlastupdatedon, termlastupdatedby, currentbalance, limitexpirydate, riskcategory, createdon, modifiedon, riskvalue, model, 
ntbriskmetriccalc, mpesaestincome, airtimeestincome, mpesaweight, airtimeweight, consolidatedestincome, dsrvalue, adjustedriskscore, 
validationerrorjson, loantermactual, templimitapplicablefrom, lastlimitincreasedate
FROM public.creditlimit;

INSERT INTO "HadoopMigration".currency_hadoop
SELECT CAST (nextval('seq_hadoop_currency') AS INT) AS sequenceid, *
FROM public.currency;

INSERT INTO "HadoopMigration".depositaccural_hadoop
SELECT CAST (nextval('seq_hadoop_depositaccural') AS INT) AS sequenceid, *
FROM public.depositaccural; 

INSERT INTO "HadoopMigration".faq_hadoop
SELECT CAST (nextval('seq_hadoop_faq') AS INT) AS sequenceid, *
FROM public.faq;

INSERT INTO "HadoopMigration".favourite_hadoop
SELECT CAST (nextval('seq_hadoop_favourite') AS INT) AS sequenceid, *
FROM public.favourite;

INSERT INTO "HadoopMigration".insuranceproduct_hadoop
SELECT CAST (nextval('seq_hadoop_insuranceproduct') AS INT) AS sequenceid, *
FROM public.insuranceproduct;

INSERT INTO "HadoopMigration".insurancesubscription_hadoop
SELECT CAST (nextval('seq_hadoop_insurancesubscription') AS INT) AS sequenceid, *
FROM public.insurancesubscription; 

INSERT INTO "HadoopMigration".iprsuserdetails_hadoop
SELECT CAST (nextval('seq_hadoop_iprsuserdetails') AS INT) AS sequenceid, *
FROM public.iprsuserdetails;

INSERT INTO "HadoopMigration".loanaccural_hadoop
SELECT CAST (nextval('seq_hadoop_loanaccural') AS INT) AS sequenceid, id, loanid, totalprincipalpending, totalinterestpending, totalpenaltypending, interestonprincipal, 
interestoninterest, interestonpenalty, accuraldonetill, createdon, modifiedon, totalprocessingfeepending, loanstatus
FROM public.loanaccural;

INSERT INTO "HadoopMigration".loanbucket_hadoop
SELECT CAST (nextval('seq_hadoop_loanbucket') AS INT) AS sequenceid, *
FROM public.loanbucket;

INSERT INTO "HadoopMigration".loan_hadoop
SELECT CAST (nextval('seq_hadoop_loan') AS INT) AS sequenceid, *
FROM public.loan;

INSERT INTO "HadoopMigration".loanproduct_hadoop
SELECT CAST (nextval('seq_hadoop_loanproduct') AS INT) AS sequenceid, id, createdby, createdon, modifiedby, modifiedon, approvalstatus, remarks,
	statuschangedby, statuschangedon, name, description, name_key, description_key, currencyid, image,
	disbursedebitwallet, disbursecreditwallet, maxamount, minloanterm, maxloanterm, loantermperiod, mininterestrate, 
	maxinterestrate, processingfees, processingfeespaymentoption, processingfeeschargecomputationtype, latepaymentpenalty, 
	latepaymentpenaltychargecomputationtype, preclosurefees, preclosurefeeschargecomputationtype, preclosurefeesappliedon, repayinstallmentdebitwallet, replayprinciplecreditwallet, 
	repayinterestcreditwallet, repayprocesingfeescreditwallet, repaypenaltycreditwallet, penaltywavefundingaccount, loanwriteofffundingaccount, amortization, 
	repaymentfrequency, onlysingleactive, basedonremainingcredit, rotating, loandimishesthecreditlimit, collateralvaluationgroupidjson, loanapprovalgroupidjson, 
	interestaccuredrecevablewallet, interestaccuredrecevablewalletfrom, penaltyaccuredrecevablewallet, penaltyaccuredrecevablewalletfrom, preapprovalstatus,
	postapprovalstatus, pendingvaluejson, loantype, firstexpirydate, loanproductremarks, bucketsjson, creditlife, creditlifecomputationtype, defaultinterestrate, 
	creditlifepaymentoption, repaycreditlifecreditwallet, prepaymentinterestoption, transactionfee, repaytransactionfeecreditwallet, minamount, lpcode,
	processingfeeaccuredrecevablewalletfrom, graceperiodindays, processingfeeaccuredrecevablewallet, notificationsjson, loanwriteoffrecoverycreditaccount,
	excisedutycomputationtype, excidedutydebitwallet, excidedutycreditwallet, excisedutycharges
FROM public.loanproduct;

INSERT INTO "HadoopMigration".loanschedule_hadoop
SELECT CAST (nextval('seq_hadoop_loanschedule') AS INT) AS sequenceid, *
FROM public.loanschedule;

INSERT INTO "HadoopMigration".moduletransaction_hadoop
SELECT CAST (nextval('seq_hadoop_moduletransaction') AS INT) AS sequenceid, *
FROM public.moduletransaction;

INSERT INTO "HadoopMigration".occupation_hadoop
SELECT CAST (nextval('seq_hadoop_occupation') AS INT) AS sequenceid, *
FROM public.occupation;

INSERT INTO "HadoopMigration".offerbusinessproduct_hadoop
SELECT CAST (nextval('seq_hadoop_offerbusinessproduct') AS INT) AS sequenceid, *
FROM public.offerbusinessproduct;

INSERT INTO "HadoopMigration".offertype_hadoop
SELECT CAST (nextval('seq_hadoop_offertype') AS INT) AS sequenceid, *
FROM public.offertype;

INSERT INTO "HadoopMigration".rdproductassociation_hadoop
SELECT CAST (nextval('seq_hadoop_rdproductassociation') AS INT) AS sequenceid, *
FROM public.rdproductassociation;

INSERT INTO "HadoopMigration".rdproduct_hadoop
SELECT CAST (nextval('seq_hadoop_rdproduct') AS INT) AS sequenceid, *
FROM public.rdproduct;

INSERT INTO "HadoopMigration".referraloffer_hadoop
SELECT CAST (nextval('seq_hadoop_referraloffer') AS INT) AS sequenceid, *
FROM public.referraloffer;

INSERT INTO "HadoopMigration".role_hadoop
SELECT CAST (nextval('seq_hadoop_role') AS INT) AS sequenceid, *
FROM public.role;

INSERT INTO "HadoopMigration".rolespecialfield_hadoop
SELECT CAST (nextval('seq_hadoop_rolespecialfield') AS INT) AS sequenceid, *
FROM public.rolespecialfield;

INSERT INTO "HadoopMigration".rolewalletsetting_hadoop
SELECT CAST (nextval('seq_hadoop_rolewalletsetting') AS INT) AS sequenceid, *
FROM public.rolewalletsetting;

INSERT INTO "HadoopMigration".safaricomcustomercreditscoredetails_hadoop
SELECT CAST (nextval('seq_hadoop_safaricomcustomercreditscoredetails') AS INT) AS sequenceid, *
FROM public.safaricomcustomercreditscoredetails;

INSERT INTO "HadoopMigration".specialfield_hadoop
SELECT CAST (nextval('seq_hadoop_specialfield') AS INT) AS sequenceid, *
FROM public.specialfield;

INSERT INTO "HadoopMigration".userenhancekyc_hadoop
SELECT CAST (nextval('seq_hadoop_userenhancekyc') AS INT) AS sequenceid, *
FROM public.userenhancekyc;

INSERT INTO "HadoopMigration".userkycdetails_hadoop
SELECT CAST (nextval('seq_hadoop_userkycdetails') AS INT) AS sequenceid, *
FROM public.userkycdetails;

INSERT INTO "HadoopMigration".userkyc_hadoop
SELECT CAST (nextval('seq_hadoop_userkyc') AS INT) AS sequenceid, *
FROM public.userkyc;

INSERT INTO "HadoopMigration".userreferral_hadoop
SELECT CAST (nextval('seq_hadoop_userreferral') AS INT) AS sequenceid, *
FROM public.userreferral;

INSERT INTO "HadoopMigration".users_hadoop
SELECT CAST (nextval('seq_hadoop_users') AS INT) AS sequenceid, id, createdby, createdon, modifiedby, modifiedon, firstname, middlename, lastname, email, address, city, state, country, pincode, countrycode, gender, dob, roleid, username, password,
	passwordexpirydate, lastlogin, mobilenumber, roletype, parentuserid, userstatus, employeeid, emailvalidated, mobilenumbervalidated, deviceid, tenantcode,
	speicalfieldvaluesjson, agreementaccepted, sharecommission, computationtype, remarks, value, profilepicture, kycstatus, ldapuser, securityquestionjson, maxtps,
	referralcode, activated, biometricenabled, biometrickey, nontransactionnotificationallowed, remindersent, idtype, idnumber, temppin, devicetoken, deviceostype,
	mnoiprsmatchpercentage, preapprovalstatus, postapprovalstatus, pendingvaluejson, netrevielprimarystatus, netrevielscreenstatus, netrevielscreenapprovedstatus, 
	hashkey, riskrating, registrationchannelid, loanrestrictduedate, loanstatusdate,userloanstatus, checkforcechangepassword, rolesubtype, migrationstatus
FROM public.users;

INSERT INTO "HadoopMigration".userkycdetails_hadoop
SELECT CAST (nextval('seq_hadoop_userkycdetails') AS INT) AS sequenceid, *
FROM public.userkycdetails;

INSERT INTO "HadoopMigration".walletbalance_hadoop
SELECT CAST (nextval('seq_hadoop_walletbalance') AS INT) AS sequenceid, *
FROM public.walletbalance;

INSERT INTO "HadoopMigration".wallettype_hadoop
SELECT CAST (nextval('seq_hadoop_wallettype') AS INT) AS sequenceid, *   
FROM public.wallettype;

----Transactional 

INSERT INTO "HadoopMigration".atmconfigaudit_hadoop
SELECT CAST (nextval('seq_hadoop_atmconfigaudit') AS INT) AS sequenceid, *
FROM public.atmconfigaudit
WHERE (atmconfigaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".authlevelaudit_hadoop
SELECT CAST (nextval('seq_hadoop_authlevelaudit') AS INT) AS sequenceid, *
FROM public.authlevelaudit 
WHERE (authlevelaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".businessproductaudit_hadoop
SELECT CAST (nextval('seq_hadoop_businessproductaudit') AS INT) AS sequenceid, *
FROM public.businessproductaudit 
WHERE (businessproductaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".channelaudit_hadoop
SELECT CAST (nextval('seq_hadoop_channelaudit') AS INT) AS sequenceid, *
FROM public.channelaudit 
WHERE (channelaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".chargesaudit_hadoop
SELECT CAST (nextval('seq_hadoop_chargesaudit') AS INT) AS sequenceid, *
FROM public.chargesaudit 
WHERE (chargesaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".coaaudit_hadoop
SELECT CAST (nextval('seq_hadoop_coaaudit') AS INT) AS sequenceid, *
FROM public.coaaudit
WHERE (coaaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".currencyaudit_hadoop
SELECT CAST (nextval('seq_hadoop_currencyaudit') AS INT) AS sequenceid, *
FROM public.currencyaudit 
WHERE (currencyaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".faqaudit_hadoop
SELECT CAST (nextval('seq_hadoop_faqaudit') AS INT) AS sequenceid, *
FROM public.faqaudit 
WHERE (faqaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".favouriteaudit_hadoop
SELECT CAST (nextval('seq_hadoop_favouriteaudit') AS INT) AS sequenceid, *
FROM public.favouriteaudit 
WHERE (favouriteaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".offertypeaudit_hadoop
SELECT CAST (nextval('seq_hadoop_offertypeaudit') AS INT) AS sequenceid, *
FROM public.offertypeaudit 
WHERE (offertypeaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".referralofferaudit_hadoop
SELECT CAST (nextval('seq_hadoop_referralofferaudit') AS INT) AS sequenceid, *
FROM public.referralofferaudit 
WHERE (referralofferaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".roleaudit_hadoop
SELECT CAST (nextval('seq_hadoop_roleaudit') AS INT) AS sequenceid, *
FROM public.roleaudit 
WHERE (roleaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".rolewalletsettingaudit_hadoop
SELECT CAST (nextval('seq_hadoop_rolewalletsettingaudit') AS INT) AS sequenceid, *
FROM public.rolewalletsettingaudit 
WHERE (rolewalletsettingaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".specialfieldaudit_hadoop
SELECT CAST (nextval('seq_hadoop_specialfieldaudit') AS INT) AS sequenceid, *
FROM public.specialfieldaudit 
WHERE (specialfieldaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".userenhancekycaudit_hadoop
SELECT CAST (nextval('seq_hadoop_userenhancekycaudit') AS INT) AS sequenceid, *
FROM public.userenhancekycaudit
WHERE (userenhancekycaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".usersaudit_hadoop
SELECT CAST (nextval('seq_hadoop_usersaudit') AS INT) AS sequenceid, auditid, id, createdby, createdon, modifiedby, modifiedon, firstname, middlename, lastname, email, 
address, city, state, country, pincode, countrycode, gender, dob, roleid, username, password, passwordexpirydate, 
lastlogin, mobilenumber, roletype, parentuserid, userstatus, employeeid, emailvalidated, mobilenumbervalidated, deviceid, 
tenantcode, speicalfieldvaluesjson, agreementaccepted, sharecommission, computationtype, remarks, value, profilepicture, kycstatus,
ldapuser, securityquestionjson, maxtps, referralcode, activated, biometricenabled, biometrickey, nontransactionnotificationallowed, idtype, 
idnumber, devicetoken, deviceostype, mnoiprsmatchpercentage, hashkey, riskrating, registrationchannelid, preapprovalstatus, remindersent, temppin,
postapprovalstatus, netrevielprimarystatus, netrevielscreenstatus, netrevielscreenapprovedstatus, lastmodifiedbyipaddress,loanrestrictduedate, loanstatusdate, 
userloanstatus, checkforcechangepassword, rolesubtype,  migrationstatus
FROM public.usersaudit
WHERE (usersaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".wallettypeaudit_hadoop
SELECT CAST (nextval('seq_hadoop_wallettypeaudit') AS INT) AS sequenceid, *
FROM public.wallettypeaudit
WHERE (wallettypeaudit.createdon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".coaeod_hadoop
SELECT CAST (nextval('seq_hadoop_coaeod') AS INT) AS sequenceid, *
FROM public.coaeod
WHERE (coaeod.createdon >= (CURRENT_DATE - '1 day'::interval)) OR (coaeod.modifiedon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".coaqueue_hadoop
SELECT CAST (nextval('seq_hadoop_coaqueue') AS INT) AS sequenceid, *
FROM public.coaqueue
WHERE (coaqueue.createdon >= (CURRENT_DATE - '1 day'::interval)) OR (coaqueue.modifiedon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".notification_hadoop
SELECT CAST (nextval('seq_hadoop_notification') AS INT) AS sequenceid, *
FROM public.notification
WHERE (notification.createdon >= (CURRENT_DATE - '1 day'::interval)) OR (notification.modifiedon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".pendingtransaction_hadoop
SELECT CAST (nextval('seq_hadoop_pendingtransaction') AS INT) AS sequenceid, *
FROM public.pendingtransaction
WHERE (pendingtransaction.createdon >= (CURRENT_DATE - '1 day'::interval)) OR (pendingtransaction.modifiedon >= (CURRENT_DATE - '1 day'::interval));

INSERT INTO "HadoopMigration".wallettransactions_hadoop
SELECT CAST (nextval('seq_hadoop_wallettransactions') AS INT) AS sequenceid, *
FROM public.wallettransactions
WHERE (wallettransactions.createdon >= (CURRENT_DATE - '1 day'::interval)) OR (wallettransactions.modifiedon >= (CURRENT_DATE - '1 day'::interval));

end;
$BODY$;
