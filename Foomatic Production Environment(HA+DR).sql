---CONTRACTMGMTPRD---
---public schema---
---Tables---
-- public.approval_history_mst definition

-- Drop table

-- DROP TABLE public.approval_history_mst;

CREATE TABLE public.approval_history_mst (
	index_id varchar(50) NOT NULL,
	contract_id varchar(255) NULL,
	changed_on timestamp NULL,
	changed_by varchar(50) NULL,
	"role" varchar(255) NULL,
	previous_status varchar(255) NULL,
	new_status varchar(255) NULL,
	"action" varchar(50) NULL,
	entity_id varchar(10) NULL,
	"comment" varchar(50) NULL,
	delegated_approver varchar(50) NULL,
	delegated_user_role varchar(255) NULL,
	stage varchar(200) NULL,
	CONSTRAINT approval_history_mst_pkey PRIMARY KEY (index_id)
);


-- public.approver_mst definition

-- Drop table

-- DROP TABLE public.approver_mst;

CREATE TABLE public.approver_mst (
	approver_id varchar(255) NOT NULL,
	approval_id varchar(255) NOT NULL,
	assigned_to varchar(255) NOT NULL,
	"type" varchar(255) NULL,
	CONSTRAINT approver_mst_pkey PRIMARY KEY (approver_id)
);


-- public.attachment_mst definition

-- Drop table

-- DROP TABLE public.attachment_mst;

CREATE TABLE public.attachment_mst (
	attachment_id int8 NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	attachment_data bytea NULL,
	attachment_type varchar(100) NULL,
	attachment_url varchar(100) NULL,
	content_type varchar(100) NULL,
	contract_id varchar(100) NULL,
	description varchar(100) NULL,
	file_name varchar(100) NULL,
	"size" int4 NULL,
	mime_type varchar(25) NULL,
	custom_flag bool NULL,
	po_number varchar(150) NULL,
	invoice_number varchar(150) NULL,
	CONSTRAINT attachment_mst_pkey PRIMARY KEY (attachment_id, entity_id)
);


-- public.audit_mst definition

-- Drop table

-- DROP TABLE public.audit_mst;

CREATE TABLE public.audit_mst (
	audit_id serial4 NOT NULL,
	activity_id varchar(50) NULL,
	contract_id varchar(100) NULL,
	entity_id varchar(10) NULL,
	log_time timestamp NULL,
	user_id varchar(100) NULL,
	CONSTRAINT audit_mst_pkey PRIMARY KEY (audit_id)
);


-- public.batch_job_instance definition

-- Drop table

-- DROP TABLE public.batch_job_instance;

CREATE TABLE public.batch_job_instance (
	job_instance_id int8 NOT NULL,
	"version" int8 NULL,
	job_name varchar(100) NOT NULL,
	job_key varchar(32) NOT NULL,
	CONSTRAINT batch_job_instance_pkey PRIMARY KEY (job_instance_id),
	CONSTRAINT job_inst_un UNIQUE (job_name, job_key)
);


-- public.buffer_resource_details_mst definition

-- Drop table

-- DROP TABLE public.buffer_resource_details_mst;

CREATE TABLE public.buffer_resource_details_mst (
	buffer_id varchar(50) NOT NULL,
	manpower_id varchar(50) NOT NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	program_id varchar(100) NULL,
	created_by varchar(100) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(100) NULL,
	updated_dtm timestamp NULL,
	delete_flag bool NULL,
	entity_id varchar(20) NULL,
	CONSTRAINT buffer_details_mst_pkey PRIMARY KEY (buffer_id, manpower_id)
);


-- public.city_mst definition

-- Drop table

-- DROP TABLE public.city_mst;

CREATE TABLE public.city_mst (
	city_id varchar(20) NOT NULL,
	country_id varchar(20) NOT NULL,
	city_name varchar(100) NOT NULL,
	CONSTRAINT city_mst_pkey PRIMARY KEY (city_id, country_id)
);


-- public.configurable_workflow_mst definition

-- Drop table

-- DROP TABLE public.configurable_workflow_mst;

CREATE TABLE public.configurable_workflow_mst (
	workflow_id varchar(50) NOT NULL,
	workflow_type varchar(255) NOT NULL,
	workflow_name varchar(255) NOT NULL,
	workflow_priority varchar(255) NOT NULL,
	contract_count int4 NULL,
	workflow_status bool NULL,
	workflow_description varchar(255) NULL,
	created_by varchar(255) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(255) NULL,
	updated_dtm varchar(255) NULL,
	entity_id varchar(100) NOT NULL,
	CONSTRAINT configurable_workflow_mst_pkey PRIMARY KEY (workflow_id)
);


-- public.configuration_mst definition

-- Drop table

-- DROP TABLE public.configuration_mst;

CREATE TABLE public.configuration_mst (
	config_key varchar(100) NOT NULL,
	config_value text NULL,
	CONSTRAINT configuration_mst_pkey PRIMARY KEY (config_key)
);


-- public.contract_allocation definition

-- Drop table

-- DROP TABLE public.contract_allocation;

CREATE TABLE public.contract_allocation (
	allocation_id int8 NOT NULL,
	contract_id varchar(255) NOT NULL,
	entity_id varchar(10) NOT NULL,
	employee_id varchar(20) NULL,
	end_date timestamp NULL,
	percentage_allocation float4 NULL,
	"role" varchar(100) NULL,
	start_date timestamp NULL,
	hourly_rate float8 NULL,
	num_hours int8 NULL,
	employee_name varchar(50) NULL,
	total_value float8 NULL,
	total_current_allocation float8 NULL,
	total_availability float8 NULL,
	grade varchar(50) NULL,
	"year" varchar(10) NULL,
	service_area varchar(50) NULL,
	experience varchar(10) NULL,
	"location" varchar(50) NULL,
	working_days int8 NULL,
	project_id varchar(50) NULL,
	is_timesheet_created varchar(10) NULL,
	CONSTRAINT contract_allocation_pkey PRIMARY KEY (allocation_id, contract_id, entity_id)
);


-- public.contract_approval_mst definition

-- Drop table

-- DROP TABLE public.contract_approval_mst;

CREATE TABLE public.contract_approval_mst (
	contract_approval_id varchar(255) NOT NULL,
	contract_id varchar(255) NOT NULL,
	entity_id varchar(255) NOT NULL,
	vendor_workflow_id varchar(255) NOT NULL,
	vendor_approval_stage varchar(255) NOT NULL,
	CONSTRAINT contract_approval_mst_pkey PRIMARY KEY (contract_approval_id, contract_id, entity_id)
);


-- public.contract_delegation_mst definition

-- Drop table

-- DROP TABLE public.contract_delegation_mst;

CREATE TABLE public.contract_delegation_mst (
	index_id varchar(50) NOT NULL,
	from_user varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	expiry_date timestamp NULL,
	to_user varchar(255) NULL,
	CONSTRAINT contract_delegation_mst_key PRIMARY KEY (index_id, from_user, entity_id)
);


-- public.contract_mst definition

-- Drop table

-- DROP TABLE public.contract_mst;

CREATE TABLE public.contract_mst (
	contract_type varchar(31) NOT NULL,
	contract_id varchar(150) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	absa_pm_name varchar(100) NULL,
	accpt_criteria varchar(1000) NULL,
	assigned_to varchar(50) NULL,
	bmi varchar(100) NULL,
	budget float4 NULL,
	ccn_number int4 NULL,
	change_mgmt varchar(250) NULL,
	client_org_unit varchar(20) NULL,
	"comment" varchar(1000) NULL,
	cmptcy1 varchar(250) NULL,
	cmptcy2 varchar(250) NULL,
	cmptcy3 varchar(250) NULL,
	cmptcy4 varchar(250) NULL,
	cmptcy5 varchar(250) NULL,
	contract_value float8 NULL,
	ccy varchar(5) NULL,
	definition varchar(1000) NULL,
	deliverables varchar(1000) NULL,
	delivery_manager varchar(100) NULL,
	detailed_overview varchar(1000) NULL,
	documentation varchar(1000) NULL,
	duration varchar(100) NULL,
	end_date timestamp NULL,
	fp_add_revenue varchar(100) NULL,
	impl_support varchar(1000) NULL,
	in_num varchar(20) NULL,
	liq_damages varchar(2000) NULL,
	lti_lead varchar(100) NULL,
	lti_pm_name varchar(100) NULL,
	ltp varchar(20) NULL,
	"number" varchar(100) NULL,
	org_unit varchar(20) NULL,
	out_of_scope varchar(1000) NULL,
	pat varchar(100) NULL,
	po_num varchar(20) NULL,
	previous_ccn varchar(50) NULL,
	project_name varchar(500) NULL,
	project_type varchar(20) NULL,
	rcvd_date timestamp NULL,
	rej_comments varchar(1000) NULL,
	reporting varchar(1000) NULL,
	role_responsibility varchar(1000) NULL,
	"scope" varchar(1000) NULL,
	ser_lvl_credit varchar(2000) NULL,
	service_overview varchar(1000) NULL,
	services varchar(2000) NULL,
	sow_description varchar(1000) NULL,
	sow_name varchar(100) NULL,
	sow_owner varchar(100) NULL,
	start_date timestamp NULL,
	status varchar(50) NULL,
	tnm_rate_revision varchar(100) NULL,
	training_kt varchar(1000) NULL,
	funding_src varchar(50) NULL,
	po_amount float8 NULL,
	project_id varchar(50) NULL,
	contract_number varchar(50) NULL,
	reference_number varchar(200) NULL,
	adjustment bool NULL,
	adjustment_comments varchar(150) NULL,
	track_deliverable_flag bool NULL,
	exclude_flag bool NULL,
	innovation_value float8 NULL,
	authorized_on timestamp NULL,
	funding_line_item varchar(50) NULL,
	shopping_cart_funding_source varchar(50) NULL,
	engagement_id varchar(50) NULL,
	"location" varchar(50) NULL,
	electronic_auth bool NULL,
	ltp_approved bool NULL,
	fp_resource_flag bool NULL,
	current_owner varchar(50) NULL,
	CONSTRAINT contract_mst_pkey PRIMARY KEY (contract_id, entity_id)
);


