---shmprod---
---public schema---
---Empty---

---ssashma schema---
---Tables---
-- ssashma.batch_job_instance definition

-- Drop table

-- DROP TABLE ssashma.batch_job_instance;

CREATE TABLE ssashma.batch_job_instance (
	job_instance_id int8 NOT NULL,
	"version" int8 NULL,
	job_name varchar(100) NOT NULL,
	job_key varchar(2500) NULL,
	CONSTRAINT batch_job_instance_pkey PRIMARY KEY (job_instance_id)
);


-- ssashma.c_bankrouting_mst definition

-- Drop table

-- DROP TABLE ssashma.c_bankrouting_mst;

CREATE TABLE ssashma.c_bankrouting_mst (
	bankcode varchar(10) NOT NULL,
	bankname varchar(80) NULL,
	branchcode varchar(10) NOT NULL,
	branchname varchar(80) NOT NULL,
	business_id varchar(10) NOT NULL,
	bank_routing_code varchar(20) NULL,
	city_name varchar(80) NULL,
	CONSTRAINT c_bankrouting_mst_pkey PRIMARY KEY (bankcode, branchcode, business_id, branchname)
)
PARTITION BY LIST (business_id);


-- ssashma.c_biller_credit_mst definition

-- Drop table

-- DROP TABLE ssashma.c_biller_credit_mst;

CREATE TABLE ssashma.c_biller_credit_mst (
	business_id varchar(10) NOT NULL,
	biller_id varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	action_code varchar(4) NOT NULL,
	store_number int4 NOT NULL,
	modified_dtm timestamp NOT NULL,
	created_dtm timestamp NOT NULL,
	CONSTRAINT c_biller_credit_mst_pkey PRIMARY KEY (business_id, biller_id, system_id, action_code)
)
PARTITION BY LIST (business_id);


-- ssashma.c_biller_mst definition

-- Drop table

-- DROP TABLE ssashma.c_biller_mst;

CREATE TABLE ssashma.c_biller_mst (
	business_id varchar(10) NOT NULL,
	biller_id varchar(40) NOT NULL,
	biller_nm varchar(80) NULL,
	biller_category_id varchar(40) NULL,
	biller_category_nm varchar(80) NULL,
	presentment_flg bpchar(1) NULL,
	ref_no_text_1 varchar(80) NULL,
	ref_no_text_2 varchar(80) NULL,
	transaction_fee numeric(19, 3) NULL,
	bill_aggregator_id varchar(40) NULL,
	currency varchar(3) NULL,
	support_creditcard_flg bpchar(1) NULL,
	online_biller_flg bpchar(1) NULL,
	payee_ref_fields varchar(20) NULL,
	mobile_denomination varchar(200) NULL,
	service_type varchar(50) NULL,
	external_biller_id varchar(40) NULL,
	min_payment_amount float8 NULL,
	branch_code varchar(10) NULL,
	biller_account_number varchar(30) NULL,
	ref_no_key_1 varchar(40) NULL,
	ref_no_key_2 varchar(40) NULL,
	max_payment_amount float8 NULL,
	billholder_required varchar(1) NULL,
	payee_support varchar(1) NULL,
	biller_attributes varchar(600) NULL,
	ref_no_validation_1 varchar(120) NULL,
	ref_no_validation_2 varchar(120) NULL,
	atm_support varchar(1) NULL,
	status varchar(30) NULL,
	ref_no_validation_type_1 varchar(1) NULL,
	ref_no_validation_type_2 varchar(1) NULL,
	ref_no_message_key_1 varchar(40) NULL,
	ref_no_message_key_2 varchar(40) NULL,
	ref_no_hint_display_mode_1 varchar(1) NULL,
	ref_no_hint_display_mode_2 varchar(1) NULL,
	si_company varchar(50) NULL,
	si_service_type varchar(50) NULL,
	si_payment_mode varchar(80) NULL,
	bank_code varchar(20) NULL,
	ref_no_text_3 varchar(80) NULL,
	ref_no_key_3 varchar(40) NULL,
	ref_no_validation_3 varchar(120) NULL,
	ref_no_validation_type_3 varchar(1) NULL,
	ref_no_message_key_3 varchar(40) NULL,
	ref_no_hint_display_mode_3 varchar(1) NULL,
	biller_id_entry varchar(40) NULL,
	bill_amt_edit_flg bpchar(1) NULL,
	pilot_mode bpchar(1) NULL,
	bir_flg bpchar(1) NULL,
	shm_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT c_biller_mst_pkey PRIMARY KEY (business_id, biller_id)
)
PARTITION BY LIST (business_id);
CREATE INDEX c_biller_mst_idx ON ONLY ssashma.c_biller_mst USING btree (business_id, biller_id);
CREATE INDEX c_biller_mst_idx1 ON ONLY ssashma.c_biller_mst USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);


-- ssashma.c_biller_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_biller_mst_bkp2201;

CREATE TABLE ssashma.c_biller_mst_bkp2201 (
	business_id varchar(10) NOT NULL,
	biller_id varchar(40) NOT NULL,
	biller_nm varchar(80) NULL,
	biller_category_id varchar(40) NULL,
	biller_category_nm varchar(80) NULL,
	presentment_flg bpchar(1) NULL,
	ref_no_text_1 varchar(80) NULL,
	ref_no_text_2 varchar(80) NULL,
	transaction_fee numeric(19, 3) NULL,
	bill_aggregator_id varchar(40) NULL,
	currency varchar(3) NULL,
	support_creditcard_flg bpchar(1) NULL,
	online_biller_flg bpchar(1) NULL,
	payee_ref_fields varchar(20) NULL,
	mobile_denomination varchar(200) NULL,
	service_type varchar(50) NULL,
	external_biller_id varchar(40) NULL,
	min_payment_amount float8 NULL,
	branch_code varchar(10) NULL,
	biller_account_number varchar(30) NULL,
	ref_no_key_1 varchar(40) NULL,
	ref_no_key_2 varchar(40) NULL,
	max_payment_amount float8 NULL,
	billholder_required varchar(1) NULL,
	payee_support varchar(1) NULL,
	biller_attributes varchar(600) NULL,
	ref_no_validation_1 varchar(120) NULL,
	ref_no_validation_2 varchar(120) NULL,
	atm_support varchar(1) NULL,
	status varchar(30) NULL,
	ref_no_validation_type_1 varchar(1) NULL,
	ref_no_validation_type_2 varchar(1) NULL,
	ref_no_message_key_1 varchar(40) NULL,
	ref_no_message_key_2 varchar(40) NULL,
	ref_no_hint_display_mode_1 varchar(1) NULL,
	ref_no_hint_display_mode_2 varchar(1) NULL,
	si_company varchar(50) NULL,
	si_service_type varchar(50) NULL,
	si_payment_mode varchar(80) NULL,
	bank_code varchar(20) NULL,
	ref_no_text_3 varchar(80) NULL,
	ref_no_key_3 varchar(40) NULL,
	ref_no_validation_3 varchar(120) NULL,
	ref_no_validation_type_3 varchar(1) NULL,
	ref_no_message_key_3 varchar(40) NULL,
	ref_no_hint_display_mode_3 varchar(1) NULL,
	biller_id_entry varchar(40) NULL,
	bill_amt_edit_flg bpchar(1) NULL,
	pilot_mode bpchar(1) NULL,
	bir_flg bpchar(1) NULL,
	shm_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL
);


-- ssashma.c_biller_pilotuser_setup definition

-- Drop table

-- DROP TABLE ssashma.c_biller_pilotuser_setup;

CREATE TABLE ssashma.c_biller_pilotuser_setup (
	mobile_number varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	active_status bpchar(1) NULL,
	CONSTRAINT c_biller_pilotuser_setup_pkey PRIMARY KEY (mobile_number, business_id)
)
PARTITION BY LIST (business_id);


-- ssashma.c_business_mst definition

-- Drop table

-- DROP TABLE ssashma.c_business_mst;

CREATE TABLE ssashma.c_business_mst (
	business_id varchar(10) NOT NULL,
	"name" varchar(100) NULL,
	iso_country_cd varchar(3) NULL,
	default_lang_key varchar(5) NULL,
	lcy_cd varchar(3) NULL,
	date_fmt_key varchar(5) NULL,
	amount_fmt_key varchar(5) NULL,
	regional_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	timezone_offset float4 NULL,
	cardonly_flg bpchar(1) NULL DEFAULT 'N'::bpchar,
	rate_precision varchar(20) NULL,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL,
	case_retention_month varchar(10) NULL,
	campaign_retention_month varchar(10) NULL,
	wave_retention_period varchar(10) NULL,
	past_oppty_retention_period varchar(10) NULL,
	CONSTRAINT c_business_mst_pkey PRIMARY KEY (business_id)
)
PARTITION BY LIST (business_id);


-- ssashma.c_component_mst definition

