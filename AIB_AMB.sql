-- AIB/AMB Back-Up

-- Databases
-- aib-backend
	-- Schemas
		-- public

			-- Tables

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


-- public.branch definition

-- Drop table

-- DROP TABLE public.branch;

CREATE TABLE public.branch (
	branch_name varchar NULL,
	city varchar NULL,
	branch_code numeric NULL,
	business_id varchar NULL,
	addr_line1 varchar NULL,
	addr_line2 varchar NULL,
	addr_line3 varchar NULL,
	region varchar NULL,
	area varchar NULL,
	postal_cd numeric NULL
);


-- public.c_biller_mst definition

-- Drop table

-- DROP TABLE public.c_biller_mst;

CREATE TABLE public.c_biller_mst (
	business_id varchar(1024) NULL,
	biller_id varchar(1024) NULL,
	biller_nm varchar(1024) NULL,
	biller_category_id varchar(1024) NULL,
	biller_category_nm varchar(1024) NULL,
	presentment_flg varchar(1024) NULL,
	ref_no_text_1 varchar(1024) NULL,
	ref_no_text_2 varchar(1024) NULL,
	transaction_fee varchar(1024) NULL,
	bill_aggregator_id varchar(1024) NULL,
	currency varchar(1024) NULL,
	support_creditcard_flg varchar(1024) NULL,
	online_biller_flg varchar(1024) NULL,
	payee_ref_fields varchar(1024) NULL,
	mobile_denomination varchar(1024) NULL,
	service_type varchar(1024) NULL,
	external_biller_id varchar(1024) NULL,
	min_payment_amount varchar(1024) NULL,
	branch_code varchar(1024) NULL,
	biller_account_number varchar(1024) NULL,
	max_payment_amount varchar(1024) NULL,
	ref_no_key_1 varchar(1024) NULL,
	ref_no_key_2 varchar(1024) NULL,
	billholder_required varchar(1024) NULL,
	payee_support varchar(1024) NULL,
	ref_no_validation_1 varchar(1024) NULL,
	ref_no_validation_2 varchar(1024) NULL,
	atm_support varchar(1024) NULL,
	status varchar(1024) NULL,
	ref_no_validation_type_1 varchar(1024) NULL,
	ref_no_validation_type_2 varchar(1024) NULL,
	ref_no_message_key_1 varchar(1024) NULL,
	ref_no_message_key_2 varchar(1024) NULL,
	ref_no_hint_display_mode_1 varchar(1024) NULL,
	ref_no_hint_display_mode_2 varchar(1024) NULL,
	si_company varchar(1024) NULL,
	si_service_type varchar(1024) NULL,
	si_payment_mode varchar(1024) NULL,
	amount_ref_key varchar(1024) NULL,
	amount_editable varchar(1024) NULL,
	charge_task_code varchar(1024) NULL,
	country_code varchar(1024) NULL,
	request_map varchar(1024) NULL,
	response_map varchar(1024) NULL,
	presentment_display_fields varchar(1024) NULL,
	amount_component_type varchar(1024) NULL,
	invoice_count varchar(1024) NULL,
	payee_type varchar(1024) NULL,
	bank_code varchar(1024) NULL,
	non_absa_biller_acc varchar(1024) NULL
);


-- public.c_component_mst definition

-- Drop table

-- DROP TABLE public.c_component_mst;

CREATE TABLE public.c_component_mst (
	screen_id varchar(1024) NULL,
	system_id varchar(1024) NULL,
	business_id varchar(1024) NULL,
	component_key varchar(1024) NULL,
	rendered_flg varchar(1024) NULL,
	required_flg varchar(1024) NULL,
	has_help_text_flg varchar(1024) NULL,
	formatter_id varchar(1024) NULL,
	listvalue_group_id varchar(1024) NULL,
	default_value varchar(1024) NULL,
	disp_order varchar(1024) NULL,
	parent_component_key varchar(1024) NULL,
	modified_by varchar(1024) NULL,
	modified_dtm varchar(1024) NULL,
	authorized_by varchar(1024) NULL,
	authorized_dtm varchar(1024) NULL,
	delete_flg varchar(1024) NULL,
	config_flg varchar(1024) NULL,
	component_type varchar(1024) NULL,
	readonly_flg varchar(1024) NULL
);


-- public.c_component_res_mst definition

-- Drop table

-- DROP TABLE public.c_component_res_mst;

CREATE TABLE public.c_component_res_mst (
	language_id varchar(1024) NULL,
	label_value varchar(1024) NULL,
	tool_tip varchar(1024) NULL,
	help_text varchar(1024) NULL,
	length varchar(1024) NULL,
	screen_id varchar(1024) NULL,
	system_id varchar(1024) NULL,
	business_id varchar(1024) NULL,
	component_key varchar(1024) NULL
);


-- public.c_formatter_mst definition

-- Drop table

-- DROP TABLE public.c_formatter_mst;

CREATE TABLE public.c_formatter_mst (
	formatter_id varchar(1024) NULL,
	formatter_string varchar(1024) NULL,
	system_id varchar(1024) NULL,
	business_id varchar(1024) NULL,
	maker_id varchar(1024) NULL,
	checker_id varchar(1024) NULL,
	status varchar(1024) NULL,
	last_modified varchar(1024) NULL,
	last_authorized varchar(1024) NULL,
	"action" varchar(1024) NULL,
	deleted_flag varchar(1024) NULL,
	authorized_indicator varchar(1024) NULL,
	message_key varchar(1024) NULL
);


-- public.c_product_eligibility definition

-- Drop table

-- DROP TABLE public.c_product_eligibility;

CREATE TABLE public.c_product_eligibility (
	serial_number varchar(1024) NULL,
	business_id varchar(1024) NULL,
	activity_id varchar(1024) NULL,
	role_category_cd varchar(1024) NULL,
	prd_crdr_ind varchar(1024) NULL,
	prd_code varchar(1024) NULL,
	prd_category varchar(1024) NULL,
	inc_or_exc varchar(1024) NULL,
	account_status varchar(1024) NULL,
	account_block_code1 varchar(1024) NULL,
	account_block_code2 varchar(1024) NULL,
	card_type varchar(1024) NULL,
	card_status varchar(1024) NULL,
	card_block_code varchar(1024) NULL,
	system_id varchar(1024) NULL,
	"exception" varchar(1024) NULL
);


-- public.enhanced_entitlement definition

-- Drop table

-- DROP TABLE public.enhanced_entitlement;

CREATE TABLE public.enhanced_entitlement (
	serial_number uuid NOT NULL,
	activity_id varchar(255) NULL,
	business_id varchar(255) NULL,
	customer_type_allowed varchar(255) NULL,
	relation_ship_not_allowed varchar(255) NULL,
	system_id varchar(255) NULL,
	CONSTRAINT enhanced_entitlement_pkey PRIMARY KEY (serial_number)
);


-- public.feature_blackout definition

-- Drop table

-- DROP TABLE public.feature_blackout;

CREATE TABLE public.feature_blackout (
	serial_number uuid NOT NULL,
	activity_id varchar(255) NULL,
	blackout_message varchar(255) NULL,
	blackout_state varchar(255) NULL,
	business_id varchar(255) NULL,
	customer_type varchar(255) NULL,
	end_date timestamp NULL,
	internet_enabled varchar(255) NULL,
	start_date timestamp NULL,
	system_id varchar(255) NULL,
	CONSTRAINT feature_blackout_pkey PRIMARY KEY (serial_number)
);


-- public.product definition

-- Drop table

-- DROP TABLE public.product;

CREATE TABLE public.product (
	product_code varchar(255) NOT NULL,
	business_id varchar(255) NULL,
	currency_code varchar(255) NULL,
	delete_flag varchar(255) NULL,
	esaver_ind varchar(255) NULL,
	expiry_date timestamp NULL,
	internet_enabled varchar(255) NULL,
	product_desc varchar(255) NULL,
	product_group varchar(255) NULL,
	support_cheque varchar(255) NULL,
	CONSTRAINT product_pkey PRIMARY KEY (product_code)
);


-- public.product_eligibility definition

-- Drop table

-- DROP TABLE public.product_eligibility;

CREATE TABLE public.product_eligibility (
	serial_number uuid NOT NULL,
	account_status varchar(255) NULL,
	activity_id varchar(255) NULL,
	business_id varchar(255) NULL,
	delete_flag varchar(255) NULL,
	inc_or_exc varchar(255) NULL,
	product_code varchar(255) NULL,
	product_group varchar(255) NULL,
	product_indicator varchar(255) NULL,
	system_id varchar(255) NULL,
	CONSTRAINT product_eligibility_pkey PRIMARY KEY (serial_number)
);


-- public.s_sysparam_mst definition

-- Drop table

-- DROP TABLE public.s_sysparam_mst;

CREATE TABLE public.s_sysparam_mst (
	business_id varchar(1024) NULL,
	system_id varchar(1024) NULL,
	param_id varchar(1024) NULL,
	param_value varchar(1024) NULL,
	param_component_key varchar(1024) NULL,
	activity_id varchar(1024) NULL,
	system_maintain varchar(1024) NULL,
	disp_type varchar(1024) NULL,
	modified_dtm varchar(1024) NULL,
	modified_by varchar(1024) NULL,
	authorised_by varchar(1024) NULL,
	authorised_dtm varchar(1024) NULL,
	delete_flg varchar(1024) NULL,
	param_desc varchar(1024) NULL,
	created_by varchar(1024) NULL,
	created_dtm varchar(1024) NULL
);


-- public.test_112 definition

-- Drop table

-- DROP TABLE public.test_112;