-- public.country_mst definition

-- Drop table

-- DROP TABLE public.country_mst;

CREATE TABLE public.country_mst (
	country_id varchar(20) NOT NULL,
	entity_id varchar(50) NOT NULL,
	country varchar(100) NOT NULL,
	CONSTRAINT country_mst_pkey PRIMARY KEY (country_id, entity_id)
);


-- public.currency_mst definition

-- Drop table

-- DROP TABLE public.currency_mst;

CREATE TABLE public.currency_mst (
	currency_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	contract_currency varchar(20) NOT NULL,
	po_currency varchar(20) NOT NULL,
	exchange_rate float4 NULL,
	delete_flag bool NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	CONSTRAINT currency_mst_pkey PRIMARY KEY (currency_id)
);


-- public.delegation_active_user_mst definition

-- Drop table

-- DROP TABLE public.delegation_active_user_mst;

CREATE TABLE public.delegation_active_user_mst (
	delegation_id varchar(20) NOT NULL,
	from_user varchar(20) NOT NULL,
	to_user varchar(20) NOT NULL,
	updated_dtm timestamp NULL,
	entity_id varchar(10) NOT NULL,
	CONSTRAINT delegation_active_user_pkey PRIMARY KEY (delegation_id, from_user, to_user, entity_id)
);


-- public.delegation_attachment_mst definition

-- Drop table

-- DROP TABLE public.delegation_attachment_mst;

CREATE TABLE public.delegation_attachment_mst (
	delegation_history_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	delegation_id varchar(10) NULL,
	file_name varchar(255) NULL,
	"size" int4 NULL,
	attachment_type varchar(50) NULL,
	attachment_url varchar(50) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	attachment_body bytea NULL,
	CONSTRAINT delegation_attachment_mst_pkey PRIMARY KEY (delegation_history_id, entity_id)
);


-- public.delegation_entitlements_mmap definition

-- Drop table

-- DROP TABLE public.delegation_entitlements_mmap;

CREATE TABLE public.delegation_entitlements_mmap (
	delegation_id varchar(20) NOT NULL,
	entitlement_group_name varchar(50) NOT NULL,
	entity_id varchar(30) NOT NULL,
	CONSTRAINT delegation_entitlements_mmap_pkey PRIMARY KEY (delegation_id, entitlement_group_name, entity_id)
);


-- public.delegation_history_mst definition

-- Drop table

-- DROP TABLE public.delegation_history_mst;

CREATE TABLE public.delegation_history_mst (
	delegation_history_id varchar(20) NOT NULL,
	entity_id varchar(10) NOT NULL,
	delegation_id varchar(50) NOT NULL,
	entitlement_groups varchar(255) NOT NULL,
	to_user varchar(50) NOT NULL,
	status varchar(50) NOT NULL,
	remarks varchar(255) NULL,
	expiry_date date NOT NULL,
	created_by varchar(50) NOT NULL,
	created_dtm timestamp NOT NULL,
	updated_by varchar(50) NOT NULL,
	updated_dtm timestamp NOT NULL,
	CONSTRAINT delegation_history_mst_pkey PRIMARY KEY (delegation_history_id, entity_id)
);


-- public.delegation_mst definition

-- Drop table

-- DROP TABLE public.delegation_mst;

CREATE TABLE public.delegation_mst (
	from_user varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	to_user varchar(50) NULL,
	delegation_id varchar(20) NOT NULL,
	status varchar(255) NULL,
	remarks varchar(255) NULL,
	delegate_complete_profile bool NULL,
	expiry_date date NULL,
	CONSTRAINT delegation_mst_pkey PRIMARY KEY (delegation_id, entity_id)
);


-- public.delta_reports_mst definition

-- Drop table

-- DROP TABLE public.delta_reports_mst;

CREATE TABLE public.delta_reports_mst (
	delta_id int8 NOT NULL,
	user_id varchar(50) NULL,
	entity_id varchar(10) NULL,
	last_generated timestamp NULL,
	CONSTRAINT delta_reports_mst_pkey PRIMARY KEY (delta_id)
);


-- public.dual definition

-- Drop table

-- DROP TABLE public.dual;

CREATE TABLE public.dual (
	id int4 NOT NULL,
	CONSTRAINT dual_pkey PRIMARY KEY (id)
);


-- public.dynamic_lov_group_mst definition

-- Drop table

-- DROP TABLE public.dynamic_lov_group_mst;

CREATE TABLE public.dynamic_lov_group_mst (
	group_id varchar(50) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	description varchar(100) NULL,
	CONSTRAINT dynamic_lov_group_mst_pkey PRIMARY KEY (group_id)
);


-- public.email_template_mst definition

-- Drop table

-- DROP TABLE public.email_template_mst;

CREATE TABLE public.email_template_mst (
	template_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	body text NULL,
	cc_email varchar(1000) NULL,
	description varchar(100) NULL,
	from_email varchar(100) NULL,
	subject varchar(100) NULL,
	template_type varchar(20) NULL,
	CONSTRAINT email_template_mst_pkey PRIMARY KEY (template_id, entity_id)
);


-- public.entitlement_mst definition

-- Drop table

-- DROP TABLE public.entitlement_mst;

CREATE TABLE public.entitlement_mst (
	entitlement_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	description varchar(100) NULL,
	CONSTRAINT entitlement_mst_pkey PRIMARY KEY (entitlement_id, entity_id)
);


-- public.entitlements_groups_mst definition

-- Drop table

-- DROP TABLE public.entitlements_groups_mst;

CREATE TABLE public.entitlements_groups_mst (
	entitlement_group_name varchar(50) NOT NULL,
	entitlement_id varchar(50) NOT NULL,
	group_desc varchar(100) NULL,
	CONSTRAINT entitlements_groups_mst_pkey PRIMARY KEY (entitlement_group_name, entitlement_id)
);


-- public.entity_mst definition

-- Drop table

-- DROP TABLE public.entity_mst;

CREATE TABLE public.entity_mst (
	entity_id varchar(30) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	address varchar(500) NULL,
	email_id varchar(100) NULL,
	entity_name varchar(100) NOT NULL,
	is_client bool NOT NULL DEFAULT false,
	phone_no varchar(20) NULL,
	registration_no varchar(50) NULL,
	delete_flag bool NULL DEFAULT false,
	foomatic_access bool NULL,
	electronic_approval bool NULL,
	admin_userid varchar(50) NULL,
	CONSTRAINT entity_mst_pkey PRIMARY KEY (entity_id)
);


-- public.funding_line_item definition

-- Drop table

-- DROP TABLE public.funding_line_item;

CREATE TABLE public.funding_line_item (
	contract_id varchar(255) NOT NULL,
	funding_item_name varchar(255) NOT NULL,
	status varchar(50) NULL,
	entity_id varchar(10) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	delete_flag bool NULL,
	CONSTRAINT funding_line_item_pkey PRIMARY KEY (contract_id, funding_item_name)
);


-- public.funding_source definition

-- Drop table

-- DROP TABLE public.funding_source;

CREATE TABLE public.funding_source (
	contract_id varchar(255) NOT NULL,
	funding_source_name varchar(255) NOT NULL,
	status varchar(50) NULL,
	entity_id varchar(10) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	delete_flag bool NULL,
	CONSTRAINT funding_source_pkey PRIMARY KEY (contract_id, funding_source_name)
);


-- public.holiday_location_mapping definition

-- Drop table

-- DROP TABLE public.holiday_location_mapping;

CREATE TABLE public.holiday_location_mapping (
	holiday_location_id varchar(20) NOT NULL,
	location_id varchar(20) NOT NULL,
	holiday_id varchar(20) NOT NULL,
	CONSTRAINT holiday_location_mapping_pkey PRIMARY KEY (holiday_location_id, location_id, holiday_id)
);


-- public.holiday_mst definition

-- Drop table

-- DROP TABLE public.holiday_mst;

CREATE TABLE public.holiday_mst (
	holiday_id int8 NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	holiday_date timestamp NULL,
	holiday_name varchar(200) NULL,
	offshore_ind bool NULL,
	onshore_ind bool NULL,
	CONSTRAINT holiday_mst_pkey PRIMARY KEY (holiday_id, entity_id)
);


-- public.invalid_attempts_mst definition

-- Drop table

-- DROP TABLE public.invalid_attempts_mst;

CREATE TABLE public.invalid_attempts_mst (
	attempt_id int8 NOT NULL,
	user_id varchar(20) NOT NULL,
	entity_id varchar(10) NOT NULL,
	attempt_time date NULL,
	source_ip varchar(20) NULL,
	CONSTRAINT invalid_attempts_mst_pkey PRIMARY KEY (attempt_id, user_id, entity_id)
);


-- public.invoice_approval_mst definition

-- Drop table

-- DROP TABLE public.invoice_approval_mst;

CREATE TABLE public.invoice_approval_mst (
	invoice_approval_id varchar(255) NOT NULL,
	invoice_number varchar(255) NOT NULL,
	contract_id varchar(255) NOT NULL,
	po_number varchar(255) NOT NULL,
	status varchar(255) NOT NULL,
	CONSTRAINT invoice_approval_mst_pkey PRIMARY KEY (invoice_approval_id)
);


-- public.invoice_details_mst definition

-- Drop table

-- DROP TABLE public.invoice_details_mst;

CREATE TABLE public.invoice_details_mst (
	invoice_number varchar(100) NOT NULL,
	contract_id varchar(255) NOT NULL,
	po_number varchar(100) NOT NULL,
	entity_id varchar(100) NULL,
	invoice_usd_amount varchar(50) NULL,
	invoice_zar_amount varchar(50) NULL,
	currency varchar(10) NULL,
	invoice_dtm timestamp NOT NULL,
	lob_pmo varchar(100) NULL,
	delete_flag bool NULL DEFAULT false,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	invoice_usd_amt_without_vat varchar(50) NULL,
	invoice_zar_amt_without_vat varchar(50) NULL,
	spot_exchange_rate varchar(50) NULL,
	sent_approval_to varchar(50) NULL,
	status varchar(50) NULL,
	remmitance_comment varchar(255) NULL,
	billing_period timestamp NULL,
	grv_no varchar(10) NULL,
	e_ref_number varchar(50) NULL,
	"comments" varchar(100) NULL,
	CONSTRAINT invoice_details_mst_pkey PRIMARY KEY (contract_id, po_number, invoice_number)
);


