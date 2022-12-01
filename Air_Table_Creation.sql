--Create Branch -- Digital db channeel scripts (AMB/AIR)

-- DROP SCHEMA ssabira;

CREATE SCHEMA ssabira AUTHORIZATION app_account;

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
	CONSTRAINT batch_job_execution_pkey PRIMARY KEY (job_execution_id)
);


-- ssabira.batch_job_execution_context definition

-- Drop table

-- DROP TABLE ssabira.batch_job_execution_context;

CREATE TABLE ssabira.batch_job_execution_context (
	job_execution_id int8 NOT NULL,
	short_context varchar(2500) NOT NULL,
	serialized_context text NULL,
	CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id)
);


-- ssabira.batch_job_execution foreign keys

ALTER TABLE ssabira.batch_job_execution ADD CONSTRAINT job_instance_execution_fk FOREIGN KEY (job_instance_id) REFERENCES ssabira.batch_job_instance(job_instance_id);


-- ssabira.batch_job_execution_context foreign keys

ALTER TABLE ssabira.batch_job_execution_context ADD CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES ssabira.batch_job_execution(job_execution_id);