-- Drop table

-- DROP TABLE ssashma.c_component_mst;

CREATE TABLE ssashma.c_component_mst (
	screen_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	component_key varchar(40) NOT NULL,
	rendered_flg bpchar(1) NULL,
	required_flg bpchar(1) NULL,
	has_help_text_flg bpchar(1) NULL,
	formatter_id int8 NULL,
	listvalue_group_id varchar(30) NULL,
	default_value varchar(20) NULL,
	disp_order int2 NULL,
	parent_component_key varchar(25) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	config_flg varchar(10) NULL,
	component_type varchar(8) NULL,
	readonly_flg bpchar(1) NULL,
	CONSTRAINT c_component_mst_pkey PRIMARY KEY (screen_id, system_id, business_id, component_key)
)
PARTITION BY LIST (business_id);


-- ssashma.c_component_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_component_mst_bkp2201;

CREATE TABLE ssashma.c_component_mst_bkp2201 (
	screen_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	component_key varchar(40) NOT NULL,
	rendered_flg bpchar(1) NULL,
	required_flg bpchar(1) NULL,
	has_help_text_flg bpchar(1) NULL,
	formatter_id int8 NULL,
	listvalue_group_id varchar(30) NULL,
	default_value varchar(20) NULL,
	disp_order int2 NULL,
	parent_component_key varchar(25) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	config_flg varchar(10) NULL,
	component_type varchar(8) NULL,
	readonly_flg bpchar(1) NULL
);


-- ssashma.c_component_res_mst definition

-- Drop table

-- DROP TABLE ssashma.c_component_res_mst;

CREATE TABLE ssashma.c_component_res_mst (
	language_id varchar(5) NOT NULL,
	label_value varchar(400) NULL,
	tool_tip varchar(200) NULL,
	help_text varchar(200) NULL,
	length int8 NULL,
	screen_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	component_key varchar(40) NOT NULL,
	CONSTRAINT c_component_res_mst_pkey PRIMARY KEY (screen_id, system_id, business_id, component_key, language_id)
)
PARTITION BY LIST (business_id);


-- ssashma.c_component_res_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_component_res_mst_bkp2201;

CREATE TABLE ssashma.c_component_res_mst_bkp2201 (
	language_id varchar(5) NOT NULL,
	label_value varchar(400) NULL,
	tool_tip varchar(200) NULL,
	help_text varchar(200) NULL,
	length int8 NULL,
	screen_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	component_key varchar(40) NOT NULL
);


-- ssashma.c_employer_bd_mst definition

-- Drop table

-- DROP TABLE ssashma.c_employer_bd_mst;

CREATE TABLE ssashma.c_employer_bd_mst (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	bd_code varchar(20) NOT NULL,
	bd_description varchar(100) NULL,
	product_cd varchar(500) NULL,
	pricing_code varchar(25) NULL,
	negotiation_rate numeric(20, 8) NULL,
	government_flg bpchar(1) NULL,
	loan_type varchar(30) NULL,
	moratorium varchar(30) NULL,
	CONSTRAINT c_employer_bd_mst_pkey PRIMARY KEY (business_id, employer_id, bd_code)
);


-- ssashma.c_employer_bd_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_employer_bd_mst_bkp2201;

CREATE TABLE ssashma.c_employer_bd_mst_bkp2201 (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	bd_code varchar(20) NOT NULL,
	bd_description varchar(100) NULL,
	product_cd varchar(500) NULL,
	pricing_code varchar(25) NULL,
	negotiation_rate numeric(20, 8) NULL,
	government_flg bpchar(1) NULL,
	loan_type varchar(30) NULL,
	moratorium varchar(30) NULL
);


-- ssashma.c_employer_mst definition

-- Drop table

-- DROP TABLE ssashma.c_employer_mst;

CREATE TABLE ssashma.c_employer_mst (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	employer_name varchar(150) NULL,
	industry varchar(30) NULL,
	category varchar(30) NULL,
	employer_type varchar(30) NULL,
	early_watchlist_flg bpchar(1) NULL,
	black_list_flg bpchar(1) NULL,
	suspense_acct varchar(30) NULL,
	salary_day varchar(30) NULL,
	first_pmt_pref_day varchar(30) NULL,
	dg_rating varchar(20) NULL,
	address_line_1 varchar(80) NULL,
	address_line_2 varchar(80) NULL,
	postal_code varchar(30) NULL,
	city varchar(30) NULL,
	district varchar(50) NULL,
	country varchar(30) NULL,
	telephone1_ctry_cd varchar(30) NULL,
	telephone1 varchar(50) NULL,
	telephone2_ctry_cd varchar(30) NULL,
	telephone2 varchar(50) NULL,
	fax_ctry_cd varchar(30) NULL,
	fax varchar(50) NULL,
	remarks varchar(100) NULL,
	additional_details1 varchar(100) NULL,
	additional_details2 varchar(100) NULL,
	additional_details3 varchar(100) NULL,
	additional_details4 varchar(100) NULL,
	additional_details5 varchar(100) NULL,
	additional_details6 varchar(100) NULL,
	additional_details7 varchar(100) NULL,
	additional_details8 varchar(100) NULL,
	additional_details9 varchar(100) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	corp_id varchar(50) NULL,
	relationship_number varchar(50) NULL,
	allowance_log varchar(200) NULL,
	employer_limit numeric NULL,
	emp_verification varchar(250) NULL,
	outstanding_limit numeric NULL,
	emp_mail_id varchar(500) NULL,
	digital_topup_enable_flg bpchar(1) NULL,
	CONSTRAINT c_employer_mst_pkey PRIMARY KEY (business_id, employer_id)
);


-- ssashma.c_employer_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_employer_mst_bkp2201;

CREATE TABLE ssashma.c_employer_mst_bkp2201 (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	employer_name varchar(150) NULL,
	industry varchar(30) NULL,
	category varchar(30) NULL,
	employer_type varchar(30) NULL,
	early_watchlist_flg bpchar(1) NULL,
	black_list_flg bpchar(1) NULL,
	suspense_acct varchar(30) NULL,
	salary_day varchar(30) NULL,
	first_pmt_pref_day varchar(30) NULL,
	dg_rating varchar(20) NULL,
	address_line_1 varchar(80) NULL,
	address_line_2 varchar(80) NULL,
	postal_code varchar(30) NULL,
	city varchar(30) NULL,
	district varchar(50) NULL,
	country varchar(30) NULL,
	telephone1_ctry_cd varchar(30) NULL,
	telephone1 varchar(50) NULL,
	telephone2_ctry_cd varchar(30) NULL,
	telephone2 varchar(50) NULL,
	fax_ctry_cd varchar(30) NULL,
	fax varchar(50) NULL,
	remarks varchar(100) NULL,
	additional_details1 varchar(100) NULL,
	additional_details2 varchar(100) NULL,
	additional_details3 varchar(100) NULL,
	additional_details4 varchar(100) NULL,
	additional_details5 varchar(100) NULL,
	additional_details6 varchar(100) NULL,
	additional_details7 varchar(100) NULL,
	additional_details8 varchar(100) NULL,
	additional_details9 varchar(100) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	corp_id varchar(50) NULL,
	relationship_number varchar(50) NULL,
	allowance_log varchar(200) NULL,
	employer_limit numeric NULL,
	emp_verification varchar(250) NULL,
	outstanding_limit numeric NULL,
	emp_mail_id varchar(500) NULL
);


-- ssashma.c_employer_scheme_mst definition

-- Drop table

-- DROP TABLE ssashma.c_employer_scheme_mst;

CREATE TABLE ssashma.c_employer_scheme_mst (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	scheme_code varchar(20) NOT NULL,
	scheme_description varchar(100) NULL,
	moratorium varchar(30) NULL,
	government_flg bpchar(1) NULL,
	negotiation_rate numeric(20, 8) NULL,
	product_cd varchar(500) NULL,
	casa_repayment_flg varchar(30) NULL,
	interest_rate numeric(20, 8) NULL,
	gl_applicable_flg bpchar(1) NULL,
	gl_account_no varchar(1000) NULL,
	pricing_code varchar(25) NULL,
	CONSTRAINT c_employer_scheme_mst_pkey PRIMARY KEY (business_id, employer_id, scheme_code)
);
CREATE INDEX c_employer_scheme_mst_idx ON ssashma.c_employer_scheme_mst USING btree (scheme_code);


-- ssashma.c_employer_scheme_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_employer_scheme_mst_bkp2201;

CREATE TABLE ssashma.c_employer_scheme_mst_bkp2201 (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	scheme_code varchar(20) NOT NULL,
	scheme_description varchar(100) NULL,
	moratorium varchar(30) NULL,
	government_flg bpchar(1) NULL,
	negotiation_rate numeric(20, 8) NULL,
	product_cd varchar(500) NULL,
	casa_repayment_flg varchar(30) NULL,
	interest_rate numeric(20, 8) NULL,
	gl_applicable_flg bpchar(1) NULL,
	gl_account_no varchar(1000) NULL,
	pricing_code varchar(25) NULL
);