-- public.location_mst definition

-- Drop table

-- DROP TABLE public.location_mst;

CREATE TABLE public.location_mst (
	location_id varchar(20) NOT NULL,
	"location" varchar(100) NOT NULL,
	location_code varchar(50) NOT NULL,
	city_id varchar(20) NOT NULL,
	created_by varchar(100) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(100) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT location_mst_pkey PRIMARY KEY (location_id, city_id)
);


-- public.manpower_mst definition

-- Drop table

-- DROP TABLE public.manpower_mst;

CREATE TABLE public.manpower_mst (
	employee_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	allocation float4 NULL,
	base_bu varchar(100) NULL,
	base_location varchar(100) NULL,
	buffer_allocation float4 NULL,
	end_date date NULL,
	grade varchar(50) NULL,
	location_code varchar(50) NULL,
	"name" varchar(200) NULL,
	start_date date NULL,
	total_allocation float4 NULL,
	email_id varchar(100) NULL,
	abid varchar(20) NULL,
	org_unit varchar(100) NULL,
	status varchar(50) NULL,
	location_id varchar(50) NULL,
	skill_id varchar(50) NULL,
	CONSTRAINT manpower_mst_pkey PRIMARY KEY (employee_id, entity_id)
);


-- public.menu_mst definition

-- Drop table

-- DROP TABLE public.menu_mst;

CREATE TABLE public.menu_mst (
	menu_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	entitlement_id varchar(50) NULL,
	menu_lvl int4 NULL,
	menu_name varchar(100) NULL,
	menu_option int4 NULL,
	menu_parent_id varchar(50) NULL,
	route_to varchar(50) NULL,
	CONSTRAINT menu_mst_pkey PRIMARY KEY (menu_id, entity_id)
);


-- public.milestone_attachment_mst definition

-- Drop table

-- DROP TABLE public.milestone_attachment_mst;

CREATE TABLE public.milestone_attachment_mst (
	attachment_id int8 NOT NULL,
	chrg_pymt_id int8 NOT NULL,
	contract_id varchar(100) NOT NULL,
	entity_id varchar(20) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	file_name varchar(100) NULL,
	file_size int4 NULL,
	mime_type varchar(10) NULL,
	attachment_type varchar(100) NULL,
	attachment_url varchar(100) NULL,
	description varchar(100) NULL,
	attachment_data bytea NULL,
	content_type varchar(100) NULL,
	CONSTRAINT milestone_attachment_mst_pkey PRIMARY KEY (attachment_id, chrg_pymt_id, contract_id)
);


-- public.monthly_closure_mst definition

-- Drop table

-- DROP TABLE public.monthly_closure_mst;

CREATE TABLE public.monthly_closure_mst (
	monthly_closure_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	org_unit_id varchar(10) NOT NULL,
	closure_period timestamp NOT NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	status varchar(50) NULL,
	"comments" varchar(50) NULL,
	email_list varchar(1000) NULL,
	initiation_date timestamp NULL,
	delete_flag bool NULL,
	absa_lead varchar(250) NULL,
	absa_email_list varchar(1000) NULL,
	CONSTRAINT monthly_closure_mst_monthly_closure_id_key UNIQUE (monthly_closure_id),
	CONSTRAINT monthly_closure_mst_pkey PRIMARY KEY (monthly_closure_id, entity_id, org_unit_id, closure_period)
);


-- public.offline_contract_wip definition

-- Drop table

-- DROP TABLE public.offline_contract_wip;

CREATE TABLE public.offline_contract_wip (
	offline_contract_id varchar(255) NULL,
	project_id varchar(50) NULL,
	entity_id varchar(10) NULL,
	project_name varchar(500) NULL,
	funding_source varchar(50) NULL,
	status varchar(20) NULL,
	project_type varchar(20) NULL,
	po_number varchar(30) NULL,
	po_amount float8 NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	reference_number varchar(200) NULL,
	currency varchar(5) NULL,
	absa_pm_name varchar(50) NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	updated_by varchar(50) NULL
);


-- public.org_unit_lead definition

-- Drop table

-- DROP TABLE public.org_unit_lead;

CREATE TABLE public.org_unit_lead (
	org_unit_lead_id int8 NOT NULL,
	org_unit_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	org_unit_lead_type varchar(50) NULL,
	org_unit_lead_value varchar(50) NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT org_unit_lead_pkey PRIMARY KEY (org_unit_lead_id, org_unit_id, entity_id)
);


-- public.org_unit_mst definition

-- Drop table

-- DROP TABLE public.org_unit_mst;

CREATE TABLE public.org_unit_mst (
	org_unit_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	org_kam_lead varchar(50) NULL,
	lob_pmo varchar(50) NULL,
	org_unit_lead varchar(10) NULL,
	org_unit_name varchar(100) NOT NULL,
	prnt_org_unit varchar(10) NULL,
	org_vp_sales_lead varchar(50) NULL,
	delete_flag bool NULL DEFAULT false,
	client_org_unit_id varchar(100) NULL,
	org_kdm_lead varchar(100) NULL,
	CONSTRAINT org_unit_mst_pkey PRIMARY KEY (org_unit_id, entity_id)
);


-- public.password_history_mst definition

-- Drop table

-- DROP TABLE public.password_history_mst;

CREATE TABLE public.password_history_mst (
	user_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	user_type varchar(50) NOT NULL,
	"password" varchar(255) NOT NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT password_history_mst_pkey PRIMARY KEY (user_id, entity_id, user_type, password)
);


-- public.program_details_mst definition

-- Drop table

-- DROP TABLE public.program_details_mst;

CREATE TABLE public.program_details_mst (
	program_id varchar(100) NOT NULL,
	program_name varchar(100) NULL,
	program_client_lead varchar(100) NULL,
	program_desc varchar(255) NULL,
	status varchar(50) NULL,
	delete_flag bool NULL DEFAULT false,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	portfolio varchar(40) NULL,
	CONSTRAINT program_details_mst_pkey PRIMARY KEY (program_id)
);


-- public.program_vendor_details_mst definition

-- Drop table

-- DROP TABLE public.program_vendor_details_mst;

CREATE TABLE public.program_vendor_details_mst (
	program_id varchar(100) NOT NULL,
	vendor_id varchar(100) NOT NULL,
	vendor_lead varchar(100) NULL,
	delete_flag bool NULL DEFAULT false,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT program_vendor_details_mst_pkey PRIMARY KEY (program_id, vendor_id)
);


-- public.project_approval_mst definition

-- Drop table

-- DROP TABLE public.project_approval_mst;

CREATE TABLE public.project_approval_mst (
	project_approval_id varchar(255) NOT NULL,
	project_id varchar(255) NOT NULL,
	assigned_to varchar(255) NULL,
	status varchar(255) NULL,
	client_workflow_id varchar(255) NULL,
	client_approval_stage varchar(255) NULL,
	CONSTRAINT project_approval_mst_pkey PRIMARY KEY (project_approval_id, project_id)
);


-- public.project_details_mst definition

-- Drop table

-- DROP TABLE public.project_details_mst;

CREATE TABLE public.project_details_mst (
	project_id varchar(50) NOT NULL,
	project_name varchar(100) NULL,
	pm_name varchar(100) NULL,
	status varchar(50) NULL,
	start_date timestamp NOT NULL,
	end_date timestamp NOT NULL,
	remarks varchar(100) NULL,
	created_dtm timestamp NULL,
	created_by varchar(40) NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	delete_flag bool NULL DEFAULT false,
	CONSTRAINT project_details_mst_pkey PRIMARY KEY (project_id)
);


-- public.project_details_wip definition

-- Drop table

-- DROP TABLE public.project_details_wip;

CREATE TABLE public.project_details_wip (
	project_id varchar(50) NULL,
	project_name varchar(100) NULL,
	pm_name varchar(100) NULL,
	status varchar(50) NULL,
	start_date timestamp NOT NULL,
	end_date timestamp NOT NULL,
	remarks varchar(100) NULL
);


-- public.purchase_order_details_mst definition

-- Drop table

-- DROP TABLE public.purchase_order_details_mst;

CREATE TABLE public.purchase_order_details_mst (
	po_number varchar(100) NOT NULL,
	contract_id varchar(255) NOT NULL,
	entity_id varchar(100) NULL,
	received_date timestamp NULL,
	valid_from timestamp NULL,
	po_start_date timestamp NULL,
	po_end_date timestamp NULL,
	po_amount varchar(50) NULL,
	currency varchar(10) NULL,
	delete_flag bool NULL DEFAULT false,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	engagement_id varchar(100) NULL,
	CONSTRAINT purchase_order_details_mst_pkey PRIMARY KEY (contract_id, po_number)
);


-- public.rate_card_attachment_mapping_mst definition

-- Drop table

-- DROP TABLE public.rate_card_attachment_mapping_mst;

CREATE TABLE public.rate_card_attachment_mapping_mst (
	rate_card_attachment_mapping_id int8 NOT NULL,
	entity_id varchar(10) NULL,
	rate_card_id int8 NULL,
	rate_card_attachment_id int8 NULL,
	CONSTRAINT rate_card_attachment_mapping_mst_pkey PRIMARY KEY (rate_card_attachment_mapping_id)
);


-- public.rate_card_attachment_mst definition

-- Drop table

-- DROP TABLE public.rate_card_attachment_mst;

CREATE TABLE public.rate_card_attachment_mst (
	rate_card_attachment_id int8 NOT NULL,
	entity_id varchar(10) NOT NULL,
	file_name varchar(255) NULL,
	"size" int4 NULL,
	attachment_type varchar(50) NULL,
	attachment_url varchar(50) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	attachment_body bytea NULL,
	CONSTRAINT rate_card_attachment_mst_pkey PRIMARY KEY (rate_card_attachment_id, entity_id)
);