CREATE TABLE public.test_112 (
	v_id int4 NULL,
	v_name varchar(100) NULL
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

			-- Foreign Tables
			-- Views
			-- Materialized Views
			-- Indexes

CREATE UNIQUE INDEX batch_job_execution_pkey ON public.batch_job_execution USING btree (job_execution_id);

CREATE UNIQUE INDEX product_eligibility_pkey ON public.product_eligibility USING btree (serial_number);

CREATE UNIQUE INDEX batch_step_execution_pkey ON public.batch_step_execution USING btree (step_execution_id);

CREATE UNIQUE INDEX enhanced_entitlement_pkey ON public.enhanced_entitlement USING btree (serial_number);

CREATE UNIQUE INDEX batch_job_instance_pkey ON public.batch_job_instance USING btree (job_instance_id);

CREATE UNIQUE INDEX job_inst_un ON public.batch_job_instance USING btree (job_name, job_key);

CREATE UNIQUE INDEX feature_blackout_pkey ON public.feature_blackout USING btree (serial_number);

CREATE UNIQUE INDEX product_pkey ON public.product USING btree (product_code);

CREATE UNIQUE INDEX batch_step_execution_context_pkey ON public.batch_step_execution_context USING btree (step_execution_id);

CREATE UNIQUE INDEX batch_job_execution_context_pkey ON public.batch_job_execution_context USING btree (job_execution_id);

			-- Functions

-- DROP FUNCTION public.armor(bytea);

CREATE OR REPLACE FUNCTION public.armor(bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_armor$function$
;

-- DROP FUNCTION public.armor(bytea, _text, _text);

CREATE OR REPLACE FUNCTION public.armor(bytea, text[], text[])
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_armor$function$
;

-- DROP FUNCTION public.crypt(text, text);

CREATE OR REPLACE FUNCTION public.crypt(text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_crypt$function$
;

-- DROP FUNCTION public.dearmor(text);

CREATE OR REPLACE FUNCTION public.dearmor(text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_dearmor$function$
;

-- DROP FUNCTION public.decrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.decrypt(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_decrypt$function$
;

-- DROP FUNCTION public.decrypt_iv(bytea, bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.decrypt_iv(bytea, bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_decrypt_iv$function$
;

-- DROP FUNCTION public.digest(bytea, text);

CREATE OR REPLACE FUNCTION public.digest(bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_digest$function$
;

-- DROP FUNCTION public.digest(text, text);

CREATE OR REPLACE FUNCTION public.digest(text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_digest$function$
;

-- DROP FUNCTION public.encrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.encrypt(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_encrypt$function$
;

-- DROP FUNCTION public.encrypt_iv(bytea, bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.encrypt_iv(bytea, bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_encrypt_iv$function$
;

-- DROP FUNCTION public.gen_random_bytes(int4);

CREATE OR REPLACE FUNCTION public.gen_random_bytes(integer)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_random_bytes$function$
;

-- DROP FUNCTION public.gen_random_uuid();

CREATE OR REPLACE FUNCTION public.gen_random_uuid()
 RETURNS uuid
 LANGUAGE c
 PARALLEL SAFE
AS '$libdir/pgcrypto', $function$pg_random_uuid$function$
;

-- DROP FUNCTION public.gen_salt(text, int4);

CREATE OR REPLACE FUNCTION public.gen_salt(text, integer)
 RETURNS text
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_gen_salt_rounds$function$
;

-- DROP FUNCTION public.gen_salt(text);

CREATE OR REPLACE FUNCTION public.gen_salt(text)
 RETURNS text
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_gen_salt$function$
;

-- DROP FUNCTION public.hmac(text, text, text);

CREATE OR REPLACE FUNCTION public.hmac(text, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_hmac$function$
;

-- DROP FUNCTION public.hmac(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.hmac(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pg_hmac$function$
;

-- DROP FUNCTION public.oracle_close_connections();

CREATE OR REPLACE FUNCTION public.oracle_close_connections()
 RETURNS void
 LANGUAGE c
 STRICT
AS '/usr/pgsql-12/share/extension/oracle_fdw', $function$oracle_close_connections$function$
;

COMMENT ON FUNCTION public.oracle_close_connections() IS 'closes all open Oracle connections';

-- DROP FUNCTION public.oracle_diag(name);

CREATE OR REPLACE FUNCTION public.oracle_diag(name DEFAULT NULL::name)
 RETURNS text
 LANGUAGE c
 STABLE
AS '/usr/pgsql-12/share/extension/oracle_fdw', $function$oracle_diag$function$
;

COMMENT ON FUNCTION public.oracle_diag(name) IS 'shows the version of oracle_fdw, PostgreSQL, Oracle client and Oracle server';

-- DROP FUNCTION public.oracle_execute(name, text);

CREATE OR REPLACE FUNCTION public.oracle_execute(server name, statement text)
 RETURNS void
 LANGUAGE c
 STRICT
AS '/usr/pgsql-12/share/extension/oracle_fdw', $function$oracle_execute$function$
;

COMMENT ON FUNCTION public.oracle_execute(name, text) IS 'executes an arbitrary SQL statement with no results on the Oracle server';

-- DROP FUNCTION public.oracle_fdw_handler();

CREATE OR REPLACE FUNCTION public.oracle_fdw_handler()
 RETURNS fdw_handler
 LANGUAGE c
 STRICT
AS '/usr/pgsql-12/share/extension/oracle_fdw', $function$oracle_fdw_handler$function$
;

COMMENT ON FUNCTION public.oracle_fdw_handler() IS 'Oracle foreign data wrapper handler';

-- DROP FUNCTION public.oracle_fdw_validator(_text, oid);

CREATE OR REPLACE FUNCTION public.oracle_fdw_validator(text[], oid)
 RETURNS void
 LANGUAGE c
 STRICT
AS '/usr/pgsql-12/share/extension/oracle_fdw', $function$oracle_fdw_validator$function$
;

COMMENT ON FUNCTION public.oracle_fdw_validator(_text, oid) IS 'Oracle foreign data wrapper options validator';

-- DROP FUNCTION public.pgp_armor_headers(in text, out text, out text);

CREATE OR REPLACE FUNCTION public.pgp_armor_headers(text, OUT key text, OUT value text)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_armor_headers$function$
;

-- DROP FUNCTION public.pgp_key_id(bytea);

CREATE OR REPLACE FUNCTION public.pgp_key_id(bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_key_id_w$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea, text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt(bytea, bytea, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_decrypt_bytea(bytea, bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt(text, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt(text, bytea)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt(text, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt(text, bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea);

CREATE OR REPLACE FUNCTION public.pgp_pub_encrypt_bytea(bytea, bytea)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_pub_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt(bytea, text, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt(bytea, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt_bytea(bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_decrypt_bytea(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_decrypt_bytea(bytea, text)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_decrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt(text, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt(text, text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt(text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt(text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_text$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt_bytea(bytea, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt_bytea(bytea, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_bytea$function$
;

-- DROP FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text);

CREATE OR REPLACE FUNCTION public.pgp_sym_encrypt_bytea(bytea, text, text)
 RETURNS bytea
 LANGUAGE c
 PARALLEL SAFE STRICT
AS '$libdir/pgcrypto', $function$pgp_sym_encrypt_bytea$function$
;

			-- Sequences

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


-- public.c_product_eligibility_sequence definition

-- DROP SEQUENCE public.c_product_eligibility_sequence;

CREATE SEQUENCE public.c_product_eligibility_sequence
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 227999
	CACHE 20
	NO CYCLE;

			-- Data types
			-- Aggregate functions

		-- ssabira

			-- Tables

-- ssabira.batch_job_instance definition

-- Drop table

-- DROP TABLE ssabira.batch_job_instance;

CREATE TABLE ssabira.batch_job_instance (
	job_instance_id int8 NOT NULL,
	"version" int8 NULL,
	job_name varchar(100) NOT NULL,
	job_key varchar(2500) NULL,
	CONSTRAINT batch_job_instance_pkey PRIMARY KEY (job_instance_id)
);


-- ssabira.bnpl_cust_config definition

-- Drop table

-- DROP TABLE ssabira.bnpl_cust_config;

CREATE TABLE ssabira.bnpl_cust_config (
	business_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	bnpl_info_display_flag bpchar(1) NULL,
	system_id varchar(10) NOT NULL,
	CONSTRAINT bnpl_cust_config_pkey PRIMARY KEY (business_id, user_id, system_id)
);


-- ssabira.bnpl_cust_config_bkp definition

-- Drop table

-- DROP TABLE ssabira.bnpl_cust_config_bkp;

CREATE TABLE ssabira.bnpl_cust_config_bkp (
	business_id varchar(10) NULL,
	user_id varchar(40) NULL,
	bnpl_info_display_flag bpchar(1) NULL,
	system_id varchar(10) NULL
);


-- ssabira.c_app_semantic_version definition

-- Drop table

-- DROP TABLE ssabira.c_app_semantic_version;

CREATE TABLE ssabira.c_app_semantic_version (
	app_semver_id serial4 NOT NULL,
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	build_typ varchar(10) NOT NULL,
	build_version varchar(20) NOT NULL,
	build_dt timestamp NULL,
	CONSTRAINT c_app_semantic_version_pkey PRIMARY KEY (app_semver_id),
	CONSTRAINT unique_constraint_c_app_semantic_version UNIQUE (business_id, system_id, build_typ, build_version)
);


-- ssabira.c_bank_branch_pmt_chn definition

-- Drop table

-- DROP TABLE ssabira.c_bank_branch_pmt_chn;

CREATE TABLE ssabira.c_bank_branch_pmt_chn (
	business_id varchar(10) NOT NULL,
	bank_cd varchar(20) NOT NULL,
	branch_cd varchar(20) NOT NULL,
	payment_channel_id varchar(40) NOT NULL,
	payment_channel_fee numeric(19, 3) NULL,
	CONSTRAINT c_bank_branch_pmt_chn_pkey PRIMARY KEY (business_id, bank_cd, branch_cd, payment_channel_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_bankrouting_mst definition

-- Drop table

-- DROP TABLE ssabira.c_bankrouting_mst;

CREATE TABLE ssabira.c_bankrouting_mst (
	bankcode varchar(10) NOT NULL,
	bankname varchar(80) NULL,
	branchcode varchar(10) NOT NULL,
	branchname varchar(80) NULL,
	business_id varchar(10) NOT NULL,
	bank_routing_code varchar(20) NULL,
	city_name varchar(80) NULL,
	bank_clearing_code varchar(15) NULL,
	swift_code varchar(20) NULL,
	bank_account_no_length int4 NULL,
	CONSTRAINT c_bankrouting_mst_pkey PRIMARY KEY (bankcode, branchcode, business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_bankrouting_mst_temp definition

-- Drop table

-- DROP TABLE ssabira.c_bankrouting_mst_temp;

CREATE TABLE ssabira.c_bankrouting_mst_temp (
	bankcode varchar(10) NOT NULL,
	bankname varchar(80) NULL,
	branchcode varchar(10) NOT NULL,
	branchname varchar(80) NULL,
	business_id varchar(10) NOT NULL,
	bank_routing_code varchar(20) NULL,
	city_name varchar(80) NULL,
	CONSTRAINT c_bankrouting_mst_temp_pkey PRIMARY KEY (bankcode, branchcode, business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_banner_details definition

-- Drop table

-- DROP TABLE ssabira.c_banner_details;

CREATE TABLE ssabira.c_banner_details (
	business_id varchar(10) NOT NULL,
	country_code varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	banner_txt varchar NULL,
	banner_btn_title varchar NULL,
	banner_url varchar NULL,
	banner_sequence numeric NULL,
	"isActive" bool NULL,
	available_from date NULL,
	available_to date NULL,
	language_code varchar(10) NULL,
	CONSTRAINT c_banner_details_pkey PRIMARY KEY (business_id, country_code, system_id)
);


-- ssabira.c_biller_details_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_details_mst;

CREATE TABLE ssabira.c_biller_details_mst (
	biller_id varchar(40) NOT NULL,
	biller_nm varchar(80) NULL,
	business_id varchar(10) NOT NULL,
	biller_category_id varchar(40) NULL,
	biller_category_nm varchar(80) NULL,
	presentment_flg bpchar(1) NULL,
	bill_aggregator_id varchar(40) NULL,
	online_biller_flg bpchar(1) NULL,
	payee_ref_fields varchar(20) NULL,
	billholder_required varchar(1) NULL,
	payee_support varchar(1) NULL,
	atm_support varchar(1) NULL,
	status varchar(30) NULL,
	country_code varchar(3) NULL,
	presentment_display_fields varchar(2000) NULL,
	invoice_count int2 NULL,
	payee_type varchar(4) NULL,
	non_absa_biller_acc varchar(1) NULL,
	CONSTRAINT c_biller_details_mst_pkey PRIMARY KEY (biller_id, business_id)
);


-- ssabira.c_biller_lifecycle_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_lifecycle_mst;

CREATE TABLE ssabira.c_biller_lifecycle_mst (
	business_id varchar(10) NOT NULL,
	biller_id varchar(40) NOT NULL,
	pilot_mode varchar(80) NULL,
	status varchar(40) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	CONSTRAINT c_biller_lifecycle_mst_pkey PRIMARY KEY (business_id, biller_id)
);


-- ssabira.c_biller_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_mst;

CREATE TABLE ssabira.c_biller_mst (
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
	amount_ref_key varchar(40) NULL,
	amount_editable varchar(1) NULL,
	charge_task_code varchar(8) NULL,
	country_code varchar(3) NULL,
	request_map varchar(2000) NULL,
	response_map varchar(2000) NULL,
	presentment_display_fields varchar(2000) NULL,
	amount_component_type varchar(3) NULL,
	invoice_count int2 NULL,
	payee_type varchar(4) NULL,
	bank_code varchar(20) NULL,
	non_absa_biller_acc varchar(1) NULL DEFAULT 'N'::character varying,
	CONSTRAINT c_biller_mst_pkey PRIMARY KEY (business_id, biller_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_biller_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_biller_mst_admdb;

CREATE TABLE ssabira.c_biller_mst_admdb (
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
	min_payment_amount numeric(12, 2) NULL,
	branch_code varchar(10) NULL,
	biller_account_number varchar(30) NULL,
	max_payment_amount numeric(12, 2) NULL,
	ref_no_key_1 varchar(40) NULL,
	ref_no_key_2 varchar(40) NULL,
	ref_no_validation_1 varchar(120) NULL,
	ref_no_validation_2 varchar(120) NULL,
	atm_support varchar(1) NULL,
	status varchar(30) NULL,
	billholder_required varchar(1) NULL,
	payee_support varchar(1) NULL,
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
	ref_no_validation_type_3 varchar(1) NULL,
	ref_no_message_key_3 varchar(40) NULL,
	ref_no_hint_display_mode_3 varchar(1) NULL,
	ref_no_validation_3 varchar(120) NULL,
	ref_label_shm_1 varchar(50) NULL,
	ref_label_shm_2 varchar(50) NULL,
	ref_label_shm_3 varchar(50) NULL,
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
	ref_no_textval_1 varchar(50) NULL,
	ref_no_textval_2 varchar(50) NULL,
	ref_no_textval_3 varchar(50) NULL,
	ref_no_keyval_1 varchar(50) NULL,
	ref_no_keyval_2 varchar(50) NULL,
	ref_no_keyval_3 varchar(50) NULL,
	ref_no_message_keyval_1 varchar(250) NULL,
	ref_no_message_keyval_2 varchar(250) NULL,
	ref_no_message_keyval_3 varchar(250) NULL
);


-- ssabira.c_biller_mst_test definition

-- Drop table

-- DROP TABLE ssabira.c_biller_mst_test;

CREATE TABLE ssabira.c_biller_mst_test (
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
	amount_ref_key varchar(40) NULL,
	amount_editable varchar(1) NULL,
	charge_task_code varchar(8) NULL,
	country_code varchar(3) NULL,
	request_map varchar(2000) NULL,
	response_map varchar(2000) NULL,
	presentment_display_fields varchar(2000) NULL,
	amount_component_type varchar(3) NULL,
	invoice_count int2 NULL,
	payee_type varchar(4) NULL,
	bank_code varchar(20) NULL,
	non_absa_biller_acc varchar(1) NULL DEFAULT 'N'::character varying,
	CONSTRAINT c_biller_mst_test_pkey PRIMARY KEY (business_id, biller_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_biller_pilotuser_setup definition

-- Drop table

-- DROP TABLE ssabira.c_biller_pilotuser_setup;

CREATE TABLE ssabira.c_biller_pilotuser_setup (
	business_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	pilot_mode varchar(80) NULL,
	status varchar(40) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	CONSTRAINT c_biller_pilotuser_setup_pkey PRIMARY KEY (business_id, user_id)
);


-- ssabira.c_biz_func_mmap definition

-- Drop table

-- DROP TABLE ssabira.c_biz_func_mmap;

CREATE TABLE ssabira.c_biz_func_mmap (
	business_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	from_time varchar(20) NULL,
	to_time varchar(20) NULL,
	holiday_allowed_flg bpchar(1) NULL,
	blocked_flg bpchar(1) NULL,
	CONSTRAINT c_biz_func_mmap_pkey PRIMARY KEY (business_id, activity_id, system_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_biz_function_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biz_function_mst;

CREATE TABLE ssabira.c_biz_function_mst (
	business_id varchar(10) NOT NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL,
	CONSTRAINT c_biz_function_mst_pkey PRIMARY KEY (business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_biz_group_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biz_group_mst;

CREATE TABLE ssabira.c_biz_group_mst (
	business_id varchar(10) NOT NULL,
	group_id varchar(20) NOT NULL,
	precedence varchar(50) NULL,
	CONSTRAINT c_biz_group_mst_pkey PRIMARY KEY (business_id, group_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_biz_lang_mmap definition

-- Drop table

-- DROP TABLE ssabira.c_biz_lang_mmap;

CREATE TABLE ssabira.c_biz_lang_mmap (
	business_id varchar(10) NOT NULL,
	supported_lang_key varchar(5) NOT NULL,
	CONSTRAINT c_biz_lang_mmap_pkey PRIMARY KEY (business_id, supported_lang_key)
)
PARTITION BY LIST (business_id);


-- ssabira.c_branch_list_mst definition

-- Drop table

-- DROP TABLE ssabira.c_branch_list_mst;

CREATE TABLE ssabira.c_branch_list_mst (
	business_id varchar(10) NOT NULL,
	branch_code varchar(10) NOT NULL,
	branch_name varchar(60) NULL,
	branch_addr_line1 varchar(100) NULL,
	branch_addr_line2 varchar(100) NULL,
	branch_addr_line3 varchar(100) NULL,
	city varchar(20) NULL,
	postal_cd varchar(20) NULL,
	opening_hours varchar(20) NULL,
	closing_hours varchar(20) NULL,
	virtual_branch_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	region varchar(5) NULL,
	area varchar(5) NULL,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL,
	CONSTRAINT c_branch_list_mst_pkey PRIMARY KEY (branch_code, business_id)
);


-- ssabira.c_bulk_ben_list_mst definition

-- Drop table

-- DROP TABLE ssabira.c_bulk_ben_list_mst;

CREATE TABLE ssabira.c_bulk_ben_list_mst (
	id int8 NOT NULL,
	list_name varchar(50) NOT NULL,
	payment_type varchar(50) NULL,
	beneficiaries int8 NULL,
	amount numeric NULL,
	last_transfer_date timestamp NULL,
	entity_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	CONSTRAINT c_bulk_ben_list_mst_pkey PRIMARY KEY (id, entity_id)
);


-- ssabira.c_business_mst definition

-- Drop table

-- DROP TABLE ssabira.c_business_mst;

CREATE TABLE ssabira.c_business_mst (
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
	corp_trx_retention_period varchar(10) NULL,
	CONSTRAINT c_business_mst_pkey PRIMARY KEY (business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_cards_product_attributes_mst definition

-- Drop table

-- DROP TABLE ssabira.c_cards_product_attributes_mst;

CREATE TABLE ssabira.c_cards_product_attributes_mst (
	business_id varchar(10) NOT NULL,
	product_id varchar(20) NOT NULL,
	prod_category varchar(20) NULL,
	card_type varchar(20) NULL,
	pct varchar(200) NULL,
	promo_pct varchar(200) NULL,
	security_type varchar(200) NULL,
	payment_day_setup varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	debit_payment_rqd varchar(20) NULL,
	prod_name varchar(20) NULL,
	CONSTRAINT c_cards_product_attributes_mst_pkey PRIMARY KEY (business_id, product_id)
);


-- ssabira.c_cards_sort_code_mst definition

-- Drop table

-- DROP TABLE ssabira.c_cards_sort_code_mst;

CREATE TABLE ssabira.c_cards_sort_code_mst (
	sort_code_id int8 NOT NULL,
	business_id varchar(20) NOT NULL,
	bank_code varchar(20) NOT NULL,
	branch_code varchar(20) NOT NULL,
	bank_name varchar(500) NOT NULL,
	branch_name varchar(500) NOT NULL,
	sort_code varchar(20) NOT NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT c_cards_sort_code_mst_business_id_bank_code_branch_code_key UNIQUE (business_id, bank_code, branch_code),
	CONSTRAINT c_cards_sort_code_mst_pkey PRIMARY KEY (business_id, sort_code_id)
);
CREATE UNIQUE INDEX c_cards_sort_code_mst_uk ON ssabira.c_cards_sort_code_mst USING btree (business_id, bank_code, branch_code);


-- ssabira.c_component_mst definition

-- Drop table

-- DROP TABLE ssabira.c_component_mst;

CREATE TABLE ssabira.c_component_mst (
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
	validation_type varchar(1) NULL,
	hint_display_mode varchar(1) NULL,
	CONSTRAINT c_component_mst_pkey PRIMARY KEY (screen_id, system_id, business_id, component_key)
)
PARTITION BY LIST (business_id);


-- ssabira.c_component_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_component_mst_admdb;

CREATE TABLE ssabira.c_component_mst_admdb (
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


-- ssabira.c_component_res_mst definition

-- Drop table

-- DROP TABLE ssabira.c_component_res_mst;

CREATE TABLE ssabira.c_component_res_mst (
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


-- ssabira.c_component_res_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_component_res_mst_admdb;

CREATE TABLE ssabira.c_component_res_mst_admdb (
	language_id varchar(5) NOT NULL,
	label_value varchar(200) NULL,
	tool_tip varchar(200) NULL,
	help_text varchar(200) NULL,
	length numeric(10) NULL,
	screen_id varchar(30) NULL,
	system_id varchar(10) NULL,
	business_id varchar(10) NULL,
	component_key varchar(40) NULL
);


-- ssabira.c_crm_service_def definition

-- Drop table

-- DROP TABLE ssabira.c_crm_service_def;

CREATE TABLE ssabira.c_crm_service_def (
	service_code varchar(20) NOT NULL,
	service_description varchar(200) NULL,
	business_area varchar(20) NULL,
	service_type varchar(20) NULL,
	biz_impact varchar(20) NULL,
	biz_impact_rating varchar(20) NULL,
	ack_letter varchar(20) NULL,
	resolution_letter varchar(20) NULL,
	sla varchar(10) NULL,
	business_id varchar(10) NOT NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	state varchar(10) NULL,
	status varchar(20) NULL,
	esc_cob_l1 varchar(10) NULL,
	esc_email_l1 varchar(200) NULL,
	esc_cob_l2 varchar(10) NULL,
	esc_email_l2 varchar(200) NULL,
	esc_cob_l3 varchar(10) NULL,
	esc_email_l3 varchar(200) NULL,
	workflow_type varchar(10) NULL,
	ack_letter_mailtype varchar(20) NULL,
	resolution_letter_mailtype varchar(20) NULL,
	source_system_id varchar(10) NULL,
	st_description varchar(150) NULL,
	self_service bpchar(1) NULL,
	service_sub_type varchar(30) NULL,
	premier_sla varchar(10) NULL,
	sme_sla varchar(10) NULL,
	pre_esc_cob_l1 varchar(10) NULL,
	sme_esc_cob_l1 varchar(10) NULL,
	pre_esc_cob_l2 varchar(10) NULL,
	sme_esc_cob_l2 varchar(10) NULL,
	pre_esc_cob_l3 varchar(10) NULL,
	sme_esc_cob_l3 varchar(10) NULL,
	cust_required bpchar(1) NULL,
	compliance_email varchar(200) NULL,
	ack_letter_sms varchar(20) NULL,
	resolution_letter_sms varchar(20) NULL,
	holding_letter varchar(20) NULL,
	CONSTRAINT c_crm_service_def_pkey PRIMARY KEY (service_code, business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_customer_preference_mst definition

-- Drop table

-- DROP TABLE ssabira.c_customer_preference_mst;

CREATE TABLE ssabira.c_customer_preference_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	user_menu_refkey serial4 NOT NULL,
	created_dtm timestamp NULL,
	CONSTRAINT c_customer_preference_mst_pkey PRIMARY KEY (user_menu_refkey)
);


-- ssabira.c_documents_mst definition

-- Drop table

-- DROP TABLE ssabira.c_documents_mst;

CREATE TABLE ssabira.c_documents_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	upload_type varchar(10) NOT NULL,
	payment_reason varchar(100) NULL,
	"document" varchar(200) NULL,
	document_type varchar(10) NULL
);


-- ssabira.c_ecom_merchant_mapping_mst definition

-- Drop table

-- DROP TABLE ssabira.c_ecom_merchant_mapping_mst;

CREATE TABLE ssabira.c_ecom_merchant_mapping_mst (
	wallet_id varchar(50) NOT NULL,
	wallet_name varchar(255) NULL COLLATE "en_US.utf8",
	is_deleted bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	CONSTRAINT c_ecom_merchant_mapping_mst_pkey PRIMARY KEY (wallet_id)
);


-- ssabira.c_employer_bd_mst definition

-- Drop table

-- DROP TABLE ssabira.c_employer_bd_mst;

CREATE TABLE ssabira.c_employer_bd_mst (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	bd_code varchar(20) NOT NULL,
	bd_description varchar(100) NULL,
	government_flg bpchar(1) NULL,
	product_cd varchar(500) NULL,
	pricing_code varchar(25) NULL,
	negotiation_rate numeric(20, 8) NULL,
	loan_type varchar(30) NULL,
	moratorium varchar(25) NULL,
	CONSTRAINT c_employer_bd_mst_pkey PRIMARY KEY (business_id, employer_id, bd_code)
);


-- ssabira.c_employer_mst definition

-- Drop table

-- DROP TABLE ssabira.c_employer_mst;

CREATE TABLE ssabira.c_employer_mst (
	business_id varchar(20) NOT NULL,
	employer_id varchar(20) NOT NULL,
	employer_name varchar(100) NULL,
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
	emp_verification varchar(20) NULL,
	allowance_log varchar(200) NULL,
	employer_limit numeric NULL,
	outstanding_limit numeric NULL,
	emp_mail_id varchar(500) NULL,
	corp_id varchar(50) NULL,
	relationship_number varchar(50) NULL,
	insurance_gl_branch varchar(20) NULL,
	insurance_gl_account varchar(20) NULL,
	digital_topup_enable_flg bpchar(1) NULL,
	CONSTRAINT c_employer_mst_pkey PRIMARY KEY (business_id, employer_id)
);


-- ssabira.c_employer_scheme_mst definition

-- Drop table

-- DROP TABLE ssabira.c_employer_scheme_mst;

CREATE TABLE ssabira.c_employer_scheme_mst (
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
	hold_first_repayment bpchar(1) NULL,
	CONSTRAINT c_employer_scheme_mst_pkey PRIMARY KEY (business_id, employer_id, scheme_code)
);


-- ssabira.c_enhanced_entitlement_mst definition

-- Drop table

-- DROP TABLE ssabira.c_enhanced_entitlement_mst;

CREATE TABLE ssabira.c_enhanced_entitlement_mst (
	activity_id varchar(40) NOT NULL,
	role_category_cd varchar(20) NOT NULL,
	customer_in_context varchar(1) NULL DEFAULT 'N'::character varying,
	account_in_context varchar(1) NULL DEFAULT 'N'::character varying,
	reln_type_notallowed varchar(200) NULL,
	self_check varchar(1) NULL DEFAULT 'N'::character varying,
	staff_check varchar(1) NULL DEFAULT 'N'::character varying,
	business_id varchar(10) NOT NULL,
	card_holder_type bpchar(1) NULL,
	caller_type bpchar(1) NULL,
	system_id varchar(10) NOT NULL,
	min_auth_required varchar(10) NULL,
	customer_type_allowed varchar(20) NULL,
	CONSTRAINT c_enhanced_entitlement_mst_pkey PRIMARY KEY (activity_id, role_category_cd, business_id, system_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_enhanced_entlment_nonind_mst definition

-- Drop table

-- DROP TABLE ssabira.c_enhanced_entlment_nonind_mst;

CREATE TABLE ssabira.c_enhanced_entlment_nonind_mst (
	activity_id varchar(40) NOT NULL,
	channel_id varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	reln_type_allowed varchar(200) NULL,
	CONSTRAINT c_enhanced_entlment_nonind_mst_pkey PRIMARY KEY (activity_id, channel_id, business_id, system_id)
);


-- ssabira.c_formatter_mst definition

-- Drop table

-- DROP TABLE ssabira.c_formatter_mst;

CREATE TABLE ssabira.c_formatter_mst (
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


-- ssabira.c_function_mst definition

-- Drop table

-- DROP TABLE ssabira.c_function_mst;

CREATE TABLE ssabira.c_function_mst (
	activity_id varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	function_id varchar(10) NOT NULL,
	function_sub_id varchar(10) NULL,
	action_id varchar(10) NULL,
	function_desc varchar(200) NULL,
	action_desc varchar(200) NULL,
	inquiry_flg bpchar(1) NULL,
	CONSTRAINT c_function_mst_pkey PRIMARY KEY (activity_id, system_id)
);


-- ssabira.c_function_screen_mmap definition

-- Drop table

-- DROP TABLE ssabira.c_function_screen_mmap;

CREATE TABLE ssabira.c_function_screen_mmap (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	screen_id varchar(30) NOT NULL,
	CONSTRAINT c_function_screen_mmap_pkey PRIMARY KEY (business_id, system_id, activity_id, screen_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_interest_rate_maint_mst definition

-- Drop table

-- DROP TABLE ssabira.c_interest_rate_maint_mst;

CREATE TABLE ssabira.c_interest_rate_maint_mst (
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
	customer_segment varchar(255) NULL,
	CONSTRAINT c_interest_rate_maint_mst_pkey PRIMARY KEY (business_id, rate_id)
);


-- ssabira.c_interest_rate_mst definition

-- Drop table

-- DROP TABLE ssabira.c_interest_rate_mst;

CREATE TABLE ssabira.c_interest_rate_mst (
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


-- ssabira.c_interest_rate_mst_upl definition

-- Drop table

-- DROP TABLE ssabira.c_interest_rate_mst_upl;

CREATE TABLE ssabira.c_interest_rate_mst_upl (
	business_id varchar(20) NOT NULL,
	product_cd varchar(20) NOT NULL,
	effective_dtm timestamp NOT NULL,
	ccy varchar(5) NOT NULL,
	channel varchar(20) NOT NULL,
	customer_segment varchar(20) NOT NULL,
	tenure_month int8 NULL DEFAULT 0,
	tenure_day int8 NULL DEFAULT 0,
	amt_slab_from numeric(19, 3) NOT NULL,
	amt_slab_to numeric(19, 3) NOT NULL,
	interest_rate float8 NULL,
	interest_variance float4 NULL,
	penalty_rate float4 NULL,
	penalty_variance float4 NULL,
	tenure_type varchar(10) NULL
);


-- ssabira.c_international_bank definition

-- Drop table

-- DROP TABLE ssabira.c_international_bank;

CREATE TABLE ssabira.c_international_bank (
	swift_code varchar(15) NOT NULL,
	"name" varchar(200) NULL,
	address1 varchar(100) NULL,
	address2 varchar(30) NULL,
	address3 varchar(30) NULL,
	country_code varchar(3) NULL,
	city_name varchar(100) NULL,
	CONSTRAINT c_international_bank_pkey PRIMARY KEY (swift_code)
);


-- ssabira.c_listvalue_group_mst definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_group_mst;

CREATE TABLE ssabira.c_listvalue_group_mst (
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
	created_dtm timestamp NULL,
	CONSTRAINT c_listvalue_group_mst_pkey PRIMARY KEY (group_id)
);


-- ssabira.c_listvalue_group_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_group_mst_admdb;

CREATE TABLE ssabira.c_listvalue_group_mst_admdb (
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


-- ssabira.c_listvalue_mst definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_mst;

CREATE TABLE ssabira.c_listvalue_mst (
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


-- ssabira.c_listvalue_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_mst_admdb;

CREATE TABLE ssabira.c_listvalue_mst_admdb (
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


-- ssabira.c_listvalue_mst_bkp definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_mst_bkp;

CREATE TABLE ssabira.c_listvalue_mst_bkp (
	system_id varchar(10) NULL,
	business_id varchar(10) NULL,
	group_id varchar(30) NULL,
	list_value_key varchar(30) NULL,
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


-- ssabira.c_listvalue_res_mst definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_res_mst;

CREATE TABLE ssabira.c_listvalue_res_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	language_id varchar(5) NOT NULL,
	value varchar(400) NULL,
	list_value_order int8 NULL,
	CONSTRAINT c_listvalue_res_mst_pkey PRIMARY KEY (system_id, business_id, group_id, list_value_key, language_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_listvalue_res_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_listvalue_res_mst_admdb;

CREATE TABLE ssabira.c_listvalue_res_mst_admdb (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	group_id varchar(30) NOT NULL,
	list_value_key varchar(30) NOT NULL,
	language_id varchar(5) NOT NULL,
	value varchar(200) NULL,
	list_value_order numeric(10) NULL
);


-- ssabira.c_loan_deduction_plan_mst definition

-- Drop table

-- DROP TABLE ssabira.c_loan_deduction_plan_mst;

CREATE TABLE ssabira.c_loan_deduction_plan_mst (
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


-- ssabira.c_location_mst definition

-- Drop table

-- DROP TABLE ssabira.c_location_mst;

CREATE TABLE ssabira.c_location_mst (
	business_id varchar(20) NULL,
	location_cdoe varchar(5) NULL,
	location_name varchar(100) NULL,
	main_branch varchar(5) NULL,
	open_acct_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL
);


-- ssabira.c_mailmsg_cust_map definition

-- Drop table

-- DROP TABLE ssabira.c_mailmsg_cust_map;

CREATE TABLE ssabira.c_mailmsg_cust_map (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	msg_id varchar(20) NOT NULL,
	cust_id varchar(40) NOT NULL,
	read_dtm timestamp NULL,
	status varchar(2) NULL,
	CONSTRAINT c_mailmsg_cust_map_pkey PRIMARY KEY (business_id, system_id, msg_id, cust_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_mailmsg_mst definition

-- Drop table

-- DROP TABLE ssabira.c_mailmsg_mst;

CREATE TABLE ssabira.c_mailmsg_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	msg_id varchar(20) NOT NULL,
	parent_msg_id varchar(20) NULL,
	thread_id varchar(20) NULL,
	subject varchar(200) NULL,
	"content" text NULL,
	initiated_by bpchar(1) NULL,
	from_id varchar(40) NULL,
	forward_reply_flg bpchar(1) NULL,
	forward_to varchar(20) NULL,
	status varchar(2) NULL,
	send_to_all_flg bpchar(1) NULL,
	leaf_node_flg bpchar(1) NULL,
	read_by varchar(20) NULL,
	read_dtm timestamp NULL,
	checkout_by varchar(20) NULL,
	checkout_dtm timestamp NULL,
	created_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	bulk_msg_flg bpchar(1) NULL,
	disable_reply_flg bpchar(1) NULL,
	CONSTRAINT c_mailmsg_mst_pkey PRIMARY KEY (business_id, system_id, msg_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_mcc_group_map definition

-- Drop table

-- DROP TABLE ssabira.c_mcc_group_map;

CREATE TABLE ssabira.c_mcc_group_map (
	business_id varchar(20) NOT NULL,
	association_cd varchar(20) NOT NULL,
	mcc varchar(4) NOT NULL,
	mcc_group_cd varchar(20) NOT NULL,
	CONSTRAINT c_mcc_group_map_pkey PRIMARY KEY (business_id, association_cd, mcc, mcc_group_cd)
)
PARTITION BY LIST (business_id);


-- ssabira.c_mcc_group_mst definition

-- Drop table

-- DROP TABLE ssabira.c_mcc_group_mst;

CREATE TABLE ssabira.c_mcc_group_mst (
	business_id varchar(20) NOT NULL,
	mcc_group_cd varchar(20) NOT NULL,
	color_cd varchar(20) NOT NULL,
	CONSTRAINT c_mcc_group_mst_pkey PRIMARY KEY (business_id, mcc_group_cd)
)
PARTITION BY LIST (business_id);


-- ssabira.c_mcc_mst definition

-- Drop table

-- DROP TABLE ssabira.c_mcc_mst;

CREATE TABLE ssabira.c_mcc_mst (
	association_cd varchar(20) NOT NULL,
	mcc varchar(4) NOT NULL,
	mcc_desc varchar(32) NULL,
	CONSTRAINT c_mcc_mst_pkey PRIMARY KEY (association_cd, mcc)
);


-- ssabira.c_menu_attr_mst definition

-- Drop table

-- DROP TABLE ssabira.c_menu_attr_mst;

CREATE TABLE ssabira.c_menu_attr_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	user_typ varchar(20) NULL,
	parent_menu_key varchar(50) NOT NULL,
	menu_key varchar(50) NULL,
	language_id varchar(20) NOT NULL,
	attr_name varchar(50) NULL,
	attr_value varchar(1000) NULL,
	disp_order int8 NULL
);


-- ssabira.c_menu_mst definition

-- Drop table

-- DROP TABLE ssabira.c_menu_mst;

CREATE TABLE ssabira.c_menu_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	user_typ varchar(20) NULL,
	menu_key varchar(50) NULL,
	parent_menu_key varchar(50) NOT NULL,
	menu_line bpchar(1) NULL,
	menu_icon varchar(50) NULL,
	disp_flg bpchar(1) NULL,
	disp_order int8 NOT NULL,
	version_number varchar(10) NULL
);


-- ssabira.c_menu_res_mst definition

-- Drop table

-- DROP TABLE ssabira.c_menu_res_mst;

CREATE TABLE ssabira.c_menu_res_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	user_typ varchar(20) NULL,
	menu_key varchar(50) NULL,
	parent_menu_key varchar(50) NOT NULL,
	language_id varchar(20) NOT NULL,
	menu_value varchar(1000) NULL,
	url varchar(1000) NULL
);


-- ssabira.c_message_mst definition

-- Drop table

-- DROP TABLE ssabira.c_message_mst;

CREATE TABLE ssabira.c_message_mst (
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


-- ssabira.c_message_res_mst definition

-- Drop table

-- DROP TABLE ssabira.c_message_res_mst;

CREATE TABLE ssabira.c_message_res_mst (
	language_id varchar(5) NOT NULL,
	message_value varchar(500) NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	message_key varchar(40) NOT NULL,
	CONSTRAINT c_message_res_mst_pkey PRIMARY KEY (language_id, system_id, business_id, message_key)
)
PARTITION BY LIST (business_id);


-- ssabira.c_message_res_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.c_message_res_mst_admdb;

CREATE TABLE ssabira.c_message_res_mst_admdb (
	language_id varchar(5) NOT NULL,
	message_value varchar(700) NULL,
	system_id varchar(10) NULL,
	business_id varchar(10) NULL,
	message_key varchar(40) NULL
);


-- ssabira.c_mno_mst definition

-- Drop table

-- DROP TABLE ssabira.c_mno_mst;

CREATE TABLE ssabira.c_mno_mst (
	business_id varchar(10) NOT NULL,
	mno_id varchar(40) NOT NULL,
	mno_name varchar(80) NOT NULL,
	is_md_biller varchar(10) NOT NULL,
	branch_code varchar(10) NULL,
	biller_account_number varchar(30) NULL,
	is_mw_biller varchar(10) NULL,
	biller_id varchar(20) NULL,
	biller_name varchar(100) NULL,
	CONSTRAINT c_mno_mst_pkey PRIMARY KEY (business_id, mno_id)
);


-- ssabira.c_prd_brochure_details definition

-- Drop table

-- DROP TABLE ssabira.c_prd_brochure_details;

CREATE TABLE ssabira.c_prd_brochure_details (
	business_id varchar(10) NOT NULL,
	brochure_id varchar(20) NOT NULL,
	detail_type varchar(20) NOT NULL,
	detail_name varchar(100) NOT NULL,
	detail_mobile_flg bpchar(1) NULL,
	detail_text text NULL,
	detail_mobile_text text NULL,
	CONSTRAINT c_prd_brochure_details_pkey PRIMARY KEY (business_id, brochure_id, detail_type, detail_name)
);


-- ssabira.c_prd_brochure_mst definition

-- Drop table

-- DROP TABLE ssabira.c_prd_brochure_mst;

CREATE TABLE ssabira.c_prd_brochure_mst (
	business_id varchar(10) NOT NULL,
	brochure_id varchar(20) NOT NULL,
	prd_code varchar(20) NULL,
	prd_desc varchar(100) NULL,
	prd_currency varchar(3) NULL,
	prd_category varchar(20) NULL,
	prd_sub_category varchar(30) NULL,
	prd_image_doc_id varchar(20) NULL,
	appform_doc_id varchar(20) NULL,
	create_by varchar(20) NULL,
	create_on timestamp NULL,
	modified_by varchar(20) NULL,
	modified_on timestamp NULL,
	CONSTRAINT c_prd_brochure_mst_pkey PRIMARY KEY (business_id, brochure_id)
);


-- ssabira.c_pricing_code_details_mst definition

-- Drop table

-- DROP TABLE ssabira.c_pricing_code_details_mst;

CREATE TABLE ssabira.c_pricing_code_details_mst (
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


-- ssabira.c_pricing_code_mst definition

-- Drop table

-- DROP TABLE ssabira.c_pricing_code_mst;

CREATE TABLE ssabira.c_pricing_code_mst (
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


-- ssabira.c_product_attributes_mst definition

-- Drop table

-- DROP TABLE ssabira.c_product_attributes_mst;

CREATE TABLE ssabira.c_product_attributes_mst (
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
	insurance_gl_flg bpchar(1) NULL,
	CONSTRAINT c_product_attributes_mst_pkey PRIMARY KEY (business_id, product_id)
);


-- ssabira.c_product_eligibility definition

-- Drop table

-- DROP TABLE ssabira.c_product_eligibility;

CREATE TABLE ssabira.c_product_eligibility (
	serial_number numeric(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	activity_id varchar(40) NULL,
	role_category_cd varchar(20) NULL,
	prd_crdr_ind bpchar(2) NULL,
	prd_code varchar(40) NULL,
	prd_category varchar(20) NULL,
	inc_or_exc bpchar(3) NULL,
	account_status varchar(400) NULL,
	account_block_code1 varchar(400) NULL,
	account_block_code2 varchar(400) NULL,
	card_type varchar(20) NULL,
	card_status varchar(400) NULL,
	card_block_code varchar(400) NULL,
	system_id varchar(10) NOT NULL,
	"exception" varchar(30) NULL,
	CONSTRAINT c_product_eligibility_pkey PRIMARY KEY (serial_number, business_id, system_id)
)
PARTITION BY LIST (business_id);
CREATE INDEX c_product_eligibility_ndx ON ONLY ssabira.c_product_eligibility USING btree (activity_id, system_id, business_id, prd_category);


-- ssabira.c_product_mst definition

-- Drop table

-- DROP TABLE ssabira.c_product_mst;

CREATE TABLE ssabira.c_product_mst (
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
	min_term int4 NULL,
	max_term int4 NULL,
	plan_cd varchar(20) NULL,
	secure_ind varchar(10) NULL,
	expiry_date timestamp NULL,
	CONSTRAINT c_product_mst_pkey PRIMARY KEY (product_cd, business_id, currency_cd)
)
PARTITION BY LIST (business_id);


-- ssabira.c_product_mst_upl_eg definition

-- Drop table

-- DROP TABLE ssabira.c_product_mst_upl_eg;

CREATE TABLE ssabira.c_product_mst_upl_eg (
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
	support_cheque1 bpchar(1) NULL,
	CONSTRAINT c_product_mst_upl_eg_pkey PRIMARY KEY (product_cd, business_id, currency_cd)
);


-- ssabira.c_reg_payee_mst definition

-- Drop table

-- DROP TABLE ssabira.c_reg_payee_mst;

CREATE TABLE ssabira.c_reg_payee_mst (
	business_id varchar(10) NOT NULL,
	payee_id varchar(40) NOT NULL,
	cust_id varchar(40) NOT NULL,
	payee_type_cd varchar(20) NULL,
	payee_nickname varchar(40) NULL,
	payee_name varchar(40) NULL,
	biller_id varchar(40) NULL,
	bill_ref_no_1 varchar(80) NULL,
	bill_ref_no_2 varchar(80) NULL,
	payment_channel_id varchar(40) NULL,
	dst_acct_no varchar(40) NULL,
	dst_bank_cd varchar(20) NULL,
	dst_branch_cd varchar(20) NULL,
	dst_acct_ibank_flg bpchar(1) NULL,
	dst_iso_country_cd bpchar(2) NULL,
	dst_resident_status varchar(4) NULL,
	dst_addr_line1 varchar(150) NULL,
	dst_addr_line2 varchar(150) NULL,
	dst_bank_iso_country_cd bpchar(2) NULL,
	dst_bank_swift_cd varchar(20) NULL,
	dst_bank_clearing_cd varchar(20) NULL,
	dst_bank_chips_uid varchar(20) NULL,
	dst_bank_nm varchar(80) NULL,
	dst_bank_addr_line1 varchar(150) NULL,
	dst_bank_addr_line2 varchar(150) NULL,
	itm_acct_no varchar(40) NULL,
	itm_bank_swift_cd varchar(20) NULL,
	itm_bank_clearing_cd varchar(20) NULL,
	itm_bank_chips_uid varchar(20) NULL,
	itm_bank_nm varchar(80) NULL,
	itm_bank_addr_line1 varchar(150) NULL,
	itm_bank_addr_line2 varchar(150) NULL,
	mobile_fav_flg bpchar(1) NULL,
	status bpchar(1) NULL,
	delete_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	created_dtm timestamp NULL,
	CONSTRAINT c_reg_payee_mst_pkey PRIMARY KEY (business_id, payee_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_role_func_mmap definition

-- Drop table

-- DROP TABLE ssabira.c_role_func_mmap;

CREATE TABLE ssabira.c_role_func_mmap (
	role_id varchar(20) NOT NULL,
	activity_id varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	effective_start_dt timestamp NULL,
	effective_end_dt timestamp NULL,
	checker_flg bpchar(1) NULL,
	maker_flg bpchar(1) NULL,
	acws_flg bpchar(1) NULL,
	consulstant_flg bpchar(1) NULL,
	CONSTRAINT c_role_func_mmap_pkey PRIMARY KEY (role_id, activity_id, system_id)
);


-- ssabira.c_role_func_mmap_bkp definition

-- Drop table

-- DROP TABLE ssabira.c_role_func_mmap_bkp;

CREATE TABLE ssabira.c_role_func_mmap_bkp (
	role_id varchar(20) NULL,
	activity_id varchar(40) NULL,
	system_id varchar(10) NULL,
	effective_start_dt timestamp NULL,
	effective_end_dt timestamp NULL,
	checker_flg bpchar(1) NULL,
	maker_flg bpchar(1) NULL,
	acws_flg bpchar(1) NULL,
	consulstant_flg bpchar(1) NULL
);


-- ssabira.c_role_mst definition

-- Drop table

-- DROP TABLE ssabira.c_role_mst;

CREATE TABLE ssabira.c_role_mst (
	role_id varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	role_description varchar(200) NULL,
	role_category varchar(20) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	role_lvl varchar(20) NULL,
	session_timeout int4 NULL DEFAULT 30,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL,
	CONSTRAINT c_role_mst_pkey PRIMARY KEY (role_id, business_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_screen_mst definition

-- Drop table

-- DROP TABLE ssabira.c_screen_mst;

CREATE TABLE ssabira.c_screen_mst (
	screen_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	description varchar(200) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	config_flg bpchar(1) NULL DEFAULT 'Y'::bpchar,
	screen_help_text varchar(200) NULL,
	CONSTRAINT c_screen_mst_pkey PRIMARY KEY (business_id, system_id, screen_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_script_mst definition

-- Drop table

-- DROP TABLE ssabira.c_script_mst;

CREATE TABLE ssabira.c_script_mst (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	category_id varchar(10) NULL,
	script_key varchar(40) NOT NULL,
	maker_id varchar(16) NULL,
	checker_id varchar(16) NULL,
	status varchar(5) NULL,
	last_modified timestamp NULL,
	last_authorized timestamp NULL,
	"action" varchar(10) NULL,
	deleted_flag varchar(1) NULL,
	authorized_indicator varchar(1) NULL,
	CONSTRAINT c_script_mst_pkey PRIMARY KEY (system_id, business_id, script_key)
)
PARTITION BY LIST (business_id);


-- ssabira.c_script_res_mst definition

-- Drop table

-- DROP TABLE ssabira.c_script_res_mst;

CREATE TABLE ssabira.c_script_res_mst (
	language_id varchar(5) NOT NULL,
	sequence_no numeric(38) NULL,
	script_value varchar(2000) NULL,
	maker_id varchar(16) NULL,
	checker_id varchar(16) NULL,
	status varchar(5) NULL,
	last_modified timestamp NULL,
	last_authorized timestamp NULL,
	"action" varchar(10) NULL,
	deleted_flag varchar(1) NULL,
	authorized_indicator varchar(1) NULL,
	script_key varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	CONSTRAINT c_script_res_mst_pkey PRIMARY KEY (system_id, business_id, script_key, language_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_simulation_datetime definition

-- Drop table

-- DROP TABLE ssabira.c_simulation_datetime;

CREATE TABLE ssabira.c_simulation_datetime (
	mode_flg int2 NULL,
	businessdate timestamp NULL,
	"mode" bpchar(1) NULL DEFAULT 'O'::bpchar,
	business_id varchar(10) NULL
);


-- ssabira.c_storenum_mst definition

-- Drop table

-- DROP TABLE ssabira.c_storenum_mst;

CREATE TABLE ssabira.c_storenum_mst (
	biller_id varchar(255) NOT NULL,
	system_id varchar(255) NOT NULL,
	business_id varchar(255) NOT NULL,
	action_code varchar(255) NOT NULL,
	store_number varchar(255) NOT NULL,
	modified_dtm timestamp NULL,
	created_dtm timestamp NULL,
	CONSTRAINT c_storenum_mst_pkey PRIMARY KEY (biller_id, system_id)
);


-- ssabira.c_tag_mst definition

-- Drop table

-- DROP TABLE ssabira.c_tag_mst;

CREATE TABLE ssabira.c_tag_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	screen_id varchar(30) NOT NULL,
	script_key varchar(40) NOT NULL,
	activity_id varchar(40) NOT NULL,
	category varchar(20) NULL,
	product_service_name varchar(20) NULL,
	form_name varchar(40) NULL,
	form_step varchar(5) NULL,
	activity_type varchar(20) NULL,
	service_name varchar(40) NULL,
	CONSTRAINT c_tag_mst_pkey PRIMARY KEY (business_id, system_id, screen_id, script_key, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.c_test_mst definition

-- Drop table

-- DROP TABLE ssabira.c_test_mst;

CREATE TABLE ssabira.c_test_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	user_typ varchar(20) NULL,
	menu_key varchar(50) NULL,
	parent_menu_key varchar(50) NOT NULL
);


-- ssabira.c_unique_id_context_mst definition

-- Drop table

-- DROP TABLE ssabira.c_unique_id_context_mst;

CREATE TABLE ssabira.c_unique_id_context_mst (
	uid_context_id varchar(20) NOT NULL,
	description varchar(100) NULL,
	pattern_exp varchar(30) NOT NULL,
	current_index numeric(22) NULL,
	start_index numeric(22) NULL,
	end_index numeric(22) NULL,
	interval_index numeric(22) NULL,
	length int2 NULL,
	wrap_indicator int2 NULL,
	create_date timestamp NULL,
	create_user varchar(30) NULL,
	last_update_date timestamp NULL,
	last_modified_user varchar(30) NULL,
	CONSTRAINT c_unique_id_context_mst_pkey PRIMARY KEY (uid_context_id)
);


-- ssabira.c_visa_good_bin_mst definition

-- Drop table

-- DROP TABLE ssabira.c_visa_good_bin_mst;

CREATE TABLE ssabira.c_visa_good_bin_mst (
	bin_type varchar(20) NOT NULL,
	bin_number varchar(30) NOT NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	CONSTRAINT c_visa_good_bin_numbers_pkey PRIMARY KEY (bin_type, bin_number)
);


-- ssabira.d1_card_reg_details definition

-- Drop table

-- DROP TABLE ssabira.d1_card_reg_details;

CREATE TABLE ssabira.d1_card_reg_details (
	system_id varchar(10) NULL,
	business_id varchar(10) NULL,
	consumer_id varchar(64) NOT NULL,
	card_id varchar(48) NOT NULL,
	card_reg_status bpchar(1) NULL,
	card_expiry_date date NULL,
	is_active bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	updated_by varchar(20) NULL,
	updated_dtm timestamp NULL,
	CONSTRAINT d1_card_reg_details_pkey PRIMARY KEY (consumer_id, card_id)
);


-- ssabira.deliver_time_record definition

-- Drop table

-- DROP TABLE ssabira.deliver_time_record;

CREATE TABLE ssabira.deliver_time_record (
	table_name varchar(50) NOT NULL,
	deliver_dtm timestamp NULL,
	CONSTRAINT deliver_time_record_pkey PRIMARY KEY (table_name)
);


-- ssabira.makola_supported_banks definition

-- Drop table

-- DROP TABLE ssabira.makola_supported_banks;

CREATE TABLE ssabira.makola_supported_banks (
	bankcode varchar(10) NOT NULL,
	bankname varchar(80) NULL,
	swiftcode varchar(10) NOT NULL,
	acct_length numeric(20, 10) NULL,
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NULL,
	CONSTRAINT makola_supported_banks_pkey PRIMARY KEY (bankcode, swiftcode, business_id)
);


-- ssabira.mips_bank_mst definition

-- Drop table

-- DROP TABLE ssabira.mips_bank_mst;

CREATE TABLE ssabira.mips_bank_mst (
	business_id varchar(10) NOT NULL,
	bankcode varchar(20) NOT NULL,
	bankname varchar(80) NOT NULL,
	swiftcode varchar(20) NULL,
	acct_length varchar(20) NOT NULL,
	txn_limit varchar(20) NULL,
	country varchar(20) NULL,
	address1 varchar(20) NULL,
	address2 varchar(20) NULL,
	city_name varchar(80) NULL,
	branch_code varchar(20) NULL
);


-- ssabira.offer_category definition

-- Drop table

-- DROP TABLE ssabira.offer_category;

CREATE TABLE ssabira.offer_category (
	offer_category_id int8 NOT NULL,
	offer_category_desc varchar(4000) NULL,
	business_id varchar(4000) NULL,
	CONSTRAINT offer_category_pkey PRIMARY KEY (offer_category_id)
);


-- ssabira.offer_location definition

-- Drop table

-- DROP TABLE ssabira.offer_location;

CREATE TABLE ssabira.offer_location (
	location_id int8 NOT NULL,
	city varchar(4000) NULL,
	address varchar(4000) NULL,
	phone_no varchar(4000) NULL,
	latitude varchar(4000) NULL,
	longitude varchar(4000) NULL,
	business_id varchar(4000) NULL,
	CONSTRAINT offer_location_pkey PRIMARY KEY (location_id)
);


-- ssabira.offer_product_type definition

-- Drop table

-- DROP TABLE ssabira.offer_product_type;

CREATE TABLE ssabira.offer_product_type (
	offer_product_type_id int8 NULL,
	offer_product_type_desc varchar(4000) NULL
);


-- ssabira.offer_promo_offers definition

-- Drop table

-- DROP TABLE ssabira.offer_promo_offers;

CREATE TABLE ssabira.offer_promo_offers (
	promo_offer_id numeric(38) NOT NULL,
	offer_desc varchar(4000) NULL,
	offer_start_date timestamp NULL,
	offer_end_date timestamp NULL,
	offer_restaurent_name varchar(4000) NULL,
	offer_cuisine varchar(4000) NULL,
	offer_discount_percentage varchar(4000) NULL,
	offer_partner_name varchar(4000) NULL,
	offer_eip_offer varchar(4000) NULL,
	offer_terms_cond_id varchar(4000) NULL,
	offer_logo_id varchar(4000) NULL,
	offer_product_type varchar(4000) NULL,
	offer_business_id varchar(4000) NULL,
	offer_system_id varchar(4000) NULL,
	offer_type_id int8 NULL,
	offer_category_id int8 NULL,
	CONSTRAINT offer_promo_offers_pkey PRIMARY KEY (promo_offer_id)
);


-- ssabira.offer_termsncond definition

-- Drop table

-- DROP TABLE ssabira.offer_termsncond;

CREATE TABLE ssabira.offer_termsncond (
	offer_terms_cond_id int8 NULL,
	offer_terms_cond_desc varchar(4000) NULL
);


-- ssabira.offer_type definition

-- Drop table

-- DROP TABLE ssabira.offer_type;

CREATE TABLE ssabira.offer_type (
	offer_type_id int8 NULL,
	offer_type_desc varchar(4000) NULL
);


-- ssabira.offer_user definition

-- Drop table

-- DROP TABLE ssabira.offer_user;

CREATE TABLE ssabira.offer_user (
	user_id numeric(38) NOT NULL,
	login_id varchar(50) NULL,
	"password" varchar(100) NULL,
	created_on timestamp NULL,
	modified_on timestamp NULL,
	business_id varchar(10) NULL,
	status varchar(10) NULL,
	"role" varchar(10) NULL,
	CONSTRAINT offer_user_pkey PRIMARY KEY (user_id)
);


-- ssabira.s_adv_func_map definition

-- Drop table

-- DROP TABLE ssabira.s_adv_func_map;

CREATE TABLE ssabira.s_adv_func_map (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	adv_id numeric(20) NOT NULL,
	activity_id varchar(40) NOT NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT s_adv_func_map_pkey PRIMARY KEY (business_id, system_id, adv_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_adv_mst definition

-- Drop table

-- DROP TABLE ssabira.s_adv_mst;

CREATE TABLE ssabira.s_adv_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	adv_id numeric(20) NOT NULL,
	adv_type varchar(3) NOT NULL,
	adv_subject varchar(80) NOT NULL,
	adv_valid_from_dtm timestamp NULL,
	adv_valid_to_dtm timestamp NULL,
	adv_img_pos int2 NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL,
	render_btn_flg bpchar(1) NULL,
	campaign_code varchar(80) NULL,
	CONSTRAINT s_adv_mst_pkey PRIMARY KEY (business_id, system_id, adv_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_adv_res_mst definition

-- Drop table

-- DROP TABLE ssabira.s_adv_res_mst;

CREATE TABLE ssabira.s_adv_res_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	adv_id numeric(20) NOT NULL,
	adv_lang_id varchar(5) NOT NULL,
	adv_img_blob bytea NULL,
	adv_img_tooltip varchar(120) NULL,
	adv_img_btn_txt varchar(40) NULL,
	adv_img_lnk_url varchar(256) NULL,
	adv_txt_msg varchar(1024) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT s_adv_res_mst_pkey PRIMARY KEY (business_id, system_id, adv_id, adv_lang_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_amolparam_mst definition

-- Drop table

-- DROP TABLE ssabira.s_amolparam_mst;

CREATE TABLE ssabira.s_amolparam_mst (
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


-- ssabira.s_amolparam_mst_bkp21082023 definition

-- Drop table

-- DROP TABLE ssabira.s_amolparam_mst_bkp21082023;

CREATE TABLE ssabira.s_amolparam_mst_bkp21082023 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(75) NULL,
	param_value varchar(200) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_banner_details definition

-- Drop table

-- DROP TABLE ssabira.s_banner_details;

CREATE TABLE ssabira.s_banner_details (
	serial_id numeric NOT NULL,
	business_id varchar(10) NOT NULL,
	country_code varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	language_id varchar(10) NOT NULL,
	banner_url varchar NULL,
	banner_text varchar NULL,
	banner_btn_title varchar NULL,
	banner_seq numeric NULL,
	is_active bool NULL,
	available_from timestamp NULL,
	available_upto interval NULL,
	available_till timestamp NULL,
	banner_title varchar NULL,
	customer_type bpchar(1) NULL,
	btn_trg_url varchar(1024) NULL,
	CONSTRAINT s_banner_details_pkey PRIMARY KEY (serial_id, business_id, country_code, system_id, language_id)
);


-- ssabira.s_cms_lookup definition

-- Drop table

-- DROP TABLE ssabira.s_cms_lookup;

CREATE TABLE ssabira.s_cms_lookup (
	screen_id varchar(40) NOT NULL,
	screen_location_id varchar(20) NOT NULL,
	folder_location varchar(100) NULL,
	file_pattern varchar(50) NULL,
	file_count int2 NULL,
	randomize_flag bpchar(1) NULL,
	active_flag bpchar(1) NULL,
	created_on timestamp NULL,
	created_by varchar(20) NULL,
	modified_on timestamp NULL,
	modified_by varchar(20) NULL,
	business_id varchar(10) NOT NULL,
	language_id varchar(5) NOT NULL,
	customer_type varchar(10) NOT NULL,
	is_default varchar(2) NOT NULL DEFAULT 'Y'::character varying,
	partener_type varchar(20) NOT NULL DEFAULT 'DEFAULT'::character varying,
	CONSTRAINT s_cms_lookup_pkey PRIMARY KEY (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type)
)
PARTITION BY LIST (business_id);


-- ssabira.s_corp_limit_global_mst definition

-- Drop table

-- DROP TABLE ssabira.s_corp_limit_global_mst;

CREATE TABLE ssabira.s_corp_limit_global_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	daily_limit_amt numeric(19, 3) NOT NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg varchar(1) NULL,
	max_daily_limit numeric(19, 3) NULL,
	max_txn_limit numeric(19, 3) NULL,
	CONSTRAINT s_corp_limit_global_mst_pkey PRIMARY KEY (business_id, system_id, txn_limit_typ)
);


-- ssabira.s_credit_card_manage_hst definition

-- Drop table

-- DROP TABLE ssabira.s_credit_card_manage_hst;

CREATE TABLE ssabira.s_credit_card_manage_hst (
	activity_name varchar(80) NOT NULL,
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	card_cif varchar(25) NOT NULL,
	card_account varchar(25) NOT NULL,
	card_number varchar(25) NOT NULL,
	customer_name varchar(80) NULL,
	txn_time timestamp NOT NULL,
	txn_ref_no varchar(25) NOT NULL,
	status varchar(100) NULL,
	restrictall_flag varchar(10) NULL,
	card_cancellation_reason varchar(80) NULL,
	block_code_applied varchar(20) NULL,
	delivery_method varchar(50) NULL,
	sub_activity_performed varchar(80) NULL,
	limit_name varchar(50) NULL,
	old_limit varchar(50) NULL,
	new_limit varchar(50) NULL,
	CONSTRAINT s_credit_card_manage_hst_pkey PRIMARY KEY (activity_name, system_id, business_id, txn_ref_no)
)
PARTITION BY LIST (business_id);


-- ssabira.s_deliver_time_record definition

-- Drop table

-- DROP TABLE ssabira.s_deliver_time_record;

CREATE TABLE ssabira.s_deliver_time_record (
	table_name varchar(50) NOT NULL,
	deliver_dtm timestamp NULL,
	CONSTRAINT s_deliver_time_record_pkey PRIMARY KEY (table_name)
);


-- ssabira.s_deliver_time_record_mb definition

-- Drop table

-- DROP TABLE ssabira.s_deliver_time_record_mb;

CREATE TABLE ssabira.s_deliver_time_record_mb (
	table_name varchar(50) NOT NULL,
	deliver_dtm timestamp NULL,
	CONSTRAINT s_deliver_time_record_mb_pkey PRIMARY KEY (table_name)
);


-- ssabira.s_dynamictable_config_mst definition

-- Drop table

-- DROP TABLE ssabira.s_dynamictable_config_mst;

CREATE TABLE ssabira.s_dynamictable_config_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	table_id varchar(25) NOT NULL,
	column_key varchar(50) NOT NULL,
	column_typ varchar(25) NULL,
	field_nm varchar(50) NOT NULL,
	sortable bpchar(1) NULL,
	disp_order int2 NOT NULL,
	link_uri varchar(50) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(3) NULL,
	screen_id varchar(30) NULL,
	ccy_disp_flg bpchar(1) NULL,
	col_css varchar(40) NULL,
	CONSTRAINT s_dynamictable_config_mst_pkey PRIMARY KEY (business_id, system_id, table_id, field_nm)
)
PARTITION BY LIST (business_id);


-- ssabira.s_feature_auth_mst definition

-- Drop table

-- DROP TABLE ssabira.s_feature_auth_mst;

CREATE TABLE ssabira.s_feature_auth_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	auth_required bpchar(3) NOT NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(60) NULL,
	authorised_by varchar(60) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT s_feature_auth_mst_pkey PRIMARY KEY (business_id, system_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_feature_blackout_mst definition

-- Drop table

-- DROP TABLE ssabira.s_feature_blackout_mst;

CREATE TABLE ssabira.s_feature_blackout_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	start_dtm timestamp NULL,
	end_dtm timestamp NULL,
	blackout_state varchar(6) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	blackout_message varchar(500) NULL,
	cust_type bpchar(1) NOT NULL,
	CONSTRAINT s_feature_blackout_mst_pkey PRIMARY KEY (business_id, system_id, activity_id, cust_type)
)
PARTITION BY LIST (business_id);


-- ssabira.s_function_config definition

-- Drop table

-- DROP TABLE ssabira.s_function_config;

CREATE TABLE ssabira.s_function_config (
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


-- ssabira.s_function_config_bkp definition

-- Drop table

-- DROP TABLE ssabira.s_function_config_bkp;

CREATE TABLE ssabira.s_function_config_bkp (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	activity_id varchar(40) NULL,
	txn_limit_typ varchar(20) NULL,
	feature_blkout_flg bpchar(1) NULL,
	adv_txt_flg bpchar(1) NULL,
	adv_img_top_flg bpchar(1) NULL,
	adv_img_rightnav_flg bpchar(1) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL
);


-- ssabira.s_grace_period_mst definition

-- Drop table

-- DROP TABLE ssabira.s_grace_period_mst;

CREATE TABLE ssabira.s_grace_period_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	auth_typ varchar(10) NOT NULL,
	skip_count int2 NULL,
	grace_period_str_dt date NULL,
	grace_period_end_dt date NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	created_dtm timestamp NULL,
	auth_device_name varchar(100) NULL,
	CONSTRAINT s_grace_period_mst_pkey PRIMARY KEY (business_id, system_id, user_id, auth_typ)
);


-- ssabira.s_http_session definition

-- Drop table

-- DROP TABLE ssabira.s_http_session;

CREATE TABLE ssabira.s_http_session (
	session_id varchar(200) NOT NULL,
	principal_id varchar(200) NULL,
	last_request_date timestamp NULL,
	expired_flg varchar(1) NULL,
	CONSTRAINT s_http_session_pkey PRIMARY KEY (session_id)
);
CREATE INDEX s_http_session_index1 ON ssabira.s_http_session USING btree (principal_id);


-- ssabira.s_limit_cust_mst definition

-- Drop table

-- DROP TABLE ssabira.s_limit_cust_mst;

CREATE TABLE ssabira.s_limit_cust_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	cust_id varchar(40) NOT NULL,
	daily_limit_amt numeric(19, 3) NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	trx_reference_number varchar(50) NULL,
	modified_by_channel varchar(50) NULL,
	authorised_by_channel varchar(20) NULL,
	CONSTRAINT s_limit_cust_mst_pkey PRIMARY KEY (business_id, system_id, txn_limit_typ, cust_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_limit_cust_mst_admdb definition

-- Drop table

-- DROP TABLE ssabira.s_limit_cust_mst_admdb;

CREATE TABLE ssabira.s_limit_cust_mst_admdb (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	cust_id varchar(40) NOT NULL,
	daily_limit_amt numeric(19, 3) NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL
);


-- ssabira.s_limit_cust_total definition

-- Drop table

-- DROP TABLE ssabira.s_limit_cust_total;

CREATE TABLE ssabira.s_limit_cust_total (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	cust_id varchar(40) NOT NULL,
	txn_dt timestamp NULL,
	daily_total_amt float8 NULL,
	txn_limit_count int2 NULL,
	CONSTRAINT s_limit_cust_total_pkey PRIMARY KEY (business_id, system_id, txn_limit_typ, cust_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_limit_global_mst definition

-- Drop table

-- DROP TABLE ssabira.s_limit_global_mst;

CREATE TABLE ssabira.s_limit_global_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	daily_limit_amt numeric(19, 3) NOT NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg varchar(1) NULL,
	max_daily_limit numeric(19, 3) NULL,
	max_txn_limit numeric(19, 3) NULL,
	CONSTRAINT s_limit_global_mst_pkey PRIMARY KEY (business_id, system_id, txn_limit_typ)
)
PARTITION BY LIST (business_id);


-- ssabira.s_menu_mst definition

-- Drop table

-- DROP TABLE ssabira.s_menu_mst;

CREATE TABLE ssabira.s_menu_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	menu_id varchar(50) NOT NULL,
	parent_id varchar(50) NOT NULL,
	menu_lvl int8 NOT NULL,
	menu_group varchar(50) NOT NULL,
	default_flg bpchar(1) NULL,
	disp_flg bpchar(1) NULL,
	disp_order int8 NOT NULL,
	activity_id varchar(40) NULL,
	url varchar(500) NULL,
	description varchar(500) NULL,
	need_disp_insitemap bpchar(1) NULL,
	device_charac varchar(50) NULL,
	CONSTRAINT s_menu_mst_pkey PRIMARY KEY (system_id, business_id, menu_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_menu_res_mst definition

-- Drop table

-- DROP TABLE ssabira.s_menu_res_mst;

CREATE TABLE ssabira.s_menu_res_mst (
	system_id varchar(20) NOT NULL,
	business_id varchar(20) NOT NULL,
	menu_id varchar(50) NOT NULL,
	lang_id varchar(10) NOT NULL,
	disp_value varchar(4000) NOT NULL,
	url varchar(500) NULL,
	CONSTRAINT s_menu_res_mst_pkey PRIMARY KEY (system_id, business_id, menu_id, lang_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_mobile_list definition

-- Drop table

-- DROP TABLE ssabira.s_mobile_list;

CREATE TABLE ssabira.s_mobile_list (
	business_id varchar(20) NOT NULL,
	system_id varchar(20) NOT NULL,
	phone varchar(255) NOT NULL,
	CONSTRAINT s_mobile_list_pkey PRIMARY KEY (business_id, system_id, phone)
)
PARTITION BY LIST (business_id);


-- ssabira.s_partnership_mapping_mst definition

-- Drop table

-- DROP TABLE ssabira.s_partnership_mapping_mst;

CREATE TABLE ssabira.s_partnership_mapping_mst (
	bem_partner_id varchar(20) NOT NULL,
	bir_partner_id varchar(20) NOT NULL,
	activity_id varchar(40) NOT NULL,
	business_id varchar(10) NOT NULL,
	CONSTRAINT s_partnership_mapping_mst_pkey PRIMARY KEY (bem_partner_id, bir_partner_id, business_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_product_category_mst definition

-- Drop table

-- DROP TABLE ssabira.s_product_category_mst;

CREATE TABLE ssabira.s_product_category_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	category_cd varchar(20) NOT NULL,
	disp_order int2 NOT NULL,
	category_nm_key varchar(50) NOT NULL,
	modified_dtm timestamp NOT NULL,
	modified_by varchar(60) NULL,
	authorised_by varchar(60) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	render bpchar(1) NULL,
	CONSTRAINT s_product_category_mst_pkey PRIMARY KEY (business_id, system_id, category_cd)
)
PARTITION BY LIST (business_id);


-- ssabira.s_progress_mst definition

-- Drop table

-- DROP TABLE ssabira.s_progress_mst;

CREATE TABLE ssabira.s_progress_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	progress_bar_id varchar(40) NOT NULL,
	total_steps int4 NULL,
	CONSTRAINT s_progress_mst_pkey PRIMARY KEY (business_id, system_id, progress_bar_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_progress_step definition

-- Drop table

-- DROP TABLE ssabira.s_progress_step;

CREATE TABLE ssabira.s_progress_step (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	progress_bar_id varchar(40) NOT NULL,
	step_no int4 NOT NULL,
	screen_id varchar(40) NOT NULL,
	screen_label_key varchar(40) NULL,
	CONSTRAINT s_progress_step_pkey PRIMARY KEY (business_id, system_id, progress_bar_id, step_no)
)
PARTITION BY LIST (business_id);


-- ssabira.s_pwd_policy_mst definition

-- Drop table

-- DROP TABLE ssabira.s_pwd_policy_mst;

CREATE TABLE ssabira.s_pwd_policy_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	pwd_typ varchar(10) NOT NULL,
	min_length int2 NOT NULL,
	max_length int2 NULL,
	lowercase_min int2 NULL,
	uppercase_min int2 NULL,
	no_min int2 NULL,
	specialchar_min int2 NULL,
	lowercase_allowed bpchar(3) NULL,
	uppercase_allowed bpchar(3) NULL,
	no_allowed bpchar(3) NULL,
	specialchar_allowed bpchar(3) NULL,
	pwd_history_size int2 NULL,
	expiry_max_yrs int2 NULL,
	expiry_max_mths int2 NULL,
	expiry_max_dys int2 NULL,
	hibernation_yrs int2 NULL,
	hibernation_mths int2 NULL,
	expiry_min_dys int2 NULL,
	hibernation_dys int2 NULL,
	warning_period_dys int2 NULL,
	first_char_is_lowercase bpchar(3) NULL,
	first_char_is_uppercase bpchar(3) NULL,
	first_char_is_no bpchar(3) NULL,
	first_char_is_specialchar bpchar(3) NULL,
	last_char_is_uppercase bpchar(3) NULL,
	last_char_is_lowercase bpchar(3) NULL,
	last_char_is_no bpchar(3) NULL,
	last_char_is_specialchar bpchar(3) NULL,
	max_of_cons_rpts_allowed int2 NULL,
	max_cons_succ_rpts_allowed int2 NULL,
	no_of_failure_attempts_allowed int2 NULL,
	forced_reset_with_change bpchar(3) NULL,
	modified_dtm timestamp NOT NULL,
	modified_by varchar(60) NULL,
	authorised_by varchar(60) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	expiry_min_yrs int2 NULL,
	expiry_min_mths int2 NULL,
	CONSTRAINT s_pwd_policy_mst_pkey PRIMARY KEY (business_id, system_id, pwd_typ)
)
PARTITION BY LIST (business_id);


-- ssabira.s_quicklink_mst definition

-- Drop table

-- DROP TABLE ssabira.s_quicklink_mst;

CREATE TABLE ssabira.s_quicklink_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	quicklink_id varchar(20) NOT NULL,
	message_key varchar(40) NOT NULL,
	display_order int2 NOT NULL,
	quicklink_url varchar(400) NOT NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	CONSTRAINT s_quicklink_mst_pkey PRIMARY KEY (business_id, system_id, quicklink_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_secret_qn_mst definition

-- Drop table

-- DROP TABLE ssabira.s_secret_qn_mst;

CREATE TABLE ssabira.s_secret_qn_mst (
	question_id varchar(40) NOT NULL,
	business_id varchar(30) NOT NULL,
	system_id varchar(10) NOT NULL,
	display_sequence int2 NULL,
	answer_length int2 NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(60) NULL,
	authorised_by varchar(60) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	enabled bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	CONSTRAINT s_secret_qn_mst_pkey PRIMARY KEY (system_id, business_id, question_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_secret_qn_res_mst definition

-- Drop table

-- DROP TABLE ssabira.s_secret_qn_res_mst;

CREATE TABLE ssabira.s_secret_qn_res_mst (
	question_id varchar(40) NOT NULL,
	language_id varchar(5) NOT NULL,
	message_value varchar(200) NULL,
	CONSTRAINT s_secret_qn_res_mst_pkey PRIMARY KEY (question_id, language_id)
);


-- ssabira.s_ses_summary_hst definition

-- Drop table

-- DROP TABLE ssabira.s_ses_summary_hst;

CREATE TABLE ssabira.s_ses_summary_hst (
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
	details varchar(2000) NULL,
	device_charac varchar(50) NULL,
	CONSTRAINT s_ses_summary_hst_pkey PRIMARY KEY (business_id, system_id, user_id, sess_id, txn_typ, txn_time)
)
PARTITION BY LIST (business_id);


-- ssabira.s_sysparam_mst definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst;

CREATE TABLE ssabira.s_sysparam_mst (
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


-- ssabira.s_sysparam_mst_20march23 definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_20march23;

CREATE TABLE ssabira.s_sysparam_mst_20march23 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(500) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_sysparam_mst_bbkp definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_bbkp;

CREATE TABLE ssabira.s_sysparam_mst_bbkp (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(200) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_sysparam_mst_bkp0106 definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_bkp0106;

CREATE TABLE ssabira.s_sysparam_mst_bkp0106 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(500) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_sysparam_mst_bkp21082023 definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_bkp21082023;

CREATE TABLE ssabira.s_sysparam_mst_bkp21082023 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(800) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_sysparam_mst_bkp31072023 definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_bkp31072023;

CREATE TABLE ssabira.s_sysparam_mst_bkp31072023 (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(800) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_sysparam_mst_tmp definition

-- Drop table

-- DROP TABLE ssabira.s_sysparam_mst_tmp;

CREATE TABLE ssabira.s_sysparam_mst_tmp (
	business_id varchar(10) NULL,
	system_id varchar(10) NULL,
	param_id varchar(50) NULL,
	param_value varchar(200) NULL,
	param_component_key varchar(25) NULL,
	activity_id varchar(40) NULL,
	system_maintain bpchar(1) NULL,
	disp_type varchar(10) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	param_desc varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL
);


-- ssabira.s_txn_cut_off_mst definition

-- Drop table

-- DROP TABLE ssabira.s_txn_cut_off_mst;

CREATE TABLE ssabira.s_txn_cut_off_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	cut_off_time timestamp NULL,
	CONSTRAINT s_txn_cut_off_mst_pkey PRIMARY KEY (business_id, system_id, activity_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_url_business_map_mst definition

-- Drop table

-- DROP TABLE ssabira.s_url_business_map_mst;

CREATE TABLE ssabira.s_url_business_map_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	url_pattern varchar(400) NOT NULL,
	language_id varchar(18) NOT NULL,
	segment_id varchar(10) NULL,
	CONSTRAINT s_url_business_map_mst_pkey PRIMARY KEY (business_id, system_id, url_pattern)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_fail_atmp_hst definition

-- Drop table

-- DROP TABLE ssabira.s_user_fail_atmp_hst;

CREATE TABLE ssabira.s_user_fail_atmp_hst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	cnt_to_date int2 NOT NULL,
	auth_typ varchar(18) NOT NULL,
	modified_dtm timestamp NOT NULL,
	activity_id varchar(40) NOT NULL,
	CONSTRAINT s_user_fail_atmp_hst_pkey PRIMARY KEY (business_id, system_id, user_id, modified_dtm)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_fail_atmp_mst definition

-- Drop table

-- DROP TABLE ssabira.s_user_fail_atmp_mst;

CREATE TABLE ssabira.s_user_fail_atmp_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	cnt int2 NOT NULL,
	auth_typ varchar(10) NOT NULL,
	last_attempt_dtm timestamp NOT NULL,
	grace_period_end_dt date NULL,
	CONSTRAINT s_user_fail_atmp_mst_pkey PRIMARY KEY (business_id, system_id, user_id, auth_typ)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_modifi_hst definition

-- Drop table

-- DROP TABLE ssabira.s_user_modifi_hst;

CREATE TABLE ssabira.s_user_modifi_hst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	modifi_typ varchar(40) NOT NULL,
	modifi_user_typ bpchar(1) NOT NULL,
	modified_by varchar(20) NOT NULL,
	modified_dtm timestamp NOT NULL,
	CONSTRAINT s_user_modifi_hst_pkey PRIMARY KEY (business_id, system_id, user_id, modified_dtm)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_mst definition

-- Drop table

-- DROP TABLE ssabira.s_user_mst;

CREATE TABLE ssabira.s_user_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	customer_id varchar(50) NOT NULL,
	login_name varchar(20) NULL,
	last_login_dtm timestamp NULL,
	force_chg_pwd bpchar(1) NULL,
	preferred_language varchar(5) NOT NULL,
	registered_by varchar(40) NOT NULL,
	registered_dtm timestamp NOT NULL,
	locked_flg bpchar(3) NULL,
	locked_dtm timestamp NULL,
	disabled_by varchar(20) NULL,
	disabled_dtm timestamp NULL,
	disabled_flg bpchar(3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	first_name varchar(100) NULL,
	last_name varchar(100) NULL,
	locked_reason varchar(100) NULL,
	status varchar(10) NULL,
	force_chg_sqa varchar(1) NULL,
	force_chg_txn_pwd varchar(1) NULL,
	temp_lock_cnt int2 NULL DEFAULT 0,
	re_auth_failure_cnt int2 NULL DEFAULT 0,
	login_failure_cnt int2 NULL DEFAULT 0,
	print_welcomeletter_status varchar(1) NULL,
	print_password_status varchar(1) NULL,
	pwd_migrated varchar(5) NULL,
	sqa_migrated varchar(5) NULL,
	sms_sent varchar(5) NULL,
	last_sqa_id varchar(40) NULL,
	registered_flg varchar(1) NULL,
	deactivate_reason varchar(300) NULL,
	CONSTRAINT s_user_mst_pkey PRIMARY KEY (business_id, system_id, user_id)
)
PARTITION BY LIST (business_id);
CREATE INDEX idx_user_login_name ON ONLY ssabira.s_user_mst USING btree (business_id, system_id, upper((login_name)::text));


-- ssabira.s_user_pref_mmap definition

-- Drop table

-- DROP TABLE ssabira.s_user_pref_mmap;

CREATE TABLE ssabira.s_user_pref_mmap (
	system_id varchar(10) NOT NULL,
	business_id varchar(10) NOT NULL,
	quicklink_id varchar(20) NOT NULL,
	customer_id varchar(40) NOT NULL,
	disp_flg bpchar(1) NULL DEFAULT 'Y'::bpchar,
	disp_order int2 NULL DEFAULT 0,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL DEFAULT 'N'::bpchar,
	CONSTRAINT s_user_pref_mmap_pkey PRIMARY KEY (system_id, business_id, quicklink_id, customer_id)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_pwd_hst definition

-- Drop table

-- DROP TABLE ssabira.s_user_pwd_hst;

CREATE TABLE ssabira.s_user_pwd_hst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	pwd_typ varchar(10) NOT NULL,
	pwd varchar(128) NOT NULL,
	modified_dtm timestamp NOT NULL,
	salt_token varchar(20) NULL,
	CONSTRAINT s_user_pwd_hst_pkey PRIMARY KEY (business_id, system_id, user_id, pwd_typ, modified_dtm)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_pwd_mst definition

-- Drop table

-- DROP TABLE ssabira.s_user_pwd_mst;

CREATE TABLE ssabira.s_user_pwd_mst (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(60) NOT NULL,
	pwd_typ varchar(10) NOT NULL,
	pwd varchar(128) NOT NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	salt_token varchar(20) NULL,
	CONSTRAINT s_user_pwd_mst_pkey PRIMARY KEY (business_id, system_id, user_id, pwd_typ)
)
PARTITION BY LIST (business_id);


-- ssabira.s_user_secret_answer definition

-- Drop table

-- DROP TABLE ssabira.s_user_secret_answer;

CREATE TABLE ssabira.s_user_secret_answer (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	user_id varchar(40) NOT NULL,
	question_id varchar(40) NOT NULL,
	modified_dtm timestamp NOT NULL,
	answer varchar(128) NULL,
	salt_token varchar(20) NULL,
	CONSTRAINT s_user_secret_answer_pkey PRIMARY KEY (business_id, system_id, user_id, question_id)
)
PARTITION BY LIST (business_id);


-- ssabira.terms_of_use definition

-- Drop table

-- DROP TABLE ssabira.terms_of_use;

CREATE TABLE ssabira.terms_of_use (
	customer_id varchar(50) NULL,
	system_id varchar(5) NULL,
	business_id varchar(7) NULL,
	accept_flg varchar(2) NULL,
	tou_version varchar(10) NULL,
	accept_date timestamp NULL
);


-- ssabira.test_112 definition

-- Drop table

-- DROP TABLE ssabira.test_112;

CREATE TABLE ssabira.test_112 (
	idd numeric NULL
);


-- ssabira.batch_job_execution definition

-- Drop table

-- DROP TABLE ssabira.batch_job_execution;

CREATE TABLE ssabira.batch_job_execution (
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
	CONSTRAINT job_instance_execution_fk FOREIGN KEY (job_instance_id) REFERENCES ssabira.batch_job_instance(job_instance_id)
);


-- ssabira.batch_job_execution_context definition

-- Drop table

-- DROP TABLE ssabira.batch_job_execution_context;

CREATE TABLE ssabira.batch_job_execution_context (
	job_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id),
	CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES ssabira.batch_job_execution(job_execution_id)
);


-- ssabira.batch_job_execution_params definition

-- Drop table

-- DROP TABLE ssabira.batch_job_execution_params;

CREATE TABLE ssabira.batch_job_execution_params (
	job_execution_id int8 NOT NULL,
	type_cd varchar(6) NOT NULL,
	key_name varchar(100) NOT NULL,
	string_val varchar(250) NULL,
	date_val timestamp NULL,
	long_val int8 NULL,
	double_val float8 NULL,
	identifying bpchar(1) NOT NULL,
	CONSTRAINT job_exec_params_fk FOREIGN KEY (job_execution_id) REFERENCES ssabira.batch_job_execution(job_execution_id)
);


-- ssabira.batch_step_execution definition

-- Drop table

-- DROP TABLE ssabira.batch_step_execution;

CREATE TABLE ssabira.batch_step_execution (
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
	CONSTRAINT job_execution_step_fk FOREIGN KEY (job_execution_id) REFERENCES ssabira.batch_job_execution(job_execution_id)
);


-- ssabira.batch_step_execution_context definition

-- Drop table

-- DROP TABLE ssabira.batch_step_execution_context;

CREATE TABLE ssabira.batch_step_execution_context (
	step_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_step_execution_context_pkey PRIMARY KEY (step_execution_id),
	CONSTRAINT step_exec_ctx_fk FOREIGN KEY (step_execution_id) REFERENCES ssabira.batch_step_execution(step_execution_id)
);


-- ssabira.c_biller_payment_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_payment_mst;

CREATE TABLE ssabira.c_biller_payment_mst (
	biller_id varchar(40) NOT NULL,
	business_id varchar(10) NOT NULL,
	transaction_fee numeric(19, 3) NULL,
	currency varchar(3) NULL,
	support_creditcard_flg bpchar(1) NULL,
	mobile_denomination varchar(200) NULL,
	service_type varchar(50) NULL,
	external_biller_id varchar(40) NULL,
	min_payment_amount float8 NULL,
	branch_code varchar(10) NULL,
	biller_account_number varchar(30) NULL,
	max_payment_amount float8 NULL,
	amount_ref_key varchar(40) NULL,
	amount_editable varchar(1) NULL,
	charge_task_code varchar(8) NULL,
	amount_component_type varchar(3) NULL,
	bank_code varchar(20) NULL,
	CONSTRAINT c_biller_payment_mst_pkey PRIMARY KEY (biller_id, business_id),
	CONSTRAINT c_biller_payment_mst_biller_id_business_id_fkey FOREIGN KEY (biller_id,business_id) REFERENCES ssabira.c_biller_details_mst(biller_id,business_id)
);


-- ssabira.c_biller_ref_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_ref_mst;

CREATE TABLE ssabira.c_biller_ref_mst (
	biller_id varchar(40) NOT NULL,
	business_id varchar(10) NOT NULL,
	ref_no_key varchar(40) NOT NULL,
	ord_num int4 NULL,
	validation_type varchar(1) NULL,
	hint_display_mode varchar(1) NULL,
	CONSTRAINT c_biller_ref_mst_pkey PRIMARY KEY (biller_id, business_id, ref_no_key),
	CONSTRAINT c_biller_ref_mst_biller_id_business_id_fkey FOREIGN KEY (biller_id,business_id) REFERENCES ssabira.c_biller_details_mst(biller_id,business_id)
);


-- ssabira.c_biller_si_mst definition

-- Drop table

-- DROP TABLE ssabira.c_biller_si_mst;

CREATE TABLE ssabira.c_biller_si_mst (
	biller_id varchar(40) NOT NULL,
	business_id varchar(10) NOT NULL,
	si_company varchar(50) NULL,
	si_service_type varchar(50) NULL,
	si_payment_mode varchar(80) NULL,
	CONSTRAINT c_biller_si_mst_pkey PRIMARY KEY (biller_id, business_id),
	CONSTRAINT c_biller_si_mst_biller_id_business_id_fkey FOREIGN KEY (biller_id,business_id) REFERENCES ssabira.c_biller_details_mst(biller_id,business_id)
);


-- ssabira.c_customer_preference_menu_mst definition

-- Drop table

-- DROP TABLE ssabira.c_customer_preference_menu_mst;

CREATE TABLE ssabira.c_customer_preference_menu_mst (
	user_menu_refkey serial4 NOT NULL,
	menu_key varchar(50) NULL,
	disp_order int4 NOT NULL,
	modified_dtm timestamp NULL,
	CONSTRAINT fk_customer_preference FOREIGN KEY (user_menu_refkey) REFERENCES ssabira.c_customer_preference_mst(user_menu_refkey)
);


-- ssabira.offer_promo_location_mapping definition

-- Drop table

-- DROP TABLE ssabira.offer_promo_location_mapping;

CREATE TABLE ssabira.offer_promo_location_mapping (
	promo_offer_id int8 NULL,
	location_id int8 NULL,
	CONSTRAINT promo_offer_location_offe_fk1 FOREIGN KEY (location_id) REFERENCES ssabira.offer_location(location_id),
	CONSTRAINT promo_offer_location_prom_fk1 FOREIGN KEY (promo_offer_id) REFERENCES ssabira.offer_promo_offers(promo_offer_id)
);

			-- Foreign Tables

-- ssabira.c_biz_lang_mmap_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_biz_lang_mmap_admdb;

CREATE FOREIGN TABLE ssabira.c_biz_lang_mmap_admdb (
	business_id varchar(10) NULL,
	supported_lang_key varchar(5) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_BIZ_LANG_MMAP');


-- ssabira.c_branch_list_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_branch_list_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_branch_list_mst_admdb (
	business_id varchar(10) NOT NULL,
	branch_code varchar(10) NOT NULL,
	branch_name varchar(60) NULL,
	branch_addr_line1 varchar(100) NULL,
	branch_addr_line2 varchar(100) NULL,
	branch_addr_line3 varchar(100) NULL,
	city varchar(20) NULL,
	postal_cd varchar(20) NULL,
	opening_hours varchar(20) NULL,
	closing_hours varchar(20) NULL,
	virtual_branch_flg bpchar(1) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	region varchar(5) NULL,
	area varchar(5) NULL,
	created_dtm timestamp NULL,
	created_by varchar(20) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_BRANCH_LIST_MST');


-- ssabira.c_business_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_business_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_business_mst_admdb (
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
	timezone_offset numeric(4, 2) NULL,
	cardonly_flg bpchar(1) NULL DEFAULT 'N'::bpchar,
	rate_precision varchar(20) NULL,
	created_dtm timestamp(6) NULL,
	created_by varchar(20) NULL,
	case_retention_month varchar(10) NULL,
	campaign_retention_month varchar(10) NULL,
	wave_retention_period varchar(10) NULL,
	past_oppty_retention_period varchar(10) NULL,
	corp_trx_retention_period varchar(10) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_BUSINESS_MST');


-- ssabira.c_cards_product_attributes_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_cards_product_attributes_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_cards_product_attributes_mst_admdb (
	business_id varchar(10) NULL,
	product_id varchar(20) NULL,
	prod_category varchar(20) NULL,
	card_type varchar(20) NULL,
	pct varchar(200) NULL,
	promo_pct varchar(200) NULL,
	security_type varchar(200) NULL,
	payment_day_setup varchar(200) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	debit_payment_rqd varchar(20) NULL,
	prod_name varchar(20) NULL,
	security_required bpchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_CARDS_PRODUCT_ATTRIBUTES_MST');


-- ssabira.c_cards_sort_code_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_cards_sort_code_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_cards_sort_code_mst_admdb (
	sort_code_id numeric NULL,
	business_id varchar(20) NULL,
	bank_code varchar(20) NULL,
	branch_code varchar(20) NULL,
	bank_name varchar(500) NULL,
	branch_name varchar(500) NULL,
	sort_code varchar(20) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_CARDS_SORT_CODE_MST');


-- ssabira.c_crm_service_def_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_crm_service_def_admdb;

CREATE FOREIGN TABLE ssabira.c_crm_service_def_admdb (
	service_code varchar(20) NOT NULL,
	service_description varchar(200) NULL,
	business_area varchar(20) NULL,
	service_type varchar(20) NULL,
	biz_impact varchar(20) NULL,
	biz_impact_rating varchar(20) NULL,
	ack_letter varchar(20) NULL,
	resolution_letter varchar(20) NULL,
	sla varchar(10) NULL,
	business_id varchar(10) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	state varchar(10) NULL,
	status varchar(20) NULL,
	esc_cob_l1 varchar(10) NULL,
	esc_email_l1 varchar(200) NULL,
	esc_cob_l2 varchar(10) NULL,
	esc_email_l2 varchar(200) NULL,
	esc_cob_l3 varchar(10) NULL,
	esc_email_l3 varchar(200) NULL,
	workflow_type varchar(10) NULL,
	ack_letter_mailtype varchar(20) NULL,
	resolution_letter_mailtype varchar(20) NULL,
	source_system_id varchar(10) NULL,
	st_description varchar(150) NULL,
	self_service bpchar(1) NULL,
	service_sub_type varchar(30) NULL,
	premier_sla varchar(10) NULL,
	sme_sla varchar(10) NULL,
	pre_esc_cob_l1 varchar(10) NULL,
	sme_esc_cob_l1 varchar(10) NULL,
	pre_esc_cob_l2 varchar(10) NULL,
	sme_esc_cob_l2 varchar(10) NULL,
	pre_esc_cob_l3 varchar(10) NULL,
	sme_esc_cob_l3 varchar(10) NULL,
	cust_required bpchar(1) NULL,
	compliance_email varchar(200) NULL,
	ack_letter_sms varchar(20) NULL,
	resolution_letter_sms varchar(20) NULL,
	holding_letter varchar(20) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_CRM_SERVICE_DEF');


-- ssabira.c_employer_bd_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_employer_bd_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_employer_bd_mst_admdb (
	business_id varchar(20) NULL,
	employer_id varchar(20) NULL,
	bd_code varchar(20) NULL,
	bd_description varchar(100) NULL,
	government_flg bpchar(1) NULL,
	product_cd varchar(500) NULL,
	pricing_code varchar(25) NULL,
	negotiation_rate numeric(20, 8) NULL,
	loan_type varchar(30) NULL,
	moratorium varchar(25) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_EMPLOYER_BD_MST');


-- ssabira.c_employer_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_employer_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_employer_mst_admdb (
	business_id varchar(20) NULL,
	employer_id varchar(20) NULL,
	employer_name varchar(100) NULL,
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
	emp_verification varchar(20) NULL,
	allowance_log varchar(200) NULL,
	employer_limit numeric NULL,
	outstanding_limit numeric NULL,
	corp_id varchar(50) NULL,
	relationship_number varchar(50) NULL,
	emp_mail_id varchar(500) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_EMPLOYER_MST');


-- ssabira.c_employer_scheme_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_employer_scheme_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_employer_scheme_mst_admdb (
	business_id varchar(20) NULL,
	employer_id varchar(20) NULL,
	scheme_code varchar(20) NULL,
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
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_EMPLOYER_SCHEME_MST');


-- ssabira.c_enh_entl_nonind_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_enh_entl_nonind_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_enh_entl_nonind_mst_admdb (
	activity_id varchar(40) NOT NULL,
	channel_id varchar(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	reln_type_allowed varchar(200) NULL DEFAULT NULL::character varying
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_ENHANCED_ENTLMENT_NONIND_MST');


-- ssabira.c_enhanced_entitle_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_enhanced_entitle_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_enhanced_entitle_mst_admdb (
	activity_id varchar(40) NOT NULL,
	role_category_cd varchar(20) NOT NULL,
	customer_in_context varchar(1) NULL DEFAULT 'N'::character varying,
	account_in_context varchar(1) NULL DEFAULT 'N'::character varying,
	reln_type_notallowed varchar(200) NULL DEFAULT NULL::character varying,
	self_check varchar(1) NULL DEFAULT 'N'::character varying,
	staff_check varchar(1) NULL DEFAULT 'N'::character varying,
	business_id varchar(10) NOT NULL,
	card_holder_type bpchar(1) NULL,
	caller_type bpchar(1) NULL,
	system_id varchar(10) NOT NULL,
	min_auth_required varchar(10) NULL,
	customer_type_allowed varchar(20) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_ENHANCED_ENTITLEMENT_MST');


-- ssabira.c_interest_rate_maint_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_interest_rate_maint_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_interest_rate_maint_mst_admdb (
	business_id varchar(20) NULL,
	rate_id varchar(20) NULL,
	product_cd varchar(20) NULL,
	product_ccy varchar(5) NULL,
	account_type varchar(30) NULL,
	market_segment varchar(30) NULL,
	customer_type varchar(30) NULL,
	rate_type varchar(30) NULL,
	min_amount numeric(20, 3) NULL,
	max_amount numeric(20, 3) NULL,
	min_term numeric(10) NULL,
	max_term numeric(10) NULL,
	min_risk_score numeric(10) NULL,
	max_risk_score numeric(10) NULL,
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
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_INTEREST_RATE_MAINT_MST');


-- ssabira.c_interest_rate_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_interest_rate_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_interest_rate_mst_admdb (
	business_id varchar(20) NOT NULL,
	product_cd varchar(20) NOT NULL,
	effective_dtm timestamp(6) NOT NULL,
	ccy varchar(5) NOT NULL,
	channel varchar(20) NOT NULL,
	customer_segment varchar(20) NOT NULL,
	tenure_month numeric(10) NOT NULL,
	tenure_day numeric(10) NOT NULL,
	amt_slab_from numeric(30, 3) NOT NULL,
	amt_slab_to numeric(30, 3) NOT NULL,
	interest_rate numeric(10, 7) NULL,
	interest_variance numeric NULL,
	penalty_rate numeric NULL,
	penalty_variance numeric NULL,
	tenure_type varchar(10) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_INTEREST_RATE_MST');


-- ssabira.c_loan_deduction_plan_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_loan_deduction_plan_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_loan_deduction_plan_mst_admdb (
	business_id varchar(10) NULL,
	plan_code varchar(5) NULL,
	plan_srno varchar(5) NULL,
	deduction_type varchar(3) NULL,
	deduction_code varchar(5) NULL,
	no_of_installment numeric(5) NULL,
	deduction_method varchar(3) NULL,
	deduction_mode varchar(3) NULL,
	plan_name varchar(42) NULL,
	rate_or_amount numeric(15, 8) NULL,
	created_by varchar(50) NULL,
	created_dtm timestamp NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(50) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_LOAN_DEDUCTION_PLAN_MST');


-- ssabira.c_prd_brochure_details_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_prd_brochure_details_admdb;

CREATE FOREIGN TABLE ssabira.c_prd_brochure_details_admdb (
	business_id varchar(10) NULL,
	brochure_id varchar(20) NULL,
	detail_type varchar(20) NULL,
	detail_name varchar(100) NULL,
	detail_mobile_flg bpchar(1) NULL,
	detail_text text NULL,
	detail_mobile_text text NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRD_BROCHURE_DETAILS');


-- ssabira.c_prd_brochure_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_prd_brochure_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_prd_brochure_mst_admdb (
	business_id varchar(10) NULL,
	brochure_id varchar(20) NULL,
	prd_code varchar(20) NULL,
	prd_desc varchar(100) NULL,
	prd_currency varchar(3) NULL,
	prd_category varchar(20) NULL,
	prd_sub_category varchar(30) NULL,
	prd_image_doc_id varchar(20) NULL,
	appform_doc_id varchar(20) NULL,
	create_by varchar(20) NULL,
	create_on timestamp(6) NULL,
	modified_by varchar(20) NULL,
	modified_on timestamp NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRD_BROCHURE_MST');


-- ssabira.c_pricing_code_details_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_pricing_code_details_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_pricing_code_details_mst_admdb (
	interest_rate_code varchar(20) NULL,
	pricing_code varchar(20) NULL,
	business_id varchar(10) NULL,
	min_term varchar(20) NULL,
	max_term varchar(20) NULL,
	min_amt numeric(10, 2) NULL,
	max_amt numeric(10, 2) NULL,
	interest_rate numeric(10, 2) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRICING_CODE_DETAILS_MST');


-- ssabira.c_pricing_code_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_pricing_code_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_pricing_code_mst_admdb (
	pricing_code varchar(20) NULL,
	business_id varchar(10) NULL,
	dsr numeric(10, 2) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NULL,
	authorized_by varchar(20) NULL,
	authorized_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	pricing_description varchar(100) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRICING_CODE_MST');


-- ssabira.c_product_attributes_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_product_attributes_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_product_attributes_mst_admdb (
	business_id varchar(10) NULL,
	product_id varchar(20) NULL,
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
	min_term numeric(5) NULL,
	max_term numeric(5) NULL,
	insurance_applicable_flg bpchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRODUCT_ATTRIBUTES_MST');


-- ssabira.c_product_eligibility_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_product_eligibility_admdb;

CREATE FOREIGN TABLE ssabira.c_product_eligibility_admdb (
	serial_number numeric(20) NOT NULL,
	business_id varchar(10) NOT NULL,
	activity_id varchar(40) NULL,
	role_category_cd varchar(20) NULL,
	prd_crdr_ind bpchar(2) NULL,
	prd_code varchar(40) NULL,
	prd_category varchar(20) NULL,
	inc_or_exc bpchar(3) NULL,
	account_status varchar(400) NULL,
	account_block_code1 varchar(400) NULL,
	account_block_code2 varchar(400) NULL,
	card_type varchar(20) NULL,
	card_status varchar(400) NULL,
	card_block_code varchar(400) NULL,
	system_id varchar(10) NOT NULL,
	"exception" varchar(30) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRODUCT_ELIGIBILITY');


-- ssabira.c_product_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_product_mst_admdb;

CREATE FOREIGN TABLE ssabira.c_product_mst_admdb (
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
	min_term numeric(5) NULL,
	max_term numeric(5) NULL,
	plan_cd varchar(20) NULL,
	secure_ind varchar(10) NULL,
	expiry_date timestamp NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_PRODUCT_MST');


-- ssabira.c_role_func_mmap_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.c_role_func_mmap_admdb;

CREATE FOREIGN TABLE ssabira.c_role_func_mmap_admdb (
	role_id varchar(20) NOT NULL,
	activity_id varchar(40) NOT NULL,
	system_id varchar(10) NOT NULL,
	effective_start_dt timestamp NULL,
	effective_end_dt timestamp NULL,
	checker_flg bpchar(1) NULL,
	maker_flg bpchar(1) NULL,
	acws_flg bpchar(1) NULL,
	consulstant_flg bpchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'C_ROLE_FUNC_MMAP');


-- ssabira.s_corp_limit_global_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.s_corp_limit_global_mst_admdb;

CREATE FOREIGN TABLE ssabira.s_corp_limit_global_mst_admdb (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	daily_limit_amt numeric(19, 3) NOT NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg varchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'S_CORP_LIMIT_GLOBAL_MST');


-- ssabira.s_feature_blackout_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.s_feature_blackout_mst_admdb;

CREATE FOREIGN TABLE ssabira.s_feature_blackout_mst_admdb (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	activity_id varchar(40) NOT NULL,
	start_dtm timestamp NULL,
	end_dtm timestamp NULL,
	blackout_state varchar(6) NULL,
	modified_dtm timestamp NULL,
	modified_by varchar(20) NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	created_by varchar(20) NULL,
	created_dtm timestamp NULL,
	blackout_message varchar(500) NULL,
	cust_type bpchar(1) NOT NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'S_FEATURE_BLACKOUT_MST');


-- ssabira.s_limit_global_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.s_limit_global_mst_admdb;

CREATE FOREIGN TABLE ssabira.s_limit_global_mst_admdb (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	txn_limit_typ varchar(20) NOT NULL,
	daily_limit_amt numeric(19, 3) NOT NULL,
	txn_limit_amt numeric(19, 3) NULL,
	threshold_limit_amt numeric(19, 3) NULL,
	modified_by varchar(20) NULL,
	modified_dtm timestamp NOT NULL,
	authorised_by varchar(20) NULL,
	authorised_dtm timestamp NULL,
	delete_flg varchar(1) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'S_LIMIT_GLOBAL_MST');


-- ssabira.s_pwd_policy_mst_admdb definition

-- Drop table

-- DROP FOREIGN TABLE ssabira.s_pwd_policy_mst_admdb;

CREATE FOREIGN TABLE ssabira.s_pwd_policy_mst_admdb (
	business_id varchar(10) NOT NULL,
	system_id varchar(10) NOT NULL,
	pwd_typ varchar(10) NOT NULL,
	min_length numeric(2) NOT NULL,
	max_length numeric(2) NULL,
	lowercase_min numeric(1) NULL,
	uppercase_min numeric(1) NULL,
	no_min numeric(1) NULL,
	specialchar_min numeric(1) NULL,
	lowercase_allowed bpchar(3) NULL,
	uppercase_allowed bpchar(3) NULL,
	no_allowed bpchar(3) NULL,
	specialchar_allowed bpchar(3) NULL,
	pwd_history_size numeric(2) NULL,
	expiry_max_yrs numeric(2) NULL,
	expiry_max_mths numeric(2) NULL,
	expiry_max_dys numeric(2) NULL,
	hibernation_yrs numeric(2) NULL,
	hibernation_mths numeric(2) NULL,
	expiry_min_dys numeric(2) NULL,
	hibernation_dys numeric(2) NULL,
	warning_period_dys numeric(2) NULL,
	first_char_is_lowercase bpchar(3) NULL,
	first_char_is_uppercase bpchar(3) NULL,
	first_char_is_no bpchar(3) NULL,
	first_char_is_specialchar bpchar(3) NULL,
	last_char_is_uppercase bpchar(3) NULL,
	last_char_is_lowercase bpchar(3) NULL,
	last_char_is_no bpchar(3) NULL,
	last_char_is_specialchar bpchar(3) NULL,
	max_of_cons_rpts_allowed numeric(2) NULL,
	max_cons_succ_rpts_allowed numeric(2) NULL,
	no_of_failure_attempts_allowed numeric(1) NULL,
	forced_reset_with_change bpchar(3) NULL,
	modified_dtm timestamp NOT NULL,
	modified_by varchar(60) NULL,
	authorised_by varchar(60) NULL,
	authorised_dtm timestamp NULL,
	delete_flg bpchar(1) NULL,
	expiry_min_yrs numeric(2) NULL,
	expiry_min_mths numeric(2) NULL
)
SERVER bocsit
OPTIONS (schema 'SSABIRADMA', table 'S_PWD_POLICY_MST');

			Views

-- ssabira.biller_view source

CREATE OR REPLACE VIEW ssabira.biller_view
AS SELECT biller.business_id,
    biller.biller_id,
    biller.biller_nm,
    biller.biller_category_id,
    biller.biller_category_nm,
    biller.presentment_flg,
    biller.ref_no_text_1,
    biller.ref_no_text_2,
    biller.transaction_fee,
    biller.bill_aggregator_id,
    biller.currency,
    biller.support_creditcard_flg,
    biller.online_biller_flg,
    biller.payee_ref_fields,
    biller.mobile_denomination,
    biller.service_type,
    biller.external_biller_id,
    biller.min_payment_amount,
    biller.branch_code,
    biller.biller_account_number,
    biller.ref_no_key_1,
    biller.ref_no_key_2,
    biller.max_payment_amount,
    biller.billholder_required,
    biller.payee_support,
    biller.ref_no_validation_1,
    biller.ref_no_validation_2,
    biller.atm_support,
    biller.status,
    biller.ref_no_validation_type_1,
    biller.ref_no_validation_type_2,
    biller.ref_no_message_key_1,
    biller.ref_no_message_key_2,
    biller.ref_no_hint_display_mode_1,
    biller.ref_no_hint_display_mode_2,
    biller.si_company,
    biller.si_service_type,
    biller.si_payment_mode,
    biller.amount_ref_key,
    biller.amount_editable,
    biller.charge_task_code,
    biller.country_code,
    biller.request_map,
    biller.response_map,
    biller.presentment_display_fields,
    biller.amount_component_type,
    biller.invoice_count,
    biller.payee_type,
    pilot.pilot_mode,
    pilot.created_by,
    pilot.created_dtm,
    pilot.modified_by,
    pilot.modified_dtm
   FROM ssabira.c_biller_mst biller,
    ssabira.c_biller_lifecycle_mst pilot
  WHERE biller.biller_id::text = pilot.biller_id::text AND (pilot.pilot_mode::text = ANY (ARRAY['N'::character varying::text, 'Y'::character varying::text]));

			-- Materialized Views
			-- Indexes

CREATE UNIQUE INDEX c_script_mst_p_mzbrb_pkey ON ssabira.c_script_mst_p_mzbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_mubob_pkey ON ssabira.s_pwd_policy_mst_p_mubob USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_listvalue_mst_p_zmbrb_pkey ON ssabira.c_listvalue_mst_p_zmbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_quicklink_mst_p_mubob_pkey ON ssabira.s_quicklink_mst_p_mubob USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_pkey ON ONLY ssabira.s_partnership_mapping_mst USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_mubrb_pkey ON ssabira.s_txn_cut_off_mst_p_mubrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_pkey ON ONLY ssabira.c_mailmsg_cust_map USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_ugbrb_pkey ON ssabira.c_interest_rate_mst_p_ugbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_egbrb_pkey ON ssabira.c_biz_lang_mmap_p_egbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX c_component_res_mst_p_kebrb_pkey ON ssabira.c_component_res_mst_p_kebrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_function_config_p_kebrb_pkey ON ssabira.s_function_config_p_kebrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_tag_mst_p_mubrb_pkey ON ssabira.c_tag_mst_p_mubrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_tznbc_pkey ON ssabira.s_user_secret_answer_p_tznbc USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_script_mst_p_mubrb_pkey ON ssabira.c_script_mst_p_mubrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_pricing_code_mst_pkey ON ssabira.c_pricing_code_mst USING btree (pricing_code, business_id);

CREATE UNIQUE INDEX s_adv_res_mst_pkey ON ONLY ssabira.s_adv_res_mst USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_zwbrb_pkey ON ssabira.s_user_pwd_mst_p_zwbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_storenum_mst_pkey ON ssabira.c_storenum_mst USING btree (biller_id, system_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_mzbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_mzbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_message_mst_p_tzbrb_pkey ON ssabira.c_message_mst_p_tzbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_adv_res_mst_p_tznbc_pkey ON ssabira.s_adv_res_mst_p_tznbc USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_ugbrb_pkey ON ssabira.s_user_modifi_hst_p_ugbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_feature_auth_mst_p_ugbrb_pkey ON ssabira.s_feature_auth_mst_p_ugbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_component_mst_p_zmbrb_pkey ON ssabira.c_component_mst_p_zmbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_adv_mst_p_ghbrb_pkey ON ssabira.s_adv_mst_p_ghbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_scbrb_pkey ON ssabira.s_limit_global_mst_p_scbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_user_pwd_hst_p_kebrb_pkey ON ssabira.s_user_pwd_hst_p_kebrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_role_mst_p_scbrb_pkey ON ssabira.c_role_mst_p_scbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_kebrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_kebrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_component_mst_p_egbrb_pkey ON ssabira.c_component_mst_p_egbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_message_mst_p_egbrb_pkey ON ssabira.c_message_mst_p_egbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_limit_cust_total_p_zwbrb_pkey ON ssabira.s_limit_cust_total_p_zwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE INDEX s_user_mst_p_mubrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_mubrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_mubrb_pkey ON ssabira.s_user_mst_p_mubrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX c_product_mst_p_tznbc_pkey ON ssabira.c_product_mst_p_tznbc USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_user_modifi_hst_p_tznbc_pkey ON ssabira.s_user_modifi_hst_p_tznbc USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_quicklink_mst_p_kebrb_pkey ON ssabira.s_quicklink_mst_p_kebrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_tznbc_pkey ON ssabira.c_mcc_group_map_p_tznbc USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX c_role_mst_p_zmbrb_pkey ON ssabira.c_role_mst_p_zmbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX bnpl_cust_config_pkey ON ssabira.bnpl_cust_config USING btree (business_id, user_id, system_id);

CREATE UNIQUE INDEX s_function_config_p_mzbrb_pkey ON ssabira.s_function_config_p_mzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_kebrb_pkey ON ssabira.s_sysparam_mst_p_kebrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_mubob_pkey ON ssabira.s_url_business_map_mst_p_mubob USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_user_pwd_hst_p_zmbrb_pkey ON ssabira.s_user_pwd_hst_p_zmbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_user_pwd_mst_p_ugbrb_pkey ON ssabira.s_user_pwd_mst_p_ugbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_progress_step_p_scbrb_pkey ON ssabira.s_progress_step_p_scbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_limit_cust_total_p_ugbrb_pkey ON ssabira.s_limit_cust_total_p_ugbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_zmbrb_pkey ON ssabira.c_biz_func_mmap_p_zmbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_secret_qn_res_mst_pkey ON ssabira.s_secret_qn_res_mst USING btree (question_id, language_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_tznbc_pkey ON ssabira.s_url_business_map_mst_p_tznbc USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_message_res_mst_p_ghbrb_pkey ON ssabira.c_message_res_mst_p_ghbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_prd_brochure_details_pkey ON ssabira.c_prd_brochure_details USING btree (business_id, brochure_id, detail_type, detail_name);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_scbrb_pkey ON ssabira.s_dynamictable_config_mst_p_scbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_message_mst_p_mzbrb_pkey ON ssabira.c_message_mst_p_mzbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_reg_payee_mst_p_mzbrb_pkey ON ssabira.c_reg_payee_mst_p_mzbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_menu_mst_p_egbrb_pkey ON ssabira.s_menu_mst_p_egbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_menu_res_mst_p_mubob_pkey ON ssabira.s_menu_res_mst_p_mubob USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_tzbrb_pkey ON ssabira.s_pwd_policy_mst_p_tzbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_scbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_scbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_mubrb_pkey ON ssabira.c_mailmsg_cust_map_p_mubrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_business_mst_p_zmbrb_pkey ON ssabira.c_business_mst_p_zmbrb USING btree (business_id);

CREATE UNIQUE INDEX c_message_mst_p_zmbrb_pkey ON ssabira.c_message_mst_p_zmbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_biz_function_mst_p_zmbrb_pkey ON ssabira.c_biz_function_mst_p_zmbrb USING btree (business_id);

CREATE UNIQUE INDEX c_script_res_mst_p_ugbrb_pkey ON ssabira.c_script_res_mst_p_ugbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_progress_mst_pkey ON ONLY ssabira.s_progress_mst USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_ugbrb_pkey ON ssabira.s_limit_cust_mst_p_ugbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_zmbrb_pkey ON ssabira.s_user_pwd_mst_p_zmbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_ghbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_ghbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_formatter_mst_p_mubob_pkey ON ssabira.c_formatter_mst_p_mubob USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_component_mst_p_zwbrb_pkey ON ssabira.c_component_mst_p_zwbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_mcc_group_mst_p_mzbrb_pkey ON ssabira.c_mcc_group_mst_p_mzbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_script_res_mst_p_mzbrb_pkey ON ssabira.c_script_res_mst_p_mzbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_kebrb_pkey ON ssabira.s_user_secret_answer_p_kebrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_tznbc_pkey ON ssabira.c_bankrouting_mst_p_tznbc USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_mubob_pkey ON ssabira.c_mcc_group_mst_p_mubob USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_limit_cust_mst_p_egbrb_pkey ON ssabira.s_limit_cust_mst_p_egbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_progress_mst_p_mzbrb_pkey ON ssabira.s_progress_mst_p_mzbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_egbrb_pkey ON ssabira.s_user_modifi_hst_p_egbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_ghbrb_pkey ON ssabira.c_mailmsg_cust_map_p_ghbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE INDEX s_user_mst_p_kebrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_kebrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_kebrb_pkey ON ssabira.s_user_mst_p_kebrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_tzbrb_pkey ON ssabira.s_user_pwd_mst_p_tzbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_adv_mst_p_zmbrb_pkey ON ssabira.s_adv_mst_p_zmbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_mubrb_pkey ON ssabira.c_function_screen_mmap_p_mubrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_mubob_pkey ON ssabira.c_bank_branch_pmt_chn_p_mubob USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_bwbrb_pkey ON ssabira.c_mcc_group_mst_p_bwbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_listvalue_mst_p_scbrb_pkey ON ssabira.c_listvalue_mst_p_scbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_bwbrb_pkey ON ssabira.s_partnership_mapping_mst_p_bwbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_ghbrb_pkey ON ssabira.s_limit_cust_total_p_ghbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_mst_p_zmbrb_pkey ON ssabira.c_biller_mst_p_zmbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_ecom_merchant_mapping_mst_pkey ON ssabira.c_ecom_merchant_mapping_mst USING btree (wallet_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_zmbrb_pkey ON ssabira.s_pwd_policy_mst_p_zmbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_business_mst_p_scbrb_pkey ON ssabira.c_business_mst_p_scbrb USING btree (business_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_zmbrb_pkey ON ssabira.s_user_pref_mmap_p_zmbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_customer_preference_mst_pkey ON ssabira.c_customer_preference_mst USING btree (user_menu_refkey);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_zmbrb_pkey ON ssabira.s_credit_card_manage_hst_p_zmbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_limit_cust_total_p_bwbrb_pkey ON ssabira.s_limit_cust_total_p_bwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_component_res_mst_p_zwbrb_pkey ON ssabira.c_component_res_mst_p_zwbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_mubrb_pkey ON ssabira.s_dynamictable_config_mst_p_mubrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_limit_global_mst_p_mzbrb_pkey ON ssabira.s_limit_global_mst_p_mzbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_menu_mst_p_kebrb_pkey ON ssabira.s_menu_mst_p_kebrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_zwbrb_pkey ON ssabira.s_secret_qn_mst_p_zwbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_kebrb_pkey ON ssabira.s_credit_card_manage_hst_p_kebrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_adv_res_mst_p_zmbrb_pkey ON ssabira.s_adv_res_mst_p_zmbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_scbrb_pkey ON ssabira.c_function_screen_mmap_p_scbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX makola_supported_banks_pkey ON ssabira.makola_supported_banks USING btree (bankcode, swiftcode, business_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_ghbrb_pkey ON ssabira.c_biz_lang_mmap_p_ghbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX c_function_screen_mmap_p_zmbrb_pkey ON ssabira.c_function_screen_mmap_p_zmbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_message_mst_p_kebrb_pkey ON ssabira.c_message_mst_p_kebrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_function_screen_mmap_p_ugbrb_pkey ON ssabira.c_function_screen_mmap_p_ugbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_mzbrb_pkey ON ssabira.c_function_screen_mmap_p_mzbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_tzbrb_pkey ON ssabira.s_dynamictable_config_mst_p_tzbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_limit_cust_mst_p_kebrb_pkey ON ssabira.s_limit_cust_mst_p_kebrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_mobile_list_p_zwbrb_pkey ON ssabira.s_mobile_list_p_zwbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_progress_mst_p_scbrb_pkey ON ssabira.s_progress_mst_p_scbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_product_category_mst_p_mzbrb_pkey ON ssabira.s_product_category_mst_p_mzbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_zmbrb_pkey ON ssabira.s_feature_blackout_mst_p_zmbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX s_progress_mst_p_tznbc_pkey ON ssabira.s_progress_mst_p_tznbc USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_adv_mst_p_mzbrb_pkey ON ssabira.s_adv_mst_p_mzbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_ghbrb_pkey ON ssabira.s_limit_global_mst_p_ghbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_menu_res_mst_p_bwbrb_pkey ON ssabira.s_menu_res_mst_p_bwbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_kebrb_pkey ON ssabira.s_user_fail_atmp_mst_p_kebrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_user_pwd_mst_p_scbrb_pkey ON ssabira.s_user_pwd_mst_p_scbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_role_mst_p_mubob_pkey ON ssabira.c_role_mst_p_mubob USING btree (role_id, business_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_tzbrb_pkey ON ssabira.c_biz_func_mmap_p_tzbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_tzbrb_pkey ON ssabira.s_url_business_map_mst_p_tzbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_mzbrb_pkey ON ssabira.c_biz_lang_mmap_p_mzbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_adv_res_mst_p_mubob_pkey ON ssabira.s_adv_res_mst_p_mubob USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_ugbrb_pkey ON ssabira.c_reg_payee_mst_p_ugbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_scbrb_pkey ON ssabira.s_pwd_policy_mst_p_scbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_function_screen_mmap_p_ghbrb_pkey ON ssabira.c_function_screen_mmap_p_ghbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_kebrb_pkey ON ssabira.s_user_fail_atmp_hst_p_kebrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_adv_func_map_p_zmbrb_pkey ON ssabira.s_adv_func_map_p_zmbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_employer_bd_mst_pkey ON ssabira.c_employer_bd_mst USING btree (business_id, employer_id, bd_code);

CREATE UNIQUE INDEX c_bankrouting_mst_p_bwbrb_pkey ON ssabira.c_bankrouting_mst_p_bwbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX batch_step_execution_context_pkey ON ssabira.batch_step_execution_context USING btree (step_execution_id);

CREATE UNIQUE INDEX s_quicklink_mst_pkey ON ONLY ssabira.s_quicklink_mst USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_message_res_mst_p_zwbrb_pkey ON ssabira.c_message_res_mst_p_zwbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_mobile_list_pkey ON ONLY ssabira.s_mobile_list USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_user_secret_answer_p_scbrb_pkey ON ssabira.s_user_secret_answer_p_scbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX s_menu_mst_p_mzbrb_pkey ON ssabira.s_menu_mst_p_mzbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_role_func_mmap_pkey ON ssabira.c_role_func_mmap USING btree (role_id, activity_id, system_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_zmbrb_pkey ON ssabira.c_reg_payee_mst_p_zmbrb USING btree (business_id, payee_id);

CREATE INDEX c_product_eligibility_p_ghbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_ghbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_ghbrb_pkey ON ssabira.c_product_eligibility_p_ghbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_tznbc_pkey ON ssabira.s_ses_summary_hst_p_tznbc USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_function_screen_mmap_p_tzbrb_pkey ON ssabira.c_function_screen_mmap_p_tzbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_mubob_pkey ON ssabira.s_user_fail_atmp_mst_p_mubob USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_formatter_mst_p_egbrb_pkey ON ssabira.c_formatter_mst_p_egbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_bwbrb_pkey ON ssabira.c_listvalue_res_mst_p_bwbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_kebrb_pkey ON ssabira.c_listvalue_res_mst_p_kebrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_pkey ON ONLY ssabira.c_enhanced_entitlement_mst USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_progress_step_pkey ON ONLY ssabira.s_progress_step USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX c_interest_rate_mst_p_zmbrb_pkey ON ssabira.c_interest_rate_mst_p_zmbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_tznbc_pkey ON ssabira.s_feature_blackout_mst_p_tznbc USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX s_secret_qn_mst_p_tznbc_pkey ON ssabira.s_secret_qn_mst_p_tznbc USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_bwbrb_pkey ON ssabira.c_biz_func_mmap_p_bwbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_product_mst_p_tzbrb_pkey ON ssabira.c_product_mst_p_tzbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_mubob_pkey ON ssabira.s_feature_blackout_mst_p_mubob USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_bwbrb_pkey ON ssabira.s_feature_blackout_mst_p_bwbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_component_res_mst_p_bwbrb_pkey ON ssabira.c_component_res_mst_p_bwbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_mobile_list_p_ghbrb_pkey ON ssabira.s_mobile_list_p_ghbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_tzbrb_pkey ON ssabira.s_credit_card_manage_hst_p_tzbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_user_pref_mmap_p_zwbrb_pkey ON ssabira.s_user_pref_mmap_p_zwbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_pkey ON ONLY ssabira.c_biz_lang_mmap USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX c_mcc_group_map_p_ugbrb_pkey ON ssabira.c_mcc_group_map_p_ugbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_zwbrb_pkey ON ssabira.c_biz_lang_mmap_p_zwbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_menu_res_mst_p_mubrb_pkey ON ssabira.s_menu_res_mst_p_mubrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_product_category_mst_p_zmbrb_pkey ON ssabira.s_product_category_mst_p_zmbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_formatter_mst_p_zmbrb_pkey ON ssabira.c_formatter_mst_p_zmbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_kebrb_pkey ON ssabira.c_reg_payee_mst_p_kebrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX c_script_res_mst_p_bwbrb_pkey ON ssabira.c_script_res_mst_p_bwbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_menu_res_mst_p_ugbrb_pkey ON ssabira.s_menu_res_mst_p_ugbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_kebrb_pkey ON ssabira.c_mcc_group_map_p_kebrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_limit_global_mst_p_tznbc_pkey ON ssabira.s_limit_global_mst_p_tznbc USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX c_component_mst_p_bwbrb_pkey ON ssabira.c_component_mst_p_bwbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_mcc_group_map_p_egbrb_pkey ON ssabira.c_mcc_group_map_p_egbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_ugbrb_pkey ON ssabira.s_pwd_policy_mst_p_ugbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_biller_mst_p_ugbrb_pkey ON ssabira.c_biller_mst_p_ugbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_bankrouting_mst_temp_p_bwbrb_pkey ON ssabira.c_bankrouting_mst_temp_p_bwbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_tzbrb_pkey ON ssabira.s_quicklink_mst_p_tzbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_adv_mst_p_mubrb_pkey ON ssabira.s_adv_mst_p_mubrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX batch_job_execution_pkey ON ssabira.batch_job_execution USING btree (job_execution_id);

CREATE UNIQUE INDEX c_tag_mst_p_mubob_pkey ON ssabira.c_tag_mst_p_mubob USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_adv_mst_p_mubob_pkey ON ssabira.s_adv_mst_p_mubob USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX s_cms_lookup_p_mubrb_pkey ON ssabira.s_cms_lookup_p_mubrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_bwbrb_pkey ON ssabira.s_txn_cut_off_mst_p_bwbrb USING btree (business_id, system_id, activity_id);

CREATE INDEX c_product_eligibility_p_scbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_scbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_scbrb_pkey ON ssabira.c_product_eligibility_p_scbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_ghbrb_pkey ON ssabira.s_user_pwd_mst_p_ghbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_unique_id_context_mst_pkey ON ssabira.c_unique_id_context_mst USING btree (uid_context_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_tzbrb_pkey ON ssabira.c_biz_group_mst_p_tzbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_mailmsg_mst_p_mubrb_pkey ON ssabira.c_mailmsg_mst_p_mubrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_egbrb_pkey ON ssabira.s_user_pref_mmap_p_egbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_mzbrb_pkey ON ssabira.s_user_modifi_hst_p_mzbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_reg_payee_mst_p_mubrb_pkey ON ssabira.c_reg_payee_mst_p_mubrb USING btree (business_id, payee_id);

CREATE INDEX s_user_mst_p_bwbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_bwbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_bwbrb_pkey ON ssabira.s_user_mst_p_bwbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_limit_cust_mst_pkey ON ONLY ssabira.s_limit_cust_mst USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_message_res_mst_p_bwbrb_pkey ON ssabira.c_message_res_mst_p_bwbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_pkey ON ONLY ssabira.c_bank_branch_pmt_chn USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_function_config_p_scbrb_pkey ON ssabira.s_function_config_p_scbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_egbrb_pkey ON ssabira.c_biz_function_mst_p_egbrb USING btree (business_id);

CREATE UNIQUE INDEX s_cms_lookup_p_mzbrb_pkey ON ssabira.s_cms_lookup_p_mzbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_kebrb_pkey ON ssabira.s_feature_blackout_mst_p_kebrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_biz_function_mst_p_scbrb_pkey ON ssabira.c_biz_function_mst_p_scbrb USING btree (business_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_ghbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_ghbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_mcc_group_mst_p_tzbrb_pkey ON ssabira.c_mcc_group_mst_p_tzbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_crm_service_def_pkey ON ONLY ssabira.c_crm_service_def USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_biz_func_mmap_pkey ON ONLY ssabira.c_biz_func_mmap USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_screen_mst_p_tznbc_pkey ON ssabira.c_screen_mst_p_tznbc USING btree (business_id, system_id, screen_id, activity_id);

CREATE INDEX s_user_mst_p_ghbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_ghbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_ghbrb_pkey ON ssabira.s_user_mst_p_ghbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_adv_func_map_p_kebrb_pkey ON ssabira.s_adv_func_map_p_kebrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_enhanced_entlment_nonind_mst_pkey ON ssabira.c_enhanced_entlment_nonind_mst USING btree (activity_id, channel_id, business_id, system_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_tznbc_pkey ON ssabira.s_user_fail_atmp_hst_p_tznbc USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_feature_blackout_mst_pkey ON ONLY ssabira.s_feature_blackout_mst USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_listvalue_mst_pkey ON ONLY ssabira.c_listvalue_mst USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_tag_mst_p_egbrb_pkey ON ssabira.c_tag_mst_p_egbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_script_res_mst_p_tznbc_pkey ON ssabira.c_script_res_mst_p_tznbc USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX c_business_mst_p_bwbrb_pkey ON ssabira.c_business_mst_p_bwbrb USING btree (business_id);

CREATE UNIQUE INDEX s_function_config_p_tznbc_pkey ON ssabira.s_function_config_p_tznbc USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_product_category_mst_p_ghbrb_pkey ON ssabira.s_product_category_mst_p_ghbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_user_modifi_hst_p_scbrb_pkey ON ssabira.s_user_modifi_hst_p_scbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_amolparam_mst_pkey ON ssabira.s_amolparam_mst USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_biller_mst_p_tznbc_pkey ON ssabira.c_biller_mst_p_tznbc USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_tag_mst_p_bwbrb_pkey ON ssabira.c_tag_mst_p_bwbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_p_egbrb_pkey ON ssabira.c_message_res_mst_p_egbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_quicklink_mst_p_ghbrb_pkey ON ssabira.s_quicklink_mst_p_ghbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX deliver_time_record_pkey ON ssabira.deliver_time_record USING btree (table_name);

CREATE UNIQUE INDEX s_progress_mst_p_mubrb_pkey ON ssabira.s_progress_mst_p_mubrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_bwbrb_pkey ON ssabira.c_biz_lang_mmap_p_bwbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_ugbrb_pkey ON ssabira.s_txn_cut_off_mst_p_ugbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_bwbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_bwbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_message_res_mst_p_ugbrb_pkey ON ssabira.c_message_res_mst_p_ugbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_egbrb_pkey ON ssabira.c_listvalue_res_mst_p_egbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_ghbrb_pkey ON ssabira.s_feature_blackout_mst_p_ghbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_component_res_mst_p_ugbrb_pkey ON ssabira.c_component_res_mst_p_ugbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_ugbrb_pkey ON ssabira.s_credit_card_manage_hst_p_ugbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_mzbrb_pkey ON ssabira.s_txn_cut_off_mst_p_mzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_mubob_pkey ON ssabira.s_user_modifi_hst_p_mubob USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_kebrb_pkey ON ssabira.c_mailmsg_cust_map_p_kebrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_component_mst_pkey ON ONLY ssabira.c_component_mst USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_biz_function_mst_p_mzbrb_pkey ON ssabira.c_biz_function_mst_p_mzbrb USING btree (business_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_scbrb_pkey ON ssabira.c_reg_payee_mst_p_scbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_product_category_mst_p_mubrb_pkey ON ssabira.s_product_category_mst_p_mubrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_user_pref_mmap_p_mubrb_pkey ON ssabira.s_user_pref_mmap_p_mubrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE INDEX c_product_eligibility_p_mubob_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_mubob USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_mubob_pkey ON ssabira.c_product_eligibility_p_mubob USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_egbrb_pkey ON ssabira.s_ses_summary_hst_p_egbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_listvalue_mst_p_bwbrb_pkey ON ssabira.c_listvalue_mst_p_bwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_url_business_map_mst_p_scbrb_pkey ON ssabira.s_url_business_map_mst_p_scbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_message_mst_p_zwbrb_pkey ON ssabira.c_message_mst_p_zwbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_script_mst_p_tznbc_pkey ON ssabira.c_script_mst_p_tznbc USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX s_quicklink_mst_p_tznbc_pkey ON ssabira.s_quicklink_mst_p_tznbc USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_progress_step_p_mubob_pkey ON ssabira.s_progress_step_p_mubob USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_user_pref_mmap_p_tzbrb_pkey ON ssabira.s_user_pref_mmap_p_tzbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_product_mst_p_mubob_pkey ON ssabira.c_product_mst_p_mubob USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_bankrouting_mst_p_zwbrb_pkey ON ssabira.c_bankrouting_mst_p_zwbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_business_mst_p_mubrb_pkey ON ssabira.c_business_mst_p_mubrb USING btree (business_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_ugbrb_pkey ON ssabira.s_user_secret_answer_p_ugbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_zmbrb_pkey ON ssabira.c_mcc_group_mst_p_zmbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_zmbrb_pkey ON ssabira.c_mailmsg_cust_map_p_zmbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_ghbrb_pkey ON ssabira.s_credit_card_manage_hst_p_ghbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_mubrb_pkey ON ssabira.s_feature_blackout_mst_p_mubrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX s_progress_mst_p_egbrb_pkey ON ssabira.s_progress_mst_p_egbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_ghbrb_pkey ON ssabira.s_secret_qn_mst_p_ghbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_zmbrb_pkey ON ssabira.s_limit_cust_mst_p_zmbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_mubob_pkey ON ssabira.c_biz_lang_mmap_p_mubob USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_ugbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_ugbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_mailmsg_mst_p_mzbrb_pkey ON ssabira.c_mailmsg_mst_p_mzbrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_egbrb_pkey ON ssabira.s_user_secret_answer_p_egbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_mubob_pkey ON ssabira.c_reg_payee_mst_p_mubob USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_zwbrb_pkey ON ssabira.s_user_secret_answer_p_zwbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_screen_mst_p_ugbrb_pkey ON ssabira.c_screen_mst_p_ugbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX c_crm_service_def_p_mzbrb_pkey ON ssabira.c_crm_service_def_p_mzbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_script_mst_p_scbrb_pkey ON ssabira.c_script_mst_p_scbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX offer_category_pkey ON ssabira.offer_category USING btree (offer_category_id);

CREATE UNIQUE INDEX s_cms_lookup_p_ghbrb_pkey ON ssabira.s_cms_lookup_p_ghbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_function_config_p_mubrb_pkey ON ssabira.s_function_config_p_mubrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_mzbrb_pkey ON ssabira.s_limit_cust_total_p_mzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_component_mst_p_mubrb_pkey ON ssabira.c_component_mst_p_mubrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_feature_auth_mst_p_mubob_pkey ON ssabira.s_feature_auth_mst_p_mubob USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_product_category_mst_pkey ON ONLY ssabira.s_product_category_mst USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_cards_sort_code_mst_business_id_bank_code_branch_code_key ON ssabira.c_cards_sort_code_mst USING btree (business_id, bank_code, branch_code);

CREATE UNIQUE INDEX c_cards_sort_code_mst_pkey ON ssabira.c_cards_sort_code_mst USING btree (business_id, sort_code_id);

CREATE UNIQUE INDEX c_cards_sort_code_mst_uk ON ssabira.c_cards_sort_code_mst USING btree (business_id, bank_code, branch_code);

CREATE UNIQUE INDEX s_user_modifi_hst_p_kebrb_pkey ON ssabira.s_user_modifi_hst_p_kebrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_user_pref_mmap_p_mubob_pkey ON ssabira.s_user_pref_mmap_p_mubob USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_scbrb_pkey ON ssabira.s_limit_cust_mst_p_scbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE INDEX s_user_mst_p_scbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_scbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_scbrb_pkey ON ssabira.s_user_mst_p_scbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_kebrb_pkey ON ssabira.s_user_pref_mmap_p_kebrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_biller_pilotuser_setup_pkey ON ssabira.c_biller_pilotuser_setup USING btree (business_id, user_id);

CREATE UNIQUE INDEX s_progress_mst_p_kebrb_pkey ON ssabira.s_progress_mst_p_kebrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX c_script_res_mst_p_mubob_pkey ON ssabira.c_script_res_mst_p_mubob USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_progress_step_p_bwbrb_pkey ON ssabira.s_progress_step_p_bwbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_progress_step_p_egbrb_pkey ON ssabira.s_progress_step_p_egbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX c_script_res_mst_p_egbrb_pkey ON ssabira.c_script_res_mst_p_egbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_zwbrb_pkey ON ssabira.s_credit_card_manage_hst_p_zwbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_mubob_pkey ON ssabira.s_credit_card_manage_hst_p_mubob USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_adv_mst_p_zwbrb_pkey ON ssabira.s_adv_mst_p_zwbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX s_menu_mst_p_zmbrb_pkey ON ssabira.s_menu_mst_p_zmbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_tznbc_pkey ON ssabira.c_mailmsg_cust_map_p_tznbc USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_zwbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_zwbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_kebrb_pkey ON ssabira.c_biz_function_mst_p_kebrb USING btree (business_id);

CREATE UNIQUE INDEX s_feature_auth_mst_p_mzbrb_pkey ON ssabira.s_feature_auth_mst_p_mzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_bwbrb_pkey ON ssabira.s_limit_global_mst_p_bwbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX c_mcc_group_map_p_scbrb_pkey ON ssabira.c_mcc_group_map_p_scbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_mobile_list_p_mubrb_pkey ON ssabira.s_mobile_list_p_mubrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX c_mcc_group_mst_pkey ON ONLY ssabira.c_mcc_group_mst USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_ses_summary_hst_p_scbrb_pkey ON ssabira.s_ses_summary_hst_p_scbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_employer_mst_pkey ON ssabira.c_employer_mst USING btree (business_id, employer_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_egbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_egbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_mobile_list_p_bwbrb_pkey ON ssabira.s_mobile_list_p_bwbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX c_component_res_mst_p_mubob_pkey ON ssabira.c_component_res_mst_p_mubob USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_tag_mst_p_scbrb_pkey ON ssabira.c_tag_mst_p_scbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_mubrb_pkey ON ssabira.s_pwd_policy_mst_p_mubrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_cms_lookup_p_zwbrb_pkey ON ssabira.s_cms_lookup_p_zwbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_ugbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_ugbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_component_res_mst_p_zmbrb_pkey ON ssabira.c_component_res_mst_p_zmbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_adv_func_map_p_tzbrb_pkey ON ssabira.s_adv_func_map_p_tzbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_zwbrb_pkey ON ssabira.s_quicklink_mst_p_zwbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_ghbrb_pkey ON ssabira.s_adv_res_mst_p_ghbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_business_mst_p_mubob_pkey ON ssabira.c_business_mst_p_mubob USING btree (business_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_kebrb_pkey ON ssabira.c_interest_rate_mst_p_kebrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_quicklink_mst_p_scbrb_pkey ON ssabira.s_quicklink_mst_p_scbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_ugbrb_pkey ON ssabira.s_feature_blackout_mst_p_ugbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_component_mst_p_kebrb_pkey ON ssabira.c_component_mst_p_kebrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_mzbrb_pkey ON ssabira.c_mailmsg_cust_map_p_mzbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_tag_mst_p_zmbrb_pkey ON ssabira.c_tag_mst_p_zmbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX offer_location_pkey ON ssabira.offer_location USING btree (location_id);

CREATE UNIQUE INDEX c_biller_si_mst_pkey ON ssabira.c_biller_si_mst USING btree (biller_id, business_id);

CREATE UNIQUE INDEX c_component_res_mst_p_tzbrb_pkey ON ssabira.c_component_res_mst_p_tzbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_kebrb_pkey ON ssabira.c_biz_group_mst_p_kebrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_tznbc_pkey ON ssabira.c_interest_rate_mst_p_tznbc USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_sysparam_mst_p_ghbrb_pkey ON ssabira.s_sysparam_mst_p_ghbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE INDEX s_user_mst_p_ugbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_ugbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_ugbrb_pkey ON ssabira.s_user_mst_p_ugbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_progress_step_p_ghbrb_pkey ON ssabira.s_progress_step_p_ghbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX c_script_mst_p_ugbrb_pkey ON ssabira.c_script_mst_p_ugbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX s_secret_qn_mst_p_zmbrb_pkey ON ssabira.s_secret_qn_mst_p_zmbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_ghbrb_pkey ON ssabira.c_biz_group_mst_p_ghbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_deliver_time_record_mb_pkey ON ssabira.s_deliver_time_record_mb USING btree (table_name);

CREATE UNIQUE INDEX s_product_category_mst_p_egbrb_pkey ON ssabira.s_product_category_mst_p_egbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_business_mst_p_mzbrb_pkey ON ssabira.c_business_mst_p_mzbrb USING btree (business_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_bwbrb_pkey ON ssabira.s_user_modifi_hst_p_bwbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_pkey ON ONLY ssabira.s_user_fail_atmp_mst USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_limit_global_mst_p_mubob_pkey ON ssabira.s_limit_global_mst_p_mubob USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX c_interest_rate_mst_p_mubob_pkey ON ssabira.c_interest_rate_mst_p_mubob USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_sysparam_mst_p_mubrb_pkey ON ssabira.s_sysparam_mst_p_mubrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_biller_mst_p_scbrb_pkey ON ssabira.c_biller_mst_p_scbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_scbrb_pkey ON ssabira.s_credit_card_manage_hst_p_scbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX c_interest_rate_mst_p_ghbrb_pkey ON ssabira.c_interest_rate_mst_p_ghbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_secret_qn_mst_p_mzbrb_pkey ON ssabira.s_secret_qn_mst_p_mzbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_mubrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_mubrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_ugbrb_pkey ON ssabira.s_user_pref_mmap_p_ugbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_mubrb_pkey ON ssabira.s_user_secret_answer_p_mubrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX s_menu_res_mst_pkey ON ONLY ssabira.s_menu_res_mst USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_mubrb_pkey ON ssabira.c_mcc_group_mst_p_mubrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_script_mst_p_tzbrb_pkey ON ssabira.c_script_mst_p_tzbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX s_dynamictable_config_mst_pkey ON ONLY ssabira.s_dynamictable_config_mst USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_menu_mst_p_zwbrb_pkey ON ssabira.s_menu_mst_p_zwbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX d1_card_reg_details_pkey ON ssabira.d1_card_reg_details USING btree (consumer_id, card_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_zwbrb_pkey ON ssabira.c_listvalue_res_mst_p_zwbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_egbrb_pkey ON ssabira.s_quicklink_mst_p_egbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_ugbrb_pkey ON ssabira.c_biz_lang_mmap_p_ugbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_menu_mst_p_mubob_pkey ON ssabira.s_menu_mst_p_mubob USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_mzbrb_pkey ON ssabira.s_ses_summary_hst_p_mzbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_biz_group_mst_pkey ON ONLY ssabira.c_biz_group_mst USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_mzbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_mzbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_biller_payment_mst_pkey ON ssabira.c_biller_payment_mst USING btree (biller_id, business_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_kebrb_pkey ON ssabira.c_biz_lang_mmap_p_kebrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_menu_res_mst_p_mzbrb_pkey ON ssabira.s_menu_res_mst_p_mzbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_egbrb_pkey ON ssabira.s_dynamictable_config_mst_p_egbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_mubob_pkey ON ssabira.c_enhanced_entitlement_mst_p_mubob USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_component_res_mst_p_ghbrb_pkey ON ssabira.c_component_res_mst_p_ghbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_message_res_mst_p_mubob_pkey ON ssabira.c_message_res_mst_p_mubob USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_role_mst_p_ghbrb_pkey ON ssabira.c_role_mst_p_ghbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX s_progress_step_p_mubrb_pkey ON ssabira.s_progress_step_p_mubrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_product_category_mst_p_bwbrb_pkey ON ssabira.s_product_category_mst_p_bwbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_function_mst_pkey ON ssabira.c_function_mst USING btree (activity_id, system_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_mubob_pkey ON ssabira.s_limit_cust_mst_p_mubob USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_kebrb_pkey ON ssabira.c_biz_func_mmap_p_kebrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_feature_auth_mst_p_zwbrb_pkey ON ssabira.s_feature_auth_mst_p_zwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_screen_mst_p_tzbrb_pkey ON ssabira.c_screen_mst_p_tzbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX c_message_mst_pkey ON ONLY ssabira.c_message_mst USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_limit_cust_total_pkey ON ONLY ssabira.s_limit_cust_total USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_cms_lookup_p_egbrb_pkey ON ssabira.s_cms_lookup_p_egbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_feature_auth_mst_p_mubrb_pkey ON ssabira.s_feature_auth_mst_p_mubrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_pkey ON ONLY ssabira.s_pwd_policy_mst USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_mcc_group_map_p_tzbrb_pkey ON ssabira.c_mcc_group_map_p_tzbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_function_config_p_mubob_pkey ON ssabira.s_function_config_p_mubob USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_business_mst_p_egbrb_pkey ON ssabira.c_business_mst_p_egbrb USING btree (business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_mzbrb_pkey ON ssabira.c_bankrouting_mst_p_mzbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_tznbc_pkey ON ssabira.s_limit_cust_total_p_tznbc USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_adv_func_map_p_egbrb_pkey ON ssabira.s_adv_func_map_p_egbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_script_res_mst_p_ghbrb_pkey ON ssabira.c_script_res_mst_p_ghbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_menu_mst_p_mubrb_pkey ON ssabira.s_menu_mst_p_mubrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_listvalue_group_mst_pkey ON ssabira.c_listvalue_group_mst USING btree (group_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_mubob_pkey ON ssabira.c_mcc_group_map_p_mubob USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_scbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_scbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_scbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_scbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_user_pwd_hst_p_mubrb_pkey ON ssabira.s_user_pwd_hst_p_mubrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_interest_rate_mst_p_scbrb_pkey ON ssabira.c_interest_rate_mst_p_scbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_listvalue_mst_p_ghbrb_pkey ON ssabira.c_listvalue_mst_p_ghbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_script_mst_p_mubob_pkey ON ssabira.c_script_mst_p_mubob USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_message_mst_p_scbrb_pkey ON ssabira.c_message_mst_p_scbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_script_mst_p_zwbrb_pkey ON ssabira.c_script_mst_p_zwbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_mubob_pkey ON ssabira.c_mailmsg_cust_map_p_mubob USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_zmbrb_pkey ON ssabira.c_mcc_group_map_p_zmbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_mobile_list_p_mubob_pkey ON ssabira.s_mobile_list_p_mubob USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_secret_qn_mst_p_mubrb_pkey ON ssabira.s_secret_qn_mst_p_mubrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_ghbrb_pkey ON ssabira.s_pwd_policy_mst_p_ghbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_tag_mst_p_ghbrb_pkey ON ssabira.c_tag_mst_p_ghbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_ugbrb_pkey ON ssabira.c_biz_function_mst_p_ugbrb USING btree (business_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_egbrb_pkey ON ssabira.c_mcc_group_mst_p_egbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_business_mst_p_ghbrb_pkey ON ssabira.c_business_mst_p_ghbrb USING btree (business_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_ghbrb_pkey ON ssabira.s_url_business_map_mst_p_ghbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_egbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_egbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_mzbrb_pkey ON ssabira.s_quicklink_mst_p_mzbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_component_mst_p_mzbrb_pkey ON ssabira.c_component_mst_p_mzbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_user_pref_mmap_p_tznbc_pkey ON ssabira.s_user_pref_mmap_p_tznbc USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_message_res_mst_p_scbrb_pkey ON ssabira.c_message_res_mst_p_scbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_progress_step_p_tznbc_pkey ON ssabira.s_progress_step_p_tznbc USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_mzbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_mzbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_tzbrb_pkey ON ssabira.c_mailmsg_cust_map_p_tzbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_mailmsg_mst_p_ghbrb_pkey ON ssabira.c_mailmsg_mst_p_ghbrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_tzbrb_pkey ON ssabira.c_biz_function_mst_p_tzbrb USING btree (business_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_ghbrb_pkey ON ssabira.c_mcc_group_map_p_ghbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE INDEX s_user_mst_p_egbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_egbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_egbrb_pkey ON ssabira.s_user_mst_p_egbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_zmbrb_pkey ON ssabira.c_listvalue_res_mst_p_zmbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_tznbc_pkey ON ssabira.s_partnership_mapping_mst_p_tznbc USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX s_feature_auth_mst_p_tznbc_pkey ON ssabira.s_feature_auth_mst_p_tznbc USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_progress_mst_p_tzbrb_pkey ON ssabira.s_progress_mst_p_tzbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_mzbrb_pkey ON ssabira.s_adv_res_mst_p_mzbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_scbrb_pkey ON ssabira.s_limit_cust_total_p_scbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_mst_p_mubrb_pkey ON ssabira.c_biller_mst_p_mubrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_mubrb_pkey ON ssabira.c_mcc_group_map_p_mubrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_adv_mst_p_bwbrb_pkey ON ssabira.s_adv_mst_p_bwbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_interest_rate_maint_mst_pkey ON ssabira.c_interest_rate_maint_mst USING btree (business_id, rate_id);

CREATE UNIQUE INDEX c_business_mst_p_kebrb_pkey ON ssabira.c_business_mst_p_kebrb USING btree (business_id);

CREATE UNIQUE INDEX c_screen_mst_p_scbrb_pkey ON ssabira.c_screen_mst_p_scbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_bwbrb_pkey ON ssabira.s_url_business_map_mst_p_bwbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_limit_global_mst_p_tzbrb_pkey ON ssabira.s_limit_global_mst_p_tzbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_sysparam_mst_p_egbrb_pkey ON ssabira.s_sysparam_mst_p_egbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_pkey ON ONLY ssabira.c_message_res_mst USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_message_res_mst_p_tznbc_pkey ON ssabira.c_message_res_mst_p_tznbc USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_mzbrb_pkey ON ssabira.s_credit_card_manage_hst_p_mzbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_progress_step_p_zmbrb_pkey ON ssabira.s_progress_step_p_zmbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_adv_mst_p_scbrb_pkey ON ssabira.s_adv_mst_p_scbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_scbrb_pkey ON ssabira.c_listvalue_res_mst_p_scbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_ghbrb_pkey ON ssabira.c_bankrouting_mst_p_ghbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_kebrb_pkey ON ssabira.s_secret_qn_mst_p_kebrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_ugbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_ugbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE INDEX s_user_mst_p_mzbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_mzbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_mzbrb_pkey ON ssabira.s_user_mst_p_mzbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_tznbc_pkey ON ssabira.s_pwd_policy_mst_p_tznbc USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_secret_qn_mst_pkey ON ONLY ssabira.s_secret_qn_mst USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_screen_mst_p_mubrb_pkey ON ssabira.c_screen_mst_p_mubrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX offer_promo_offers_pkey ON ssabira.offer_promo_offers USING btree (promo_offer_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_kebrb_pkey ON ssabira.c_listvalue_mst_p_kebrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_component_mst_p_ghbrb_pkey ON ssabira.c_component_mst_p_ghbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_component_mst_p_ugbrb_pkey ON ssabira.c_component_mst_p_ugbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_menu_mst_p_ugbrb_pkey ON ssabira.s_menu_mst_p_ugbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_zmbrb_pkey ON ssabira.s_user_secret_answer_p_zmbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_mzbrb_pkey ON ssabira.s_limit_cust_mst_p_mzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_reg_payee_mst_pkey ON ONLY ssabira.c_reg_payee_mst USING btree (business_id, payee_id);

CREATE UNIQUE INDEX c_mailmsg_mst_p_bwbrb_pkey ON ssabira.c_mailmsg_mst_p_bwbrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_progress_mst_p_mubob_pkey ON ssabira.s_progress_mst_p_mubob USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_tzbrb_pkey ON ssabira.c_listvalue_mst_p_tzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_mcc_group_mst_p_kebrb_pkey ON ssabira.c_mcc_group_mst_p_kebrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_biller_mst_p_kebrb_pkey ON ssabira.c_biller_mst_p_kebrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biller_ref_mst_pkey ON ssabira.c_biller_ref_mst USING btree (biller_id, business_id, ref_no_key);

CREATE UNIQUE INDEX c_bankrouting_mst_p_mubrb_pkey ON ssabira.c_bankrouting_mst_p_mubrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_function_screen_mmap_pkey ON ONLY ssabira.c_function_screen_mmap USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_app_semantic_version_pkey ON ssabira.c_app_semantic_version USING btree (app_semver_id);

CREATE UNIQUE INDEX unique_constraint_c_app_semantic_version ON ssabira.c_app_semantic_version USING btree (business_id, system_id, build_typ, build_version);

CREATE UNIQUE INDEX s_menu_res_mst_p_tzbrb_pkey ON ssabira.s_menu_res_mst_p_tzbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX c_formatter_mst_p_mubrb_pkey ON ssabira.c_formatter_mst_p_mubrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_mubob_pkey ON ssabira.s_sysparam_mst_p_mubob USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_role_mst_p_zwbrb_pkey ON ssabira.c_role_mst_p_zwbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX s_adv_func_map_p_bwbrb_pkey ON ssabira.s_adv_func_map_p_bwbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_screen_mst_p_mzbrb_pkey ON ssabira.c_screen_mst_p_mzbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_egbrb_pkey ON ssabira.s_limit_global_mst_p_egbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_mubrb_pkey ON ssabira.s_partnership_mapping_mst_p_mubrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_bankrouting_mst_pkey ON ONLY ssabira.c_bankrouting_mst USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_tzbrb_pkey ON ssabira.c_listvalue_res_mst_p_tzbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_adv_mst_p_ugbrb_pkey ON ssabira.s_adv_mst_p_ugbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_ugbrb_pkey ON ssabira.c_mcc_group_mst_p_ugbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX c_script_res_mst_p_kebrb_pkey ON ssabira.c_script_res_mst_p_kebrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX c_script_res_mst_p_tzbrb_pkey ON ssabira.c_script_res_mst_p_tzbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_mubob_pkey ON ssabira.s_partnership_mapping_mst_p_mubob USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_zmbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_zmbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_interest_rate_mst_p_tzbrb_pkey ON ssabira.c_interest_rate_mst_p_tzbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX offer_user_pkey ON ssabira.offer_user USING btree (user_id);

CREATE UNIQUE INDEX s_user_pwd_hst_p_zwbrb_pkey ON ssabira.s_user_pwd_hst_p_zwbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_secret_qn_mst_p_mubob_pkey ON ssabira.s_secret_qn_mst_p_mubob USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_mubob_pkey ON ssabira.s_txn_cut_off_mst_p_mubob USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_product_attributes_mst_pkey ON ssabira.c_product_attributes_mst USING btree (business_id, product_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_ghbrb_pkey ON ssabira.s_ses_summary_hst_p_ghbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_quicklink_mst_p_ugbrb_pkey ON ssabira.s_quicklink_mst_p_ugbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_bwbrb_pkey ON ssabira.c_biz_function_mst_p_bwbrb USING btree (business_id);

CREATE UNIQUE INDEX s_mobile_list_p_scbrb_pkey ON ssabira.s_mobile_list_p_scbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_adv_res_mst_p_zwbrb_pkey ON ssabira.s_adv_res_mst_p_zwbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_component_res_mst_p_egbrb_pkey ON ssabira.c_component_res_mst_p_egbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_zwbrb_pkey ON ssabira.c_mcc_group_map_p_zwbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX c_biz_func_mmap_p_egbrb_pkey ON ssabira.c_biz_func_mmap_p_egbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_user_pref_mmap_pkey ON ONLY ssabira.s_user_pref_mmap USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_screen_mst_p_ghbrb_pkey ON ssabira.c_screen_mst_p_ghbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_user_pwd_hst_p_tznbc_pkey ON ssabira.s_user_pwd_hst_p_tznbc USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_scbrb_pkey ON ssabira.c_mailmsg_cust_map_p_scbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_product_mst_p_mubrb_pkey ON ssabira.c_product_mst_p_mubrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_adv_mst_p_kebrb_pkey ON ssabira.s_adv_mst_p_kebrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_formatter_mst_p_zwbrb_pkey ON ssabira.c_formatter_mst_p_zwbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_ugbrb_pkey ON ssabira.s_partnership_mapping_mst_p_ugbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_egbrb_pkey ON ssabira.c_listvalue_mst_p_egbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_product_mst_p_bwbrb_pkey ON ssabira.c_product_mst_p_bwbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_mzbrb_pkey ON ssabira.c_listvalue_res_mst_p_mzbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE INDEX s_user_mst_p_zwbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_zwbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_zwbrb_pkey ON ssabira.s_user_mst_p_zwbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_progress_step_p_tzbrb_pkey ON ssabira.s_progress_step_p_tzbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX c_biller_mst_pkey ON ONLY ssabira.c_biller_mst USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_egbrb_pkey ON ssabira.s_secret_qn_mst_p_egbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_mubrb_pkey ON ssabira.s_ses_summary_hst_p_mubrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_feature_auth_mst_p_scbrb_pkey ON ssabira.s_feature_auth_mst_p_scbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_p_kebrb_pkey ON ssabira.c_message_res_mst_p_kebrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_biller_mst_test_p_tznbc_pkey ON ssabira.c_biller_mst_test_p_tznbc USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_zwbrb_pkey ON ssabira.c_function_screen_mmap_p_zwbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_message_mst_p_bwbrb_pkey ON ssabira.c_message_mst_p_bwbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_feature_auth_mst_p_zmbrb_pkey ON ssabira.s_feature_auth_mst_p_zmbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_zwbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_zwbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_screen_mst_pkey ON ONLY ssabira.c_screen_mst USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX c_component_res_mst_p_mubrb_pkey ON ssabira.c_component_res_mst_p_mubrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_pkey ON ONLY ssabira.s_credit_card_manage_hst USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX c_mailmsg_mst_p_egbrb_pkey ON ssabira.c_mailmsg_mst_p_egbrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_function_config_p_egbrb_pkey ON ssabira.s_function_config_p_egbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_mubrb_pkey ON ssabira.c_biz_lang_mmap_p_mubrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX c_crm_service_def_p_kebrb_pkey ON ssabira.c_crm_service_def_p_kebrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_script_mst_p_egbrb_pkey ON ssabira.c_script_mst_p_egbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_mubob_pkey ON ssabira.c_listvalue_res_mst_p_mubob USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_product_category_mst_p_ugbrb_pkey ON ssabira.s_product_category_mst_p_ugbrb USING btree (business_id, system_id, category_cd);

CREATE INDEX s_user_mst_p_mubob_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_mubob USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_mubob_pkey ON ssabira.s_user_mst_p_mubob USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_ugbrb_pkey ON ssabira.c_listvalue_res_mst_p_ugbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_mobile_list_p_ugbrb_pkey ON ssabira.s_mobile_list_p_ugbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_tzbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_tzbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_cms_lookup_p_mubob_pkey ON ssabira.s_cms_lookup_p_mubob USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_mcc_group_mst_p_scbrb_pkey ON ssabira.c_mcc_group_mst_p_scbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_cms_lookup_p_bwbrb_pkey ON ssabira.s_cms_lookup_p_bwbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_menu_res_mst_p_zwbrb_pkey ON ssabira.s_menu_res_mst_p_zwbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_progress_step_p_mzbrb_pkey ON ssabira.s_progress_step_p_mzbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_zwbrb_pkey ON ssabira.s_dynamictable_config_mst_p_zwbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_script_mst_pkey ON ONLY ssabira.c_script_mst USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_role_mst_pkey ON ONLY ssabira.c_role_mst USING btree (role_id, business_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_zmbrb_pkey ON ssabira.c_biz_group_mst_p_zmbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_ghbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_ghbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_bwbrb_pkey ON ssabira.c_function_screen_mmap_p_bwbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_tzbrb_pkey ON ssabira.s_ses_summary_hst_p_tzbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_user_pwd_mst_p_kebrb_pkey ON ssabira.s_user_pwd_mst_p_kebrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_screen_mst_p_egbrb_pkey ON ssabira.c_screen_mst_p_egbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_bwbrb_pkey ON ssabira.s_secret_qn_mst_p_bwbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_tag_mst_p_ugbrb_pkey ON ssabira.c_tag_mst_p_ugbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_formatter_mst_p_ugbrb_pkey ON ssabira.c_formatter_mst_p_ugbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_scbrb_pkey ON ssabira.s_adv_res_mst_p_scbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_menu_res_mst_p_zmbrb_pkey ON ssabira.s_menu_res_mst_p_zmbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE INDEX c_product_eligibility_p_zwbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_zwbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_zwbrb_pkey ON ssabira.c_product_eligibility_p_zwbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_crm_service_def_p_mubob_pkey ON ssabira.c_crm_service_def_p_mubob USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_ugbrb_pkey ON ssabira.c_listvalue_mst_p_ugbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_bankrouting_mst_temp_p_ghbrb_pkey ON ssabira.c_bankrouting_mst_temp_p_ghbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX s_progress_mst_p_ugbrb_pkey ON ssabira.s_progress_mst_p_ugbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_kebrb_pkey ON ssabira.s_pwd_policy_mst_p_kebrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_ghbrb_pkey ON ssabira.s_dynamictable_config_mst_p_ghbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_sysparam_mst_p_zmbrb_pkey ON ssabira.s_sysparam_mst_p_zmbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX s_user_pwd_hst_p_mzbrb_pkey ON ssabira.s_user_pwd_hst_p_mzbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_formatter_mst_p_bwbrb_pkey ON ssabira.c_formatter_mst_p_bwbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_role_mst_p_mubrb_pkey ON ssabira.c_role_mst_p_mubrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_mzbrb_pkey ON ssabira.c_biz_func_mmap_p_mzbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_mubob_pkey ON ssabira.c_listvalue_mst_p_mubob USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_message_mst_p_tznbc_pkey ON ssabira.c_message_mst_p_tznbc USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_egbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_egbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_crm_service_def_p_zwbrb_pkey ON ssabira.c_crm_service_def_p_zwbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_zmbrb_pkey ON ssabira.c_bankrouting_mst_p_zmbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_tzbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_tzbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_international_bank_pkey ON ssabira.c_international_bank USING btree (swift_code);

CREATE UNIQUE INDEX s_progress_step_p_ugbrb_pkey ON ssabira.s_progress_step_p_ugbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_menu_res_mst_p_egbrb_pkey ON ssabira.s_menu_res_mst_p_egbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_adv_mst_p_tznbc_pkey ON ssabira.s_adv_mst_p_tznbc USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_formatter_mst_pkey ON ONLY ssabira.c_formatter_mst USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_crm_service_def_p_mubrb_pkey ON ssabira.c_crm_service_def_p_mubrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX s_adv_func_map_p_mubob_pkey ON ssabira.s_adv_func_map_p_mubob USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX s_menu_mst_p_bwbrb_pkey ON ssabira.s_menu_mst_p_bwbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_employer_scheme_mst_pkey ON ssabira.c_employer_scheme_mst USING btree (business_id, employer_id, scheme_code);

CREATE UNIQUE INDEX c_branch_list_mst_pkey ON ssabira.c_branch_list_mst USING btree (branch_code, business_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_ghbrb_pkey ON ssabira.s_limit_cust_mst_p_ghbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_zmbrb_pkey ON ssabira.s_ses_summary_hst_p_zmbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE INDEX c_product_eligibility_p_egbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_egbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_egbrb_pkey ON ssabira.c_product_eligibility_p_egbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_function_config_p_ugbrb_pkey ON ssabira.s_function_config_p_ugbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_zmbrb_pkey ON ssabira.s_txn_cut_off_mst_p_zmbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_pricing_code_details_mst_pkey ON ssabira.c_pricing_code_details_mst USING btree (pricing_code, business_id, interest_rate_code);

CREATE UNIQUE INDEX s_user_pwd_mst_p_egbrb_pkey ON ssabira.s_user_pwd_mst_p_egbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_user_secret_answer_p_tzbrb_pkey ON ssabira.s_user_secret_answer_p_tzbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_ghbrb_pkey ON ssabira.c_biz_function_mst_p_ghbrb USING btree (business_id);

CREATE UNIQUE INDEX c_crm_service_def_p_zmbrb_pkey ON ssabira.c_crm_service_def_p_zmbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_script_mst_p_bwbrb_pkey ON ssabira.c_script_mst_p_bwbrb USING btree (system_id, business_id, script_key);

CREATE INDEX s_user_mst_p_tzbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_tzbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_tzbrb_pkey ON ssabira.s_user_mst_p_tzbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_scbrb_pkey ON ssabira.c_biz_func_mmap_p_scbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_scbrb_pkey ON ssabira.c_bankrouting_mst_p_scbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_function_screen_mmap_p_mubob_pkey ON ssabira.c_function_screen_mmap_p_mubob USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_ugbrb_pkey ON ssabira.s_limit_global_mst_p_ugbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX c_tag_mst_p_tzbrb_pkey ON ssabira.c_tag_mst_p_tzbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_mzbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_mzbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_adv_func_map_p_zwbrb_pkey ON ssabira.s_adv_func_map_p_zwbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_bulk_ben_list_mst_pkey ON ssabira.c_bulk_ben_list_mst USING btree (id, entity_id);

CREATE UNIQUE INDEX s_adv_func_map_p_ugbrb_pkey ON ssabira.s_adv_func_map_p_ugbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_ghbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_ghbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_zwbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_zwbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_feature_auth_mst_p_bwbrb_pkey ON ssabira.s_feature_auth_mst_p_bwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_formatter_mst_p_mzbrb_pkey ON ssabira.c_formatter_mst_p_mzbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_zwbrb_pkey ON ssabira.c_listvalue_mst_p_zwbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_cms_lookup_p_tznbc_pkey ON ssabira.s_cms_lookup_p_tznbc USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_message_res_mst_p_mzbrb_pkey ON ssabira.c_message_res_mst_p_mzbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_user_pwd_mst_p_mzbrb_pkey ON ssabira.s_user_pwd_mst_p_mzbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_egbrb_pkey ON ssabira.s_pwd_policy_mst_p_egbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_biz_group_mst_p_tznbc_pkey ON ssabira.c_biz_group_mst_p_tznbc USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_mubrb_pkey ON ssabira.c_biz_func_mmap_p_mubrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_feature_auth_mst_pkey ON ONLY ssabira.s_feature_auth_mst USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_ugbrb_pkey ON ssabira.c_mailmsg_cust_map_p_ugbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_egbrb_pkey ON ssabira.c_reg_payee_mst_p_egbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_tznbc_pkey ON ssabira.c_reg_payee_mst_p_tznbc USING btree (business_id, payee_id);

CREATE INDEX c_product_eligibility_p_mubrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_mubrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_mubrb_pkey ON ssabira.c_product_eligibility_p_mubrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_sysparam_mst_pkey ON ONLY ssabira.s_sysparam_mst USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_product_mst_p_ghbrb_pkey ON ssabira.c_product_mst_p_ghbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_function_screen_mmap_p_kebrb_pkey ON ssabira.c_function_screen_mmap_p_kebrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX c_mailmsg_mst_p_kebrb_pkey ON ssabira.c_mailmsg_mst_p_kebrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_menu_mst_pkey ON ONLY ssabira.s_menu_mst USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_zmbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_zmbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_crm_service_def_p_ugbrb_pkey ON ssabira.c_crm_service_def_p_ugbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_formatter_mst_p_scbrb_pkey ON ssabira.c_formatter_mst_p_scbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_tznbc_pkey ON ssabira.s_txn_cut_off_mst_p_tznbc USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_product_category_mst_p_zwbrb_pkey ON ssabira.s_product_category_mst_p_zwbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_message_mst_p_ghbrb_pkey ON ssabira.c_message_mst_p_ghbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_ses_summary_hst_pkey ON ONLY ssabira.s_ses_summary_hst USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_url_business_map_mst_p_egbrb_pkey ON ssabira.s_url_business_map_mst_p_egbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_egbrb_pkey ON ssabira.s_feature_blackout_mst_p_egbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_biz_group_mst_p_bwbrb_pkey ON ssabira.c_biz_group_mst_p_bwbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_egbrb_pkey ON ssabira.s_partnership_mapping_mst_p_egbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_product_mst_p_kebrb_pkey ON ssabira.c_product_mst_p_kebrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_user_pwd_hst_p_bwbrb_pkey ON ssabira.s_user_pwd_hst_p_bwbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_user_pwd_hst_p_ugbrb_pkey ON ssabira.s_user_pwd_hst_p_ugbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_limit_cust_total_p_tzbrb_pkey ON ssabira.s_limit_cust_total_p_tzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE INDEX c_product_eligibility_p_tznbc_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_tznbc USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_tznbc_pkey ON ssabira.c_product_eligibility_p_tznbc USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_mcc_group_map_p_mzbrb_pkey ON ssabira.c_mcc_group_map_p_mzbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX c_product_mst_p_mzbrb_pkey ON ssabira.c_product_mst_p_mzbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_mcc_group_map_pkey ON ONLY ssabira.c_mcc_group_map USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_limit_cust_mst_p_bwbrb_pkey ON ssabira.s_limit_cust_mst_p_bwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_tznbc_pkey ON ssabira.c_biz_lang_mmap_p_tznbc USING btree (business_id, supported_lang_key);

CREATE INDEX c_product_eligibility_p_ugbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_ugbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_ugbrb_pkey ON ssabira.c_product_eligibility_p_ugbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_tznbc_pkey ON ssabira.c_listvalue_res_mst_p_tznbc USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_url_business_map_mst_pkey ON ONLY ssabira.s_url_business_map_mst USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_message_mst_p_mubob_pkey ON ssabira.c_message_mst_p_mubob USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_ses_summary_hst_p_kebrb_pkey ON ssabira.s_ses_summary_hst_p_kebrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_mailmsg_mst_pkey ON ONLY ssabira.c_mailmsg_mst USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_mubrb_pkey ON ssabira.s_limit_global_mst_p_mubrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_zwbrb_pkey ON ssabira.s_partnership_mapping_mst_p_zwbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_message_mst_p_ugbrb_pkey ON ssabira.c_message_mst_p_ugbrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX c_bankrouting_mst_p_mubob_pkey ON ssabira.c_bankrouting_mst_p_mubob USING btree (bankcode, branchcode, business_id);

CREATE INDEX c_product_eligibility_p_kebrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_kebrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_kebrb_pkey ON ssabira.c_product_eligibility_p_kebrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_product_category_mst_p_tzbrb_pkey ON ssabira.s_product_category_mst_p_tzbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_visa_good_bin_numbers_pkey ON ssabira.c_visa_good_bin_mst USING btree (bin_type, bin_number);

CREATE UNIQUE INDEX c_biz_group_mst_p_ugbrb_pkey ON ssabira.c_biz_group_mst_p_ugbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_tzbrb_pkey ON ssabira.s_feature_blackout_mst_p_tzbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_screen_mst_p_kebrb_pkey ON ssabira.c_screen_mst_p_kebrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_zwbrb_pkey ON ssabira.c_mailmsg_cust_map_p_zwbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_biller_mst_test_pkey ON ONLY ssabira.c_biller_mst_test USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_bwbrb_pkey ON ssabira.s_sysparam_mst_p_bwbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_component_res_mst_pkey ON ONLY ssabira.c_component_res_mst USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_mubrb_pkey ON ssabira.s_user_modifi_hst_p_mubrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_banner_details_pkey ON ssabira.c_banner_details USING btree (business_id, country_code, system_id);

CREATE UNIQUE INDEX c_tag_mst_p_kebrb_pkey ON ssabira.c_tag_mst_p_kebrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_mobile_list_p_tzbrb_pkey ON ssabira.s_mobile_list_p_tzbrb USING btree (business_id, system_id, phone);

CREATE INDEX c_product_eligibility_ndx ON ONLY ssabira.c_product_eligibility USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_pkey ON ONLY ssabira.c_product_eligibility USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_zmbrb_pkey ON ssabira.c_biz_lang_mmap_p_zmbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX c_function_screen_mmap_p_tznbc_pkey ON ssabira.c_function_screen_mmap_p_tznbc USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_menu_res_mst_p_scbrb_pkey ON ssabira.s_menu_res_mst_p_scbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_kebrb_pkey ON ssabira.s_limit_cust_total_p_kebrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_zwbrb_pkey ON ssabira.s_feature_blackout_mst_p_zwbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_pkey ON ONLY ssabira.s_user_fail_atmp_hst USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX c_biz_func_mmap_p_ghbrb_pkey ON ssabira.c_biz_func_mmap_p_ghbrb USING btree (business_id, activity_id, system_id);

CREATE INDEX c_product_eligibility_p_mzbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_mzbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_mzbrb_pkey ON ssabira.c_product_eligibility_p_mzbrb USING btree (serial_number, business_id, system_id);

CREATE INDEX s_http_session_index1 ON ssabira.s_http_session USING btree (principal_id);

CREATE UNIQUE INDEX s_http_session_pkey ON ssabira.s_http_session USING btree (session_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_mubob_pkey ON ssabira.c_biz_func_mmap_p_mubob USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_tznbc_pkey ON ssabira.c_enhanced_entitlement_mst_p_tznbc USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_tzbrb_pkey ON ssabira.c_bankrouting_mst_p_tzbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_tznbc_pkey ON ssabira.c_biz_function_mst_p_tznbc USING btree (business_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_zwbrb_pkey ON ssabira.c_interest_rate_mst_p_zwbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_url_business_map_mst_p_mubrb_pkey ON ssabira.s_url_business_map_mst_p_mubrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX c_bankrouting_mst_p_kebrb_pkey ON ssabira.c_bankrouting_mst_p_kebrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_zwbrb_pkey ON ssabira.c_biz_function_mst_p_zwbrb USING btree (business_id);

CREATE UNIQUE INDEX c_mailmsg_mst_p_ugbrb_pkey ON ssabira.c_mailmsg_mst_p_ugbrb USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_adv_mst_p_egbrb_pkey ON ssabira.s_adv_mst_p_egbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_ugbrb_pkey ON ssabira.c_biz_func_mmap_p_ugbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_bwbrb_pkey ON ssabira.c_interest_rate_mst_p_bwbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_user_pwd_hst_p_egbrb_pkey ON ssabira.s_user_pwd_hst_p_egbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_reg_payee_mst_p_tzbrb_pkey ON ssabira.c_reg_payee_mst_p_tzbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_zmbrb_pkey ON ssabira.s_quicklink_mst_p_zmbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_product_mst_p_zmbrb_pkey ON ssabira.c_product_mst_p_zmbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_sysparam_mst_p_tznbc_pkey ON ssabira.s_sysparam_mst_p_tznbc USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_scbrb_pkey ON ssabira.s_partnership_mapping_mst_p_scbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_script_res_mst_pkey ON ONLY ssabira.c_script_res_mst USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_user_pwd_hst_pkey ON ONLY ssabira.s_user_pwd_hst USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_egbrb_pkey ON ssabira.s_txn_cut_off_mst_p_egbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_product_mst_upl_eg_pkey ON ssabira.c_product_mst_upl_eg USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_biz_function_mst_pkey ON ONLY ssabira.c_biz_function_mst USING btree (business_id);

CREATE UNIQUE INDEX c_formatter_mst_p_tzbrb_pkey ON ssabira.c_formatter_mst_p_tzbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_grace_period_mst_pkey ON ssabira.s_grace_period_mst USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_tzbrb_pkey ON ssabira.s_txn_cut_off_mst_p_tzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_business_mst_p_ugbrb_pkey ON ssabira.c_business_mst_p_ugbrb USING btree (business_id);

CREATE UNIQUE INDEX c_role_mst_p_egbrb_pkey ON ssabira.c_role_mst_p_egbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX s_adv_func_map_p_mzbrb_pkey ON ssabira.s_adv_func_map_p_mzbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_interest_rate_mst_p_egbrb_pkey ON ssabira.c_interest_rate_mst_p_egbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_user_pref_mmap_p_mzbrb_pkey ON ssabira.s_user_pref_mmap_p_mzbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_tzbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_tzbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_formatter_mst_p_kebrb_pkey ON ssabira.c_formatter_mst_p_kebrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_ghbrb_pkey ON ssabira.s_txn_cut_off_mst_p_ghbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_scbrb_pkey ON ssabira.c_biz_group_mst_p_scbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_function_config_pkey ON ONLY ssabira.s_function_config USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_role_mst_p_bwbrb_pkey ON ssabira.c_role_mst_p_bwbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_zmbrb_pkey ON ssabira.s_dynamictable_config_mst_p_zmbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_feature_auth_mst_p_tzbrb_pkey ON ssabira.s_feature_auth_mst_p_tzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_biller_mst_p_mubob_pkey ON ssabira.c_biller_mst_p_mubob USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_component_res_mst_p_tznbc_pkey ON ssabira.c_component_res_mst_p_tznbc USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_mubrb_pkey ON ssabira.c_biz_group_mst_p_mubrb USING btree (business_id, group_id);

CREATE INDEX s_user_mst_p_zmbrb_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_zmbrb USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_zmbrb_pkey ON ssabira.s_user_mst_p_zmbrb USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_product_category_mst_p_scbrb_pkey ON ssabira.s_product_category_mst_p_scbrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_limit_cust_mst_p_mubrb_pkey ON ssabira.s_limit_cust_mst_p_mubrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_zwbrb_pkey ON ssabira.s_limit_global_mst_p_zwbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_feature_auth_mst_p_ghbrb_pkey ON ssabira.s_feature_auth_mst_p_ghbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_zmbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_zmbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_ghbrb_pkey ON ssabira.s_partnership_mapping_mst_p_ghbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_biz_function_mst_p_mubrb_pkey ON ssabira.c_biz_function_mst_p_mubrb USING btree (business_id);

CREATE UNIQUE INDEX s_limit_global_mst_pkey ON ONLY ssabira.s_limit_global_mst USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX c_screen_mst_p_zmbrb_pkey ON ssabira.c_screen_mst_p_zmbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_product_category_mst_p_tznbc_pkey ON ssabira.s_product_category_mst_p_tznbc USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX c_biz_function_mst_p_mubob_pkey ON ssabira.c_biz_function_mst_p_mubob USING btree (business_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_bwbrb_pkey ON ssabira.s_user_pref_mmap_p_bwbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_scbrb_pkey ON ssabira.s_user_pref_mmap_p_scbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_mubrb_pkey ON ssabira.s_user_pwd_mst_p_mubrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_mobile_list_p_egbrb_pkey ON ssabira.s_mobile_list_p_egbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX c_product_mst_pkey ON ONLY ssabira.c_product_mst USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_limit_global_mst_p_kebrb_pkey ON ssabira.s_limit_global_mst_p_kebrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_quicklink_mst_p_mubrb_pkey ON ssabira.s_quicklink_mst_p_mubrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX c_biller_mst_p_ghbrb_pkey ON ssabira.c_biller_mst_p_ghbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_ugbrb_pkey ON ssabira.s_url_business_map_mst_p_ugbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_url_business_map_mst_p_kebrb_pkey ON ssabira.s_url_business_map_mst_p_kebrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_progress_mst_p_zmbrb_pkey ON ssabira.s_progress_mst_p_zmbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX c_script_res_mst_p_zmbrb_pkey ON ssabira.c_script_res_mst_p_zmbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX c_listvalue_res_mst_pkey ON ONLY ssabira.c_listvalue_res_mst USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_function_config_p_tzbrb_pkey ON ssabira.s_function_config_p_tzbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_kebrb_pkey ON ssabira.s_adv_res_mst_p_kebrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_component_res_mst_p_scbrb_pkey ON ssabira.c_component_res_mst_p_scbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_bwbrb_pkey ON ssabira.c_mailmsg_cust_map_p_bwbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX s_user_secret_answer_pkey ON ONLY ssabira.s_user_secret_answer USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_script_mst_p_zmbrb_pkey ON ssabira.c_script_mst_p_zmbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_listvalue_mst_p_mzbrb_pkey ON ssabira.c_listvalue_mst_p_mzbrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_zmbrb_pkey ON ssabira.s_partnership_mapping_mst_p_zmbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_component_mst_p_tzbrb_pkey ON ssabira.c_component_mst_p_tzbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_mobile_list_p_mzbrb_pkey ON ssabira.s_mobile_list_p_mzbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_progress_mst_p_bwbrb_pkey ON ssabira.s_progress_mst_p_bwbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_mobile_list_p_kebrb_pkey ON ssabira.s_mobile_list_p_kebrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_menu_res_mst_p_tznbc_pkey ON ssabira.s_menu_res_mst_p_tznbc USING btree (system_id, business_id, menu_id, lang_id);

CREATE INDEX c_product_eligibility_p_bwbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_bwbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_bwbrb_pkey ON ssabira.c_product_eligibility_p_bwbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_business_mst_pkey ON ONLY ssabira.c_business_mst USING btree (business_id);

CREATE UNIQUE INDEX c_component_mst_p_mubob_pkey ON ssabira.c_component_mst_p_mubob USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_scbrb_pkey ON ssabira.s_txn_cut_off_mst_p_scbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_crm_service_def_p_bwbrb_pkey ON ssabira.c_crm_service_def_p_bwbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_bwbrb_pkey ON ssabira.s_ses_summary_hst_p_bwbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX batch_job_instance_pkey ON ssabira.batch_job_instance USING btree (job_instance_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_ugbrb_pkey ON ssabira.s_dynamictable_config_mst_p_ugbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_mubrb_pkey ON ssabira.s_credit_card_manage_hst_p_mubrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX c_product_mst_p_zwbrb_pkey ON ssabira.c_product_mst_p_zwbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_crm_service_def_p_tznbc_pkey ON ssabira.c_crm_service_def_p_tznbc USING btree (service_code, business_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_tznbc_pkey ON ssabira.s_dynamictable_config_mst_p_tznbc USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_biller_mst_p_mzbrb_pkey ON ssabira.c_biller_mst_p_mzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_tzbrb_pkey ON ssabira.c_biz_lang_mmap_p_tzbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_user_pwd_hst_p_scbrb_pkey ON ssabira.s_user_pwd_hst_p_scbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_mcc_group_map_p_bwbrb_pkey ON ssabira.c_mcc_group_map_p_bwbrb USING btree (business_id, association_cd, mcc, mcc_group_cd);

CREATE UNIQUE INDEX s_limit_cust_mst_p_tzbrb_pkey ON ssabira.s_limit_cust_mst_p_tzbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_user_pwd_hst_p_mubob_pkey ON ssabira.s_user_pwd_hst_p_mubob USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX c_biz_group_mst_p_mubob_pkey ON ssabira.c_biz_group_mst_p_mubob USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_product_category_mst_p_mubob_pkey ON ssabira.s_product_category_mst_p_mubob USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_adv_func_map_p_ghbrb_pkey ON ssabira.s_adv_func_map_p_ghbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_ugbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_ugbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_progress_step_p_zwbrb_pkey ON ssabira.s_progress_step_p_zwbrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX s_user_pwd_mst_p_bwbrb_pkey ON ssabira.s_user_pwd_mst_p_bwbrb USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_bwbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_bwbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_bwbrb_pkey ON ssabira.s_dynamictable_config_mst_p_bwbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_user_secret_answer_p_mzbrb_pkey ON ssabira.s_user_secret_answer_p_mzbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_screen_mst_p_zwbrb_pkey ON ssabira.c_screen_mst_p_zwbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_zwbrb_pkey ON ssabira.s_pwd_policy_mst_p_zwbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_bwbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_bwbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_scbrb_pkey ON ssabira.s_feature_blackout_mst_p_scbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_script_mst_p_kebrb_pkey ON ssabira.c_script_mst_p_kebrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX c_business_mst_p_zwbrb_pkey ON ssabira.c_business_mst_p_zwbrb USING btree (business_id);

CREATE UNIQUE INDEX c_biz_lang_mmap_p_scbrb_pkey ON ssabira.c_biz_lang_mmap_p_scbrb USING btree (business_id, supported_lang_key);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_egbrb_pkey ON ssabira.s_credit_card_manage_hst_p_egbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_cms_lookup_p_tzbrb_pkey ON ssabira.s_cms_lookup_p_tzbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_business_mst_p_tzbrb_pkey ON ssabira.c_business_mst_p_tzbrb USING btree (business_id);

CREATE INDEX c_product_eligibility_p_zmbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_zmbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_zmbrb_pkey ON ssabira.c_product_eligibility_p_zmbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_bwbrb_pkey ON ssabira.s_credit_card_manage_hst_p_bwbrb USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_zwbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_zwbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_cms_lookup_p_scbrb_pkey ON ssabira.s_cms_lookup_p_scbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_adv_res_mst_p_egbrb_pkey ON ssabira.s_adv_res_mst_p_egbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_feature_auth_mst_p_egbrb_pkey ON ssabira.s_feature_auth_mst_p_egbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_limit_global_mst_p_zmbrb_pkey ON ssabira.s_limit_global_mst_p_zmbrb USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_tznbc_pkey ON ssabira.s_user_fail_atmp_mst_p_tznbc USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_interest_rate_mst_p_mubrb_pkey ON ssabira.c_interest_rate_mst_p_mubrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_listvalue_mst_p_tznbc_pkey ON ssabira.c_listvalue_mst_p_tznbc USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX s_adv_mst_p_tzbrb_pkey ON ssabira.s_adv_mst_p_tzbrb USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX c_bankrouting_mst_temp_p_mubrb_pkey ON ssabira.c_bankrouting_mst_temp_p_mubrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_listvalue_mst_p_mubrb_pkey ON ssabira.c_listvalue_mst_p_mubrb USING btree (system_id, business_id, group_id, list_value_key);

CREATE UNIQUE INDEX c_business_mst_p_tznbc_pkey ON ssabira.c_business_mst_p_tznbc USING btree (business_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_tznbc_pkey ON ssabira.s_limit_cust_mst_p_tznbc USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_tzbrb_pkey ON ssabira.s_partnership_mapping_mst_p_tzbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_tznbc_pkey ON ssabira.c_mcc_group_mst_p_tznbc USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_user_secret_answer_p_mubob_pkey ON ssabira.s_user_secret_answer_p_mubob USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_zmbrb_pkey ON ssabira.s_user_modifi_hst_p_zmbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_cms_lookup_p_kebrb_pkey ON ssabira.s_cms_lookup_p_kebrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_product_mst_p_egbrb_pkey ON ssabira.c_product_mst_p_egbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_reg_payee_mst_p_ghbrb_pkey ON ssabira.c_reg_payee_mst_p_ghbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_scbrb_pkey ON ssabira.c_bank_branch_pmt_chn_p_scbrb USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX s_adv_func_map_pkey ON ONLY ssabira.s_adv_func_map USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_bwbrb_pkey ON ssabira.s_user_fail_atmp_mst_p_bwbrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX s_feature_auth_mst_p_kebrb_pkey ON ssabira.s_feature_auth_mst_p_kebrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_feature_blackout_mst_p_mzbrb_pkey ON ssabira.s_feature_blackout_mst_p_mzbrb USING btree (business_id, system_id, activity_id, cust_type);

CREATE UNIQUE INDEX c_crm_service_def_p_tzbrb_pkey ON ssabira.c_crm_service_def_p_tzbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_mubob_pkey ON ssabira.s_ses_summary_hst_p_mubob USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_kebrb_pkey ON ssabira.s_txn_cut_off_mst_p_kebrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_message_mst_p_mubrb_pkey ON ssabira.c_message_mst_p_mubrb USING btree (system_id, business_id, message_key);

CREATE UNIQUE INDEX s_sysparam_mst_p_zwbrb_pkey ON ssabira.s_sysparam_mst_p_zwbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_cards_product_attributes_mst_pkey ON ssabira.c_cards_product_attributes_mst USING btree (business_id, product_id);

CREATE INDEX c_product_eligibility_p_tzbrb_activity_id_system_id_busines_idx ON ssabira.c_product_eligibility_p_tzbrb USING btree (activity_id, system_id, business_id, prd_category);

CREATE UNIQUE INDEX c_product_eligibility_p_tzbrb_pkey ON ssabira.c_product_eligibility_p_tzbrb USING btree (serial_number, business_id, system_id);

CREATE UNIQUE INDEX c_interest_rate_mst_pkey ON ONLY ssabira.c_interest_rate_mst USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX c_screen_mst_p_mubob_pkey ON ssabira.c_screen_mst_p_mubob USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX s_adv_func_map_p_mubrb_pkey ON ssabira.s_adv_func_map_p_mubrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX c_mailmsg_cust_map_p_egbrb_pkey ON ssabira.c_mailmsg_cust_map_p_egbrb USING btree (business_id, system_id, msg_id, cust_id);

CREATE UNIQUE INDEX c_script_res_mst_p_zwbrb_pkey ON ssabira.c_script_res_mst_p_zwbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX c_tag_mst_p_tznbc_pkey ON ssabira.c_tag_mst_p_tznbc USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_ugbrb_pkey ON ssabira.s_adv_res_mst_p_ugbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_script_res_mst_p_mubrb_pkey ON ssabira.c_script_res_mst_p_mubrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX c_prd_brochure_mst_pkey ON ssabira.c_prd_brochure_mst USING btree (business_id, brochure_id);

CREATE UNIQUE INDEX c_biller_mst_p_bwbrb_pkey ON ssabira.c_biller_mst_p_bwbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_mubrb_pkey ON ssabira.s_limit_cust_total_p_mubrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_progress_mst_p_zwbrb_pkey ON ssabira.s_progress_mst_p_zwbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_tzbrb_pkey ON ssabira.s_secret_qn_mst_p_tzbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_biller_mst_p_egbrb_pkey ON ssabira.c_biller_mst_p_egbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_txn_cut_off_mst_p_zwbrb_pkey ON ssabira.s_txn_cut_off_mst_p_zwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_credit_card_manage_hst_p_tznbc_pkey ON ssabira.s_credit_card_manage_hst_p_tznbc USING btree (activity_name, system_id, business_id, txn_ref_no);

CREATE UNIQUE INDEX s_url_business_map_mst_p_zmbrb_pkey ON ssabira.s_url_business_map_mst_p_zmbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_tzbrb_pkey ON ssabira.s_user_fail_atmp_hst_p_tzbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_menu_res_mst_p_ghbrb_pkey ON ssabira.s_menu_res_mst_p_ghbrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX s_cms_lookup_p_ugbrb_pkey ON ssabira.s_cms_lookup_p_ugbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_secret_qn_mst_p_scbrb_pkey ON ssabira.s_secret_qn_mst_p_scbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_bwbrb_pkey ON ssabira.s_pwd_policy_mst_p_bwbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_user_pwd_mst_p_tznbc_pkey ON ssabira.s_user_pwd_mst_p_tznbc USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_user_secret_answer_p_bwbrb_pkey ON ssabira.s_user_secret_answer_p_bwbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX s_limit_cust_mst_p_zwbrb_pkey ON ssabira.s_limit_cust_mst_p_zwbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_mst_p_tzbrb_pkey ON ssabira.c_biller_mst_p_tzbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_crm_service_def_p_ghbrb_pkey ON ssabira.c_crm_service_def_p_ghbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX s_cms_lookup_p_zmbrb_pkey ON ssabira.s_cms_lookup_p_zmbrb USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX c_mailmsg_mst_p_tznbc_pkey ON ssabira.c_mailmsg_mst_p_tznbc USING btree (business_id, system_id, msg_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_mzbrb_pkey ON ssabira.s_dynamictable_config_mst_p_mzbrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_function_screen_mmap_p_egbrb_pkey ON ssabira.c_function_screen_mmap_p_egbrb USING btree (business_id, system_id, activity_id, screen_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_ugbrb_pkey ON ssabira.s_sysparam_mst_p_ugbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX s_user_pref_mmap_p_ghbrb_pkey ON ssabira.s_user_pref_mmap_p_ghbrb USING btree (system_id, business_id, quicklink_id, customer_id);

CREATE UNIQUE INDEX s_user_modifi_hst_pkey ON ONLY ssabira.s_user_modifi_hst USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_function_config_p_zwbrb_pkey ON ssabira.s_function_config_p_zwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_screen_mst_p_bwbrb_pkey ON ssabira.c_screen_mst_p_bwbrb USING btree (business_id, system_id, screen_id, activity_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_ugbrb_pkey ON ssabira.c_bankrouting_mst_p_ugbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_egbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_egbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_kebrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_kebrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX s_corp_limit_global_mst_pkey ON ssabira.s_corp_limit_global_mst USING btree (business_id, system_id, txn_limit_typ);

CREATE UNIQUE INDEX s_adv_res_mst_p_bwbrb_pkey ON ssabira.s_adv_res_mst_p_bwbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_mubrb_pkey ON ssabira.s_adv_res_mst_p_mubrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_kebrb_pkey ON ssabira.s_dynamictable_config_mst_p_kebrb USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX s_menu_mst_p_ghbrb_pkey ON ssabira.s_menu_mst_p_ghbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_menu_mst_p_scbrb_pkey ON ssabira.s_menu_mst_p_scbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX s_mobile_list_p_tznbc_pkey ON ssabira.s_mobile_list_p_tznbc USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX c_tag_mst_p_zwbrb_pkey ON ssabira.c_tag_mst_p_zwbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_cms_lookup_pkey ON ONLY ssabira.s_cms_lookup USING btree (screen_id, screen_location_id, business_id, language_id, customer_type, is_default, partener_type);

CREATE UNIQUE INDEX s_progress_mst_p_ghbrb_pkey ON ssabira.s_progress_mst_p_ghbrb USING btree (business_id, system_id, progress_bar_id);

CREATE UNIQUE INDEX s_progress_step_p_kebrb_pkey ON ssabira.s_progress_step_p_kebrb USING btree (business_id, system_id, progress_bar_id, step_no);

CREATE UNIQUE INDEX c_biller_details_mst_pkey ON ssabira.c_biller_details_mst USING btree (biller_id, business_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_zwbrb_pkey ON ssabira.s_url_business_map_mst_p_zwbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_mubrb_pkey ON ssabira.s_user_fail_atmp_hst_p_mubrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_txn_cut_off_mst_pkey ON ONLY ssabira.s_txn_cut_off_mst USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_p_zmbrb_pkey ON ssabira.c_message_res_mst_p_zmbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX s_menu_mst_p_tznbc_pkey ON ssabira.s_menu_mst_p_tznbc USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_zwbrb_pkey ON ssabira.c_reg_payee_mst_p_zwbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_user_pwd_mst_p_mubob_pkey ON ssabira.s_user_pwd_mst_p_mubob USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX s_adv_func_map_p_scbrb_pkey ON ssabira.s_adv_func_map_p_scbrb USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX s_adv_res_mst_p_tzbrb_pkey ON ssabira.s_adv_res_mst_p_tzbrb USING btree (business_id, system_id, adv_id, adv_lang_id);

CREATE UNIQUE INDEX c_mcc_mst_pkey ON ssabira.c_mcc_mst USING btree (association_cd, mcc);

CREATE UNIQUE INDEX c_interest_rate_mst_p_mzbrb_pkey ON ssabira.c_interest_rate_mst_p_mzbrb USING btree (business_id, product_cd, effective_dtm, ccy, channel, customer_segment, tenure_month, tenure_day, amt_slab_from, amt_slab_to);

CREATE UNIQUE INDEX s_function_config_p_zmbrb_pkey ON ssabira.s_function_config_p_zmbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_zwbrb_pkey ON ssabira.c_mcc_group_mst_p_zwbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_user_modifi_hst_p_zwbrb_pkey ON ssabira.s_user_modifi_hst_p_zwbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_function_config_p_bwbrb_pkey ON ssabira.s_function_config_p_bwbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_user_fail_atmp_hst_p_mubob_pkey ON ssabira.s_user_fail_atmp_hst_p_mubob USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_menu_res_mst_p_kebrb_pkey ON ssabira.s_menu_res_mst_p_kebrb USING btree (system_id, business_id, menu_id, lang_id);

CREATE UNIQUE INDEX c_crm_service_def_p_scbrb_pkey ON ssabira.c_crm_service_def_p_scbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_mubrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_mubrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_component_mst_p_scbrb_pkey ON ssabira.c_component_mst_p_scbrb USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX c_formatter_mst_p_ghbrb_pkey ON ssabira.c_formatter_mst_p_ghbrb USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_mzbrb_pkey ON ssabira.c_biz_group_mst_p_mzbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_biller_lifecycle_mst_pkey ON ssabira.c_biller_lifecycle_mst USING btree (business_id, biller_id);

CREATE UNIQUE INDEX c_enhanced_entitlement_mst_p_zmbrb_pkey ON ssabira.c_enhanced_entitlement_mst_p_zmbrb USING btree (activity_id, role_category_cd, business_id, system_id);

CREATE UNIQUE INDEX c_mcc_group_mst_p_ghbrb_pkey ON ssabira.c_mcc_group_mst_p_ghbrb USING btree (business_id, mcc_group_cd);

CREATE UNIQUE INDEX s_menu_mst_p_tzbrb_pkey ON ssabira.s_menu_mst_p_tzbrb USING btree (system_id, business_id, menu_id);

CREATE UNIQUE INDEX c_mno_mst_pkey ON ssabira.c_mno_mst USING btree (business_id, mno_id);

CREATE UNIQUE INDEX batch_job_execution_context_pkey ON ssabira.batch_job_execution_context USING btree (job_execution_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_mubob_pkey ON ssabira.s_limit_cust_total_p_mubob USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX s_deliver_time_record_pkey ON ssabira.s_deliver_time_record USING btree (table_name);

CREATE INDEX s_user_mst_p_tznbc_business_id_system_id_upper_idx ON ssabira.s_user_mst_p_tznbc USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_p_tznbc_pkey ON ssabira.s_user_mst_p_tznbc USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX batch_step_execution_pkey ON ssabira.batch_step_execution USING btree (step_execution_id);

CREATE UNIQUE INDEX c_tag_mst_p_mzbrb_pkey ON ssabira.c_tag_mst_p_mzbrb USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_p_mubrb_pkey ON ssabira.c_message_res_mst_p_mubrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_mubrb_pkey ON ssabira.c_listvalue_res_mst_p_mubrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_scbrb_pkey ON ssabira.s_sysparam_mst_p_scbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_zwbrb_pkey ON ssabira.c_biz_func_mmap_p_zwbrb USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX c_reg_payee_mst_p_bwbrb_pkey ON ssabira.c_reg_payee_mst_p_bwbrb USING btree (business_id, payee_id);

CREATE UNIQUE INDEX s_secret_qn_mst_p_ugbrb_pkey ON ssabira.s_secret_qn_mst_p_ugbrb USING btree (system_id, business_id, question_id);

CREATE UNIQUE INDEX c_component_mst_p_tznbc_pkey ON ssabira.c_component_mst_p_tznbc USING btree (screen_id, system_id, business_id, component_key);

CREATE UNIQUE INDEX s_user_pwd_mst_pkey ON ONLY ssabira.s_user_pwd_mst USING btree (business_id, system_id, user_id, pwd_typ);

CREATE UNIQUE INDEX c_biz_group_mst_p_egbrb_pkey ON ssabira.c_biz_group_mst_p_egbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX c_product_mst_p_scbrb_pkey ON ssabira.c_product_mst_p_scbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX c_crm_service_def_p_egbrb_pkey ON ssabira.c_crm_service_def_p_egbrb USING btree (service_code, business_id);

CREATE UNIQUE INDEX c_product_mst_p_ugbrb_pkey ON ssabira.c_product_mst_p_ugbrb USING btree (product_cd, business_id, currency_cd);

CREATE UNIQUE INDEX s_user_fail_atmp_mst_p_mubrb_pkey ON ssabira.s_user_fail_atmp_mst_p_mubrb USING btree (business_id, system_id, user_id, auth_typ);

CREATE UNIQUE INDEX c_bankrouting_mst_temp_pkey ON ONLY ssabira.c_bankrouting_mst_temp USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_tag_mst_pkey ON ONLY ssabira.c_tag_mst USING btree (business_id, system_id, screen_id, script_key, activity_id);

CREATE UNIQUE INDEX s_adv_func_map_p_tznbc_pkey ON ssabira.s_adv_func_map_p_tznbc USING btree (business_id, system_id, adv_id, activity_id);

CREATE UNIQUE INDEX s_ses_summary_hst_p_zwbrb_pkey ON ssabira.s_ses_summary_hst_p_zwbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX c_role_mst_p_tzbrb_pkey ON ssabira.c_role_mst_p_tzbrb USING btree (role_id, business_id);

CREATE UNIQUE INDEX s_quicklink_mst_p_bwbrb_pkey ON ssabira.s_quicklink_mst_p_bwbrb USING btree (business_id, system_id, quicklink_id);

CREATE UNIQUE INDEX s_user_secret_answer_p_ghbrb_pkey ON ssabira.s_user_secret_answer_p_ghbrb USING btree (business_id, system_id, user_id, question_id);

CREATE UNIQUE INDEX c_bank_branch_pmt_chn_p_tznbc_pkey ON ssabira.c_bank_branch_pmt_chn_p_tznbc USING btree (business_id, bank_cd, branch_cd, payment_channel_id);

CREATE UNIQUE INDEX c_biz_group_mst_p_zwbrb_pkey ON ssabira.c_biz_group_mst_p_zwbrb USING btree (business_id, group_id);

CREATE UNIQUE INDEX s_adv_mst_pkey ON ONLY ssabira.s_adv_mst USING btree (business_id, system_id, adv_id);

CREATE UNIQUE INDEX s_mobile_list_p_zmbrb_pkey ON ssabira.s_mobile_list_p_zmbrb USING btree (business_id, system_id, phone);

CREATE UNIQUE INDEX s_user_pwd_hst_p_ghbrb_pkey ON ssabira.s_user_pwd_hst_p_ghbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_pwd_policy_mst_p_mzbrb_pkey ON ssabira.s_pwd_policy_mst_p_mzbrb USING btree (business_id, system_id, pwd_typ);

CREATE UNIQUE INDEX s_ses_summary_hst_p_ugbrb_pkey ON ssabira.s_ses_summary_hst_p_ugbrb USING btree (business_id, system_id, user_id, sess_id, txn_typ, txn_time);

CREATE UNIQUE INDEX s_limit_cust_total_p_egbrb_pkey ON ssabira.s_limit_cust_total_p_egbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_script_mst_p_ghbrb_pkey ON ssabira.c_script_mst_p_ghbrb USING btree (system_id, business_id, script_key);

CREATE UNIQUE INDEX s_user_pwd_hst_p_tzbrb_pkey ON ssabira.s_user_pwd_hst_p_tzbrb USING btree (business_id, system_id, user_id, pwd_typ, modified_dtm);

CREATE UNIQUE INDEX s_partnership_mapping_mst_p_mzbrb_pkey ON ssabira.s_partnership_mapping_mst_p_mzbrb USING btree (bem_partner_id, bir_partner_id, business_id, activity_id);

CREATE UNIQUE INDEX s_dynamictable_config_mst_p_mubob_pkey ON ssabira.s_dynamictable_config_mst_p_mubob USING btree (business_id, system_id, table_id, field_nm);

CREATE UNIQUE INDEX c_listvalue_res_mst_p_ghbrb_pkey ON ssabira.c_listvalue_res_mst_p_ghbrb USING btree (system_id, business_id, group_id, list_value_key, language_id);

CREATE UNIQUE INDEX c_bankrouting_mst_p_egbrb_pkey ON ssabira.c_bankrouting_mst_p_egbrb USING btree (bankcode, branchcode, business_id);

CREATE UNIQUE INDEX c_biz_func_mmap_p_tznbc_pkey ON ssabira.c_biz_func_mmap_p_tznbc USING btree (business_id, activity_id, system_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_ghbrb_pkey ON ssabira.s_user_modifi_hst_p_ghbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE INDEX idx_user_login_name ON ONLY ssabira.s_user_mst USING btree (business_id, system_id, upper((login_name)::text));

CREATE UNIQUE INDEX s_user_mst_pkey ON ONLY ssabira.s_user_mst USING btree (business_id, system_id, user_id);

CREATE UNIQUE INDEX s_user_modifi_hst_p_tzbrb_pkey ON ssabira.s_user_modifi_hst_p_tzbrb USING btree (business_id, system_id, user_id, modified_dtm);

CREATE UNIQUE INDEX s_banner_details_pkey ON ssabira.s_banner_details USING btree (serial_id, business_id, country_code, system_id, language_id);

CREATE UNIQUE INDEX c_script_res_mst_p_scbrb_pkey ON ssabira.c_script_res_mst_p_scbrb USING btree (system_id, business_id, script_key, language_id);

CREATE UNIQUE INDEX s_product_category_mst_p_kebrb_pkey ON ssabira.s_product_category_mst_p_kebrb USING btree (business_id, system_id, category_cd);

CREATE UNIQUE INDEX s_function_config_p_ghbrb_pkey ON ssabira.s_function_config_p_ghbrb USING btree (business_id, system_id, activity_id);

CREATE UNIQUE INDEX s_url_business_map_mst_p_mzbrb_pkey ON ssabira.s_url_business_map_mst_p_mzbrb USING btree (business_id, system_id, url_pattern);

CREATE UNIQUE INDEX s_sysparam_mst_p_tzbrb_pkey ON ssabira.s_sysparam_mst_p_tzbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_formatter_mst_p_tznbc_pkey ON ssabira.c_formatter_mst_p_tznbc USING btree (formatter_id, system_id, business_id);

CREATE UNIQUE INDEX s_limit_cust_total_p_zmbrb_pkey ON ssabira.s_limit_cust_total_p_zmbrb USING btree (business_id, system_id, txn_limit_typ, cust_id);

CREATE UNIQUE INDEX c_biller_mst_p_zwbrb_pkey ON ssabira.c_biller_mst_p_zwbrb USING btree (business_id, biller_id);

CREATE UNIQUE INDEX s_sysparam_mst_p_mzbrb_pkey ON ssabira.s_sysparam_mst_p_mzbrb USING btree (business_id, system_id, param_id, activity_id);

CREATE UNIQUE INDEX c_message_res_mst_p_tzbrb_pkey ON ssabira.c_message_res_mst_p_tzbrb USING btree (language_id, system_id, business_id, message_key);

CREATE UNIQUE INDEX c_component_res_mst_p_mzbrb_pkey ON ssabira.c_component_res_mst_p_mzbrb USING btree (screen_id, system_id, business_id, component_key, language_id);

			-- Functions

-- DROP FUNCTION ssabira.acct_errmsg_proc_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.acct_errmsg_proc_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
BEGIN

DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'ASM0%';
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ASM00200',null,null,null,null,null,null);
COMMIT;

DELETE FROM C_MESSAGE_RES_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'ASM0%';
Insert into C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Sorry, you do not have any account available.','MB',var_business_id,'ASM00200');
COMMIT;

-----------	ACCOUNT DETAILS	-	C_MESSAGE_MST	---
DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'ADT0%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ADT00300',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ADT00301',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ADT00302',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ADT00303',null,null,null,null,null,null);

COMMIT;

DELETE FROM ssabira.C_MESSAGE_RES_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'ADT0%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Account Number field is Blank, Please enter account number. ','MB',var_business_id,'ADT00300');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Account number does not exist.','MB',var_business_id,'ADT00301');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','We are not able to display the details requested. Please Contact Bank Customer Service For Further Assistance','MB',var_business_id,'ADT00302');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','There is no Account available to perform the selected function.','MB',var_business_id,'ADT00303');

COMMIT;
------------
----------ACCOUNT ACTIVITY---
DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'AAC00%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00400',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00401',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00402',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00403',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00405',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00406',null,null,null,null,null,null);
Insert into C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','AAC00407',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','AAC00408',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','AAC00409',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','AAC00410',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','AAC00411',null,null,null,null,null,null);

COMMIT;
------
DELETE FROM ssabira.C_MESSAGE_res_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'AAC00%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Account Number field is Blank, Please enter account number. ','MB',var_business_id,'AAC00400');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Account number does not exist.','MB',var_business_id,'AAC00401');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction Days field is Blank. Please enter number of days','MB',var_business_id,'AAC00402');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Invalid Transaction Days','MB',var_business_id,'AAC00403');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Card Number field is Blank, Please enter account number. ','MB',var_business_id,'AAC00405');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Card Number does not exist.','MB',var_business_id,'AAC00406');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','We are not able to display the details requested. Please Contact Bank Customer Service For Further Assistance.','MB',var_business_id,'AAC00407');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No statemented transaction is found for this month.','MB',var_business_id,'AAC00408');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','We regret to inform you that we are currently unable to display your account information. Please try again later.','MB',var_business_id,'AAC00409');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','We regret to inform you that we are currently unable to display your account information. Please try again later.','MB',var_business_id,'AAC00410');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','We regret to inform you that we are currently unable to display your account information. Please try again later.','MB',var_business_id,'AAC00411');

COMMIT;
-------
END;
$function$
;

-- DROP FUNCTION ssabira.auth_errmsg_proc_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.auth_errmsg_proc_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN

---------------- AUTHENTICATION  - C_MESSAGE_MST ---
DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'ATH0%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00102',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00104',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00108',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00109',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00110',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00111',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00111_REL1',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00112',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00113',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00114',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00115',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00117',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','ATH00118',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00120',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00122',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'WARN','ATH00123',null,null,null,null,null,'AUTH');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','ATH00124',null,null,null,null,null,'AUTH');

COMMIT;
---------------- AUTHENTICATION  - C_MESSAGE_RES_MST ---
DELETE FROM ssabira.C_MESSAGE_RES_MST  WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY  LIKE 'ATH0%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Incorrect security answer, please check and try again.','MB',var_business_id,'ATH00102');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Wrong Authentication Code, You Have Only  {0} times to try, Otherwise, You Will be Locked and Logged out, Please Try Again Carefully','MB',var_business_id,'ATH00104');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Your registered mobile number is not valid, you cannot use mobile banking.','MB',var_business_id,'ATH00108');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter your One Time Password','MB',var_business_id,'ATH00109');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter your security answer','MB',var_business_id,'ATH00110');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','OTP you entered expired, request to send new OTP','MB',var_business_id,'ATH00111');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','OTP you entered has expired. Please login again','MB',var_business_id,'ATH00111_REL1');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The Username / Password that you have entered is not valid. Please check and try again','MB',var_business_id,'ATH00112');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The Username / Password that you have entered is not valid. Please check and try again','MB',var_business_id,'ATH00113');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Second authentication type invalid or not specified','MB',var_business_id,'ATH00114');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Session expired, other session has been opened with same login. Maximum one active session per user is allowed','MB',var_business_id,'ATH00115');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter login id','MB',var_business_id,'ATH00117');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter password','MB',var_business_id,'ATH00118');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','You do not have a mobile number registered, you cannot use mobile banking.','MB',var_business_id,'ATH00120');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Customer number does not exist.','MB',var_business_id,'ATH00122');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Your login password will expire in {0} days. Please change it using our website.','MB',var_business_id,'ATH00123');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Your login password has expired. Please change it using our web-site.','MB',var_business_id,'ATH00124');

COMMIT;

END;
$function$
;

-- DROP FUNCTION ssabira.bir_procedure_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.bir_procedure_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN

---------- C_BIZ_FUNC_MMAP  ------
	DELETE  FROM ssabira.C_BIZ_FUNC_MMAP where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_BIZ_FUNC_MMAP(SELECT BUSINESS_ID, ACTIVITY_ID, 'MB', FROM_TIME,  TO_TIME, HOLIDAY_ALLOWED_FLG,  BLOCKED_FLG  
	                                      FROM ssabira.C_BIZ_FUNC_MMAP   WHERE SYSTEM_ID = 'IB' AND BUSINESS_ID = var_business_id);

---------- C_FORMATTER_MST ------
	DELETE  FROM ssabira.C_FORMATTER_MST where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_FORMATTER_MST(SELECT FORMATTER_ID,FORMATTER_STRING,'MB',BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY   FROM ssabira.C_FORMATTER_MST   WHERE SYSTEM_ID = 'IB' AND BUSINESS_ID = var_business_id  );

---------- C_FUNCTION_SCREEN_MMAP ----
---	DELETE  FROM C_FUNCTION_SCREEN_MMAP  where business_id=var_business_id and system_id='MB';
---	INSERT INTO  C_FUNCTION_SCREEN_MMAP (SELECT BUSINESS_ID,'MB',ACTIVITY_ID,SCREEN_ID  FROM C_FUNCTION_SCREEN_MMAP   WHERE SYSTEM_ID = 'IB' AND BUSINESS_ID=var_business_id );
----------- C_MESSAGE_MST ----
	DELETE  FROM C_MESSAGE_MST  where business_id=var_business_id and system_id='MB';
	INSERT INTO  C_MESSAGE_MST(SELECT 'MB',BUSINESS_ID, CATEGORY, MESSAGE_KEY, MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG, SOURCE_SYSTEM_ID  FROM C_MESSAGE_MST   WHERE SYSTEM_ID = 'IB' AND  BUSINESS_ID=var_business_id  );

--------- C_MESSAGE_RES_MST ------
	DELETE  FROM ssabira.C_MESSAGE_RES_MST  where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_MESSAGE_RES_MST(SELECT LANGUAGE_ID, MESSAGE_VALUE, 'MB', BUSINESS_ID, MESSAGE_KEY  FROM ssabira.C_MESSAGE_RES_MST   WHERE SYSTEM_ID = 'IB' AND  BUSINESS_ID=var_business_id  );

--------- C_SCRIPT_MST -----------
	DELETE  FROM ssabira.C_SCRIPT_MST  where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_SCRIPT_MST(SELECT 'MB',BUSINESS_ID,CATEGORY_ID,SCRIPT_KEY,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG, AUTHORIZED_INDICATOR  FROM ssabira.C_SCRIPT_MST  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id );

----------------- C_SCRIPT_RES_MST ---------
	DELETE  FROM ssabira.C_SCRIPT_RES_MST  where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_SCRIPT_RES_MST(SELECT LANGUAGE_ID, SEQUENCE_NO, SCRIPT_VALUE, MAKER_ID, CHECKER_ID, STATUS, LAST_MODIFIED, LAST_AUTHORIZED, ACTION, DELETED_FLAG, AUTHORIZED_INDICATOR, SCRIPT_KEY, 'MB', BUSINESS_ID  FROM ssabira.C_SCRIPT_RES_MST  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id  );

---	DELETE  FROM S_SES_SUMMARY_HST  where business_id=var_business_id and system_id='MB';
---	INSERT INTO  S_SES_SUMMARY_HST (SELECT BUSINESS_ID,'MB',USER_ID,SESS_ID,TXN_TYP,TXN_TIME,ACCT_FROM,ACCT_TO,AMOUNT,STATUS,REF_NO,DETAILS  FROM S_SES_SUMMARY_HST  WHERE SYSTEM_ID = 'IB'  AND BUSINESS_ID=var_business_id);
--------- S_SYSPARAM_MST --------------
	DELETE  FROM ssabira.S_SYSPARAM_MST  where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.S_SYSPARAM_MST(SELECT BUSINESS_ID,'MB',PARAM_ID, PARAM_VALUE, PARAM_COMPONENT_KEY, ACTIVITY_ID,SYSTEM_MAINTAIN,DISP_TYPE,MODIFIED_DTM,MODIFIED_BY,AUTHORISED_BY,AUTHORISED_DTM,DELETE_FLG,PARAM_DESC,CREATED_BY,CREATED_DTM  FROM ssabira.S_SYSPARAM_MST  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id);

-------- C_COMPONENT_MST ---------------
	DELETE  FROM ssabira.C_COMPONENT_MST where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_COMPONENT_MST(SELECT SCREEN_ID,'MB',BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG  FROM ssabira.C_COMPONENT_MST  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id);

--------- C_COMPONENT_RES_MST -----------
	DELETE  FROM ssabira.C_COMPONENT_RES_MST where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.C_COMPONENT_RES_MST(SELECT LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,'MB',BUSINESS_ID,COMPONENT_KEY  FROM ssabira.C_COMPONENT_RES_MST  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id);

---------------- S_FUNCTION_CONFIG ---------------
	DELETE  FROM ssabira.S_FUNCTION_CONFIG  where business_id=var_business_id and system_id='MB';
	INSERT INTO  ssabira.S_FUNCTION_CONFIG(SELECT BUSINESS_ID,'MB',ACTIVITY_ID,TXN_LIMIT_TYP,FEATURE_BLKOUT_FLG,ADV_TXT_FLG,ADV_IMG_TOP_FLG,ADV_IMG_RIGHTNAV_FLG,MODIFIED_DTM,MODIFIED_BY  FROM ssabira.S_FUNCTION_CONFIG  WHERE SYSTEM_ID = 'IB'  AND  BUSINESS_ID=var_business_id );

	COMMIT;

END;
$function$
;

-- DROP FUNCTION ssabira.bp_errmsg_proc_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.bp_errmsg_proc_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN

-- Bill Payment --
delete from ssabira.C_MESSAGE_MST where MESSAGE_KEY like('BPY00%') and SYSTEM_ID='MB' and BUSINESS_ID=var_business_id;

INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00600',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00601',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00602',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00603',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00604',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00605',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00606',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00607',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00608',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00609',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00610',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00611',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00612',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00613',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00614',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00615',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00616',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00617',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00618',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00619',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00620',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00621',null,null,null,null,null,null);
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BPY00622',null,null,null,null,null,null);

COMMIT;
-------------BILL PAYMENT----------------
delete from ssabira.C_MESSAGE_RES_MST where MESSAGE_KEY like('BPY00%') and SYSTEM_ID='MB' and BUSINESS_ID=var_business_id;

INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Payee can not be null. Please select one from the list to proceed.','MB',var_business_id,'BPY00600');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Beneficiary does not exist.','MB',var_business_id,'BPY00601');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select the source account to proceed with the payment.','MB',var_business_id,'BPY00602');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter an amount.','MB',var_business_id,'BPY00603');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The transfer amount must be more than 0. Please enter correct amount.','MB',var_business_id,'BPY00604');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Sorry, you do not have any account available.','MB',var_business_id,'BPY00605');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Invalid Flow. You must have used Back Button. Please re-initiate payment from "At A Glance" page.','MB',var_business_id,'BPY00606');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','From account does not exist.','MB',var_business_id,'BPY00607');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Payee Type can not be null. Please select one from the list to proceed.','MB',var_business_id,'BPY00608');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No Outstanding Bill for the Biller.','MB',var_business_id,'BPY00609');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select one of the MTP service.','MB',var_business_id,'BPY00610');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The amount is invalid. Please enter the correct details.','MB',var_business_id,'BPY00611');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction expired. You must have used Back Button.','MB',var_business_id,'BPY00612');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please check your transaction history before proceeding.','MB',var_business_id,'BPY00613');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No sufficient balance available for the transaction.','MB',var_business_id,'BPY00614');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Invalid Account Number.','MB',var_business_id,'BPY00615');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Sorry, you do not have any registered payee. Please register a Payee through Internet channel.','MB',var_business_id,'BPY00616');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter the amount in multiples of 50.','MB',var_business_id,'BPY00617');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter the amount in multiples of {0}.','MB',var_business_id,'BPY00618');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Card number is invalid. Please select another card.','MB',var_business_id,'BPY00619');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Bill amount must be great than or equal to transaction minimal limit {0} {1}','MB',var_business_id,'BPY00620');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No data found for customer','MB',var_business_id,'BPY00621');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Only Local Currecny is supported','MB',var_business_id,'BPY00622');

COMMIT;
--------
END;
$function$
;

-- DROP FUNCTION ssabira.deliver_c_biller_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_biller_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE

cur CURSOR FOR SELECT s.* from ssabira.C_BILLER_MST_ADMDB s where s.Business_id in ('KEBRB','ZMBRB','GHBRB','TZBRB','TZNBC','UGBRB','BWBRB','MUBRB','SCBRB','MZBRB');
v_count bigint :=0;
v_count_local bigint :=0;
v_ListValue_count bigint :=0;
boc_ts timestamp(6):=CURRENT_TIMESTAMP;
bir_ts timestamp(6):=CURRENT_TIMESTAMP;
created_TS timestamp(6):=CURRENT_TIMESTAMP;
modified_TS timestamp(6):=CURRENT_TIMESTAMP;
referenceKey ssabira.c_biller_mst.ref_no_key_1%type :=null;
referenceText ssabira.C_COMPONENT_RES_MST.label_value%type :=null;
referenceText_mb ssabira.C_COMPONENT_RES_MST.label_value%type :=null;
helpText ssabira.C_COMPONENT_RES_MST.help_text%type :=null;
referenceKeytemp ssabira.c_biller_mst.REQUEST_MAP%type :=null;
v_formatter_id bigint :=0;
formatter_id_temp bigint :=0;
formatter_id_temp_mb bigint :=0;
formatter_text varchar(40) :=null;
messageKey ssabira.c_MESSAGE_mst.MESSAGE_KEY%type :=null;
messageText ssabira.c_MESSAGE_res_mst.MESSAGE_VALUE%type :=null;
v_status varchar(80) :=null;
temp_count bigint :=0;
pilot varchar(80) :=null;
amountComponentType varchar(3) :=null;

BEGIN	
 for result in cur loop
  v_count :=0;
  v_count_local:=0;
  v_status:='ACTIVE';
  if result.pilot_mode is null then
    pilot:='N';
  else
	pilot:=result.pilot_mode;
  end if;
  if result.STATUS is null then
    v_status:='ACTIVE';
  end if;
  if result.BIR_FLG is not null and UPPER(result.BIR_FLG)='N'  then
    v_status:='INACTIVE';
  end if;
  if result.STATUS is not null and UPPER(result.STATUS)='INACTIVE'  then
    v_status:='INACTIVE';
  end if;
  select count(*) into STRICT v_count from ssabira.C_Biller_LifeCycle_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
  select count(*) into STRICT v_count_local from ssabira.c_biller_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
  if result.CREATED_DTM is null then
    created_TS:=CURRENT_TIMESTAMP;
  else
    created_TS:=result.CREATED_DTM;
  end if;
  if result.MODIFIED_DTM is null then
    modified_TS:=CURRENT_TIMESTAMP;
  else
    modified_TS:=result.MODIFIED_DTM;
  end if;
  if result.BILL_AMT_EDIT_FLG is not null and UPPER(result.BILL_AMT_EDIT_FLG)='N' then
    amountComponentType:='SV';
  end if;
  if v_count_local=1 and v_count=0 then
    delete FROM ssabira.C_Biller_LifeCycle_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
    Insert into ssabira.C_Biller_LifeCycle_mst(BUSINESS_ID,BILLER_ID,PILOT_MODE,STATUS,CREATED_DTM,MODIFIED_DTM) values (result.business_id,result.biller_id,pilot,v_status ,created_TS,modified_TS);
  end if;
  if v_count_local<1 then
    --insert new entry in ssabira.C_Biller_LifeCycle_mst
    delete FROM ssabira.C_Biller_LifeCycle_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
    Insert into ssabira.C_Biller_LifeCycle_mst(BUSINESS_ID,BILLER_ID,PILOT_MODE,STATUS,CREATED_DTM,MODIFIED_DTM) values (result.business_id,result.biller_id,pilot,v_status ,created_TS,modified_TS);

    --insert new entry in ssabira.c_biller_mst
    Insert into ssabira.c_biller_mst(BUSINESS_ID,BILLER_ID,BILLER_NM,BILLER_CATEGORY_ID,BILLER_CATEGORY_NM,PRESENTMENT_FLG,REF_NO_TEXT_1,REF_NO_TEXT_2,TRANSACTION_FEE,BILL_AGGREGATOR_ID,CURRENCY,SUPPORT_CREDITCARD_FLG,ONLINE_BILLER_FLG,PAYEE_REF_FIELDS,MOBILE_DENOMINATION,SERVICE_TYPE,EXTERNAL_BILLER_ID,MIN_PAYMENT_AMOUNT,BRANCH_CODE,BILLER_ACCOUNT_NUMBER,REF_NO_KEY_1,REF_NO_KEY_2,MAX_PAYMENT_AMOUNT,BILLHOLDER_REQUIRED,PAYEE_SUPPORT,REF_NO_VALIDATION_1,REF_NO_VALIDATION_2,ATM_SUPPORT,STATUS,REF_NO_VALIDATION_TYPE_1,REF_NO_VALIDATION_TYPE_2,REF_NO_MESSAGE_KEY_1,REF_NO_MESSAGE_KEY_2,REF_NO_HINT_DISPLAY_MODE_1,REF_NO_HINT_DISPLAY_MODE_2,SI_COMPANY,SI_SERVICE_TYPE,SI_PAYMENT_MODE,AMOUNT_REF_KEY,AMOUNT_EDITABLE,CHARGE_TASK_CODE,COUNTRY_CODE,REQUEST_MAP,RESPONSE_MAP,PRESENTMENT_DISPLAY_FIELDS,AMOUNT_COMPONENT_TYPE,INVOICE_COUNT,PAYEE_TYPE) values (result.business_id,result.biller_id,result.BILLER_NM,result.BILLER_CATEGORY_ID,result.BILLER_CATEGORY_NM,result.PRESENTMENT_FLG,result.REF_NO_TEXTVAL_1,null,result.TRANSACTION_FEE,result.BILL_AGGREGATOR_ID,result.CURRENCY,result.SUPPORT_CREDITCARD_FLG,result.ONLINE_BILLER_FLG,result.PAYEE_REF_FIELDS,result.MOBILE_DENOMINATION,result.SERVICE_TYPE,result.EXTERNAL_BILLER_ID,result.MIN_PAYMENT_AMOUNT,result.BRANCH_CODE,result.BILLER_ACCOUNT_NUMBER,null,null,result.MAX_PAYMENT_AMOUNT,result.BILLHOLDER_REQUIRED,result.PAYEE_SUPPORT,null,null,result.ATM_SUPPORT,v_status,null,null,null,null,null,null,result.SI_COMPANY,result.SI_SERVICE_TYPE,result.SI_PAYMENT_MODE,null,result.BILL_AMT_EDIT_FLG,null,null,null,null,null,amountComponentType,null,null);

    --insert new entries in ssabira.C_COMPONENT_MST and ssabira.C_COMPONENT_RES_MST
    if result.REF_NO_KEY_1 is not null then
	
	---START MB DATA POPULATION
	  referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp_mb:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='MB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
        if UPPER(result.BILLER_CATEGORY_ID)='TELEPHONE' then
          referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_MobileNumber');
        else
          referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference');
        end if;
        update ssabira.c_biller_mst set REF_NO_KEY_1=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);

        if result.REF_NO_TEXT_1 is not null then
          temp_count:=0;
            select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY and t.system_id='MB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_1 is not null then
          select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          if formatter_id_temp_mb=0 then
            formatter_id_temp_mb:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_1,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
          if result.REF_NO_MESSAGE_KEY_1 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key and t.system_id='MB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key and t.system_id='MB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
            end if;
          end if;
        end if;
      end if;
	---END MB DATA POPULATION
	
	---START IB DATA POPULATION
	  referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='IB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
        if UPPER(result.BILLER_CATEGORY_ID)='TELEPHONE' then
          referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_MobileNumber');
        else
          referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference');
        end if;
        update ssabira.c_biller_mst set REF_NO_KEY_1=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);

        if result.REF_NO_TEXT_1 is not null then
          temp_count:=0;
            select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY and t.system_id='IB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_1 is not null then
          select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          if formatter_id_temp=0 then
            formatter_id_temp:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_1,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
          if result.REF_NO_MESSAGE_KEY_1 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key and t.system_id='IB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key and t.system_id='IB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
            end if;
          end if;
        end if;
      end if;
	  ---END IB DATA POPULATION
    end if;
    if result.REF_NO_KEY_2 is not null then
	---START MB DATA POPULATION
	      referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp_mb:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='MB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
        referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference2');
        update ssabira.c_biller_mst set REF_NO_KEY_2=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);

        
        if result.REF_NO_TEXT_2 is not null then
          temp_count:=0;
          select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY and t.system_id='MB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_2 is not null then
          select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          if formatter_id_temp_mb=0 then
            formatter_id_temp_mb:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_2,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
          if result.REF_NO_MESSAGE_KEY_2 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key and t.system_id='MB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef2');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key and t.system_id='MB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
            end if;
          end if;
        end if;
      end if;
	---END MB DATA POPULATION
	---START IB DATA POPULATION
      referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='IB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
        referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference2');
        update ssabira.c_biller_mst set REF_NO_KEY_2=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);

        if result.REF_NO_TEXT_2 is not null then
          temp_count:=0;
          select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY and t.system_id='IB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_2 is not null then
          select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          if formatter_id_temp=0 then
            formatter_id_temp:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_2,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
          if result.REF_NO_MESSAGE_KEY_2 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key and t.system_id='IB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef2');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key and t.system_id='IB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
            end if;
          end if;
        end if;
		---END IB DATA POPULATION
      end if;
    end if;
    if result.REF_NO_KEY_3 is not null then
	---START MB DATA POPULATION
	  referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp_mb:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='MB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
        referenceKey:=REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g');
        referenceKeytemp:=null;
        referenceKeytemp:=CONCAT(referenceKey, CONCAT(':', CONCAT(referenceKey, ':')));
        update ssabira.c_biller_mst set REQUEST_MAP=CONCAT(referenceKeytemp,':') where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);

        
        if result.REF_NO_TEXT_3 is not null then
          temp_count:=0;
          select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY and t.system_id='MB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_3 is not null then
          select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          if formatter_id_temp_mb=0 then
            formatter_id_temp_mb:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_3,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
          if result.REF_NO_MESSAGE_KEY_3 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key and t.system_id='MB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef3');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key and t.system_id='MB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
            end if;
          end if;
        end if;
      end if;
	---END MB DATA POPULATION
	---START IB DATA POPULATION
	  referenceKey :=null;
      referenceText :=null;
      helpText :=null;
      messageKey:=null;
      messageText:=null;
      formatter_id_temp:=0;
      temp_count:=0;
      select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='IB';
      if temp_count>0 then
        select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
        referenceKey:=REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g');
        referenceKeytemp:=null;
        referenceKeytemp:=CONCAT(referenceKey, CONCAT(':', CONCAT(referenceKey, ':')));
        update ssabira.c_biller_mst set REQUEST_MAP=CONCAT(referenceKeytemp,':'), REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
        delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
        Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

        delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
        Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);

        if result.REF_NO_TEXT_3 is not null then
          temp_count:=0;
          select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY and t.system_id='IB';
          if temp_count>0 then
            select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
            update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT') and BUSINESS_ID=result.business_id;
          end if;
        end if;

        if result.REF_NO_VALIDATION_3 is not null then
          select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          if formatter_id_temp=0 then
            formatter_id_temp:=1;
          else
            select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
          end if;
          Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_3,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
          update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
          if result.REF_NO_MESSAGE_KEY_3 is not null then
            temp_count:=0;
            select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key and t.system_id='IB';
            if temp_count>0 then
              messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef3');
              select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key and t.system_id='IB'  LIMIT 1;
              delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
              Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
            end if;
          end if;
        end if;
      end if;
	  ---END IB DATA POPULATION
    end if;

  elsif v_count_local=1 then
    boc_ts:=result.MODIFIED_DTM;
    select MODIFIED_DTM into STRICT bir_ts from ssabira.C_Biller_LifeCycle_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
    if (boc_ts is not null and bir_ts is not null and boc_ts>bir_ts) or (bir_ts is null and boc_ts is not null) then
      delete FROM ssabira.C_Biller_LifeCycle_mst t where result.business_id=t.business_id and result.biller_id=t.biller_id;
      Insert into ssabira.C_Biller_LifeCycle_mst(BUSINESS_ID,BILLER_ID,PILOT_MODE,STATUS,CREATED_DTM,MODIFIED_DTM) values (result.business_id,result.biller_id,pilot,v_status ,created_TS,modified_TS);
      update ssabira.c_biller_mst set BUSINESS_ID=result.business_id,BILLER_ID=result.biller_id,BILLER_NM=result.BILLER_NM,BILLER_CATEGORY_ID=result.BILLER_CATEGORY_ID,BILLER_CATEGORY_NM=result.BILLER_CATEGORY_NM,PRESENTMENT_FLG=result.PRESENTMENT_FLG,TRANSACTION_FEE=result.TRANSACTION_FEE,BILL_AGGREGATOR_ID=result.BILL_AGGREGATOR_ID,CURRENCY=result.CURRENCY,SUPPORT_CREDITCARD_FLG=result.SUPPORT_CREDITCARD_FLG,ONLINE_BILLER_FLG=result.ONLINE_BILLER_FLG,PAYEE_REF_FIELDS=result.PAYEE_REF_FIELDS,MOBILE_DENOMINATION=result.MOBILE_DENOMINATION,SERVICE_TYPE=result.SERVICE_TYPE,EXTERNAL_BILLER_ID=result.EXTERNAL_BILLER_ID,MIN_PAYMENT_AMOUNT=result.MIN_PAYMENT_AMOUNT,BRANCH_CODE=result.BRANCH_CODE,BILLER_ACCOUNT_NUMBER=result.BILLER_ACCOUNT_NUMBER,MAX_PAYMENT_AMOUNT=result.MAX_PAYMENT_AMOUNT,BILLHOLDER_REQUIRED=result.BILLHOLDER_REQUIRED,PAYEE_SUPPORT=result.PAYEE_SUPPORT,ATM_SUPPORT=result.ATM_SUPPORT,STATUS=v_status,SI_COMPANY=result.SI_COMPANY,SI_SERVICE_TYPE=result.SI_SERVICE_TYPE,SI_PAYMENT_MODE=result.SI_PAYMENT_MODE,AMOUNT_EDITABLE=result.BILL_AMT_EDIT_FLG, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1, AMOUNT_COMPONENT_TYPE=amountComponentType where result.business_Id=business_id and result.biller_id=biller_id;

       --insert new entries in ssabira.C_COMPONENT_MST and ssabira.C_COMPONENT_RES_MST
      if result.REF_NO_KEY_1 is not null then
        referenceKey :=null;
        referenceText :=null;
		referenceText_mb :=null;
        helpText :=null;
        messageKey:=null;
        messageText:=null;
        formatter_id_temp:=0;
		formatter_id_temp_mb:=0;
        temp_count:=0;
        formatter_text:=null;
        select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY;
        if temp_count>0 then
		  --reference label value filter start
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='IB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY  LIMIT 1;
		  end if;
			
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='MB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_1=t.COMPONENT_KEY  LIMIT 1;
		  end if;
		  --reference label value filter end
		
          temp_count:=0;
          select count(t.REF_NO_KEY_1) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REF_NO_KEY_1 is not null;
          if temp_count>0 then
            select t.REF_NO_KEY_1 into STRICT referenceKey from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
            
			---START MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST tt set LABEL_VALUE=referenceText_mb where tt.business_id=result.business_id and tt.component_key=referenceKey and tt.system_ID='MB' and tt.screen_id in ('PMT_BP_FACADE');
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST t set LABEL_VALUE=referenceText where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
			---END IB DATA POPULATION
          else
            if UPPER(result.BILLER_CATEGORY_ID)='TELEPHONE' then
              referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_MobileNumber');
            else
              referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference');
            end if;
            update ssabira.c_biller_mst set REF_NO_KEY_1=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;

			---START MB DATA POPULATION
			delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

            delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText_mb,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
			delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

            
			delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);
			---END IB DATA POPULATION
			
          end if;
          if result.REF_NO_TEXT_1 is not null then
            temp_count:=0;
            select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY;
            if temp_count>0 then
              select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_1=t.COMPONENT_KEY  LIMIT 1;
			  ---MB DATA POPULATION 
			  update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
			
			  ---IB DATA POPULATION
              update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
            end if;
          else
			---MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
			
			---IB DATA POPULATION
            update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
          end if;
		
          if result.REF_NO_VALIDATION_1 is not null then
		  
		  ---START MB DATA POPULATION
		    temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
                update ssabira.C_FORMATTER_MST t set FORMATTER_STRING=result.REF_NO_VALIDATION_1 where t.FORMATTER_ID=formatter_id_temp_mb and t.system_id='MB' and t.BUSINESS_ID=result.business_id;
              else
                select count(t.formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST t where t.business_id=result.business_id and t.system_id='MB';
                if formatter_id_temp_mb=0 then
                  formatter_id_temp_mb:=1;
                else
                  select max(t.formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST t where t.business_id=result.business_id and t.system_id='MB';
                end if;
                Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_1,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
                update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
              end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              if formatter_id_temp_mb=0 then
                formatter_id_temp_mb:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_1,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
		  ---END MB DATA POPULATION
		  
		  ---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
                update ssabira.C_FORMATTER_MST t set FORMATTER_STRING=result.REF_NO_VALIDATION_1 where t.FORMATTER_ID=formatter_id_temp and t.system_id='IB' and t.BUSINESS_ID=result.business_id;
              else
                select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
                if formatter_id_temp=0 then
                  formatter_id_temp:=1;
                else
                  select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
                end if;
                Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_1,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
                update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
              end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              if formatter_id_temp=0 then
                formatter_id_temp:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_1,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
			
            if result.REF_NO_MESSAGE_KEY_1 is not null then
              temp_count:=0;
              select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key;
              if temp_count>0 then
                select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_1=t.message_key  LIMIT 1;
				
				---START MB DATA POPULATION
				temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='MB' and business_id=result.business_id;
				---END MB DATA POPULATION
				
				---START IB DATA POPULATION
                temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='IB' and business_id=result.business_id;
				---END IB DATA POPULATION
	           end if;
            else
			
			 ---START MB DATA POPULATION
			 select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
			 ---END MB DATA POPULATION
			 
			  ---START IB DATA POPULATION	
              select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
			  ---END IB DATA POPULATION
			
            end if;
          else
            ---START MB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                end if;
                delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb;
              end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                end if;
                delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp;
              end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
          end if;

        end if;
      else
         select count(t.REF_NO_KEY_1) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REF_NO_KEY_1 is not null;
          if temp_count>0 then
            select t.REF_NO_KEY_1 into STRICT referenceKey from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
			
			---START MB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb;
			   end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
            ---END MB DATA POPULATION
			
			---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp;
			   end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
			---END IB DATA POPULATION
			
            update ssabira.c_biller_mst set REF_NO_KEY_1 = NULL where result.business_Id=business_id and result.biller_id=biller_id;
			
		end if;
      end if;
      if result.REF_NO_KEY_2 is not null then
        referenceKey :=null;
        referenceText :=null;
		referenceText_mb :=null;
        helpText :=null;
        messageKey:=null;
        messageText:=null;
        formatter_id_temp:=0;
		formatter_id_temp_mb:=0;
        temp_count:=0;
        select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY;
        if temp_count>0 then
          --reference label value filter start
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='IB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY  LIMIT 1;
		  end if;
			
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='MB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_2=t.COMPONENT_KEY  LIMIT 1;
		  end if;
		  --reference label value filter end
		  		
		  temp_count:=0;
          select count(t.REF_NO_KEY_2) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REF_NO_KEY_2 is not null;
          if temp_count>0 then
            select t.REF_NO_KEY_2 into STRICT referenceKey from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
			---MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST t set LABEL_VALUE=referenceText_mb where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
			---IB DATA POPULATION
            update ssabira.C_COMPONENT_RES_MST t set LABEL_VALUE=referenceText where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
          else
            referenceKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g'), '_reference2');
            update ssabira.c_biller_mst set REF_NO_KEY_2=referenceKey, REF_NO_TEXT_1=result.REF_NO_TEXTVAL_1 where result.business_Id=business_id and result.biller_id=biller_id;
			
			---START MB DATA POPULATION
			delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
			
			delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText_mb,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
            delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

            delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);
			---END IB DATA POPULATION
			
          end if;
          if result.REF_NO_TEXT_2 is not null then
            temp_count:=0;
            select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY;
            if temp_count>0 then
              select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_2=t.COMPONENT_KEY  LIMIT 1;
			  ---MB DATA POPULATION
			  update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
			  ---IB DATA POPULATION
              update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
            end if;
          else
			---MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
			---IB DATA POPULATION
            update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
          end if;
          if result.REF_NO_VALIDATION_2 is not null then

			---START MB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				update ssabira.C_FORMATTER_MST set FORMATTER_STRING=result.REF_NO_VALIDATION_2 where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
			  else
                select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
                if formatter_id_temp_mb=0 then
                  formatter_id_temp_mb:=1;
                else
                  select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
                end if;
                Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_2,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
                update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
              end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              if formatter_id_temp_mb=0 then
                formatter_id_temp_mb:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_2,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
		 ---END MB DATA POPULATION 
		 
		 ---START IB DATA POPULATION
		  temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				update ssabira.C_FORMATTER_MST set FORMATTER_STRING=result.REF_NO_VALIDATION_2 where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
			  else
                select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
                if formatter_id_temp=0 then
                  formatter_id_temp:=1;
                else
                  select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
                end if;
                Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_2,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
                update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
              end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              if formatter_id_temp=0 then
                formatter_id_temp:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_2,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
			
            if result.REF_NO_MESSAGE_KEY_2 is not null then
              temp_count:=0;
              select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key;
              if temp_count>0 then
                select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_2=t.message_key  LIMIT 1;
				
				---START MB DATA POPULATION
				temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef2');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='MB' and business_id=result.business_id;
				---END MB DATA POPULATION
				
				---START IB DATA POPULATION
                temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef2');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='IB' and business_id=result.business_id;
				---END IB DATA POPULATION
				
              end if;
            else
			---START MB DATA POPULATION
			 select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
			---END MB DATA POPULATION
			---START IB DATA POPULATION
              select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
			---END IB DATA POPULATION
            end if;
          else
		
		  ---START MB DATA POPULATION
		    temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb and system_id='MB';
			  end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
		  ---END MB DATA POPULATION
		  
		  ---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp and system_id='IB';
			  end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
          end if;
        end if;
      else
         select count(t.REF_NO_KEY_2) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REF_NO_KEY_2 is not null;
          if temp_count>0 then
            select t.REF_NO_KEY_2 into STRICT referenceKey from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
			
			---START MB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb;
			  end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp;
			  end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
			---END IB DATA POPULATION
			
            update ssabira.c_biller_mst set REF_NO_KEY_2 = NULL where result.business_Id=business_id and result.biller_id=biller_id;
          end if;
      end if;
      if result.REF_NO_KEY_3 is not null then
        referenceKey :=null;
        referenceText :=null;
		referenceText_mb :=null;
        helpText :=null;
        messageKey:=null;
        messageText:=null;
        formatter_id_temp:=0;
		formatter_id_temp_mb:=0;
        referenceKeytemp:=0;
        temp_count:=0;
        select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY;
        if temp_count>0 then
          --reference label value filter start
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='IB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='IB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY  LIMIT 1;
		  end if;
			
		  select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='MB';
		  if temp_count>0 then			
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY and t.system_id='MB'  LIMIT 1;
		  else
			select t.LABEL_VALUE into STRICT referenceText_mb from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_KEY_3=t.COMPONENT_KEY  LIMIT 1;
		  end if;
		  --reference label value filter end
		  		
		  temp_count:=0;
          select count(t.REQUEST_MAP) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REQUEST_MAP is not null;
          if temp_count>0 then
            select t.REQUEST_MAP into STRICT referenceKeytemp from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
            referenceKey:=coalesce(SUBSTR(referenceKeytemp, 0, position(':' in referenceKeytemp)-1), referenceKeytemp);
			
			---MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST t set LABEL_VALUE=referenceText_mb where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
			---IB DATA POPULATION
            update ssabira.C_COMPONENT_RES_MST t set LABEL_VALUE=referenceText where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
          else
            referenceKey:=REGEXP_REPLACE(result.BILLER_ID, '\s+', ' ', 'g');
            referenceKeytemp:=null;
            referenceKeytemp:=CONCAT(referenceKey, CONCAT(':', CONCAT(referenceKey, ':')));
            update ssabira.c_biller_mst set REQUEST_MAP=CONCAT(referenceKeytemp,':') where result.business_Id=business_id and result.biller_id=biller_id;
			---START MB DATA POPULATION
			delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','MB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

            delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='MB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText_mb,null,null,255,'PMT_BP_FACADE','MB',result.business_id,referenceKey);
			---END MB DATA POPULATION
			---START IB DATA POPULATION
            delete FROM ssabira.C_COMPONENT_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_FACADE','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_FTH_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey,'Y','Y',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);
            Insert into ssabira.C_COMPONENT_MST(SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY,RENDERED_FLG,REQUIRED_FLG,HAS_HELP_TEXT_FLG,FORMATTER_ID,LISTVALUE_GROUP_ID,DEFAULT_VALUE,DISP_ORDER,PARENT_COMPONENT_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,CONFIG_FLG,COMPONENT_TYPE,READONLY_FLG) values ('PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey,'Y','N',null,null,null,null,null,null,null,null,null,null,null,'10001','FIELD',null);

            delete FROM ssabira.C_COMPONENT_RES_MST where business_id=result.business_id and component_key=referenceKey and system_id='IB';
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_FACADE','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_FTH_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_DETAIL','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEEMANAGE_BP_RESULT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_CONFIRM','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_INPUT','IB',result.business_id,referenceKey);
            Insert into ssabira.C_COMPONENT_RES_MST(LANGUAGE_ID,LABEL_VALUE,TOOL_TIP,HELP_TEXT,LENGTH,SCREEN_ID,SYSTEM_ID,BUSINESS_ID,COMPONENT_KEY) values ('EN',referenceText,null,null,255,'PMT_PAYEE_ADD_BP_RESULT','IB',result.business_id,referenceKey);
			---END IB DATA POPULATION
          end if;
          if result.REF_NO_TEXT_3 is not null then
            temp_count:=0;
            select count(t.LABEL_VALUE) into STRICT temp_count from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY;
            if temp_count>0 then
              select t.LABEL_VALUE into STRICT helpText from ssabira.C_COMPONENT_RES_MST_ADMDB t where result.business_id=t.business_id and result.REF_NO_TEXT_3=t.COMPONENT_KEY  LIMIT 1;
			
			  ---MB DATA POPULATION
			  update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
			
			  ---IB DATA POPULATION
              update ssabira.C_COMPONENT_RES_MST set help_text=helpText where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
            end if;
          else
			---MB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='MB' and screen_id in ('PMT_BP_FACADE');
            ---IB DATA POPULATION
			update ssabira.C_COMPONENT_RES_MST set help_text = NULL where component_key=referenceKey and system_id='IB' and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT');
          end if;
          if result.REF_NO_VALIDATION_3 is not null then
		
		  ---START MB DATA POPULATION
		    temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				update ssabira.C_FORMATTER_MST set FORMATTER_STRING=result.REF_NO_VALIDATION_3 where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
			  else
				  select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
				  if formatter_id_temp_mb=0 then
					formatter_id_temp_mb:=1;
				  else
					select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
				  end if;
				  Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_3,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
				  update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');            				
			  end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              if formatter_id_temp_mb=0 then
                formatter_id_temp_mb:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp_mb from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp_mb,result.REF_NO_VALIDATION_3,'MB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp_mb where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
		---END MB DATA POPULATION
		
		  ---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
              select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				update ssabira.C_FORMATTER_MST set FORMATTER_STRING=result.REF_NO_VALIDATION_3 where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
			  else
				  select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
				  if formatter_id_temp=0 then
					formatter_id_temp:=1;
				  else
					select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
				  end if;
				  Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_3,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
				  update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');            				
			  end if;
            else
              select count(formatter_id) into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              if formatter_id_temp=0 then
                formatter_id_temp:=1;
              else
                select max(formatter_id)+1 into STRICT formatter_id_temp from ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB';
              end if;
              Insert into ssabira.C_FORMATTER_MST(FORMATTER_ID,FORMATTER_STRING,SYSTEM_ID,BUSINESS_ID,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG,AUTHORIZED_INDICATOR,MESSAGE_KEY) values (formatter_id_temp,result.REF_NO_VALIDATION_3,'IB',result.business_id,null,null,null,null,null,null,null,null,null);
              update ssabira.C_COMPONENT_MST set FORMATTER_ID=formatter_id_temp where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
			
            if result.REF_NO_MESSAGE_KEY_3 is not null then
              temp_count:=0;
              select count(t.message_value) into STRICT temp_count from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key;
              if temp_count>0 then
                select t.message_value into STRICT messageText from ssabira.c_message_res_mst_admdb t where result.business_id=t.business_id and result.REF_NO_MESSAGE_KEY_3=t.message_key  LIMIT 1;
				---START MB DATA POPULATION
				temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef3');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'MB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='MB' and business_id=result.business_id;
				---END MB DATA POPULATION
				
				---START IB DATA POPULATION
                temp_count:=0;
                select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
                if temp_count>0 then
                  select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                else
                  messageKey:=CONCAT(REGEXP_REPLACE(result.BILLER_ID, '\s-+', ' ', 'g'), '_valMssgRef3');
                  delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                  Insert into ssabira.c_MESSAGE_mst(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('IB',result.BUSINESS_ID,'ERROR',messageKey,null,null,null,null,null,'MCFE');
                  Insert into ssabira.c_MESSAGE_res_mst(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN',messageText,'IB',result.business_id,messageKey);
                  update ssabira.C_FORMATTER_MST set MESSAGE_KEY=messageKey where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
                end if;
                update ssabira.c_MESSAGE_res_mst set MESSAGE_VALUE=messageText where MESSAGE_KEY=messageKey and system_id='IB' and business_id=result.business_id;
				---END IB DATA POPULATION
              end if;
            else
			
			---START MB DATA POPULATION
			select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and business_id=result.business_id;
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
              select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
              if temp_count>0 then
                select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
                delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
                delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
              end if;
              update ssabira.C_FORMATTER_MST set MESSAGE_KEY = NULL where FORMATTER_ID=formatter_id_temp and system_id='IB' and business_id=result.business_id;
			  ---END IB DATA POPULATION
			
            end if;
          else
		
		  ---START MB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb;
			  end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='MB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE');
            end if;
		  ---END MB DATA POPULATION
		  
		  ---START IB DATA POPULATION
            temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp;
			  end if;
              update ssabira.C_COMPONENT_MST set FORMATTER_ID = NULL where component_key=referenceKey and system_id='IB' and BUSINESS_ID=result.business_id and screen_id in ('PMT_BP_FACADE','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEEMANAGE_BP_INPUT');
            end if;
			---END IB DATA POPULATION
			
          end if;
        end if;
      else
         select count(t.REQUEST_MAP) into STRICT temp_count from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id and t.REQUEST_MAP is not null;
         if temp_count>0 then
            select t.REQUEST_MAP into STRICT referenceKeytemp from ssabira.c_biller_mst t where t.business_id=result.business_Id and t.biller_id=result.biller_id;
            referenceKey:=coalesce(SUBSTR(referenceKeytemp, 0, position(':' in referenceKeytemp)-1), referenceKeytemp);
			
            ---START MB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp_mb from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='MB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp_mb;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp_mb and system_id='MB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='MB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='MB' and formatter_id=formatter_id_temp_mb;
			  end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='MB' and t.screen_id in ('PMT_BP_FACADE');
			---END MB DATA POPULATION
			
			---START IB DATA POPULATION
			temp_count:=0;
            select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id is not null;
            if temp_count>0 then
              select t.formatter_id into STRICT formatter_id_temp from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id and t.COMPONENT_KEY=referenceKey and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE';
			  select count(t.formatter_id) into STRICT temp_count from ssabira.C_COMPONENT_MST t where result.business_id=t.business_id  and SYSTEM_ID='IB' and screen_id='PMT_BP_FACADE' and t.formatter_id=formatter_id_temp;
              if temp_count=1 then
				  select count(MESSAGE_KEY) into STRICT temp_count from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id and message_key is not null;
				  if temp_count>0 then
					select MESSAGE_KEY into STRICT messageKey from ssabira.C_FORMATTER_MST where FORMATTER_ID=formatter_id_temp and system_id='IB' and BUSINESS_ID=result.business_id;
					delete FROM ssabira.c_MESSAGE_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
					delete FROM ssabira.c_MESSAGE_res_mst where SYSTEM_ID='IB' and BUSINESS_ID=result.BUSINESS_ID and MESSAGE_KEY=messageKey;
				  end if;
				  delete FROM ssabira.C_FORMATTER_MST where business_id=result.business_id and system_id='IB' and formatter_id=formatter_id_temp;
			  end if;
            end if;
            delete FROM ssabira.C_COMPONENT_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
            delete FROM ssabira.C_COMPONENT_RES_MST t where t.business_id=result.business_id and t.component_key=referenceKey and t.system_ID='IB' and t.screen_id in ('PMT_BP_CONFIRM','PMT_BP_FACADE','PMT_BP_INPUT','PMT_BP_RESULT','PMT_BP_RESULT','PMT_FTH_DETAIL','PMT_PAYEEMANAGE_BP_CONFIRM','PMT_PAYEEMANAGE_BP_DETAIL','PMT_PAYEEMANAGE_BP_INPUT','PMT_PAYEEMANAGE_BP_RESULT','PMT_PAYEE_ADD_BP_CONFIRM','PMT_PAYEE_ADD_BP_INPUT','PMT_PAYEE_ADD_BP_RESULT');
			---END IB DATA POPULATION
			
            update ssabira.c_biller_mst set REQUEST_MAP = NULL where result.business_Id=business_id and result.biller_id=biller_id;
          end if;
      end if;
    end if;
  end if;
 end loop;
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_biz_lang_mmap();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_biz_lang_mmap()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_BIZ_LANG_MMAP;
 insert into ssabira.C_BIZ_LANG_MMAP(business_id,supported_lang_key)(SELECT business_id,supported_lang_key from ssabira.C_BIZ_LANG_MMAP_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_branch_list_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_branch_list_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_BRANCH_LIST_MST;
 insert into ssabira.C_BRANCH_LIST_MST(business_id,branch_code,branch_name,branch_addr_line1,branch_addr_line2,branch_addr_line3,city,postal_cd,opening_hours,closing_hours,virtual_branch_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,region,area,created_dtm,created_by)
 (SELECT business_id,branch_code,branch_name,branch_addr_line1,branch_addr_line2,branch_addr_line3,city,postal_cd,opening_hours,closing_hours,virtual_branch_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,region,area,created_dtm,created_by from ssabira.C_BRANCH_LIST_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id= v_system_id));
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_business_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_business_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_BUSINESS_MST;
 insert into ssabira.C_BUSINESS_MST(business_id,name,iso_country_cd,default_lang_key,lcy_cd,date_fmt_key,amount_fmt_key,regional_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,timezone_offset,cardonly_flg,rate_precision,created_dtm,created_by,case_retention_month,campaign_retention_month,wave_retention_period,past_oppty_retention_period,corp_trx_retention_period)
 (SELECT business_id,name,iso_country_cd,default_lang_key,lcy_cd,date_fmt_key,amount_fmt_key,regional_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,timezone_offset,cardonly_flg,rate_precision,created_dtm,created_by,case_retention_month,campaign_retention_month,wave_retention_period,past_oppty_retention_period,corp_trx_retention_period from ssabira.C_BUSINESS_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_crm_service_def();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_crm_service_def()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_CRM_SERVICE_DEF;
 insert into ssabira.C_CRM_SERVICE_DEF(service_code,service_description,business_area,service_type,biz_impact,biz_impact_rating,ack_letter,resolution_letter,sla,business_id,created_by,created_dtm,modified_by,modified_dtm,state,status,esc_cob_l1,esc_email_l1,esc_cob_l2,esc_email_l2,esc_cob_l3,esc_email_l3,workflow_type,ack_letter_mailtype,resolution_letter_mailtype,source_system_id,st_description,self_service,service_sub_type,premier_sla,sme_sla,pre_esc_cob_l1,sme_esc_cob_l1,pre_esc_cob_l2,sme_esc_cob_l2,pre_esc_cob_l3,sme_esc_cob_l3,cust_required,compliance_email)
 (SELECT service_code,service_description,business_area,service_type,biz_impact,biz_impact_rating,ack_letter,resolution_letter,sla,business_id,created_by,created_dtm,modified_by,modified_dtm,state,status,esc_cob_l1,esc_email_l1,esc_cob_l2,esc_email_l2,esc_cob_l3,esc_email_l3,workflow_type,ack_letter_mailtype,resolution_letter_mailtype,source_system_id,st_description,self_service,service_sub_type,premier_sla,sme_sla,pre_esc_cob_l1,sme_esc_cob_l1,pre_esc_cob_l2,sme_esc_cob_l2,pre_esc_cob_l3,sme_esc_cob_l3,cust_required,compliance_email from ssabira.C_CRM_SERVICE_DEF_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_employer_bd_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_employer_bd_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
delete from ssabira.C_EMPLOYER_BD_MST;
insert into ssabira.C_EMPLOYER_BD_MST(business_id,employer_id,bd_code,bd_description,product_cd,pricing_code,negotiation_rate,government_flg,loan_type,moratorium)
(SELECT business_id,employer_id,bd_code,bd_description,product_cd,pricing_code,negotiation_rate,government_flg,loan_type,moratorium from ssabira.C_EMPLOYER_BD_MST_ADMDB where  business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_employer_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_employer_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_EMPLOYER_MST;
 insert into ssabira.C_EMPLOYER_MST(business_id,employer_id,employer_name,industry,category,employer_type,early_watchlist_flg,black_list_flg,suspense_acct,salary_day,first_pmt_pref_day,dg_rating,address_line_1,address_line_2,postal_code,city,district,country,telephone1_ctry_cd,telephone1,telephone2_ctry_cd,telephone2,fax_ctry_cd,fax,remarks,additional_details1,additional_details2,additional_details3,additional_details4,additional_details5,additional_details6,additional_details7,additional_details8,additional_details9,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,corp_id,relationship_number,allowance_log,employer_limit,emp_verification,outstanding_limit,emp_mail_id)
 (SELECT business_id,employer_id,employer_name,industry,category,employer_type,early_watchlist_flg,black_list_flg,suspense_acct,salary_day,first_pmt_pref_day,dg_rating,address_line_1,address_line_2,postal_code,city,district,country,telephone1_ctry_cd,telephone1,telephone2_ctry_cd,telephone2,fax_ctry_cd,fax,remarks,additional_details1,additional_details2,additional_details3,additional_details4,additional_details5,additional_details6,additional_details7,additional_details8,additional_details9,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,corp_id,relationship_number,allowance_log,employer_limit,emp_verification,outstanding_limit,emp_mail_id from ssabira.C_EMPLOYER_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_employer_scheme_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_employer_scheme_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_EMPLOYER_SCHEME_MST;
 insert into ssabira.C_EMPLOYER_SCHEME_MST(business_id,employer_id,scheme_code,scheme_description,moratorium,government_flg,negotiation_rate,product_cd,casa_repayment_flg,interest_rate,gl_applicable_flg,gl_account_no,pricing_code)
 (SELECT business_id,employer_id,scheme_code,scheme_description,moratorium,government_flg,negotiation_rate,product_cd,casa_repayment_flg,interest_rate,gl_applicable_flg,gl_account_no,pricing_code from ssabira.C_EMPLOYER_SCHEME_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_enhanced_entitle_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_enhanced_entitle_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_ENHANCED_ENTITLEMENT_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.C_ENHANCED_ENTITLEMENT_MST(activity_id,role_category_cd,customer_in_context,account_in_context,reln_type_notallowed,self_check,staff_check,business_id,card_holder_type,caller_type,system_id,min_auth_required,customer_type_allowed)
 (SELECT activity_id,role_category_cd,customer_in_context,account_in_context,reln_type_notallowed,self_check,staff_check,business_id,card_holder_type,caller_type,system_id,min_auth_required,customer_type_allowed from ssabira.C_ENHANCED_ENTITLE_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_enhanced_entitle_mst_mb();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_enhanced_entitle_mst_mb()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'MB';
BEGIN
 DELETE FROM ssabira.C_ENHANCED_ENTITLEMENT_MST where SYSTEM_ID=v_system_id;
 INSERT INTO ssabira.C_ENHANCED_ENTITLEMENT_MST(SELECT * from ssabira.C_ENHANCED_ENTITLE_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_interest_rate_maint_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_interest_rate_maint_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_INTEREST_RATE_MAINT_MST;
 insert into ssabira.C_INTEREST_RATE_MAINT_MST(business_id,rate_id,product_cd,product_ccy,account_type,market_segment,customer_type,rate_type,min_amount,max_amount,min_term,max_term,min_risk_score,max_risk_score,campaign_code,interest_type,base_rate,variable_rate,interest_rate,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,calc_ln_amt_rate_flag)
 (SELECT business_id,rate_id,product_cd,product_ccy,account_type,market_segment,customer_type,rate_type,min_amount,max_amount,min_term,max_term,min_risk_score,max_risk_score,campaign_code,interest_type,base_rate,variable_rate,interest_rate,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,calc_ln_amt_rate_flag from ssabira.C_INTEREST_RATE_MAINT_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_interest_rate_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_interest_rate_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_INTEREST_RATE_MST;
 insert into ssabira.C_INTEREST_RATE_MST(business_id,product_cd,effective_dtm,ccy,channel,customer_segment,tenure_month,tenure_day,amt_slab_from,amt_slab_to,interest_rate,interest_variance,penalty_rate,penalty_variance,tenure_type)
 (SELECT business_id,product_cd,effective_dtm,ccy,channel,customer_segment,tenure_month,tenure_day,amt_slab_from,amt_slab_to,interest_rate,interest_variance,penalty_rate,penalty_variance,tenure_type from ssabira.C_INTEREST_RATE_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_listvalue_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_listvalue_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
s_row bigint := 0;
cur CURSOR FOR SELECT * FROM ssabira.C_LISTVALUE_GROUP_MST_ADMDB G WHERE G.AUTHORIZED_DTM > (SELECT DELIVER_DTM FROM ssabira.S_DELIVER_TIME_RECORD WHERE TABLE_NAME = 'C_LISTVALUE_MST');
BEGIN

 --delete and insert
 for result in cur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   --C_LISTVALUE_MST
   delete from ssabira.C_LISTVALUE_MST where business_id in (SELECT distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   insert into ssabira.C_LISTVALUE_MST(system_id,business_id,group_id,list_value_key,filter_key_1,filter_key_2,default_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,editable_flg)
   SELECT system_id,business_id,group_id,list_value_key,filter_key_1,filter_key_2,default_flg,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,editable_flg from ssabira.C_LISTVALUE_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
    --C_LISTVALUE_RES_MST
   delete from ssabira.C_LISTVALUE_RES_MST where business_id in (SELECT distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   insert into ssabira.C_LISTVALUE_RES_MST(system_id,business_id,group_id,list_value_key,language_id,value,list_value_order)
   SELECT system_id,business_id,group_id,list_value_key,language_id,value,list_value_order from ssabira.C_LISTVALUE_RES_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
 end loop;


   if s_row > 0 then
    update ssabira.S_DELIVER_TIME_RECORD set DELIVER_DTM = clock_timestamp() - interval '1 days' where TABLE_NAME = 'C_LISTVALUE_MST';
  end if;

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_listvalue_mst_res();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_listvalue_mst_res()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(20) := 'MB';

s_row NUMERIC := 0;
cur cursor for SELECT * FROM ssabira.C_LISTVALUE_GROUP_MST_ADMDB G WHERE G.AUTHORIZED_DTM > (SELECT DELIVER_DTM FROM ssabira.S_DELIVER_TIME_RECORD_MB WHERE TABLE_NAME = 'C_LISTVALUE_MST');


BEGIN

--delete and insert
 for result in cur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   --s_row := cur%rowcount;
   --C_LISTVALUE_MST
   DELETE FROM ssabira.C_LISTVALUE_MST where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   INSERT INTO ssabira.C_LISTVALUE_MST select * from ssabira.C_LISTVALUE_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
    --C_LISTVALUE_RES_MST
   DELETE FROM ssabira.C_LISTVALUE_RES_MST where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   INSERT INTO ssabira.C_LISTVALUE_RES_MST select * from ssabira.C_LISTVALUE_RES_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
 end loop;

   if s_row > 0 then
    update ssabira.S_DELIVER_TIME_RECORD_MB set DELIVER_DTM = CURRENT_TIMESTAMP-1 where TABLE_NAME = 'C_LISTVALUE_MST';
  end if;
 
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_listvalue_mst_res_mb();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_listvalue_mst_res_mb()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE

v_system_id varchar(2) := 'MB';
s_row bigint := 0;
cur CURSOR FOR SELECT * FROM ssabira.C_LISTVALUE_GROUP_MST_ADMDB G WHERE G.AUTHORIZED_DTM > (SELECT DELIVER_DTM FROM ssabira.S_DELIVER_TIME_RECORD_MB WHERE TABLE_NAME = 'C_LISTVALUE_MST');
BEGIN

 --delete and insert
 for result in cur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   --C_LISTVALUE_MST
   DELETE FROM ssabira.C_LISTVALUE_MST where business_id in (SELECT distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   INSERT INTO ssabira.C_LISTVALUE_MST SELECT * from ssabira.C_LISTVALUE_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
    --C_LISTVALUE_RES_MST
   DELETE FROM ssabira.C_LISTVALUE_RES_MST where business_id in (SELECT distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
   INSERT INTO ssabira.C_LISTVALUE_RES_MST SELECT * from ssabira.C_LISTVALUE_RES_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and system_id = v_system_id and GROUP_ID = result.GROUP_ID;
 end loop;


   if s_row > 0 then
    update ssabira.S_DELIVER_TIME_RECORD_MB set DELIVER_DTM = clock_timestamp() - interval '1 days' where TABLE_NAME = 'C_LISTVALUE_MST';
  end if;

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_loan_deduction_plan_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_loan_deduction_plan_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_LOAN_DEDUCTION_PLAN_MST;
 insert into ssabira.C_LOAN_DEDUCTION_PLAN_MST(business_id,plan_code,plan_srno,deduction_type,deduction_code,no_of_installment,deduction_method,deduction_mode,plan_name,rate_or_amount,created_by,created_dtm,modified_dtm,modified_by)
 (SELECT business_id,plan_code,plan_srno,deduction_type,deduction_code,no_of_installment,deduction_method,deduction_mode,plan_name,rate_or_amount,created_by,created_dtm,modified_dtm,modified_by from ssabira.C_LOAN_DEDUCTION_PLAN_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_pricing_code_details_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_pricing_code_details_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_PRICING_CODE_DETAILS_MST;
 insert into ssabira.C_PRICING_CODE_DETAILS_MST(interest_rate_code,pricing_code,business_id,min_term,max_term,min_amt,max_amt,interest_rate)
 (SELECT interest_rate_code,pricing_code,business_id,min_term,max_term,min_amt,max_amt,interest_rate from ssabira.C_PRICING_CODE_DETAILS_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_pricing_code_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_pricing_code_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_PRICING_CODE_MST;
 insert into ssabira.C_PRICING_CODE_MST(pricing_code,business_id,dsr,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,created_by,created_dtm,pricing_description)
 (SELECT pricing_code,business_id,dsr,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,created_by,created_dtm,pricing_description from ssabira.C_PRICING_CODE_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_product_attributes_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_product_attributes_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_PRODUCT_ATTRIBUTES_MST;
 insert into ssabira.C_PRODUCT_ATTRIBUTES_MST(business_id,product_id,salary_check_flg,joint_app_flg,retail_corp_ind,loan_type,casa_required_flg,monthly_due_days,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,min_amount,min_amount_ccy,max_amount,max_amount_ccy,min_term,max_term,insurance_applicable_flg)
 (SELECT business_id,product_id,salary_check_flg,joint_app_flg,retail_corp_ind,loan_type,casa_required_flg,monthly_due_days,created_by,created_dtm,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,min_amount,min_amount_ccy,max_amount,max_amount_ccy,min_term,max_term,insurance_applicable_flg from ssabira.C_PRODUCT_ATTRIBUTES_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_product_eligibility();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_product_eligibility()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_PRODUCT_ELIGIBILITY where SYSTEM_ID=v_system_id;
 insert into ssabira.C_PRODUCT_ELIGIBILITY(serial_number,business_id,activity_id,role_category_cd,prd_crdr_ind,prd_code,prd_category,inc_or_exc,account_status,account_block_code1,account_block_code2,card_type,card_status,card_block_code,system_id,exception)
 (SELECT serial_number,business_id,activity_id,role_category_cd,prd_crdr_ind,prd_code,prd_category,inc_or_exc,account_status,account_block_code1,account_block_code2,card_type,card_status,card_block_code,system_id,exception from ssabira.C_PRODUCT_ELIGIBILITY_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_product_eligibility_mb();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_product_eligibility_mb()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'MB';
BEGIN
 DELETE FROM ssabira.C_PRODUCT_ELIGIBILITY where SYSTEM_ID=v_system_id;
 INSERT INTO ssabira.C_PRODUCT_ELIGIBILITY(SELECT * from ssabira.C_PRODUCT_ELIGIBILITY_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_product_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_product_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_PRODUCT_MST;
 insert into ssabira.C_PRODUCT_MST(product_cd,business_id,product_desc,product_group,product_subgroup,source_system_id,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,currency_cd,tenure_typ,min_amount,max_amount,esaver_ind,internet_enabled,int_payout_frq,int_compd_frq,support_cheque,atm_facility_ind,category,min_term,max_term,plan_cd,secure_ind,expiry_date)
 (SELECT product_cd,business_id,product_desc,product_group,product_subgroup,source_system_id,modified_by,modified_dtm,authorized_by,authorized_dtm,delete_flg,currency_cd,tenure_typ,min_amount,max_amount,esaver_ind,internet_enabled,int_payout_frq,int_compd_frq,support_cheque,atm_facility_ind,category,min_term,max_term,plan_cd,secure_ind,expiry_date from ssabira.C_PRODUCT_MST_ADMDB where business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_c_role_func_mmap();

CREATE OR REPLACE FUNCTION ssabira.deliver_c_role_func_mmap()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_ROLE_FUNC_MMAP where SYSTEM_ID=v_system_id;
 insert into ssabira.C_ROLE_FUNC_MMAP(role_id,activity_id,system_id,effective_start_dt,effective_end_dt,checker_flg,maker_flg,acws_flg,consulstant_flg)
 (SELECT role_id,activity_id,system_id,effective_start_dt,effective_end_dt,checker_flg,maker_flg,acws_flg,consulstant_flg from ssabira.C_ROLE_FUNC_MMAP_ADMDB where SYSTEM_ID=v_system_id);

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_data_execute_procedure();

CREATE OR REPLACE FUNCTION ssabira.deliver_data_execute_procedure()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
PERFORM ssabira.deliver_c_branch_list_mst();
PERFORM ssabira.deliver_c_interest_rate_mst();
PERFORM ssabira.deliver_s_limit_global_mst();
PERFORM ssabira.deliver_c_business_mst();
PERFORM ssabira.deliver_c_product_mst();
PERFORM ssabira.deliver_c_product_eligibility();
PERFORM ssabira.deliver_c_biz_lang_mmap();
PERFORM ssabira.deliver_c_role_func_mmap();
PERFORM ssabira.deliver_c_enhanced_entitle_mst();
PERFORM ssabira.deliver_s_pwd_policy_mst();
PERFORM ssabira.deliver_s_limit_cust_mst();
PERFORM ssabira.deliver_c_listvalue_mst();
PERFORM ssabira.deliver_s_feature_blackout_mst();
PERFORM ssabira.deliver_c_crm_service_def();
PERFORM ssabira.dlvr_s_corp_limit_global_mst();
PERFORM ssabira.dlvr_c_enh_entl_nonind_mst();
--DELIVER_C_LISTVALUE_RES_MST;
PERFORM ssabira.deliver_c_interest_rate_maint_mst();
PERFORM ssabira.deliver_c_loan_deduction_plan_mst();
PERFORM ssabira.deliver_c_product_attributes_mst();
PERFORM ssabira.deliver_c_employer_mst();
PERFORM ssabira.deliver_c_employer_scheme_mst();
PERFORM ssabira.deliver_c_pricing_code_mst();
PERFORM ssabira.deliver_c_pricing_code_details_mst();
PERFORM ssabira.deliver_c_employer_bd_mst();
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_data_mb_execute_procedure();

CREATE OR REPLACE FUNCTION ssabira.deliver_data_mb_execute_procedure()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
PERFORM ssabira.deliver_c_product_eligibility_mb();
PERFORM ssabira.deliver_c_enhanced_entitle_mst_mb();
PERFORM ssabira.deliver_c_listvalue_mst_res_mb();
PERFORM ssabira.deliver_s_feature_blackout_mst_mb();

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_s_feature_blackout_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_s_feature_blackout_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.S_FEATURE_BLACKOUT_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.S_FEATURE_BLACKOUT_MST(business_id,system_id,activity_id,start_dtm,end_dtm,blackout_state,modified_dtm,modified_by,authorised_by,authorised_dtm,delete_flg,created_by,created_dtm,blackout_message,cust_type)
 (SELECT business_id,system_id,activity_id,start_dtm,end_dtm,blackout_state,modified_dtm,modified_by,authorised_by,authorised_dtm,delete_flg,created_by,created_dtm,blackout_message,cust_type from ssabira.S_FEATURE_BLACKOUT_MST_ADMDB  where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_s_feature_blackout_mst_mb();

CREATE OR REPLACE FUNCTION ssabira.deliver_s_feature_blackout_mst_mb()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'MB';
BEGIN
 DELETE FROM ssabira.S_FEATURE_BLACKOUT_MST where SYSTEM_ID=v_system_id;
 INSERT INTO ssabira.S_FEATURE_BLACKOUT_MST(SELECT * from ssabira.S_FEATURE_BLACKOUT_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_s_limit_cust_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_s_limit_cust_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE

v_system_id varchar(2) := 'IB';
s_row bigint := 0;
cur CURSOR FOR SELECT s.* from ssabira.S_LIMIT_CUST_MST_ADMDB s,ssabira.S_LIMIT_CUST_MST x where s.SYSTEM_ID=v_system_id and s.AUTHORISED_DTM is not null and s.AUTHORISED_DTM > (select DELIVER_DTM from ssabira.S_DELIVER_TIME_RECORD where TABLE_NAME = 'S_LIMIT_CUST_MST') and s.business_id = x.business_id and s.system_id = x.system_id and s.TXN_LIMIT_TYP = x.TXN_LIMIT_TYP and s.CUST_ID = x.CUST_ID;
dur CURSOR FOR SELECT s.* from ssabira.S_LIMIT_CUST_MST s where s.SYSTEM_ID=v_system_id and not exists (select 1 from ssabira.S_LIMIT_CUST_MST_ADMDB x where x.business_id = s.business_id and x.system_id = s.system_id and x.TXN_LIMIT_TYP = s.TXN_LIMIT_TYP and x.CUST_ID = s.CUST_ID);
icur CURSOR FOR SELECT s.* from ssabira.S_LIMIT_CUST_MST_ADMDB s where s.SYSTEM_ID=v_system_id and s.business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id) and not exists (select 1 from ssabira.S_LIMIT_CUST_MST x where x.business_id = s.business_id and x.system_id = s.system_id and x.TXN_LIMIT_TYP = s.TXN_LIMIT_TYP and x.CUST_ID = s.CUST_ID);
BEGIN
 --insert or update
 for result in cur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   delete from ssabira.S_LIMIT_CUST_MST where business_id= result.business_id and system_id = result.system_id and txn_limit_typ = result.txn_limit_typ and cust_id = result.cust_id;
   insert into ssabira.S_LIMIT_CUST_MST(business_id,system_id,txn_limit_typ,cust_id,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg)
   SELECT business_id,system_id,txn_limit_typ,cust_id,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg from ssabira.S_LIMIT_CUST_MST_ADMDB where business_id= result.business_id and system_id = result.system_id and txn_limit_typ = result.txn_limit_typ and cust_id = result.cust_id;
 end loop;

  --delete
  for result in dur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   delete from ssabira.S_LIMIT_CUST_MST where business_id= result.business_id and system_id = result.system_id and txn_limit_typ = result.txn_limit_typ and cust_id = result.cust_id;
 end loop;


   --insert new row
  for result in icur loop
   GET DIAGNOSTICS s_row = ROW_COUNT;
   insert into ssabira.S_LIMIT_CUST_MST(business_id,system_id,txn_limit_typ,cust_id,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg)
   SELECT business_id,system_id,txn_limit_typ,cust_id,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg from ssabira.S_LIMIT_CUST_MST_ADMDB where business_id= result.business_id and system_id = result.system_id and txn_limit_typ = result.txn_limit_typ and cust_id = result.cust_id;
 end loop;


 if s_row > 0 then
    update ssabira.S_DELIVER_TIME_RECORD set DELIVER_DTM = clock_timestamp() - interval '1 days' where TABLE_NAME = 'S_LIMIT_CUST_MST';
  end if;

END;

$function$
;

-- DROP FUNCTION ssabira.deliver_s_limit_global_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_s_limit_global_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.S_LIMIT_GLOBAL_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.S_LIMIT_GLOBAL_MST(business_id,system_id,txn_limit_typ,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg)
 (SELECT business_id,system_id,txn_limit_typ,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg from ssabira.S_LIMIT_GLOBAL_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));
END;

$function$
;

-- DROP FUNCTION ssabira.deliver_s_pwd_policy_mst();

CREATE OR REPLACE FUNCTION ssabira.deliver_s_pwd_policy_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.S_PWD_POLICY_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.S_PWD_POLICY_MST(business_id,system_id,pwd_typ,min_length,max_length,lowercase_min,uppercase_min,no_min,specialchar_min,lowercase_allowed,uppercase_allowed,no_allowed,specialchar_allowed,pwd_history_size,expiry_max_yrs,expiry_max_mths,expiry_max_dys,hibernation_yrs,hibernation_mths,expiry_min_dys,hibernation_dys,warning_period_dys,first_char_is_lowercase,first_char_is_uppercase,first_char_is_no,first_char_is_specialchar,last_char_is_uppercase,last_char_is_lowercase,last_char_is_no,last_char_is_specialchar,max_of_cons_rpts_allowed,max_cons_succ_rpts_allowed,no_of_failure_attempts_allowed,forced_reset_with_change,modified_dtm,modified_by,authorised_by,authorised_dtm,delete_flg,expiry_min_yrs,expiry_min_mths)
 (SELECT business_id,system_id,pwd_typ,min_length,max_length,lowercase_min,uppercase_min,no_min,specialchar_min,lowercase_allowed,uppercase_allowed,no_allowed,specialchar_allowed,pwd_history_size,expiry_max_yrs,expiry_max_mths,expiry_max_dys,hibernation_yrs,hibernation_mths,expiry_min_dys,hibernation_dys,warning_period_dys,first_char_is_lowercase,first_char_is_uppercase,first_char_is_no,first_char_is_specialchar,last_char_is_uppercase,last_char_is_lowercase,last_char_is_no,last_char_is_specialchar,max_of_cons_rpts_allowed,max_cons_succ_rpts_allowed,no_of_failure_attempts_allowed,forced_reset_with_change,modified_dtm,modified_by,authorised_by,authorised_dtm,delete_flg,expiry_min_yrs,expiry_min_mths from ssabira.S_PWD_POLICY_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.dlvr_c_enh_entl_nonind_mst();

CREATE OR REPLACE FUNCTION ssabira.dlvr_c_enh_entl_nonind_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.C_ENHANCED_ENTLMENT_NONIND_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.C_ENHANCED_ENTLMENT_NONIND_MST(activity_id,channel_id,business_id,system_id,reln_type_allowed)
 (SELECT activity_id,channel_id,business_id,system_id,reln_type_allowed from ssabira.C_ENH_ENTL_NONIND_MST_ADMDB where SYSTEM_ID=v_system_id);

END;

$function$
;

-- DROP FUNCTION ssabira.dlvr_s_corp_limit_global_mst();

CREATE OR REPLACE FUNCTION ssabira.dlvr_s_corp_limit_global_mst()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE
v_system_id varchar(2) := 'IB';
BEGIN
 delete from ssabira.S_CORP_LIMIT_GLOBAL_MST where SYSTEM_ID=v_system_id;
 insert into ssabira.S_CORP_LIMIT_GLOBAL_MST(business_id,system_id,txn_limit_typ,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg)
 (SELECT business_id,system_id,txn_limit_typ,daily_limit_amt,txn_limit_amt,threshold_limit_amt,modified_by,modified_dtm,authorised_by,authorised_dtm,delete_flg from ssabira.S_CORP_LIMIT_GLOBAL_MST_ADMDB where SYSTEM_ID=v_system_id and business_id in (select distinct(business_id) from ssabira.s_function_config where system_id=v_system_id));

END;

$function$
;

-- DROP FUNCTION ssabira.ftr_errmsg_proc_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.ftr_errmsg_proc_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN


-- Fund Transfer
delete from ssabira.C_MESSAGE_MST where MESSAGE_KEY like('FTR00%') and SYSTEM_ID='MB' and BUSINESS_ID=var_business_id;

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00501',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00502',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00503',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00504',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00505',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00506',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00508',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00509',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00512',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00513',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00514',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00515',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00516',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00517',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00518',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00519',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','FTR00520',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00521',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00522',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00530',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00549',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00550',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00551',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00552',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00553',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00524',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00525',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00526',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00527',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00528',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00529',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','FTR00531',null,null,null,null,null,null);

COMMIT;
------------- FUND TRANSFER ------------
delete from ssabira.C_MESSAGE_RES_MST where MESSAGE_KEY like('FTR00%') and SYSTEM_ID='MB' and BUSINESS_ID=var_business_id;

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','There are no accounts registered for doing fund transfer.','MB',var_business_id,'FTR00501');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Source account can not be empty. Please select one from the list to proceed.','MB',var_business_id,'FTR00502');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Target account can not be empty. Please select one from the list to proceed.','MB',var_business_id,'FTR00503');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter an Amount.','MB',var_business_id,'FTR00504');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter a valid Date.','MB',var_business_id,'FTR00505');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Your source account and target account can not be the same.','MB',var_business_id,'FTR00506');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The "To account" is invalid. Please enter correct details.','MB',var_business_id,'FTR00508');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No sufficient balance available for the transaction.','MB',var_business_id,'FTR00509');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction expired. You must have used Back Button.','MB',var_business_id,'FTR00512');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please check your transaction history before proceeding.','MB',var_business_id,'FTR00513');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','You have only one eligible account. For fund transfer you need at least two eligible accounts.','MB',var_business_id,'FTR00514');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Authmode not supported.','MB',var_business_id,'FTR00515');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction key is empty.','MB',var_business_id,'FTR00516');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Beneficiary does not exist.','MB',var_business_id,'FTR00517');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Source account doesn''t have same currency with target account.','MB',var_business_id,'FTR00518');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Sorry, you do not have any registered payee. Please register a Payee through Internet channel to perform the Internal Fund Transfer.','MB',var_business_id,'FTR00519');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Sorry, you do not have any account available.','MB',var_business_id,'FTR00520');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The amount is invalid. Please enter the correct details.','MB',var_business_id,'FTR00521');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The transfer amount must be more than 0. Please enter correct amount.','MB',var_business_id,'FTR00522');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select a Delivery Type.','MB',var_business_id,'FTR00530');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Branch Code is required','MB',var_business_id,'FTR00549');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Branch Name is required','MB',var_business_id,'FTR00550');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select a payable at location.','MB',var_business_id,'FTR00551');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select a currency.','MB',var_business_id,'FTR00552');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter payment remark''s.','MB',var_business_id,'FTR00553');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select one of the charge description.','MB',var_business_id,'FTR00524');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select one of the currency to proceed.','MB',var_business_id,'FTR00525');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter the remittance information(s).','MB',var_business_id,'FTR00526');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please select the Payment reason/Payment details.','MB',var_business_id,'FTR00527');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Invalid account CCY selected. Please select {0} and try again.','MB',var_business_id,'FTR00528');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','It is not possible to conduct this transaction through Online Banking.  We apologise for any inconvenience.','MB',var_business_id,'FTR00529');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','There is no statement date available.','MB',var_business_id,'FTR00531');
COMMIT;

---------
END;
$function$
;

-- DROP FUNCTION ssabira.oth_errmsg_proc_ssa(varchar);

CREATE OR REPLACE FUNCTION ssabira.oth_errmsg_proc_ssa(var_business_id character varying)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN

DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'BMB%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB90002',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB90003',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','BMB90005',null,null,null,null,null,NULL);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB09901',null,null,null,null,null,'BMB');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB09902',null,null,null,null,null,'BMB');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB09903',null,null,null,null,null,'BMB');
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','BMB0199',null,null,null,null,null,'UNKNOWN');
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'INFO','BMB99001',null,null,null,null,null,'BMB');
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'INFO','BMB99002',null,null,null,null,null,'BMB');
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'INFO','BMB99003',null,null,null,null,null,'BMB');
INSERT INTO ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'INFO','BMB99004',null,null,null,null,null,'BMB');
----jail broken
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB09910',null,null,null,null,null,'BMB');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','BMB09911',null,null,null,null,null,'BMB');


DELETE FROM ssabira.C_MESSAGE_RES_MST  WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'BMB%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The transfer amount must be less than or equal to your transaction limit {0} {1}. Please enter correct amount.','MB',var_business_id,'BMB90002');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','The transfer amount must be less than or equal to your Daily transaction limit {0} {1}. Please enter correct amount.','MB',var_business_id,'BMB90003');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction is currently not available due to maintenance. Kindly try after sometime apologies for the inconvenience.','MB',var_business_id,'BMB90005');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','No branches found for search criteria.','MB',var_business_id,'BMB09901');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter Branch City.','MB',var_business_id,'BMB09902');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter Branch Name.','MB',var_business_id,'BMB09903');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Your session has expired, Please login first','MB',var_business_id,'BMB0199');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction successful','MB',var_business_id,'BMB99001');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Transaction submitted successfully','MB',var_business_id,'BMB99002');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','In Process','MB',var_business_id,'BMB99003');
INSERT INTO ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Request Submitted','MB',var_business_id,'BMB99004');
----jail broken
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','This application  version is no longer supported on your platform, please check your application and OS version setting or contact bank''s call center.','MB',var_business_id,'BMB09910');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','You are not able to use application. Device is Jail Broken or Rooted.','MB',var_business_id,'BMB09911');


-----------GEO CODING---
DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'GAL0%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','GAL0801',null,null,null,null,null,null);
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','GAL0802',null,null,null,null,null,null);


DELETE FROM ssabira.C_MESSAGE_RES_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'GAL0%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter Latitude. ','MB',var_business_id,'GAL0801');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter Longitude.','MB',var_business_id,'GAL0802');



DELETE FROM ssabira.C_MESSAGE_RES_MST  WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY  LIKE 'CHQ0%';

Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter account number.','MB',var_business_id,'CHQ00900');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter cheque book type.','MB',var_business_id,'CHQ00901');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter cheque book size.','MB',var_business_id,'CHQ00902');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Please enter transaction reference number.','MB',var_business_id,'CHQ00903');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Cheque book type is invalid.','MB',var_business_id,'CHQ00904');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Cheque book size is invalid.','MB',var_business_id,'CHQ00905');
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Trasaction reference number is invalid.','MB',var_business_id,'CHQ00906');

DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY LIKE 'CHQ0%';

Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00900',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00901',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00902',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00903',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00904',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','CHQ00905',null,null,null,null,null,'CHEQUE');
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'FATAL','CHQ00906',null,null,null,null,null,'CHEQUE');

DELETE FROM ssabira.C_MESSAGE_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY = 'COM_MW_07445';
Insert into ssabira.C_MESSAGE_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY,MESSAGE_KEY,MODIFIED_BY,MODIFIED_DTM,AUTHORIZED_BY,AUTHORIZED_DTM,DELETE_FLG,SOURCE_SYSTEM_ID) values ('MB',var_business_id,'ERROR','COM_MW_07445',null,null,null,null,null,NULL);

DELETE FROM ssabira.C_MESSAGE_RES_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND MESSAGE_KEY = 'COM_MW_07445';
Insert into ssabira.C_MESSAGE_RES_MST(LANGUAGE_ID,MESSAGE_VALUE,SYSTEM_ID,BUSINESS_ID,MESSAGE_KEY) values ('EN','Account is Blocked','MB',var_business_id,'COM_MW_07445');

------------ SCRIPT TABLE FOR OTP ERROR MESSAGE - REL-2 -------------
DELETE FROM ssabira.C_SCRIPT_RES_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id  AND SCRIPT_KEY='otpFooter_REL2';

INSERT INTO  ssabira.C_SCRIPT_RES_MST(LANGUAGE_ID, SEQUENCE_NO, SCRIPT_VALUE, MAKER_ID, CHECKER_ID, STATUS, LAST_MODIFIED, LAST_AUTHORIZED, ACTION, DELETED_FLAG, AUTHORIZED_INDICATOR,SCRIPT_KEY, SYSTEM_ID, BUSINESS_ID) VALUES ('EN','1','If you don''t get the SMS within the next 3 minutes, please click ''Resend OTP''.','','','','','','','','','otpFooter_REL2','MB',var_business_id);

DELETE FROM ssabira.C_SCRIPT_MST WHERE SYSTEM_ID='MB' AND BUSINESS_ID=var_business_id AND CATEGORY_ID='OTP' AND SCRIPT_KEY='otpFooter_REL2';

INSERT INTO ssabira.C_SCRIPT_MST(SYSTEM_ID,BUSINESS_ID,CATEGORY_ID,SCRIPT_KEY,MAKER_ID,CHECKER_ID,STATUS,LAST_MODIFIED,LAST_AUTHORIZED,ACTION,DELETED_FLAG, AUTHORIZED_INDICATOR) VALUES ('MB',var_business_id,'OTP','otpFooter_REL2','','','','','','','','');


COMMIT;

---------
END;
$function$
;

-- DROP FUNCTION ssabira.purge_batch_tables();

CREATE OR REPLACE FUNCTION ssabira.purge_batch_tables()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
DECLARE

cur CURSOR FOR SELECT job_execution_id,
                      job_instance_id 
                 FROM ssabira.batch_job_execution
                WHERE create_time between date_trunc('day',now())-interval '15 day' and date_trunc('day',now());

BEGIN

    FOR RESULT IN cur LOOP
    
        DELETE 
          FROM ssabira.batch_step_execution_context
         WHERE step_execution_id IN (SELECT step_execution_id
                                       FROM ssabira.batch_step_execution
                                      WHERE job_execution_id = result.job_execution_id);
        							  
        DELETE 
          FROM ssabira.batch_step_execution 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE 
          FROM ssabira.batch_job_execution_context 
         WHERE job_execution_id = result.job_execution_id;
        
        DELETE 
          FROM ssabira.batch_job_execution_params 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE 
          FROM ssabira.batch_job_execution 
         WHERE job_execution_id = result.job_execution_id;
         
        DELETE
          FROM ssabira.BATCH_JOB_INSTANCE
         WHERE job_instance_id = result.job_instance_id;
     
    END LOOP;

END;

$function$
;

-- DROP FUNCTION ssabira.send_mail_smtp(text, text, text, text, int8);

CREATE OR REPLACE FUNCTION ssabira.send_mail_smtp(p_to text, p_from text, p_message text, p_smtp_host text, p_smtp_port bigint DEFAULT 25)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
--DECLARE

  
  --l_mail_conn   UTL_SMTP.connection;

BEGIN
  --l_mail_conn := UTL_SMTP.open_connection(p_smtp_host, p_smtp_port);
  --UTL_SMTP.helo(l_mail_conn, p_smtp_host);
  --UTL_SMTP.mail(l_mail_conn, p_from);

  --UTL_SMTP.rcpt(l_mail_conn, p_to);
  --UTL_SMTP.data(l_mail_conn, p_message || UTL_TCP.crlf || UTL_TCP.crlf);
  --UTL_SMTP.quit(l_mail_conn);
  NULL;

END;
$function$
;

-- DROP FUNCTION ssabira.test_proc1();

CREATE OR REPLACE FUNCTION ssabira.test_proc1()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  RAISE NOTICE 'HELLO WORLD';

END;
$function$
;

-- DROP FUNCTION ssabira.test_proc_man();

CREATE OR REPLACE FUNCTION ssabira.test_proc_man()
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
  NULL;
END;
$function$
;

			-- Sequences

-- ssabira.batch_job_execution_seq definition

-- DROP SEQUENCE ssabira.batch_job_execution_seq;

CREATE SEQUENCE ssabira.batch_job_execution_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ssabira.batch_job_seq definition

-- DROP SEQUENCE ssabira.batch_job_seq;

CREATE SEQUENCE ssabira.batch_job_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ssabira.batch_step_execution_seq definition

-- DROP SEQUENCE ssabira.batch_step_execution_seq;

CREATE SEQUENCE ssabira.batch_step_execution_seq
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 9223372036854775807
	START 1
	CACHE 20
	NO CYCLE;


-- ssabira.c_app_semantic_version_app_semver_id_seq definition

-- DROP SEQUENCE ssabira.c_app_semantic_version_app_semver_id_seq;

CREATE SEQUENCE ssabira.c_app_semantic_version_app_semver_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;


-- ssabira.c_customer_preference_menu_mst_user_menu_refkey_seq definition

-- DROP SEQUENCE ssabira.c_customer_preference_menu_mst_user_menu_refkey_seq;

CREATE SEQUENCE ssabira.c_customer_preference_menu_mst_user_menu_refkey_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;


-- ssabira.c_customer_preference_mst_user_menu_refkey_seq definition

-- DROP SEQUENCE ssabira.c_customer_preference_mst_user_menu_refkey_seq;

CREATE SEQUENCE ssabira.c_customer_preference_mst_user_menu_refkey_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;


-- ssabira.c_product_eligibility_seq definition

-- DROP SEQUENCE ssabira.c_product_eligibility_seq;

CREATE SEQUENCE ssabira.c_product_eligibility_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 718051
	CACHE 20
	NO CYCLE;


-- ssabira.c_product_eligibility_sequence definition

-- DROP SEQUENCE ssabira.c_product_eligibility_sequence;

CREATE SEQUENCE ssabira.c_product_eligibility_sequence
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 236439
	CACHE 20
	NO CYCLE;

			-- Data types
			-- Aggregate functions

		