-- ssashma.c_formatter_mst definition

-- Drop table

-- DROP TABLE ssashma.c_formatter_mst;

CREATE TABLE ssashma.c_formatter_mst (
	formatter_id int8 NOT NULL,
	formatter_string varchar(120) NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	maker_id varchar(16) NULL,
	checker_id varchar(16) NULL,
	status varchar(5) NULL,
	last_modified timestamp NULL,
	last_authorized timestamp NULL,
	"action" varchar(10) NULL,
	deleted_flag varchar(1) NULL,
	authorized_indicator varchar(1) NULL,
	message_key varchar(40) NULL,
	CONSTRAINT c_formatter_mst_pkey PRIMARY KEY (formatter_id, system_id, business_id)
)
PARTITION BY LIST (business_id);


-- ssashma.c_interest_rate_maint_mst definition

-- Drop table

-- DROP TABLE ssashma.c_interest_rate_maint_mst;

CREATE TABLE ssashma.c_interest_rate_maint_mst (
	business_id varchar(20) NOT NULL,
	rate_id varchar(20) NOT NULL,
	product_cd varchar(20) NULL,
	product_ccy varchar(5) NULL,
	account_type varchar(30) NULL,
	market_segment varchar(30) NULL,
	customer_type varchar(30) NULL,
	rate_type varchar(30) NULL,
	min_amount numeric(20, 3) NULL,
	max_amount numeric(20, 3) NULL,
	min_term int8 NULL,
	max_term int8 NULL,
	min_risk_score int8 NULL,
	max_risk_score int8 NULL,
	campaign_code varchar(50) NULL,
	interest_type varchar(30) NULL,
	base_rate numeric(20, 8) NULL,
	variable_rate numeric(20, 8) NULL,
	interest_rate numeric(20, 8) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	calc_ln_amt_rate_flag bpchar(1) NULL,
	CONSTRAINT c_interest_rate_maint_mst_pkey PRIMARY KEY (business_id, rate_id)
);


-- ssashma.c_interest_rate_maint_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_interest_rate_maint_mst_bkp2201;

CREATE TABLE ssashma.c_interest_rate_maint_mst_bkp2201 (
	business_id varchar(20) NOT NULL,
	rate_id varchar(20) NOT NULL,
	product_cd varchar(20) NULL,
	product_ccy varchar(5) NULL,
	account_type varchar(30) NULL,
	market_segment varchar(30) NULL,
	customer_type varchar(30) NULL,
	rate_type varchar(30) NULL,
	min_amount numeric(20, 3) NULL,
	max_amount numeric(20, 3) NULL,
	min_term int8 NULL,
	max_term int8 NULL,
	min_risk_score int8 NULL,
	max_risk_score int8 NULL,
	campaign_code varchar(50) NULL,
	interest_type varchar(30) NULL,
	base_rate numeric(20, 8) NULL,
	variable_rate numeric(20, 8) NULL,
	interest_rate numeric(20, 8) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	calc_ln_amt_rate_flag bpchar(1) NULL
);


-- ssashma.c_interest_rate_mst definition

-- Drop table

-- DROP TABLE ssashma.c_interest_rate_mst;

CREATE TABLE ssashma.c_interest_rate_mst (
	business_id varchar(20) NOT NULL,
	product_cd varchar(20) NOT NULL,
	effective_dtm timestamp NOT NULL,
	ccy varchar(5) NOT NULL,
	channel varchar(20) NOT NULL,
	customer_segment varchar(20) NOT NULL,
	tenure_month int8 NOT NULL,
	tenure_day int8 NOT NULL,
	amt_slab_from numeric(30, 3) NOT NULL,
	amt_slab_to numeric(30, 3) NOT NULL,
	interest_rate float8 NULL,
	interest_variance float4 NULL,
	penalty_rate float4 NULL,
	penalty_variance float4 NULL,
	tenure_type varchar(10) NULL,
	CONSTRAINT c_interest_rate_mst_pkey PRIMARY KEY (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to)
)
PARTITION BY LIST (business_id);


-- ssashma.c_interest_rate_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_interest_rate_mst_bkp2201;

CREATE TABLE ssashma.c_interest_rate_mst_bkp2201 (
	business_id varchar(20) NOT NULL,
	product_cd varchar(20) NOT NULL,
	effective_dtm timestamp NOT NULL,
	ccy varchar(5) NOT NULL,
	channel varchar(20) NOT NULL,
	customer_segment varchar(20) NOT NULL,
	tenure_month int8 NOT NULL,
	tenure_day int8 NOT NULL,
	amt_slab_from numeric(30, 3) NOT NULL,
	amt_slab_to numeric(30, 3) NOT NULL,
	interest_rate float8 NULL,
	interest_variance float4 NULL,
	penalty_rate float4 NULL,
	penalty_variance float4 NULL,
	tenure_type varchar(10) NULL
);


-- ssashma.c_listvalue_group_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_listvalue_group_mst_bkp2201;

CREATE TABLE ssashma.c_listvalue_group_mst_bkp2201 (
	group_id varchar(30) NOT NULL,
	description varchar(200) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	source_system_id varchar(10) NULL,
	editable_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssashma.c_listvalue_mst definition

-- Drop table

-- DROP TABLE ssashma.c_listvalue_mst;

CREATE TABLE ssashma.c_listvalue_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	filter_key_1 varchar(200) NULL,
	filter_key_2 varchar(200) NULL,
	default_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	editable_flg bpchar(1) NULL,
	CONSTRAINT c_listvalue_mst_pkey PRIMARY KEY (system_id, business_id, group_id, list_value_key)
)
PARTITION BY LIST (business_id);
CREATE INDEX c_listvalue_mst_idx ON ONLY ssashma.c_listvalue_mst USING btree (system_id, business_id, group_id, list_value_key);


-- ssashma.c_listvalue_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_listvalue_mst_bkp2201;

CREATE TABLE ssashma.c_listvalue_mst_bkp2201 (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	filter_key_1 varchar(200) NULL,
	filter_key_2 varchar(200) NULL,
	default_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	editable_flg bpchar(1) NULL
);


-- ssashma.c_listvalue_res_mst definition

-- Drop table

-- DROP TABLE ssashma.c_listvalue_res_mst;

CREATE TABLE ssashma.c_listvalue_res_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	language_id varchar(5) NOT NULL,
	value varchar(200) NULL,
	list_value_order int8 NULL,
	CONSTRAINT c_listvalue_res_mst_pkey PRIMARY KEY (system_id, business_id, group_id, list_value_key, language_id)
)
PARTITION BY LIST (business_id);


-- ssashma.c_listvalue_res_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_listvalue_res_mst_bkp2201;

CREATE TABLE ssashma.c_listvalue_res_mst_bkp2201 (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	language_id varchar(5) NOT NULL,
	value varchar(200) NULL,
	list_value_order int8 NULL
);


-- ssashma.c_loan_deduction_plan_mst definition

-- Drop table

-- DROP TABLE ssashma.c_loan_deduction_plan_mst;

CREATE TABLE ssashma.c_loan_deduction_plan_mst (
	business_id varchar(10) NULL,
	plan_code varchar(5) NULL,
	plan_srno varchar(5) NULL,
	deduction_type varchar(3) NULL,
	deduction_code varchar(5) NULL,
	no_of_installment int4 NULL,
	deduction_method varchar(3) NULL,
	deduction_mode varchar(3) NULL,
	plan_name varchar(42) NULL,
	rate_or_amount float8 NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(50) NULL
);


-- ssashma.c_loan_deduction_plan_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_loan_deduction_plan_mst_bkp2201;

CREATE TABLE ssashma.c_loan_deduction_plan_mst_bkp2201 (
	business_id varchar(10) NULL,
	plan_code varchar(5) NULL,
	plan_srno varchar(5) NULL,
	deduction_type varchar(3) NULL,
	deduction_code varchar(5) NULL,
	no_of_installment int4 NULL,
	deduction_method varchar(3) NULL,
	deduction_mode varchar(3) NULL,
	plan_name varchar(42) NULL,
	rate_or_amount float8 NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(50) NULL
);


-- ssashma.c_message_mst definition

-- Drop table

-- DROP TABLE ssashma.c_message_mst;

CREATE TABLE ssashma.c_message_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	category varchar(5) NULL,
	message_key varchar(40) NOT NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	source_system_id varchar(10) NULL,
	CONSTRAINT c_message_mst_pkey PRIMARY KEY (system_id, business_id, message_key)
)
PARTITION BY LIST (business_id);


-- ssashma.c_message_res_mst definition

-- Drop table

-- DROP TABLE ssashma.c_message_res_mst;