-- public.rate_card_mst definition

-- Drop table

-- DROP TABLE public.rate_card_mst;

CREATE TABLE public.rate_card_mst (
	rate_card_id int8 NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	"exp" varchar(50) NULL,
	location_code varchar(50) NULL,
	rate float4 NULL,
	rate_ccy varchar(20) NULL,
	rate_year varchar(10) NULL,
	"role" varchar(150) NULL,
	service_area_code varchar(255) NULL,
	remarks varchar(255) NULL,
	start_rate_month int4 NULL,
	end_rate_month int4 NULL,
	status bool NULL DEFAULT true,
	disable_remarks varchar(255) NULL,
	CONSTRAINT rate_card_mst_pkey PRIMARY KEY (rate_card_id, entity_id)
);


-- public.remittance_details_mst definition

-- Drop table

-- DROP TABLE public.remittance_details_mst;

CREATE TABLE public.remittance_details_mst (
	remittance_no varchar(20) NOT NULL,
	invoice_no varchar(50) NOT NULL,
	ref_no varchar(100) NULL,
	gross_amt varchar(50) NULL,
	net_amt varchar(50) NULL,
	discount float8 NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	entity_id varchar(40) NULL,
	invoice_date date NULL,
	is_system varchar(10) NULL,
	recieve_date varchar(50) NULL,
	is_delete bool NULL,
	CONSTRAINT remittance_details_mst_pkey PRIMARY KEY (remittance_no, invoice_no)
);


-- public.resource_onboard_mst definition

-- Drop table

-- DROP TABLE public.resource_onboard_mst;

CREATE TABLE public.resource_onboard_mst (
	resource_id varchar(20) NOT NULL,
	entity_id varchar(50) NOT NULL,
	"name" varchar(100) NULL,
	foo_ccn varchar(50) NULL,
	foo_name varchar(255) NULL,
	foo_description varchar(250) NULL,
	tnm varchar(40) NULL,
	country_location varchar(40) NULL,
	funding_source varchar(100) NULL,
	resource_replacement varchar(40) NULL,
	replaced_resource_name varchar(40) NULL,
	ltp_name varchar(40) NULL,
	onboarding_recieve_date timestamp NULL,
	onboarding_initiated_date timestamp NULL,
	"comment" varchar(255) NULL,
	pre_brid_no varchar(40) NULL,
	pre_ab_no varchar(40) NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	title_name varchar(40) NULL,
	first_name varchar(40) NULL,
	last_name varchar(40) NULL,
	marrital_status varchar(40) NULL,
	dob varchar(40) NULL,
	aadhar_no varchar(40) NULL,
	aadhar_issue_date timestamp NULL,
	work_city varchar(40) NULL,
	pincode varchar(40) NULL,
	email_id varchar(40) NULL,
	pnone_no varchar(40) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	country_of_birth varchar(50) NULL,
	nationality varchar(50) NULL,
	visa_type varchar(50) NULL,
	pan_card varchar(50) NULL,
	pan_issue_date timestamp NULL,
	work_addr varchar(250) NULL,
	manager_name varchar(100) NULL,
	manager_email varchar(100) NULL,
	remarks varchar(255) NULL,
	additional_details varchar(255) NULL,
	brid varchar(20) NULL,
	vdi_number varchar(20) NULL,
	assigned_to varchar(50) NULL,
	offboarding_manager varchar(50) NULL,
	offboarding_manager_email varchar(50) NULL,
	contract_end_date varchar(50) NULL,
	employee_personal_no varchar(50) NULL,
	absa_email varchar(50) NULL,
	ltp_email varchar(50) NULL,
	x_brid varchar(20) NULL,
	CONSTRAINT resource_onboard_mst_pkey PRIMARY KEY (resource_id, entity_id)
);


-- public.resource_onboarding_history_mst definition

-- Drop table

-- DROP TABLE public.resource_onboarding_history_mst;

CREATE TABLE public.resource_onboarding_history_mst (
	index_id varchar(50) NOT NULL,
	resource_id varchar(50) NOT NULL,
	changed_on timestamp NULL,
	updated_by varchar(255) NULL,
	previous_status varchar(255) NULL,
	new_status varchar(255) NULL,
	"comments" varchar(255) NULL,
	CONSTRAINT resource_onboarding_history_mst_pkey PRIMARY KEY (index_id, resource_id)
);


-- public.role_mst definition

-- Drop table

-- DROP TABLE public.role_mst;

CREATE TABLE public.role_mst (
	role_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	expiry_dtm timestamp NULL,
	role_name varchar(100) NOT NULL,
	CONSTRAINT role_mst_pkey PRIMARY KEY (role_id, entity_id)
);


-- public.skill_set_mst definition

-- Drop table

-- DROP TABLE public.skill_set_mst;

CREATE TABLE public.skill_set_mst (
	skill_set_id varchar(50) NOT NULL,
	employee_id varchar(50) NULL,
	entity_id varchar(50) NULL,
	skills varchar(5000) NULL,
	"role" varchar(255) NULL,
	CONSTRAINT skill_set_mst_pkey PRIMARY KEY (skill_set_id)
);


-- public.sla_definition_mst definition

-- Drop table

-- DROP TABLE public.sla_definition_mst;

CREATE TABLE public.sla_definition_mst (
	sla_id int4 NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	escaltion_emails varchar(1000) NULL,
	sla int4 NULL,
	sla_reminder int4 NULL,
	stage varchar(50) NULL,
	status varchar(255) NULL,
	CONSTRAINT sla_definition_mst_pkey PRIMARY KEY (sla_id, entity_id)
);


-- public.squad_details_mst definition

-- Drop table

-- DROP TABLE public.squad_details_mst;

CREATE TABLE public.squad_details_mst (
	squad_id varchar(100) NOT NULL,
	program_id varchar(100) NOT NULL,
	squad_name varchar(100) NULL,
	squad_client_lead varchar(100) NULL,
	squad_desc varchar(255) NULL,
	status varchar(50) NULL,
	delete_flag bool NULL DEFAULT false,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	portfolio varchar(40) NULL,
	CONSTRAINT squad_details_mst_pkey PRIMARY KEY (squad_id)
);


-- public.squad_vendor_details_mst definition

-- Drop table

-- DROP TABLE public.squad_vendor_details_mst;

CREATE TABLE public.squad_vendor_details_mst (
	program_id varchar(100) NOT NULL,
	squad_id varchar(100) NOT NULL,
	vendor_id varchar(100) NOT NULL,
	vendor_lead varchar(100) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT squad_vendor_details_mst_pkey PRIMARY KEY (program_id, squad_id, vendor_id)
);


-- public.task_details_mst definition

-- Drop table

-- DROP TABLE public.task_details_mst;

CREATE TABLE public.task_details_mst (
	task_id varchar(100) NOT NULL,
	program_id varchar(100) NOT NULL,
	squad_id varchar(100) NOT NULL,
	delete_flag bool NULL DEFAULT false,
	task_desc varchar(255) NULL,
	status varchar(50) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	portfolio varchar(100) NULL,
	entity_id varchar(100) NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	task_no varchar(50) NULL,
	in_number varchar(50) NULL,
	CONSTRAINT task_details_mst_pkey PRIMARY KEY (task_id)
);


-- public.template_additional_fields definition

-- Drop table

-- DROP TABLE public.template_additional_fields;

CREATE TABLE public.template_additional_fields (
	contract_type varchar(100) NOT NULL,
	field_name varchar(100) NOT NULL,
	field_lable varchar(100) NULL,
	field_desc varchar(255) NULL,
	value varchar(1000) NULL,
	entity_id varchar(50) NOT NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	required_flag bool NULL,
	org_unit varchar(50) NOT NULL,
	max_characters int8 NULL,
	CONSTRAINT template_additional_fields_pkey PRIMARY KEY (contract_type, field_name, entity_id, org_unit)
);


-- public.template_additional_fields_value definition

-- Drop table

-- DROP TABLE public.template_additional_fields_value;

CREATE TABLE public.template_additional_fields_value (
	contract_type varchar(100) NULL,
	contract_id varchar(100) NOT NULL,
	field_name varchar(100) NOT NULL,
	value varchar(10000) NULL,
	entity_id varchar(50) NOT NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT template_additional_fields_value_pkey PRIMARY KEY (contract_id, field_name, entity_id)
);


-- public.template_form_data_multi_vendor definition

-- Drop table

-- DROP TABLE public.template_form_data_multi_vendor;

CREATE TABLE public.template_form_data_multi_vendor (
	entity_id varchar(30) NOT NULL,
	supplier_lead varchar(10000) NULL,
	supplier_lead_reg_no varchar(10000) NULL,
	bank_lead varchar(10000) NULL,
	bank_lead_reg_no varchar(10000) NULL,
	effective_date timestamp NULL,
	modules_incorporate varchar(10000) NULL,
	supplier_entity varchar(10000) NULL,
	supplier_entity_reg_no varchar(10000) NULL,
	supplier_address varchar(10000) NULL,
	supplier_jurisdiction varchar(10000) NULL,
	bank_entity varchar(10000) NULL,
	bank_entity_reg_no varchar(10000) NULL,
	country_service_recipient varchar(10000) NULL,
	terms_conditions varchar(10000) NULL,
	signature_heading varchar(10000) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT template_form_data_multi_vendor_pkey PRIMARY KEY (entity_id)
);


-- public.timesheet_approval_history_mst definition

-- Drop table

-- DROP TABLE public.timesheet_approval_history_mst;

CREATE TABLE public.timesheet_approval_history_mst (
	index_id varchar(255) NOT NULL,
	timesheet_id varchar(255) NOT NULL,
	"action" varchar(255) NOT NULL,
	"comment" varchar(255) NULL,
	changed_on timestamp NULL,
	changed_by varchar(255) NULL,
	assigned_to varchar(255) NULL,
	is_deleted bool NULL,
	CONSTRAINT timesheet_approval_history_mst_pkey PRIMARY KEY (index_id)
);


-- public.timesheet_approval_mst definition

-- Drop table

-- DROP TABLE public.timesheet_approval_mst;

