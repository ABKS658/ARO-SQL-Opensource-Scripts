	
-----Users
CREATE INDEX users_id_idx
ON public.users USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER users_id_idx ON users

CREATE INDEX users_mobilenumber_idx
ON public.users USING btree
(mobilenumber COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX users_username_idx
ON public.users USING btree
(username COLLATE pg_catalog."default" ASC NULLS LAST)
WITH (FILLFACTOR=70)
TABLESPACE pg_default;
	

----Walletbalance

CREATE INDEX walletbalance_id_idx
ON public.walletbalance USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER walletbalance_id_idx ON walletbalance
	
CREATE INDEX walletbalance_ownerid_idx
ON public.walletbalance USING btree
(ownerid COLLATE pg_catalog."default" ASC NULLS LAST)
WITH (FILLFACTOR=70)
TABLESPACE pg_default;

CREATE INDEX walletbalance_wallettypeid_idx
ON public.walletbalance USING btree
(wallettypeid COLLATE pg_catalog."default" ASC NULLS LAST)
WITH (FILLFACTOR=70)
TABLESPACE pg_default;
	
--SafaricomCustomerCreditScoreDetails
	
CREATE INDEX SafaricomCustomerCreditScoreDetails_id_idx
ON public.SafaricomCustomerCreditScoreDetails USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER SafaricomCustomerCreditScoreDetails_id_idx 
ON SafaricomCustomerCreditScoreDetails

CREATE INDEX SafaricomCustomerCreditScoreDetails_userid_idx
ON public.SafaricomCustomerCreditScoreDetails USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;

	
---IPRSUserDetails
	
CREATE INDEX IPRSUserDetails_id_idx
ON public.IPRSUserDetails USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER IPRSUserDetails_id_idx ON public.IPRSUserDetails
	
CREATE INDEX IPRSUserDetails_userid_idx
ON public.IPRSUserDetails USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--CreditInfoDetail
CREATE INDEX CreditInfoDetail_id_idx
ON public.CreditInfoDetail USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER CreditInfoDetail_id_idx ON public.CreditInfoDetail
	
CREATE INDEX CreditInfoDetail_userid_idx
ON public.CreditInfoDetail USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
---UserKyc
CREATE INDEX UserKyc_id_idx
ON public.UserKyc USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER UserKyc_id_idx ON public.UserKyc
	
CREATE INDEX UserKyc_userid_idx
ON public.UserKyc USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--Insurance Subscription
CREATE INDEX insurancesubscription_id_idx
ON public.insurancesubscription USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER insurancesubscription_id_idx ON public.insurancesubscription

CREATE INDEX insurancesubscription_userid_idx
ON public.insurancesubscription USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX insurancesubscription_productid_idx
ON public.insurancesubscription USING btree
(productid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX insurancesubscription_mobileNumber_idx
ON public.insurancesubscription USING btree
(mobileNumber COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
---RDProductAssociation
CREATE INDEX RDProductAssociation_id_idx
ON public.RDProductAssociation USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER RDProductAssociation_id_idx ON public.RDProductAssociation

CREATE INDEX RDProductAssociation_userid_idx
ON public.RDProductAssociation USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX RDProductAssociation_rdaccountno_idx
ON public.RDProductAssociation USING btree
(rdaccountno COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--DepositAccural
CREATE INDEX DepositAccural_id_idx
ON public.DepositAccural USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER DepositAccural_id_idx ON public.DepositAccural

CREATE INDEX DepositAccural_depositProductAssociationId_idx
ON public.DepositAccural USING btree
(depositProductAssociationId COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--loan 
CREATE INDEX loan_id_idx
ON public.loan USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER loan_id_idx ON public.loan
	
CREATE INDEX loan_userid_idx
ON public.loan USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX loan_accountNumber_idx
ON public.loan USING btree
(accountNumber COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--loanschedule
CREATE INDEX loanschedule_id_idx
ON public.loanschedule USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER loanschedule_id_idx ON public.loanschedule
	
CREATE INDEX loanschedule_loanid_idx
ON public.loanschedule USING btree
(loanid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--loanaccural
CREATE INDEX loanaccural_id_idx
ON public.loanaccural USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER loanaccural_id_idx ON public.loanaccural
	
CREATE INDEX loanaccural_loanid_idx
ON public.loanaccural USING btree
(loanid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--LoanBucket
CREATE INDEX loanBucket_id_idx
ON public.loanBucket USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER loanBucket_id_idx ON public.loanBucket
	
CREATE INDEX loanBucket_loanid_idx
ON public.loanBucket USING btree
(loanid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--AccuralRecord
CREATE INDEX accuralrecord_id_idx
ON public.loanBucket USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER accuralrecord_id_idx ON public.loanBucket

	
--CreditLimit
CREATE INDEX CreditLimit_id_idx
ON public.CreditLimit USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER CreditLimit_id_idx ON public.CreditLimit

	
CREATE INDEX CreditLimit_userid_idx
ON public.CreditLimit USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--ModuleTransaction
CREATE INDEX ModuleTransaction_id_idx
ON public.ModuleTransaction USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER ModuleTransaction_id_idx ON public.ModuleTransaction

	
CREATE INDEX ModuleTransaction_moduleId_idx
ON public.ModuleTransaction USING btree
(moduleId COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--creditLimitpending
CREATE INDEX creditLimitpending_id_idx
ON public.creditLimitpending USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER creditLimitpending_id_idx ON public.creditLimitpending

CREATE INDEX creditLimitpending_userid_idx
ON public.creditLimitpending USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--UserEnhanceKYC
CREATE INDEX UserEnhanceKYC_id_idx
ON public.UserEnhanceKYC USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER UserEnhanceKYC_id_idx ON public.UserEnhanceKYC

CREATE INDEX UserEnhanceKYC_userid_idx
ON public.UserEnhanceKYC USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX UserEnhanceKYC_username_idx
ON public.UserEnhanceKYC USING btree
(username COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER UserEnhanceKYC_username_idx ON public.UserEnhanceKYC

	
--userkycdetails
CREATE INDEX userkycdetails_id_idx
ON public.userkycdetails USING btree
(id COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER userkycdetails_id_idx ON public.userkycdetails

CREATE INDEX userkycdetails_userid_idx
ON public.userkycdetails USING btree
(userid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--wallettransactions
CREATE INDEX WalletTransaction_createdon_idx
ON public.wallettransactions
USING btree ((createdon::DATE));

CREATE INDEX WalletTransaction_otherwalletinstanceid_idx
ON public.wallettransactions USING btree
(otherwalletinstanceid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX WalletTransaction_wallet_wallettypeid_idx
ON public.wallettransactions USING btree
(wallettypeid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX WalletTransaction_executionid_idx
ON public.wallettransactions USING btree
(executionid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX WalletTransaction_walletinstanceid_idx
ON public.wallettransactions USING btree
(walletinstanceid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
CREATE INDEX WalletTransaction_businesstrxid_idx
ON public.wallettransactions USING btree
(businesstrxid COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
	
--CSHistoricalData.CSHistData
CREATE INDEX CSHistData_UserID_idx
ON 	"CSHistoricalData"."CSHistData" USING btree
( "UserID" COLLATE pg_catalog."default" ASC NULLS LAST)
TABLESPACE pg_default;
CLUSTER CSHistData_UserID_idx ON "CSHistoricalData"."CSHistData"

CREATE INDEX CSHistData_txnDate_idx
ON "CSHistoricalData"."CSHistData" USING btree
(("txnDate"::DATE));
	
	




	

	
	
	
	
	
	
	
	

	
	
	
	
	
	
		
-----Users
CREATE INDEX users_id_idx
    ON public.users USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER users_id_idx ON users

	CREATE INDEX users_mobilenumber_idx
    ON public.users USING btree
    (mobilenumber COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX users_username_idx
    ON public.users USING btree
    (username COLLATE pg_catalog."default" ASC NULLS LAST)
    WITH (FILLFACTOR=70)
    TABLESPACE pg_default;
	
	CREATE INDEX users_username_l_idx
    ON public.users USING btree
    (lower(username::text) COLLATE pg_catalog."default" ASC NULLS LAST)
    WITH (FILLFACTOR=70)
    TABLESPACE pg_default;
	
----Walletbalance

CREATE INDEX walletbalance_id_idx
    ON public.walletbalance USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER walletbalance_id_idx ON walletbalance
	
	CREATE INDEX walletbalance_ownerid_idx
    ON public.walletbalance USING btree
    (ownerid COLLATE pg_catalog."default" ASC NULLS LAST)
    WITH (FILLFACTOR=70)
    TABLESPACE pg_default;
	
	CREATE INDEX walletbalance_wallettypeid_idx
    ON public.walletbalance USING btree
    (wallettypeid COLLATE pg_catalog."default" ASC NULLS LAST)
    WITH (FILLFACTOR=70)
    TABLESPACE pg_default;
	
--SafaricomCustomerCreditScoreDetails
	
	CREATE INDEX SafaricomCustomerCreditScoreDetails_id_idx
    ON public.SafaricomCustomerCreditScoreDetails USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX SafaricomCustomerCreditScoreDetails_userid_idx
    ON public.SafaricomCustomerCreditScoreDetails USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER SafaricomCustomerCreditScoreDetails_userid_idx ON SafaricomCustomerCreditScoreDetails
	
---IPRSUserDetails
	
	CREATE INDEX IPRSUserDetails_id_idx
    ON public.IPRSUserDetails USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER IPRSUserDetails_id_idx ON public.IPRSUserDetails
	
	CREATE INDEX IPRSUserDetails_userid_idx
    ON public.IPRSUserDetails USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--CreditInfoDetail
	CREATE INDEX CreditInfoDetail_id_idx
    ON public.CreditInfoDetail USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER CreditInfoDetail_id_idx ON public.CreditInfoDetail
	
	CREATE INDEX CreditInfoDetail_userid_idx
    ON public.CreditInfoDetail USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
---UserKyc
	CREATE INDEX UserKyc_id_idx
    ON public.UserKyc USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER UserKyc_id_idx ON public.UserKyc
	
	CREATE INDEX UserKyc_userid_idx
    ON public.UserKyc USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--Insurance Subscription
	CREATE INDEX insurancesubscription_id_idx
    ON public.insurancesubscription USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER insurancesubscription_id_idx ON public.insurancesubscription

	CREATE INDEX insurancesubscription_userid_idx
    ON public.insurancesubscription USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX insurancesubscription_productid_idx
    ON public.insurancesubscription USING btree
    (productid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX insurancesubscription_mobileNumber_idx
    ON public.insurancesubscription USING btree
    (mobileNumber COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
---RDProductAssociation
	CREATE INDEX RDProductAssociation_id_idx
    ON public.RDProductAssociation USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER RDProductAssociation_id_idx ON public.RDProductAssociation

	CREATE INDEX RDProductAssociation_userid_idx
    ON public.RDProductAssociation USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX RDProductAssociation_rdaccountno_idx
    ON public.RDProductAssociation USING btree
    (rdaccountno COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--DepositAccural
	CREATE INDEX DepositAccural_id_idx
    ON public.DepositAccural USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER DepositAccural_id_idx ON public.DepositAccural

    CREATE INDEX DepositAccural_depositProductAssociationId_idx
    ON public.DepositAccural USING btree
    (depositProductAssociationId COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--loan 
	CREATE INDEX loan_id_idx
    ON public.loan USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER loan_id_idx ON public.loan
	
	CREATE INDEX loan_userid_idx
    ON public.loan USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX loan_accountNumber_idx
    ON public.loan USING btree
    (accountNumber COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--loanschedule
	CREATE INDEX loanschedule_id_idx
    ON public.loanschedule USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER loanschedule_id_idx ON public.loanschedule
	
	CREATE INDEX loanschedule_loanid_idx
    ON public.loanschedule USING btree
    (loanid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--loanaccural
	CREATE INDEX loanaccural_id_idx
    ON public.loanaccural USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER loanaccural_id_idx ON public.loanaccural
	
	CREATE INDEX loanaccural_loanid_idx
    ON public.loanaccural USING btree
    (loanid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--LoanBucket
	CREATE INDEX loanBucket_id_idx
    ON public.loanBucket USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER loanBucket_id_idx ON public.loanBucket
	
	CREATE INDEX loanBucket_loanid_idx
    ON public.loanBucket USING btree
    (loanid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--AccuralRecord
    CREATE INDEX accuralrecord_id_idx
    ON public.loanBucket USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER accuralrecord_id_idx ON public.loanBucket

	
--CreditLimit
	CREATE INDEX CreditLimit_id_idx
    ON public.CreditLimit USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER CreditLimit_id_idx ON public.CreditLimit

	
	CREATE INDEX CreditLimit_userid_idx
    ON public.CreditLimit USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--ModuleTransaction
	CREATE INDEX ModuleTransaction_id_idx
    ON public.ModuleTransaction USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER ModuleTransaction_id_idx ON public.ModuleTransaction

	
	CREATE INDEX ModuleTransaction_moduleId_idx
    ON public.ModuleTransaction USING btree
    (moduleId COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--creditLimitpending
	CREATE INDEX creditLimitpending_id_idx
    ON public.creditLimitpending USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER creditLimitpending_id_idx ON public.creditLimitpending

	CREATE INDEX creditLimitpending_userid_idx
    ON public.creditLimitpending USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--UserEnhanceKYC
	CREATE INDEX UserEnhanceKYC_id_idx
    ON public.UserEnhanceKYC USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER UserEnhanceKYC_id_idx ON public.UserEnhanceKYC

	CREATE INDEX UserEnhanceKYC_userid_idx
    ON public.UserEnhanceKYC USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX UserEnhanceKYC_username_idx
    ON public.UserEnhanceKYC USING btree
    (username COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER UserEnhanceKYC_username_idx ON public.UserEnhanceKYC

	
--userkycdetails
	CREATE INDEX userkycdetails_id_idx
    ON public.userkycdetails USING btree
    (id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER userkycdetails_id_idx ON public.userkycdetails

	CREATE INDEX userkycdetails_userid_idx
    ON public.userkycdetails USING btree
    (userid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--wallettransactions
	CREATE INDEX WalletTransaction_createdon_idx
	ON public.wallettransactions
	USING btree ((createdon::DATE));

	CREATE INDEX WalletTransaction_otherwalletinstanceid_idx
    ON public.wallettransactions USING btree
    (otherwalletinstanceid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
    CREATE INDEX WalletTransaction_wallet_wallettypeid_idx
    ON public.wallettransactions USING btree
    (wallettypeid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX WalletTransaction_executionid_idx
    ON public.wallettransactions USING btree
    (executionid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
    CREATE INDEX WalletTransaction_walletinstanceid_idx
    ON public.wallettransactions USING btree
    (walletinstanceid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	CREATE INDEX WalletTransaction_businesstrxid_idx
    ON public.wallettransactions USING btree
    (businesstrxid COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
--CSHistoricalData.CSHistData
	CREATE INDEX CSHistData_UserID_idx
    ON 	"CSHistoricalData"."CSHistData" USING btree
    ( "UserID" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	CLUSTER CSHistData_UserID_idx ON "CSHistoricalData"."CSHistData"

	CREATE INDEX CSHistData_txnDate_idx
    ON "CSHistoricalData"."CSHistData" USING btree
    (("txnDate"::DATE));
	
	




	

	
	
	
	
	
	
	
	

	
	
	
	
	
	
	