CREATE TABLE ssashma.c_message_res_mst (
	language_id varchar(5) NOT NULL,
	message_value varchar(500) NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	message_key varchar(40) NOT NULL,
	CONSTRAINT c_message_res_mst_pkey PRIMARY KEY (language_id, system_id, business_id, message_key)
)
PARTITION BY LIST (business_id);


-- ssashma.c_pricing_code_details_mst definition

-- Drop table

-- DROP TABLE ssashma.c_pricing_code_details_mst;

CREATE TABLE ssashma.c_pricing_code_details_mst (
	interest_rate_code varchar(20) NOT NULL,
	pricing_code varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	min_term varchar(20) NULL,
	max_term varchar(20) NULL,
	min_amt float8 NULL,
	max_amt float8 NULL,
	interest_rate float8 NULL,
	CONSTRAINT c_pricing_code_details_mst_pkey PRIMARY KEY (pricing_code, business_id, interest_rate_code)
);


-- ssashma.c_pricing_code_details_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_pricing_code_details_mst_bkp2201;

CREATE TABLE ssashma.c_pricing_code_details_mst_bkp2201 (
	interest_rate_code varchar(20) NOT NULL,
	pricing_code varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	min_term varchar(20) NULL,
	max_term varchar(20) NULL,
	min_amt float8 NULL,
	max_amt float8 NULL,
	interest_rate float8 NULL
);


-- ssashma.c_pricing_code_mst definition

-- Drop table

-- DROP TABLE ssashma.c_pricing_code_mst;

CREATE TABLE ssashma.c_pricing_code_mst (
	pricing_code varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	dsr float8 NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	pricing_description varchar(100) NULL,
	CONSTRAINT c_pricing_code_mst_pkey PRIMARY KEY (pricing_code, business_id)
);


-- ssashma.c_pricing_code_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_pricing_code_mst_bkp2201;

CREATE TABLE ssashma.c_pricing_code_mst_bkp2201 (
	pricing_code varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	dsr float8 NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	pricing_description varchar(100) NULL
);


-- ssashma.c_product_attributes_mst definition

-- Drop table

-- DROP TABLE ssashma.c_product_attributes_mst;

CREATE TABLE ssashma.c_product_attributes_mst (
	business_id varchar(10) NOT NULL,
	product_id varchar(20) NOT NULL,
	salary_check_flg bpchar(1) NULL,
	joint_app_flg bpchar(1) NULL,
	retail_corp_ind varchar(30) NULL,
	loan_type varchar(30) NULL,
	casa_required_flg bpchar(1) NULL,
	monthly_due_days varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	min_amount numeric(18, 3) NULL,
	min_amount_ccy varchar(3) NULL,
	max_amount numeric(18, 3) NULL,
	max_amount_ccy varchar(3) NULL,
	min_term int4 NULL,
	max_term int4 NULL,
	insurance_applicable_flg bpchar(1) NULL,
	CONSTRAINT c_product_attributes_mst_pkey PRIMARY KEY (business_id, product_id)
);


-- ssashma.c_product_attributes_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_product_attributes_mst_bkp2201;

CREATE TABLE ssashma.c_product_attributes_mst_bkp2201 (
	business_id varchar(10) NOT NULL,
	product_id varchar(20) NOT NULL,
	salary_check_flg bpchar(1) NULL,
	joint_app_flg bpchar(1) NULL,
	retail_corp_ind varchar(30) NULL,
	loan_type varchar(30) NULL,
	casa_required_flg bpchar(1) NULL,
	monthly_due_days varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	min_amount numeric(18, 3) NULL,
	min_amount_ccy varchar(3) NULL,
	max_amount numeric(18, 3) NULL,
	max_amount_ccy varchar(3) NULL,
	min_term int4 NULL,
	max_term int4 NULL,
	insurance_applicable_flg bpchar(1) NULL
);


-- ssashma.c_product_mst definition

-- Drop table

-- DROP TABLE ssashma.c_product_mst;

CREATE TABLE ssashma.c_product_mst (
	product_cd varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	product_desc varchar(100) NULL,
	product_group varchar(20) NULL,
	product_subgroup varchar(10) NULL,
	source_system_id varchar(10) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	currency_cd varchar(3) NOT NULL,
	tenure_typ varchar(30) NULL,
	min_amount numeric(19, 3) NULL,
	max_amount numeric(19, 3) NULL,
	esaver_ind varchar(1) NULL,
	internet_enabled varchar(1) NULL,
	int_payout_frq varchar(20) NULL,
	int_compd_frq varchar(20) NULL,
	support_cheque bpchar(1) NULL,
	atm_facility_ind varchar(5) NULL,
	category varchar(5) NULL,
	plan_cd varchar(20) NULL,
	min_term int4 NULL,
	max_term int4 NULL,
	secure_ind varchar(10) NULL,
	expiry_date timestamp NULL,
	CONSTRAINT c_product_mst_pkey PRIMARY KEY (product_cd, business_id, currency_cd)
)
PARTITION BY LIST (business_id);


-- ssashma.c_product_mst_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.c_product_mst_bkp2201;

CREATE TABLE ssashma.c_product_mst_bkp2201 (
	product_cd varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	product_desc varchar(100) NULL,
	product_group varchar(20) NULL,
	product_subgroup varchar(10) NULL,
	source_system_id varchar(10) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	currency_cd varchar(3) NOT NULL,
	tenure_typ varchar(30) NULL,
	min_amount numeric(19, 3) NULL,
	max_amount numeric(19, 3) NULL,
	esaver_ind varchar(1) NULL,
	internet_enabled varchar(1) NULL,
	int_payout_frq varchar(20) NULL,
	int_compd_frq varchar(20) NULL,
	support_cheque bpchar(1) NULL,
	atm_facility_ind varchar(5) NULL,
	category varchar(5) NULL,
	plan_cd varchar(20) NULL,
	min_term int4 NULL,
	max_term int4 NULL,
	secure_ind varchar(10) NULL,
	expiry_date timestamp NULL
);


-- ssashma.c_visa_good_bin_mst definition

-- Drop table

-- DROP TABLE ssashma.c_visa_good_bin_mst;

CREATE TABLE ssashma.c_visa_good_bin_mst (
	bin_type varchar(20) NOT NULL,
	bin_number varchar(30) NOT NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	CONSTRAINT c_visa_good_bin_numbers_pkey PRIMARY KEY (bin_type, bin_number)
);


-- ssashma.lead_bank_product definition

-- Drop table

-- DROP TABLE ssashma.lead_bank_product;

CREATE TABLE ssashma.lead_bank_product (
	prod_name varchar(80) NOT NULL,
	sub_prod_name varchar(80) NULL,
	business_id varchar(10) NOT NULL,
	prod_status bpchar(1) NULL,
	sequence_no int2 NOT NULL,
	lang_id varchar(5) NOT NULL,
	CONSTRAINT lead_bank_product_pkey PRIMARY KEY (business_id, sequence_no, lang_id)
)
PARTITION BY LIST (business_id);


-- ssashma.s_amolparam_mst definition

-- Drop table

-- DROP TABLE ssashma.s_amolparam_mst;

CREATE TABLE ssashma.s_amolparam_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	param_id varchar(75) NOT NULL,
	param_value varchar(200) NOT NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NOT NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	CONSTRAINT s_amolparam_mst_pkey PRIMARY KEY (business_id, system_id, param_id, activity_id)
);


-- ssashma.s_function_config definition

-- Drop table

-- DROP TABLE ssashma.s_function_config;