CREATE TABLE public.timesheet_approval_mst (
	timesheet_approval_id varchar(255) NOT NULL,
	timesheet_id varchar(255) NOT NULL,
	assigned_to varchar(255) NULL,
	status varchar(255) NULL,
	vendor_workflow_id varchar(255) NULL,
	vendor_approval_stage varchar(255) NULL,
	client_workflow_id varchar(255) NULL,
	client_approval_stage varchar(255) NULL,
	CONSTRAINT timesheet_approval_mst_pkey PRIMARY KEY (timesheet_approval_id, timesheet_id)
);


-- public.timesheet_approval_wip definition

-- Drop table

-- DROP TABLE public.timesheet_approval_wip;

CREATE TABLE public.timesheet_approval_wip (
	timesheet_id varchar(255) NOT NULL,
	assigned_to varchar(255) NULL,
	status varchar(255) NULL,
	vendor_workflow_id varchar(255) NULL,
	vendor_approval_stage varchar(255) NULL,
	client_workflow_id varchar(255) NULL,
	client_approval_stage varchar(255) NULL,
	CONSTRAINT timesheet_approval_wip_pkey PRIMARY KEY (timesheet_id)
);


-- public.timesheet_reopen_history_mst definition

-- Drop table

-- DROP TABLE public.timesheet_reopen_history_mst;

CREATE TABLE public.timesheet_reopen_history_mst (
	index_id varchar(255) NOT NULL,
	timesheet_id varchar(255) NOT NULL,
	"action" varchar(255) NOT NULL,
	status varchar(255) NULL,
	"comment" varchar(255) NULL,
	changed_on timestamp NULL,
	changed_by varchar(255) NULL,
	assigned_to varchar(255) NULL,
	CONSTRAINT timesheet_reopen_history_mst_pkey PRIMARY KEY (index_id)
);


-- public.timesheet_user_email_mmap definition

-- Drop table

-- DROP TABLE public.timesheet_user_email_mmap;

CREATE TABLE public.timesheet_user_email_mmap (
	mmap_id varchar(10) NOT NULL,
	vendor_email varchar(100) NULL,
	client_email varchar(100) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT timesheet_user_email_mmap_pkey PRIMARY KEY (mmap_id)
);


-- public.transfer_ownership_history_mst definition

-- Drop table

-- DROP TABLE public.transfer_ownership_history_mst;

CREATE TABLE public.transfer_ownership_history_mst (
	index_id varchar(50) NOT NULL,
	contract_id varchar(255) NOT NULL,
	entity_id varchar(255) NULL,
	previous_owner varchar(50) NOT NULL,
	new_owner varchar(50) NOT NULL,
	remark varchar(255) NULL,
	changed_by varchar(50) NOT NULL,
	changed_on timestamp NOT NULL,
	CONSTRAINT transfer_ownership_history_mst_pkey PRIMARY KEY (index_id, contract_id)
);


-- public.user_pwd_mst definition

-- Drop table

-- DROP TABLE public.user_pwd_mst;

CREATE TABLE public.user_pwd_mst (
	user_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	"password" varchar(500) NULL,
	pwd_rst_flg bool NULL,
	user_type varchar(50) NOT NULL,
	CONSTRAINT user_pwd_mst_pkey PRIMARY KEY (user_id, entity_id, user_type)
);


-- public.vendor_num_mst definition

-- Drop table

-- DROP TABLE public.vendor_num_mst;

CREATE TABLE public.vendor_num_mst (
	vendor_num_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	vendor_number varchar(20) NOT NULL,
	email varchar(100) NULL,
	address varchar(1000) NULL,
	delete_flag bool NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	updated_by varchar(50) NULL,
	CONSTRAINT vendor_num_mst_pkey PRIMARY KEY (vendor_num_id)
);


-- public.batch_job_execution definition

-- Drop table

-- DROP TABLE public.batch_job_execution;

CREATE TABLE public.batch_job_execution (
	job_execution_id int8 NOT NULL,
	"version" int8 NULL,
	job_instance_id int8 NOT NULL,
	create_time timestamp NOT NULL,
	start_time timestamp NULL,
	end_time timestamp NULL,
	status varchar(10) NULL,
	exit_code varchar(2500) NULL,
	exit_message varchar(2500) NULL,
	last_updated timestamp NULL,
	job_configuration_location varchar(2500) NULL,
	CONSTRAINT batch_job_execution_pkey PRIMARY KEY (job_execution_id),
	CONSTRAINT job_inst_exec_fk FOREIGN KEY (job_instance_id) REFERENCES public.batch_job_instance(job_instance_id)
);


-- public.batch_job_execution_context definition

-- Drop table

-- DROP TABLE public.batch_job_execution_context;

CREATE TABLE public.batch_job_execution_context (
	job_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id),
	CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id)
);


-- public.batch_job_execution_params definition

-- Drop table

-- DROP TABLE public.batch_job_execution_params;

CREATE TABLE public.batch_job_execution_params (
	job_execution_id int8 NOT NULL,
	type_cd varchar(6) NOT NULL,
	key_name varchar(100) NOT NULL,
	string_val varchar(250) NULL,
	date_val timestamp NULL,
	long_val int8 NULL,
	double_val float8 NULL,
	identifying bpchar(1) NOT NULL,
	CONSTRAINT job_exec_params_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id)
);


-- public.batch_step_execution definition

-- Drop table

-- DROP TABLE public.batch_step_execution;

CREATE TABLE public.batch_step_execution (
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
	exit_code varchar(2500) NULL,
	exit_message varchar(2500) NULL,
	last_updated timestamp NULL,
	CONSTRAINT batch_step_execution_pkey PRIMARY KEY (step_execution_id),
	CONSTRAINT job_exec_step_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id)
);


-- public.batch_step_execution_context definition

-- Drop table

-- DROP TABLE public.batch_step_execution_context;

CREATE TABLE public.batch_step_execution_context (
	step_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_step_execution_context_pkey PRIMARY KEY (step_execution_id),
	CONSTRAINT step_exec_ctx_fk FOREIGN KEY (step_execution_id) REFERENCES public.batch_step_execution(step_execution_id)
);


-- public.contract_chrge_pymt definition

-- Drop table

-- DROP TABLE public.contract_chrge_pymt;

CREATE TABLE public.contract_chrge_pymt (
	chrg_pymt_id int8 NOT NULL,
	contract_id varchar(150) NOT NULL,
	entity_id varchar(10) NOT NULL,
	deliverable varchar(100) NULL,
	fixed_amt float4 NULL,
	invoice_dtm timestamp NULL,
	project_id varchar(50) NULL,
	exclude_flag bool NULL,
	vendor_status varchar(80) NULL,
	client_status varchar(80) NULL,
	ccn_id varchar(50) NULL,
	notified bool NULL,
	client_review_start_dtm timestamp NULL,
	vendor_review_start_dtm timestamp NULL,
	CONSTRAINT contract_chrge_pymt_pkey PRIMARY KEY (chrg_pymt_id, contract_id, entity_id),
	CONSTRAINT fknu197fs0t9cc192wajo09wc5u FOREIGN KEY (contract_id,entity_id) REFERENCES public.contract_mst(contract_id,entity_id)
);


-- public.contract_deliverable definition

-- Drop table

-- DROP TABLE public.contract_deliverable;

CREATE TABLE public.contract_deliverable (
	deliverable_id int8 NOT NULL,
	contract_id varchar(150) NOT NULL,
	entity_id varchar(10) NOT NULL,
	description varchar(1000) NULL,
	"name" varchar(100) NULL,
	sign_off_criteria varchar(1000) NULL,
	project_id varchar(50) NULL,
	CONSTRAINT contract_deliverable_pkey PRIMARY KEY (deliverable_id, contract_id, entity_id),
	CONSTRAINT fkal8p8h2aj3g9pgq9q74umxkr2 FOREIGN KEY (contract_id,entity_id) REFERENCES public.contract_mst(contract_id,entity_id)
);


-- public.contract_milestone definition

-- Drop table

-- DROP TABLE public.contract_milestone;

CREATE TABLE public.contract_milestone (
	milestone_id int8 NOT NULL,
	contract_id varchar(150) NOT NULL,
	entity_id varchar(10) NOT NULL,
	description varchar(1000) NULL,
	"type" varchar(20) NULL,
	project_id varchar(50) NULL,
	CONSTRAINT contract_milestone_pkey PRIMARY KEY (milestone_id, contract_id, entity_id),
	CONSTRAINT fkfyanj7kq6t9fqkibcpegccbq6 FOREIGN KEY (contract_id,entity_id) REFERENCES public.contract_mst(contract_id,entity_id)
);


-- public.currency_history_mst definition

-- Drop table

-- DROP TABLE public.currency_history_mst;

CREATE TABLE public.currency_history_mst (
	currency_history_id varchar(10) NOT NULL,
	currency_id varchar(10) NOT NULL,
	old_exchange_rate float4 NULL,
	new_exchange_rate float4 NULL,
	from_dtm timestamp NULL,
	to_dtm timestamp NULL,
	CONSTRAINT currency_history_mst_pkey PRIMARY KEY (currency_history_id),
	CONSTRAINT currency_history_mst_fkey FOREIGN KEY (currency_id) REFERENCES public.currency_mst(currency_id)
);


-- public.dynamic_lov_mst definition

-- Drop table

-- DROP TABLE public.dynamic_lov_mst;

CREATE TABLE public.dynamic_lov_mst (
	group_id varchar(50) NOT NULL,
	lang varchar(50) NOT NULL,
	lov_key varchar(50) NOT NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	value varchar(300) NULL,
	CONSTRAINT dynamic_lov_mst_pkey PRIMARY KEY (group_id, lang, lov_key),
	CONSTRAINT fkgj5f1chl003dpnq9ut06rg3rn FOREIGN KEY (group_id) REFERENCES public.dynamic_lov_group_mst(group_id)
);


-- public.employee_timesheet_mst definition

-- Drop table

-- DROP TABLE public.employee_timesheet_mst;

CREATE TABLE public.employee_timesheet_mst (
	timesheet_id varchar(50) NOT NULL,
	contract_id varchar(50) NULL,
	project_id varchar(50) NULL,
	employee_id varchar(50) NULL,
	entity_id varchar(10) NULL,
	start_date timestamp NULL,
	end_date timestamp NULL,
	expected_hours varchar(10) NULL,
	status varchar(50) NULL,
	is_billable bool NULL,
	active_deactive varchar(10) NULL,
	remarks varchar(200) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	overtime_hours varchar(10) NULL,
	weekend_hours varchar(10) NULL,
	task_id varchar(100) NULL,
	reopen_comments varchar(200) NULL,
	CONSTRAINT employee_timesheet_mst_pkey PRIMARY KEY (timesheet_id),
	CONSTRAINT employee_timesheet_details_project_key FOREIGN KEY (project_id) REFERENCES public.project_details_mst(project_id)
);


-- public.invoice_approval_history_mst definition

-- Drop table

-- DROP TABLE public.invoice_approval_history_mst;

CREATE TABLE public.invoice_approval_history_mst (
	invoice_approval_history_id varchar(255) NOT NULL,
	invoice_approval_id varchar(255) NOT NULL,
	changed_on timestamp NOT NULL,
	changed_by varchar(255) NOT NULL,
	"role" varchar(255) NOT NULL,
	previous_status varchar(255) NULL,
	new_status varchar(255) NULL,
	"action" varchar(255) NOT NULL,
	"comment" varchar(255) NULL,
	CONSTRAINT invoice_approval_history_mst_pkey PRIMARY KEY (invoice_approval_history_id),
	CONSTRAINT invoice_approval_history_mst_fkey FOREIGN KEY (invoice_approval_id) REFERENCES public.invoice_approval_mst(invoice_approval_id)
);


-- public.monthly_closure_history_mst definition

-- Drop table

-- DROP TABLE public.monthly_closure_history_mst;

CREATE TABLE public.monthly_closure_history_mst (
	monthly_closure_history_id varchar(10) NOT NULL,
	monthly_closure_id varchar(10) NOT NULL,
	entity_id varchar(10) NOT NULL,
	org_unit_id varchar(10) NOT NULL,
	closure_period timestamp NOT NULL,
	changed_by varchar(50) NULL,
	changed_on_dtm timestamp NULL,
	"role" varchar(255) NULL,
	previous_status varchar(255) NULL,
	new_status varchar(255) NULL,
	"action" varchar(50) NULL,
	"comments" varchar(255) NULL,
	CONSTRAINT monthly_closure_history_mst_pkey PRIMARY KEY (monthly_closure_history_id),
	CONSTRAINT monthly_closure_history_mst_fkey FOREIGN KEY (monthly_closure_id) REFERENCES public.monthly_closure_mst(monthly_closure_id)
);


-- public.resource_details_mst definition

-- Drop table

-- DROP TABLE public.resource_details_mst;

CREATE TABLE public.resource_details_mst (
	resource_id varchar(100) NOT NULL,
	vendor_id varchar(100) NOT NULL,
	task_id varchar(100) NOT NULL,
	absa_id varchar(100) NOT NULL,
	first_name varchar(255) NULL,
	last_name varchar(255) NULL,
	delete_flag bool NULL DEFAULT false,
	start_date timestamp NULL,
	end_date timestamp NULL,
	allocation float8 NULL,
	"location" varchar(50) NULL,
	status varchar(50) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	allocation_id int8 NOT NULL,
	timesheet_created_flag bool NULL,
	CONSTRAINT resource_details_mst_pkey PRIMARY KEY (resource_id, vendor_id, task_id, allocation_id),
	CONSTRAINT resource_details_mst_fkey FOREIGN KEY (resource_id,vendor_id) REFERENCES public.manpower_mst(employee_id,entity_id)
);


-- public.role_entitlement_mmap definition

-- Drop table

-- DROP TABLE public.role_entitlement_mmap;

CREATE TABLE public.role_entitlement_mmap (
	entitlement_id varchar(50) NOT NULL,
	role_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	CONSTRAINT role_entitlement_mmap_pkey PRIMARY KEY (entitlement_id, role_id, entity_id),
	CONSTRAINT fk4ms4xk9h4fpm3fb82mrwvkw1r FOREIGN KEY (entitlement_id,entity_id) REFERENCES public.entitlement_mst(entitlement_id,entity_id),
	CONSTRAINT fknpcxojkpyxae9kgx6v3nmc4ab FOREIGN KEY (role_id,entity_id) REFERENCES public.role_mst(role_id,entity_id)
);


-- public.timesheet_details_mst definition

-- Drop table

-- DROP TABLE public.timesheet_details_mst;

CREATE TABLE public.timesheet_details_mst (
	timesheet_id varchar(50) NOT NULL,
	timesheet_date timestamp NOT NULL,
	working_hours varchar(10) NULL,
	task_code varchar(50) NULL,
	status varchar(50) NULL,
	remarks varchar(200) NULL,
	created_by varchar(40) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(40) NULL,
	updated_dtm timestamp NULL,
	task_id varchar(100) NOT NULL,
	expected_hours varchar(10) NULL,
	allocation_id int8 NOT NULL,
	CONSTRAINT timesheet_details_mst_pkey PRIMARY KEY (timesheet_id, timesheet_date, task_id, allocation_id),
	CONSTRAINT timesheet_details_emp_key FOREIGN KEY (timesheet_id) REFERENCES public.employee_timesheet_mst(timesheet_id)
);


-- public.user_mst definition

-- Drop table

-- DROP TABLE public.user_mst;

CREATE TABLE public.user_mst (
	user_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	authorized_by varchar(50) NULL,
	authorized_dtm timestamp NULL,
	email varchar(50) NULL,
	first_name varchar(100) NULL,
	gender varchar(1) NULL,
	last_name varchar(100) NULL,
	org_unit varchar(100) NULL,
	phone varchar(20) NULL,
	remarks varchar(150) NULL,
	secure_code varchar(20) NULL,
	status varchar(50) NULL,
	title varchar(20) NULL,
	created_dtm timestamp NULL,
	created_by varchar(50) NULL,
	updated_by varchar(50) NULL,
	updated_dtm timestamp NULL,
	user_type varchar(50) NOT NULL,
	CONSTRAINT user_mst_pkey PRIMARY KEY (user_id, entity_id, user_type),
	CONSTRAINT fkeqi0dvb3mb6xdg6xj10ledkbt FOREIGN KEY (entity_id) REFERENCES public.entity_mst(entity_id),
	CONSTRAINT fkf0bj8ybx894vfwqtyf9f8qfhj FOREIGN KEY (org_unit,entity_id) REFERENCES public.org_unit_mst(org_unit_id,entity_id)
);


-- public.user_role_mmap definition

-- Drop table

-- DROP TABLE public.user_role_mmap;

CREATE TABLE public.user_role_mmap (
	role_id varchar(50) NOT NULL,
	user_id varchar(50) NOT NULL,
	entity_id varchar(10) NOT NULL,
	user_type varchar(50) NOT NULL,
	CONSTRAINT user_role_mmap_pkey PRIMARY KEY (user_id, role_id, entity_id, user_type),
	CONSTRAINT fkctomg4uqs3h6x61d9moc309w6 FOREIGN KEY (role_id,entity_id) REFERENCES public.role_mst(role_id,entity_id)
);


-- public.workflow_criteria_mst definition

-- Drop table

-- DROP TABLE public.workflow_criteria_mst;

CREATE TABLE public.workflow_criteria_mst (
	workflow_id varchar(255) NOT NULL,
	criteria_id varchar(255) NOT NULL,
	criteria_name varchar(255) NOT NULL,
	criteria_operation varchar(255) NOT NULL,
	criteria_value varchar(255) NOT NULL,
	CONSTRAINT workflow_criteria_mst_pkey PRIMARY KEY (criteria_id),
	CONSTRAINT workflow_criteria_mst_fkey FOREIGN KEY (workflow_id) REFERENCES public.configurable_workflow_mst(workflow_id)
);


-- public.workflow_stages_mst definition

-- Drop table

-- DROP TABLE public.workflow_stages_mst;

CREATE TABLE public.workflow_stages_mst (
	workflow_id varchar(255) NOT NULL,
	stage_id varchar(255) NOT NULL,
	stage_no varchar(255) NOT NULL,
	lead_or_role varchar(255) NOT NULL,
	roles_or_names varchar(255) NOT NULL,
	signatory varchar(255) NULL,
	email_templates varchar(255) NULL,
	CONSTRAINT workflow_stages_mst_pkey PRIMARY KEY (stage_id),
	CONSTRAINT workflow_stages_mst_fkey FOREIGN KEY (workflow_id) REFERENCES public.configurable_workflow_mst(workflow_id)
);


-- public.invoice_approval_delegation_history definition

-- Drop table

-- DROP TABLE public.invoice_approval_delegation_history;

CREATE TABLE public.invoice_approval_delegation_history (
	delegation_history_id varchar(255) NOT NULL,
	invoice_approval_history_id varchar(255) NOT NULL,
	delegated_approver varchar(255) NOT NULL,
	delegated_approver_role varchar(255) NULL,
	CONSTRAINT invoice_approval_delegation_history_pkey PRIMARY KEY (delegation_history_id),
	CONSTRAINT invoice_approval_history_mst_fkey FOREIGN KEY (invoice_approval_history_id) REFERENCES public.invoice_approval_history_mst(invoice_approval_history_id)
);

---indexes---
CREATE UNIQUE INDEX rate_card_attachment_mst_pkey ON public.rate_card_attachment_mst USING btree (rate_card_attachment_id, entity_id);

CREATE UNIQUE INDEX skill_set_mst_pkey ON public.skill_set_mst USING btree (skill_set_id);

CREATE UNIQUE INDEX menu_mst_pkey ON public.menu_mst USING btree (menu_id, entity_id);

CREATE UNIQUE INDEX org_unit_mst_pkey ON public.org_unit_mst USING btree (org_unit_id, entity_id);

CREATE UNIQUE INDEX batch_job_execution_pkey ON public.batch_job_execution USING btree (job_execution_id);