CREATE TABLE ssashma.s_function_config (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	txn_limit_typ varchar(20) NULL,
	feature_blkout_flg bpchar(1) NULL,
	adv_txt_flg bpchar(1) NULL,
	adv_img_top_flg bpchar(1) NULL,
	adv_img_rightnav_flg bpchar(1) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	CONSTRAINT s_function_config_pkey PRIMARY KEY (business_id, system_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssashma.s_function_config_bkp2201 definition

-- Drop table

-- DROP TABLE ssashma.s_function_config_bkp2201;

CREATE TABLE ssashma.s_function_config_bkp2201 (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	txn_limit_typ varchar(20) NULL,
	feature_blkout_flg bpchar(1) NULL,
	adv_txt_flg bpchar(1) NULL,
	adv_img_top_flg bpchar(1) NULL,
	adv_img_rightnav_flg bpchar(1) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL
);


-- ssashma.s_limit_cust_total definition

-- Drop table

-- DROP TABLE ssashma.s_limit_cust_total;

CREATE TABLE ssashma.s_limit_cust_total (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	cust_id varchar(40) NOT NULL,
	txn_dt timestamp NULL,
	daily_total_amt float8 NULL,
	txn_count int8 NULL,
	CONSTRAINT s_limit_cust_total_pkey PRIMARY KEY (business_id, system_id, txn_limit_typ, cust_id)
)
PARTITION BY LIST (business_id);


-- ssashma.s_ses_summary_hst definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst;

CREATE TABLE ssashma.s_ses_summary_hst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(20) NOT NULL,
	sess_id varchar(40) NOT NULL,
	txn_typ varchar(20) NOT NULL,
	txn_time timestamp NOT NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
)
PARTITION BY LIST (business_id);
CREATE INDEX s_ses_summary_hst_idx ON ONLY ssashma.s_ses_summary_hst USING btree (business_id, system_id, user_id, sess_id);
CREATE INDEX s_ses_summary_hst_idx2 ON ONLY ssashma.s_ses_summary_hst USING btree (business_id, system_id, status) WITH (fillfactor='70');


-- ssashma.s_ses_summary_hst_bkup25032022 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_bkup25032022;

CREATE TABLE ssashma.s_ses_summary_hst_bkup25032022 (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(20) NOT NULL,
	sess_id varchar(40) NOT NULL,
	txn_typ varchar(20) NOT NULL,
	txn_time timestamp NOT NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
)
PARTITION BY LIST (business_id);


-- ssashma.s_ses_summary_hst_p_ghbrb_bkp_20240524 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_p_ghbrb_bkp_20240524;

CREATE TABLE ssashma.s_ses_summary_hst_p_ghbrb_bkp_20240524 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_p_mzbrb_bkp_20240524 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_p_mzbrb_bkp_20240524;

CREATE TABLE ssashma.s_ses_summary_hst_p_mzbrb_bkp_20240524 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_bwbrb_bkp_20240405 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_bwbrb_bkp_20240405;

CREATE TABLE ssashma.s_ses_summary_hst_pp_bwbrb_bkp_20240405 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_kebrb_bkp_20240301 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_kebrb_bkp_20240301;

CREATE TABLE ssashma.s_ses_summary_hst_pp_kebrb_bkp_20240301 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_mzbrb_bkp_20240405 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_mzbrb_bkp_20240405;

CREATE TABLE ssashma.s_ses_summary_hst_pp_mzbrb_bkp_20240405 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_tzbrb_bkp_20240405 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_tzbrb_bkp_20240405;

CREATE TABLE ssashma.s_ses_summary_hst_pp_tzbrb_bkp_20240405 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_ugbrb_20240405 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_ugbrb_20240405;

CREATE TABLE ssashma.s_ses_summary_hst_pp_ugbrb_20240405 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_ses_summary_hst_pp_zmbrb_bkp_20240405 definition

-- Drop table

-- DROP TABLE ssashma.s_ses_summary_hst_pp_zmbrb_bkp_20240405;

CREATE TABLE ssashma.s_ses_summary_hst_pp_zmbrb_bkp_20240405 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	user_id varchar(20) NULL,
	sess_id varchar(40) NULL,
	txn_typ varchar(20) NULL,
	txn_time timestamp NULL,
	acct_from varchar(40) NULL,
	acct_to varchar(40) NULL,
	amount numeric(19, 3) NULL,
	status varchar(20) NULL,
	ref_no varchar(40) NULL,
	details varchar(1000) NULL
);


-- ssashma.s_sysparam_mst definition

-- Drop table

-- DROP TABLE ssashma.s_sysparam_mst;

CREATE TABLE ssashma.s_sysparam_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	param_id varchar(50) NOT NULL,
	param_value varchar(800) NOT NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NOT NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	CONSTRAINT s_sysparam_mst_pkey PRIMARY KEY (business_id, system_id, param_id, activity_id)
)
PARTITION BY LIST (business_id);
CREATE INDEX s_sysparam_mst_idx ON ONLY ssashma.s_sysparam_mst USING btree (system_id, business_id, param_id);


-- ssashma.s_txn_cut_off_mst definition

-- Drop table

-- DROP TABLE ssashma.s_txn_cut_off_mst;

CREATE TABLE ssashma.s_txn_cut_off_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	cut_off_time timestamp NULL,
	CONSTRAINT s_txn_cut_off_mst_pkey PRIMARY KEY (business_id, system_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssashma.s_url_business_map_mst definition

-- Drop table

-- DROP TABLE ssashma.s_url_business_map_mst;

CREATE TABLE ssashma.s_url_business_map_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	url_pattern varchar(400) NOT NULL,
	language_id varchar(18) NOT NULL,
	segment_id varchar(10) NULL,
	CONSTRAINT s_url_business_map_mst_pkey PRIMARY KEY (business_id, system_id, url_pattern)
)
PARTITION BY LIST (business_id);


-- ssashma.batch_job_execution definition

-- Drop table

-- DROP TABLE ssashma.batch_job_execution;

CREATE TABLE ssashma.batch_job_execution (
	job_execution_id int8 NOT NULL,
	"version" int8 NULL,
	job_instance_id int8 NOT NULL,
	create_time timestamp NOT NULL,
	start_time timestamp NULL,
	end_time timestamp NULL,
	status varchar(10) NULL,
	exit_code varchar(20) NULL,
	exit_message varchar(2500) NULL,
	last_updated timestamp NULL,
	job_configuration_location varchar(2500) NULL,
	CONSTRAINT batch_job_execution_pkey PRIMARY KEY (job_execution_id),
	CONSTRAINT job_instance_execution_fk FOREIGN KEY (job_instance_id) REFERENCES ssashma.batch_job_instance(job_instance_id)
);


-- ssashma.batch_job_execution_context definition

-- Drop table

-- DROP TABLE ssashma.batch_job_execution_context;

CREATE TABLE ssashma.batch_job_execution_context (
	job_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id),
	CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES ssashma.batch_job_execution(job_execution_id)
);


-- ssashma.batch_job_execution_params definition

-- Drop table

-- DROP TABLE ssashma.batch_job_execution_params;

CREATE TABLE ssashma.batch_job_execution_params (
	job_execution_id int8 NOT NULL,
	type_cd varchar(6) NOT NULL,
	key_name varchar(100) NOT NULL,
	string_val varchar(250) NULL,
	date_val timestamp NULL,
	long_val int8 NULL,
	double_val float8 NULL,
	identifying bpchar(1) NOT NULL,
	CONSTRAINT job_exec_params_fk FOREIGN KEY (job_execution_id) REFERENCES ssashma.batch_job_execution(job_execution_id)
);


-- ssashma.batch_step_execution definition

-- Drop table

-- DROP TABLE ssashma.batch_step_execution;

CREATE TABLE ssashma.batch_step_execution (
	step_execution_id int8 NOT NULL,
	"version" int8 NOT NULL,
	step_name varchar(100) NOT NULL,
	job_execution_id int8 NOT NULL,
	start_time timestamp NOT NULL,
	end_time timestamp NULL,
	status varchar(10) NULL,
	commit_count int8 NULL,
	read_count int8 NULL,
	filter_count int8 NULL,
	write_count int8 NULL,
	read_skip_count int8 NULL,
	write_skip_count int8 NULL,
	process_skip_count int8 NULL,
	rollback_count int8 NULL,
	exit_code varchar(20) NULL,
	exit_message varchar(2500) NULL,
	last_updated timestamp NULL,
	CONSTRAINT batch_step_execution_pkey PRIMARY KEY (step_execution_id),
	CONSTRAINT job_execution_step_fk FOREIGN KEY (job_execution_id) REFERENCES ssashma.batch_job_execution(job_execution_id)
);


-- ssashma.batch_step_execution_context definition

-- Drop table

-- DROP TABLE ssashma.batch_step_execution_context;

CREATE TABLE ssashma.batch_step_execution_context (
	step_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_step_execution_context_pkey PRIMARY KEY (step_execution_id),
	CONSTRAINT step_exec_ctx_fk FOREIGN KEY (step_execution_id) REFERENCES ssashma.batch_step_execution(step_execution_id)
);

---indexes---
CREATE UNIQUE INDEX s_limit_cust_total_pkey ON ONLY ssashma.s_limit_cust_total USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_employer_mst_pkey ON ssashma.c_employer_mst USING btree (business_id, employer_id);

CREATE UNIQUE INDEX c_component_mst_p_kebrb_pkey ON ssashma.c_component_mst_p_kebrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_formatter_mst_p_kebrb_pkey ON ssashma.c_formatter_mst_p_kebrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_message_mst_p_mzbrb_pkey ON ssashma.c_message_mst_p_mzbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_ugbrb_pkey ON ssashma.c_product_mst_p_ugbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_biller_credit_mst_p_ghbrb_pkey ON ssashma.c_biller_credit_mst_p_ghbrb USING btree (business_id, biller_id, system_id, action_code);

CREATE UNIQUE INDEX s_url_business_map_mst_p_bwbrb_pkey ON ssashma.s_url_business_map_mst_p_bwbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_biller_credit_mst_p_tzbrb_pkey ON ssashma.c_biller_credit_mst_p_tzbrb USING btree (business_id, biller_id, system_id, action_code);