CREATE UNIQUE INDEX delegation_attachment_mst_pkey ON public.delegation_attachment_mst USING btree (delegation_history_id, entity_id);

CREATE UNIQUE INDEX batch_step_execution_pkey ON public.batch_step_execution USING btree (step_execution_id);

CREATE UNIQUE INDEX holiday_location_mapping_pkey ON public.holiday_location_mapping USING btree (holiday_location_id, location_id, holiday_id);

CREATE UNIQUE INDEX squad_details_mst_pkey ON public.squad_details_mst USING btree (squad_id);

CREATE UNIQUE INDEX dual_pkey ON public.dual USING btree (id);

CREATE UNIQUE INDEX rate_card_attachment_mapping_mst_pkey ON public.rate_card_attachment_mapping_mst USING btree (rate_card_attachment_mapping_id);

CREATE UNIQUE INDEX resource_onboarding_history_mst_pkey ON public.resource_onboarding_history_mst USING btree (index_id, resource_id);

CREATE UNIQUE INDEX task_details_mst_pkey ON public.task_details_mst USING btree (task_id);

CREATE UNIQUE INDEX milestone_attachment_mst_pkey ON public.milestone_attachment_mst USING btree (attachment_id, chrg_pymt_id, contract_id);

CREATE UNIQUE INDEX invoice_approval_history_mst_pkey ON public.invoice_approval_history_mst USING btree (invoice_approval_history_id);

CREATE UNIQUE INDEX city_mst_pkey ON public.city_mst USING btree (city_id, country_id);

CREATE UNIQUE INDEX entitlement_mst_pkey ON public.entitlement_mst USING btree (entitlement_id, entity_id);

CREATE UNIQUE INDEX contract_allocation_pkey ON public.contract_allocation USING btree (allocation_id, contract_id, entity_id);

CREATE UNIQUE INDEX user_mst_pkey ON public.user_mst USING btree (user_id, entity_id, user_type);

CREATE UNIQUE INDEX buffer_details_mst_pkey ON public.buffer_resource_details_mst USING btree (buffer_id, manpower_id);

CREATE UNIQUE INDEX password_history_mst_pkey ON public.password_history_mst USING btree (user_id, entity_id, user_type, password);

CREATE UNIQUE INDEX contract_mst_pkey ON public.contract_mst USING btree (contract_id, entity_id);

CREATE UNIQUE INDEX dynamic_lov_group_mst_pkey ON public.dynamic_lov_group_mst USING btree (group_id);

CREATE UNIQUE INDEX timesheet_user_email_mmap_pkey ON public.timesheet_user_email_mmap USING btree (mmap_id);

CREATE UNIQUE INDEX entitlements_groups_mst_pkey ON public.entitlements_groups_mst USING btree (entitlement_group_name, entitlement_id);

CREATE UNIQUE INDEX holiday_mst_pkey ON public.holiday_mst USING btree (holiday_id, entity_id);

CREATE UNIQUE INDEX batch_job_execution_context_pkey ON public.batch_job_execution_context USING btree (job_execution_id);

CREATE UNIQUE INDEX batch_step_execution_context_pkey ON public.batch_step_execution_context USING btree (step_execution_id);

CREATE UNIQUE INDEX purchase_order_details_mst_pkey ON public.purchase_order_details_mst USING btree (contract_id, po_number);

CREATE UNIQUE INDEX contract_approval_mst_pkey ON public.contract_approval_mst USING btree (contract_approval_id, contract_id, entity_id);

CREATE UNIQUE INDEX invoice_details_mst_pkey ON public.invoice_details_mst USING btree (contract_id, po_number, invoice_number);

CREATE UNIQUE INDEX timesheet_approval_wip_pkey ON public.timesheet_approval_wip USING btree (timesheet_id);

CREATE UNIQUE INDEX manpower_mst_pkey ON public.manpower_mst USING btree (employee_id, entity_id);

CREATE UNIQUE INDEX sla_definition_mst_pkey ON public.sla_definition_mst USING btree (sla_id, entity_id);

CREATE UNIQUE INDEX contract_milestone_pkey ON public.contract_milestone USING btree (milestone_id, contract_id, entity_id);

CREATE UNIQUE INDEX batch_job_instance_pkey ON public.batch_job_instance USING btree (job_instance_id);

CREATE UNIQUE INDEX job_inst_un ON public.batch_job_instance USING btree (job_name, job_key);

CREATE UNIQUE INDEX contract_chrge_pymt_pkey ON public.contract_chrge_pymt USING btree (chrg_pymt_id, contract_id, entity_id);

CREATE UNIQUE INDEX vendor_num_mst_pkey ON public.vendor_num_mst USING btree (vendor_num_id);

CREATE UNIQUE INDEX role_entitlement_mmap_pkey ON public.role_entitlement_mmap USING btree (entitlement_id, role_id, entity_id);

CREATE UNIQUE INDEX currency_mst_pkey ON public.currency_mst USING btree (currency_id);

CREATE UNIQUE INDEX workflow_stages_mst_pkey ON public.workflow_stages_mst USING btree (stage_id);

CREATE UNIQUE INDEX program_details_mst_pkey ON public.program_details_mst USING btree (program_id);

CREATE UNIQUE INDEX approval_history_mst_pkey ON public.approval_history_mst USING btree (index_id);

CREATE UNIQUE INDEX audit_mst_pkey ON public.audit_mst USING btree (audit_id);

CREATE UNIQUE INDEX project_approval_mst_pkey ON public.project_approval_mst USING btree (project_approval_id, project_id);

CREATE UNIQUE INDEX monthly_closure_mst_monthly_closure_id_key ON public.monthly_closure_mst USING btree (monthly_closure_id);

CREATE UNIQUE INDEX monthly_closure_mst_pkey ON public.monthly_closure_mst USING btree (monthly_closure_id, entity_id, org_unit_id, closure_period);

CREATE UNIQUE INDEX monthly_closure_history_mst_pkey ON public.monthly_closure_history_mst USING btree (monthly_closure_history_id);

CREATE UNIQUE INDEX email_template_mst_pkey ON public.email_template_mst USING btree (template_id, entity_id);

CREATE UNIQUE INDEX invoice_approval_mst_pkey ON public.invoice_approval_mst USING btree (invoice_approval_id);

CREATE UNIQUE INDEX user_role_mmap_pkey ON public.user_role_mmap USING btree (user_id, role_id, entity_id, user_type);

CREATE UNIQUE INDEX funding_line_item_pkey ON public.funding_line_item USING btree (contract_id, funding_item_name);

CREATE UNIQUE INDEX org_unit_lead_pkey ON public.org_unit_lead USING btree (org_unit_lead_id, org_unit_id, entity_id);

CREATE UNIQUE INDEX transfer_ownership_history_mst_pkey ON public.transfer_ownership_history_mst USING btree (index_id, contract_id);

CREATE UNIQUE INDEX program_vendor_details_mst_pkey ON public.program_vendor_details_mst USING btree (program_id, vendor_id);

CREATE UNIQUE INDEX resource_onboard_mst_pkey ON public.resource_onboard_mst USING btree (resource_id, entity_id);

CREATE UNIQUE INDEX timesheet_details_mst_pkey ON public.timesheet_details_mst USING btree (timesheet_id, timesheet_date, task_id, allocation_id);

CREATE UNIQUE INDEX configuration_mst_pkey ON public.configuration_mst USING btree (config_key);

CREATE UNIQUE INDEX invalid_attempts_mst_pkey ON public.invalid_attempts_mst USING btree (attempt_id, user_id, entity_id);

CREATE UNIQUE INDEX configurable_workflow_mst_pkey ON public.configurable_workflow_mst USING btree (workflow_id);

CREATE UNIQUE INDEX approver_mst_pkey ON public.approver_mst USING btree (approver_id);

CREATE UNIQUE INDEX location_mst_pkey ON public.location_mst USING btree (location_id, city_id);

CREATE UNIQUE INDEX attachment_mst_pkey ON public.attachment_mst USING btree (attachment_id, entity_id);

CREATE UNIQUE INDEX user_pwd_mst_pkey ON public.user_pwd_mst USING btree (user_id, entity_id, user_type);

CREATE UNIQUE INDEX contract_deliverable_pkey ON public.contract_deliverable USING btree (deliverable_id, contract_id, entity_id);

CREATE UNIQUE INDEX template_additional_fields_pkey ON public.template_additional_fields USING btree (contract_type, field_name, entity_id, org_unit);

CREATE UNIQUE INDEX role_mst_pkey ON public.role_mst USING btree (role_id, entity_id);

CREATE UNIQUE INDEX contract_delegation_mst_key ON public.contract_delegation_mst USING btree (index_id, from_user, entity_id);

CREATE UNIQUE INDEX funding_source_pkey ON public.funding_source USING btree (contract_id, funding_source_name);

CREATE UNIQUE INDEX delegation_active_user_pkey ON public.delegation_active_user_mst USING btree (delegation_id, from_user, to_user, entity_id);

CREATE UNIQUE INDEX entity_mst_pkey ON public.entity_mst USING btree (entity_id);

CREATE UNIQUE INDEX template_additional_fields_value_pkey ON public.template_additional_fields_value USING btree (contract_id, field_name, entity_id);

CREATE UNIQUE INDEX currency_history_mst_pkey ON public.currency_history_mst USING btree (currency_history_id);

CREATE UNIQUE INDEX rate_card_mst_pkey ON public.rate_card_mst USING btree (rate_card_id, entity_id);

CREATE UNIQUE INDEX delegation_mst_pkey ON public.delegation_mst USING btree (delegation_id, entity_id);

CREATE UNIQUE INDEX country_mst_pkey ON public.country_mst USING btree (country_id, entity_id);

CREATE UNIQUE INDEX delegation_history_mst_pkey ON public.delegation_history_mst USING btree (delegation_history_id, entity_id);

CREATE UNIQUE INDEX remittance_details_mst_pkey ON public.remittance_details_mst USING btree (remittance_no, invoice_no);

CREATE UNIQUE INDEX squad_vendor_details_mst_pkey ON public.squad_vendor_details_mst USING btree (program_id, squad_id, vendor_id);