CREATE UNIQUE INDEX c_pricing_code_mst_pkey ON ssashma.c_pricing_code_mst USING btree (pricing_code, business_id);

CREATE UNIQUE INDEX c_message_mst_p_tzbrb_pkey ON ssashma.c_message_mst_p_tzbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_bwbrb_pkey ON ssashma.c_product_mst_p_bwbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_url_business_map_mst_p_zmbrb_pkey ON ssashma.s_url_business_map_mst_p_zmbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_formatter_mst_p_tznbc_pkey ON ssashma.c_formatter_mst_p_tznbc USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_function_config_p_bwbrb_pkey ON ssashma.s_function_config_p_bwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX lead_bank_product_p_ghbrb_pkey ON ssashma.lead_bank_product_p_ghbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX c_formatter_mst_p_ghbrb_pkey ON ssashma.c_formatter_mst_p_ghbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_tznbc_pkey ON ssashma.s_limit_cust_total_p_tznbc USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_zwbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_zwbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_zwbrb_pkey ON ssashma.c_bankrouting_mst_p_zwbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX s_txn_cut_off_mst_pkey ON ONLY ssashma.s_txn_cut_off_mst USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_component_mst_p_ugbrb_pkey ON ssashma.c_component_mst_p_ugbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_interest_rate_mst_p_tznbc_pkey ON ssashma.c_interest_rate_mst_p_tznbc USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX lead_bank_product_p_kebrb_pkey ON ssashma.lead_bank_product_p_kebrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX batch_job_execution_pkey ON ssashma.batch_job_execution USING btree (job_execution_id);

CREATE UNIQUE INDEX s_function_config_p_ugbrb_pkey ON ssashma.s_function_config_p_ugbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_mzbrb_pkey ON ssashma.c_bankrouting_mst_p_mzbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_component_res_mst_pkey ON ONLY ssashma.c_component_res_mst USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_interest_rate_maint_mst_pkey ON ssashma.c_interest_rate_maint_mst USING btree (business_id, rate_id);

CREATE UNIQUE INDEX lead_bank_product_p_tzbrb_pkey ON ssashma.lead_bank_product_p_tzbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_zwbrb_pkey ON ssashma.s_limit_cust_total_p_zwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_zwbrb_pkey ON ssashma.s_sysparam_mst_p_zwbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_zwbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_zwbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX s_amolparam_mst_pkey ON ssashma.s_amolparam_mst USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_business_mst_p_zmbrb_pkey ON ssashma.c_business_mst_p_zmbrb USING btree (business_id);

CREATE UNIQUE INDEX s_url_business_map_mst_pkey ON ONLY ssashma.s_url_business_map_mst USING btree (business_id, system_id, url_pattern);

CREATE INDEX c_biller_mst_p_ghbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_ghbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_ghbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_ghbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_ghbrb_pkey ON ssashma.c_biller_mst_p_ghbrb USING btree (business_id, biller_id);

CREATE INDEX c_biller_mst_p_zwbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_zwbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_zwbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_zwbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_zwbrb_pkey ON ssashma.c_biller_mst_p_zwbrb USING btree (business_id, biller_id);

CREATE INDEX c_biller_mst_p_ugbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_ugbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_ugbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_ugbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_ugbrb_pkey ON ssashma.c_biller_mst_p_ugbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_component_mst_p_bwbrb_pkey ON ssashma.c_component_mst_p_bwbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_tzbrb_pkey ON ssashma.s_txn_cut_off_mst_p_tzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_bwbrb_pkey ON ssashma.c_listvalue_mst_p_bwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_bwbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_bwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_visa_good_bin_numbers_pkey ON ssashma.c_visa_good_bin_mst USING btree (bin_type, bin_number);

CREATE UNIQUE INDEX c_listvalue_mst_p_tznbc_pkey ON ssashma.c_listvalue_mst_p_tznbc USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_tznbc_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_tznbc USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_product_mst_p_zmbrb_pkey ON ssashma.c_product_mst_p_zmbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_component_res_mst_p_tzbrb_pkey ON ssashma.c_component_res_mst_p_tzbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_zmbrb_pkey ON ssashma.c_interest_rate_mst_p_zmbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_interest_rate_mst_p_zwbrb_pkey ON ssashma.c_interest_rate_mst_p_zwbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX batch_step_execution_context_pkey ON ssashma.batch_step_execution_context USING btree (step_execution_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_tzbrb_pkey ON ssashma.s_url_business_map_mst_p_tzbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_formatter_mst_pkey ON ONLY ssashma.c_formatter_mst USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_message_mst_p_kebrb_pkey ON ssashma.c_message_mst_p_kebrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_tzbrb_pkey ON ssashma.c_product_mst_p_tzbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_component_mst_p_mzbrb_pkey ON ssashma.c_component_mst_p_mzbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE INDEX s_ses_summary_hst_pp_ghbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_ghbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_ghbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_ghbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE INDEX s_ses_summary_hst_pp_kebrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_kebrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_kebrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_kebrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX c_message_mst_p_ghbrb_pkey ON ssashma.c_message_mst_p_ghbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_pricing_code_details_mst_pkey ON ssashma.c_pricing_code_details_mst USING btree (pricing_code, business_id, interest_rate_code);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_bwbrb_pkey ON ssashma.s_txn_cut_off_mst_p_bwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_zwbrb_pkey ON ssashma.s_url_business_map_mst_p_zwbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_component_res_mst_p_ugbrb_pkey ON ssashma.c_component_res_mst_p_ugbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX lead_bank_product_p_zwbrb_pkey ON ssashma.lead_bank_product_p_zwbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX s_function_config_pkey ON ONLY ssashma.s_function_config USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_ghbrb_pkey ON ssashma.c_listvalue_mst_p_ghbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_ghbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_ghbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_biller_credit_mst_p_kebrb_pkey ON ssashma.c_biller_credit_mst_p_kebrb USING btree (business_id, biller_id, system_id, action_code);

CREATE INDEX c_biller_mst_p_tzbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_tzbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_tzbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_tzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_tzbrb_pkey ON ssashma.c_biller_mst_p_tzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_kebrb_pkey ON ssashma.c_bankrouting_mst_p_kebrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX lead_bank_product_p_ugbrb_pkey ON ssashma.lead_bank_product_p_ugbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_zwbrb_pkey ON ssashma.c_listvalue_res_mst_p_zwbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_component_mst_pkey ON ONLY ssashma.c_component_mst USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_listvalue_mst_p_kebrb_pkey ON ssashma.c_listvalue_mst_p_kebrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_kebrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_kebrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX lead_bank_product_p_bwbrb_pkey ON ssashma.lead_bank_product_p_bwbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX s_function_config_p_zmbrb_pkey ON ssashma.s_function_config_p_zmbrb USING btree (business_id, system_id, activity_id);

CREATE INDEX s_ses_summary_hst_pp_ugbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_ugbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_ugbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_ugbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_zwbrb_pkey ON ssashma.c_listvalue_mst_p_zwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_zwbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_zwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_message_res_mst_p_mzbrb_pkey ON ssashma.c_message_res_mst_p_mzbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_biller_credit_mst_p_mzbrb_pkey ON ssashma.c_biller_credit_mst_p_mzbrb USING btree (business_id, biller_id, system_id, action_code);

CREATE UNIQUE INDEX s_url_business_map_mst_p_ugbrb_pkey ON ssashma.s_url_business_map_mst_p_ugbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_component_res_mst_p_kebrb_pkey ON ssashma.c_component_res_mst_p_kebrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_formatter_mst_p_ugbrb_pkey ON ssashma.c_formatter_mst_p_ugbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_tznbc_pkey ON ssashma.c_bankrouting_mst_p_tznbc USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_component_mst_p_tzbrb_pkey ON ssashma.c_component_mst_p_tzbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_sysparam_mst_p_ugbrb_pkey ON ssashma.s_sysparam_mst_p_ugbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_ugbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_ugbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_message_res_mst_p_kebrb_pkey ON ssashma.c_message_res_mst_p_kebrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_url_business_map_mst_p_kebrb_pkey ON ssashma.s_url_business_map_mst_p_kebrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_component_mst_p_zwbrb_pkey ON ssashma.c_component_mst_p_zwbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_bankrouting_mst_p_ugbrb_pkey ON ssashma.c_bankrouting_mst_p_ugbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_bankrouting_mst_p_zmbrb_pkey ON ssashma.c_bankrouting_mst_p_zmbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_message_res_mst_p_ugbrb_pkey ON ssashma.c_message_res_mst_p_ugbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_kebrb_pkey ON ssashma.c_product_mst_p_kebrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_tznbc_pkey ON ssashma.c_biller_pilotuser_setup_p_tznbc USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_pkey ON ONLY ssashma.c_biller_pilotuser_setup USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_message_res_mst_p_tznbc_pkey ON ssashma.c_message_res_mst_p_tznbc USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_listvalue_mst_p_ugbrb_pkey ON ssashma.c_listvalue_mst_p_ugbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_ugbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_ugbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_business_mst_p_tzbrb_pkey ON ssashma.c_business_mst_p_tzbrb USING btree (business_id);

CREATE UNIQUE INDEX c_message_mst_p_zmbrb_pkey ON ssashma.c_message_mst_p_zmbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_component_mst_p_tznbc_pkey ON ssashma.c_component_mst_p_tznbc USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_kebrb_pkey ON ssashma.c_listvalue_res_mst_p_kebrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_message_res_mst_p_ghbrb_pkey ON ssashma.c_message_res_mst_p_ghbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_limit_cust_total_p_tzbrb_pkey ON ssashma.s_limit_cust_total_p_tzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_credit_mst_p_ugbrb_pkey ON ssashma.c_biller_credit_mst_p_ugbrb USING btree (business_id, biller_id, system_id, action_code);

CREATE UNIQUE INDEX c_message_mst_p_ugbrb_pkey ON ssashma.c_message_mst_p_ugbrb USING btree (system_id, business_id, message_key);

CREATE INDEX c_biller_mst_p_mzbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_mzbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_mzbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_mzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_mzbrb_pkey ON ssashma.c_biller_mst_p_mzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_bwbrb_pkey ON ssashma.c_interest_rate_mst_p_bwbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE INDEX c_biller_mst_p_bwbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_bwbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_bwbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_bwbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_bwbrb_pkey ON ssashma.c_biller_mst_p_bwbrb USING btree (business_id, biller_id);

CREATE INDEX c_biller_mst_idx ON ONLY ssashma.c_biller_mst USING btree (business_id, biller_id);

CREATE INDEX c_biller_mst_idx1 ON ONLY ssashma.c_biller_mst USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE UNIQUE INDEX c_biller_mst_pkey ON ONLY ssashma.c_biller_mst USING btree (business_id, biller_id);

CREATE UNIQUE INDEX lead_bank_product_p_mzbrb_pkey ON ssashma.lead_bank_product_p_mzbrb USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX c_message_mst_pkey ON ONLY ssashma.c_message_mst USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_formatter_mst_p_zwbrb_pkey ON ssashma.c_formatter_mst_p_zwbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_ghbrb_pkey ON ssashma.c_listvalue_res_mst_p_ghbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE INDEX c_biller_mst_p_kebrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_kebrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_kebrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_kebrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_kebrb_pkey ON ssashma.c_biller_mst_p_kebrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_employer_bd_mst_pkey ON ssashma.c_employer_bd_mst USING btree (business_id, employer_id, bd_code);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_tznbc_pkey ON ssashma.s_txn_cut_off_mst_p_tznbc USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_zmbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_zmbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_message_res_mst_p_tzbrb_pkey ON ssashma.c_message_res_mst_p_tzbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_business_mst_p_kebrb_pkey ON ssashma.c_business_mst_p_kebrb USING btree (business_id);

CREATE UNIQUE INDEX c_message_res_mst_pkey ON ONLY ssashma.c_message_res_mst USING btree (language_id, system_id, business_id, message_key);

CREATE INDEX c_biller_mst_p_zmbrb_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_zmbrb USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_zmbrb_business_id_biller_id_idx ON ssashma.c_biller_mst_p_zmbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_zmbrb_pkey ON ssashma.c_biller_mst_p_zmbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_formatter_mst_p_zmbrb_pkey ON ssashma.c_formatter_mst_p_zmbrb USING btree (formatter_id, system_id, business_id);

CREATE INDEX s_ses_summary_hst_pp_zmbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_zmbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_zmbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_zmbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_tznbc_pkey ON ssashma.s_url_business_map_mst_p_tznbc USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_product_mst_p_ghbrb_pkey ON ssashma.c_product_mst_p_ghbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_sysparam_mst_p_ghbrb_pkey ON ssashma.s_sysparam_mst_p_ghbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_ghbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_ghbrb USING btree (system_id, business_id, param_id);

CREATE INDEX s_ses_summary_hst_pp_zwbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_zwbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_zwbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_zwbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_tznbc_pkey ON ssashma.s_sysparam_mst_p_tznbc USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_tznbc_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_tznbc USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_kebrb_pkey ON ssashma.c_interest_rate_mst_p_kebrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_bwbrb_pkey ON ssashma.c_listvalue_res_mst_p_bwbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_tzbrb_pkey ON ssashma.s_sysparam_mst_p_tzbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_tzbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_tzbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_business_mst_p_ghbrb_pkey ON ssashma.c_business_mst_p_ghbrb USING btree (business_id);

CREATE UNIQUE INDEX lead_bank_product_p_zmbrb_pkey ON ssashma.lead_bank_product_p_zmbrb USING btree (business_id, sequence_no, lang_id);

CREATE INDEX c_biller_mst_p_tznbc_business_id_biller_category_id_status__idx ON ssashma.c_biller_mst_p_tznbc USING btree (business_id, biller_category_id, status, shm_flg, presentment_flg, pilot_mode);

CREATE INDEX c_biller_mst_p_tznbc_business_id_biller_id_idx ON ssashma.c_biller_mst_p_tznbc USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_mst_p_tznbc_pkey ON ssashma.c_biller_mst_p_tznbc USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_message_mst_p_zwbrb_pkey ON ssashma.c_message_mst_p_zwbrb USING btree (system_id, business_id, message_key);

CREATE INDEX s_ses_summary_hst_pp_mzbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_mzbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_mzbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_mzbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX s_function_config_p_zwbrb_pkey ON ssashma.s_function_config_p_zwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX batch_job_instance_pkey ON ssashma.batch_job_instance USING btree (job_instance_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_zwbrb_pkey ON ssashma.s_txn_cut_off_mst_p_zwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_ghbrb_pkey ON ssashma.s_url_business_map_mst_p_ghbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_ugbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_ugbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_pkey ON ONLY ssashma.c_bankrouting_mst USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_ghbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_ghbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_component_mst_p_zmbrb_pkey ON ssashma.c_component_mst_p_zmbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_component_res_mst_p_zmbrb_pkey ON ssashma.c_component_res_mst_p_zmbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_ghbrb_pkey ON ssashma.c_bankrouting_mst_p_ghbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX s_limit_cust_total_p_kebrb_pkey ON ssashma.s_limit_cust_total_p_kebrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_function_config_p_mzbrb_pkey ON ssashma.s_function_config_p_mzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_tzbrb_pkey ON ssashma.c_interest_rate_mst_p_tzbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_function_config_p_ghbrb_pkey ON ssashma.s_function_config_p_ghbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_zmbrb_pkey ON ssashma.s_sysparam_mst_p_zmbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_zmbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_zmbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_component_res_mst_p_mzbrb_pkey ON ssashma.c_component_res_mst_p_mzbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_ugbrb_pkey ON ssashma.s_txn_cut_off_mst_p_ugbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_business_mst_p_tznbc_pkey ON ssashma.c_business_mst_p_tznbc USING btree (business_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_tznbc_pkey ON ssashma.c_listvalue_res_mst_p_tznbc USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_product_mst_p_zwbrb_pkey ON ssashma.c_product_mst_p_zwbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_zmbrb_pkey ON ssashma.s_txn_cut_off_mst_p_zmbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_ugbrb_pkey ON ssashma.c_interest_rate_mst_p_ugbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_business_mst_pkey ON ONLY ssashma.c_business_mst USING btree (business_id);

CREATE INDEX s_sysparam_mst_idx ON ONLY ssashma.s_sysparam_mst USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX s_sysparam_mst_pkey ON ONLY ssashma.s_sysparam_mst USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_biller_credit_mst_pkey ON ONLY ssashma.c_biller_credit_mst USING btree (business_id, biller_id, system_id, action_code);

CREATE UNIQUE INDEX lead_bank_product_p_tznbc_pkey ON ssashma.lead_bank_product_p_tznbc USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX c_component_mst_p_ghbrb_pkey ON ssashma.c_component_mst_p_ghbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_message_mst_p_tznbc_pkey ON ssashma.c_message_mst_p_tznbc USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_tznbc_pkey ON ssashma.c_product_mst_p_tznbc USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_mzbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_mzbrb USING btree (mobile_number, business_id);

CREATE INDEX c_listvalue_mst_idx ON ONLY ssashma.c_listvalue_mst USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_listvalue_mst_pkey ON ONLY ssashma.c_listvalue_mst USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_message_mst_p_bwbrb_pkey ON ssashma.c_message_mst_p_bwbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_product_mst_p_mzbrb_pkey ON ssashma.c_product_mst_p_mzbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_bwbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_bwbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_interest_rate_mst_pkey ON ONLY ssashma.c_interest_rate_mst USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_ugbrb_pkey ON ssashma.c_listvalue_res_mst_p_ugbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_business_mst_p_ugbrb_pkey ON ssashma.c_business_mst_p_ugbrb USING btree (business_id);

CREATE UNIQUE INDEX c_product_attributes_mst_pkey ON ssashma.c_product_attributes_mst USING btree (business_id, product_id);

CREATE INDEX s_ses_summary_hst_pp_tzbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_tzbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_tzbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_tzbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX c_message_res_mst_p_zwbrb_pkey ON ssashma.c_message_res_mst_p_zwbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_sysparam_mst_p_bwbrb_pkey ON ssashma.s_sysparam_mst_p_bwbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_bwbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_bwbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_component_res_mst_p_bwbrb_pkey ON ssashma.c_component_res_mst_p_bwbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_message_res_mst_p_bwbrb_pkey ON ssashma.c_message_res_mst_p_bwbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_limit_cust_total_p_ugbrb_pkey ON ssashma.s_limit_cust_total_p_ugbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_formatter_mst_p_bwbrb_pkey ON ssashma.c_formatter_mst_p_bwbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX lead_bank_product_pkey ON ONLY ssashma.lead_bank_product USING btree (business_id, sequence_no, lang_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_zmbrb_pkey ON ssashma.c_listvalue_res_mst_p_zmbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_zmbrb_pkey ON ssashma.s_limit_cust_total_p_zmbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_function_config_p_kebrb_pkey ON ssashma.s_function_config_p_kebrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_ghbrb_pkey ON ssashma.c_interest_rate_mst_p_ghbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_product_mst_pkey ON ONLY ssashma.c_product_mst USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_function_config_p_tzbrb_pkey ON ssashma.s_function_config_p_tzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_business_mst_p_zwbrb_pkey ON ssashma.c_business_mst_p_zwbrb USING btree (business_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_mzbrb_pkey ON ssashma.s_limit_cust_total_p_mzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_mzbrb_pkey ON ssashma.c_interest_rate_mst_p_mzbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_component_res_mst_p_tznbc_pkey ON ssashma.c_component_res_mst_p_tznbc USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_mzbrb_pkey ON ssashma.c_listvalue_res_mst_p_mzbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_business_mst_p_mzbrb_pkey ON ssashma.c_business_mst_p_mzbrb USING btree (business_id);

CREATE UNIQUE INDEX c_formatter_mst_p_tzbrb_pkey ON ssashma.c_formatter_mst_p_tzbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_tzbrb_pkey ON ssashma.c_listvalue_mst_p_tzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_tzbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_tzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_ghbrb_pkey ON ssashma.s_txn_cut_off_mst_p_ghbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_tzbrb_pkey ON ssashma.c_biller_pilotuser_setup_p_tzbrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_ghbrb_pkey ON ssashma.s_limit_cust_total_p_ghbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE INDEX s_ses_summary_hst_idx ON ONLY ssashma.s_ses_summary_hst USING btree (business_id, system_id, user_id, sess_id);

CREATE INDEX s_ses_summary_hst_idx2 ON ONLY ssashma.s_ses_summary_hst USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE UNIQUE INDEX c_listvalue_res_mst_pkey ON ONLY ssashma.c_listvalue_res_mst USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_component_res_mst_p_zwbrb_pkey ON ssashma.c_component_res_mst_p_zwbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX batch_step_execution_pkey ON ssashma.batch_step_execution USING btree (step_execution_id);

CREATE UNIQUE INDEX c_business_mst_p_bwbrb_pkey ON ssashma.c_business_mst_p_bwbrb USING btree (business_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_kebrb_pkey ON ssashma.s_sysparam_mst_p_kebrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_kebrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_kebrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_tzbrb_pkey ON ssashma.c_listvalue_res_mst_p_tzbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_p_kebrb_pkey ON ssashma.c_biller_pilotuser_setup_p_kebrb USING btree (mobile_number, business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_bwbrb_pkey ON ssashma.c_bankrouting_mst_p_bwbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX s_function_config_p_tznbc_pkey ON ssashma.s_function_config_p_tznbc USING btree (business_id, system_id, activity_id);

CREATE INDEX c_employer_scheme_mst_idx ON ssashma.c_employer_scheme_mst USING btree (scheme_code);

CREATE UNIQUE INDEX c_employer_scheme_mst_pkey ON ssashma.c_employer_scheme_mst USING btree (business_id, employer_id, scheme_code);

CREATE INDEX s_ses_summary_hst_pp_tznbc_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_tznbc USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_tznbc_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_tznbc USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX batch_job_execution_context_pkey ON ssashma.batch_job_execution_context USING btree (job_execution_id);

CREATE UNIQUE INDEX c_component_res_mst_p_ghbrb_pkey ON ssashma.c_component_res_mst_p_ghbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_message_res_mst_p_zmbrb_pkey ON ssashma.c_message_res_mst_p_zmbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_kebrb_pkey ON ssashma.s_txn_cut_off_mst_p_kebrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_mzbrb_pkey ON ssashma.s_sysparam_mst_p_mzbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_sysparam_mst_p_mzbrb_system_id_business_id_param_id_idx ON ssashma.s_sysparam_mst_p_mzbrb USING btree (system_id, business_id, param_id);

CREATE UNIQUE INDEX c_biller_credit_mst_p_zmbrb_pkey ON ssashma.c_biller_credit_mst_p_zmbrb USING btree (business_id, biller_id, system_id, action_code);

CREATE INDEX s_ses_summary_hst_pp_bwbrb_business_id_system_id_status_idx ON ssashma.s_ses_summary_hst_pp_bwbrb USING btree (business_id, system_id, status) WITH (fillfactor='70');

CREATE INDEX s_ses_summary_hst_pp_bwbrb_business_id_system_id_user_id_se_idx ON ssashma.s_ses_summary_hst_pp_bwbrb USING btree (business_id, system_id, user_id, sess_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_bwbrb_pkey ON ssashma.s_limit_cust_total_p_bwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_zmbrb_pkey ON ssashma.c_listvalue_mst_p_zmbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_zmbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_zmbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_bankrouting_mst_p_tzbrb_pkey ON ssashma.c_bankrouting_mst_p_tzbrb USING btree (bankcode, branchcode, business_id, branchname);

CREATE UNIQUE INDEX c_listvalue_mst_p_mzbrb_pkey ON ssashma.c_listvalue_mst_p_mzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE INDEX c_listvalue_mst_p_mzbrb_system_id_business_id_group_id_list_idx ON ssashma.c_listvalue_mst_p_mzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_biller_credit_mst_p_bwbrb_pkey ON ssashma.c_biller_credit_mst_p_bwbrb USING btree (business_id, biller_id, system_id, action_code);

---functions---
-- DROP FUNCTION ssashma.purge_batch_tables();

CREATE OR REPLACE FUNCTION ssashma.purge_batch_tables()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE

cur CURSOR FOR SELECT job_execution_id,
                      job_instance_id 
                 FROM ssashma.batch_job_execution
                WHERE create_time < date_trunc('day',now())-interval '15 day';

BEGIN

    FOR RESULT IN cur LOOP
    
        DELETE 
          FROM ssashma.batch_step_execution_context
         WHERE step_execution_id IN (SELECT step_execution_id
                                       FROM ssashma.batch_step_execution
                                      WHERE job_execution_id = result.job_execution_id);
        							  
        DELETE 
          FROM ssashma.batch_step_execution 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE 
          FROM ssashma.batch_job_execution_context 
         WHERE job_execution_id = result.job_execution_id;
        
        DELETE 
          FROM ssashma.batch_job_execution_params 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE 
          FROM ssashma.batch_job_execution 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE
          FROM ssashma.BATCH_JOB_INSTANCE
         WHERE job_instance_id = result.job_instance_id;
     
    END LOOP;

END;

$function$
;

-- DROP FUNCTION ssashma.timestamp_diff(timestamp, timestamp);

CREATE OR REPLACE FUNCTION ssashma.timestamp_diff(a timestamp without time zone, b timestamp without time zone)
 RETURNS bigint
 LANGUAGE plpgsql
 STABLE SECURITY DEFINER
AS $function$
BEGIN
  return extract(day    from (a-b))*24*60*60 +
         extract(hour   from (a-b))*60*60+
         extract(minute from (a-b))*60+
         extract(second from (a-b));
end;
$function$
;

---sequences---
-- ssashma.batch_job_execution_seq definition

-- DROP SEQUENCE ssashma.batch_job_execution_seq;

CREATE SEQUENCE ssashma.batch_job_execution_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssashma.batch_job_seq definition

-- DROP SEQUENCE ssashma.batch_job_seq;

CREATE SEQUENCE ssashma.batch_job_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- ssashma.batch_step_execution_seq definition

-- DROP SEQUENCE ssashma.batch_step_execution_seq;

CREATE SEQUENCE ssashma.batch_step_execution_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
	