CREATE UNIQUE INDEX template_form_data_multi_vendor_pkey ON public.template_form_data_multi_vendor USING btree (entity_id);

CREATE UNIQUE INDEX delta_reports_mst_pkey ON public.delta_reports_mst USING btree (delta_id);

CREATE UNIQUE INDEX timesheet_approval_history_mst_pkey ON public.timesheet_approval_history_mst USING btree (index_id);

CREATE UNIQUE INDEX resource_details_mst_pkey ON public.resource_details_mst USING btree (resource_id, vendor_id, task_id, allocation_id);

CREATE UNIQUE INDEX employee_timesheet_mst_pkey ON public.employee_timesheet_mst USING btree (timesheet_id);

CREATE UNIQUE INDEX timesheet_approval_mst_pkey ON public.timesheet_approval_mst USING btree (timesheet_approval_id, timesheet_id);

CREATE UNIQUE INDEX delegation_entitlements_mmap_pkey ON public.delegation_entitlements_mmap USING btree (delegation_id, entitlement_group_name, entity_id);

CREATE UNIQUE INDEX invoice_approval_delegation_history_pkey ON public.invoice_approval_delegation_history USING btree (delegation_history_id);

CREATE UNIQUE INDEX timesheet_reopen_history_mst_pkey ON public.timesheet_reopen_history_mst USING btree (index_id);

CREATE UNIQUE INDEX workflow_criteria_mst_pkey ON public.workflow_criteria_mst USING btree (criteria_id);

CREATE UNIQUE INDEX project_details_mst_pkey ON public.project_details_mst USING btree (project_id);

CREATE UNIQUE INDEX dynamic_lov_mst_pkey ON public.dynamic_lov_mst USING btree (group_id, lang, lov_key);

---sequences---
-- public.approver_id_seq definition

-- DROP SEQUENCE public.approver_id_seq;

CREATE SEQUENCE public.approver_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.attachment_seq definition

-- DROP SEQUENCE public.attachment_seq;

CREATE SEQUENCE public.attachment_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1000
	CACHE 1
	NO CYCLE;


-- public.audit_mst_audit_id_seq definition

-- DROP SEQUENCE public.audit_mst_audit_id_seq;

CREATE SEQUENCE public.audit_mst_audit_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;


-- public.batch_job_execution_seq definition

-- DROP SEQUENCE public.batch_job_execution_seq;

CREATE SEQUENCE public.batch_job_execution_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- public.batch_job_seq definition

-- DROP SEQUENCE public.batch_job_seq;

CREATE SEQUENCE public.batch_job_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- public.batch_step_execution_seq definition

-- DROP SEQUENCE public.batch_step_execution_seq;

CREATE SEQUENCE public.batch_step_execution_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;


-- public.buffer_resource_details_mst_seq definition

-- DROP SEQUENCE public.buffer_resource_details_mst_seq;

CREATE SEQUENCE public.buffer_resource_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.city_details_mst_seq definition

-- DROP SEQUENCE public.city_details_mst_seq;

CREATE SEQUENCE public.city_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.configurable_workflow_seq definition

-- DROP SEQUENCE public.configurable_workflow_seq;

CREATE SEQUENCE public.configurable_workflow_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.contract_approval_seq definition

-- DROP SEQUENCE public.contract_approval_seq;

CREATE SEQUENCE public.contract_approval_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.contract_delegation_mst_seq definition

-- DROP SEQUENCE public.contract_delegation_mst_seq;

CREATE SEQUENCE public.contract_delegation_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.contract_seq definition

-- DROP SEQUENCE public.contract_seq;

CREATE SEQUENCE public.contract_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 2001
	CACHE 1
	NO CYCLE;


-- public.country_details_mst_seq definition

-- DROP SEQUENCE public.country_details_mst_seq;

CREATE SEQUENCE public.country_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.currency_history_seq definition

-- DROP SEQUENCE public.currency_history_seq;

CREATE SEQUENCE public.currency_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.currency_mst_seq definition

-- DROP SEQUENCE public.currency_mst_seq;

CREATE SEQUENCE public.currency_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.delegation_history_seq definition

-- DROP SEQUENCE public.delegation_history_seq;

CREATE SEQUENCE public.delegation_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.delegation_mst_seq definition

-- DROP SEQUENCE public.delegation_mst_seq;

CREATE SEQUENCE public.delegation_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.delta_reports_seq definition

-- DROP SEQUENCE public.delta_reports_seq;

CREATE SEQUENCE public.delta_reports_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.engagement_fp_seq definition

-- DROP SEQUENCE public.engagement_fp_seq;

CREATE SEQUENCE public.engagement_fp_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.engagement_tm_seq definition

-- DROP SEQUENCE public.engagement_tm_seq;

CREATE SEQUENCE public.engagement_tm_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.holiday_location_details_mst_seq definition

-- DROP SEQUENCE public.holiday_location_details_mst_seq;

CREATE SEQUENCE public.holiday_location_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.holiday_seq definition

-- DROP SEQUENCE public.holiday_seq;

CREATE SEQUENCE public.holiday_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.index_for_approval_history definition

-- DROP SEQUENCE public.index_for_approval_history;

CREATE SEQUENCE public.index_for_approval_history
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.invoice_approval_delegation_history_seq definition

-- DROP SEQUENCE public.invoice_approval_delegation_history_seq;

CREATE SEQUENCE public.invoice_approval_delegation_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.invoice_approval_history_seq definition

-- DROP SEQUENCE public.invoice_approval_history_seq;

CREATE SEQUENCE public.invoice_approval_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.invoice_approval_seq definition

-- DROP SEQUENCE public.invoice_approval_seq;

CREATE SEQUENCE public.invoice_approval_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.invoice_detail_seq definition

-- DROP SEQUENCE public.invoice_detail_seq;

CREATE SEQUENCE public.invoice_detail_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.location_details_mst_seq definition

-- DROP SEQUENCE public.location_details_mst_seq;

CREATE SEQUENCE public.location_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.mapping_id_seq definition

-- DROP SEQUENCE public.mapping_id_seq;

CREATE SEQUENCE public.mapping_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.milestone_attachment_seq definition

-- DROP SEQUENCE public.milestone_attachment_seq;

CREATE SEQUENCE public.milestone_attachment_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.monthly_closure_history_seq definition

-- DROP SEQUENCE public.monthly_closure_history_seq;

CREATE SEQUENCE public.monthly_closure_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.monthly_closure_seq definition

-- DROP SEQUENCE public.monthly_closure_seq;

CREATE SEQUENCE public.monthly_closure_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.offline_foo_seq definition

-- DROP SEQUENCE public.offline_foo_seq;

CREATE SEQUENCE public.offline_foo_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.org_seq definition

-- DROP SEQUENCE public.org_seq;

CREATE SEQUENCE public.org_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 30
	CACHE 1
	NO CYCLE;


-- public.program_details_mst_seq definition

-- DROP SEQUENCE public.program_details_mst_seq;

CREATE SEQUENCE public.program_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.project_approval_seq definition

-- DROP SEQUENCE public.project_approval_seq;

CREATE SEQUENCE public.project_approval_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.project_seq definition

-- DROP SEQUENCE public.project_seq;

CREATE SEQUENCE public.project_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.rate_card_attachment_seq definition

-- DROP SEQUENCE public.rate_card_attachment_seq;

CREATE SEQUENCE public.rate_card_attachment_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.rate_card_seq definition

-- DROP SEQUENCE public.rate_card_seq;

CREATE SEQUENCE public.rate_card_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1600
	CACHE 1
	NO CYCLE;


-- public.resource_det_allocation_seq definition

-- DROP SEQUENCE public.resource_det_allocation_seq;

CREATE SEQUENCE public.resource_det_allocation_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.resource_onboarding_history_seq definition

-- DROP SEQUENCE public.resource_onboarding_history_seq;

CREATE SEQUENCE public.resource_onboarding_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.role_seq definition

-- DROP SEQUENCE public.role_seq;

CREATE SEQUENCE public.role_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.skill_set_seq definition

-- DROP SEQUENCE public.skill_set_seq;

CREATE SEQUENCE public.skill_set_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.sla_def_mst_seq definition

-- DROP SEQUENCE public.sla_def_mst_seq;

CREATE SEQUENCE public.sla_def_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.squad_details_mst_seq definition

-- DROP SEQUENCE public.squad_details_mst_seq;

CREATE SEQUENCE public.squad_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.task_details_mst_seq definition

-- DROP SEQUENCE public.task_details_mst_seq;

CREATE SEQUENCE public.task_details_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.timesheet_approval_history_mst_seq definition

-- DROP SEQUENCE public.timesheet_approval_history_mst_seq;

CREATE SEQUENCE public.timesheet_approval_history_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.timesheet_approval_seq definition

-- DROP SEQUENCE public.timesheet_approval_seq;

CREATE SEQUENCE public.timesheet_approval_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.timesheet_reopen_history_mst_seq definition

-- DROP SEQUENCE public.timesheet_reopen_history_mst_seq;

CREATE SEQUENCE public.timesheet_reopen_history_mst_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.timesheet_seq definition

-- DROP SEQUENCE public.timesheet_seq;

CREATE SEQUENCE public.timesheet_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.timesheet_user_email_mmap_seq definition

-- DROP SEQUENCE public.timesheet_user_email_mmap_seq;

CREATE SEQUENCE public.timesheet_user_email_mmap_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.transfer_ownership_history_seq definition

-- DROP SEQUENCE public.transfer_ownership_history_seq;

CREATE SEQUENCE public.transfer_ownership_history_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.vendor_num_seq definition

-- DROP SEQUENCE public.vendor_num_seq;

CREATE SEQUENCE public.vendor_num_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.workflow_criteria_seq definition

-- DROP SEQUENCE public.workflow_criteria_seq;

CREATE SEQUENCE public.workflow_criteria_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;


-- public.workflow_stages_seq definition

-- DROP SEQUENCE public.workflow_stages_seq;

CREATE SEQUENCE public.workflow_stages_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999
	START 1
	CACHE 1
	NO CYCLE;

