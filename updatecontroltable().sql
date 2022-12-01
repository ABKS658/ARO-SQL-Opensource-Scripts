CREATE OR REPLACE PROCEDURE "HadoopMigration".updatecontroltable_1()
 LANGUAGE plpgsql
AS $procedure$																									
DECLARE																									
																									
totalcount  INTEGER := 0;																									
mincounter INTEGER := 0;																									
maxcounter INTEGER := 0;
BEGIN																									
																									
select count(*) INTO totalcount from "HadoopMigration".coa_hadoop  WHERE (coa_hadoop.createdon >= '2022-08-30' AND coa_hadoop.createdon < '2022-08-31') OR (coa_hadoop.modifiedon >= '2022-08-30' AND coa_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".coa_hadoop WHERE (coa_hadoop.createdon >= '2022-08-30' AND coa_hadoop.createdon < '2022-08-31') OR (coa_hadoop.modifiedon >= '2022-08-30' AND coa_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".coa_hadoop WHERE (coa_hadoop.createdon >= '2022-08-30' AND coa_hadoop.createdon < '2022-08-31') OR (coa_hadoop.modifiedon >= '2022-08-30' AND coa_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('coa',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".currency_hadoop  WHERE (currency_hadoop.createdon >= '2022-08-30' AND currency_hadoop.createdon < '2022-08-31') OR (currency_hadoop.modifiedon >= '2022-08-30' AND currency_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".currency_hadoop WHERE (currency_hadoop.createdon >= '2022-08-30' AND currency_hadoop.createdon < '2022-08-31') OR (currency_hadoop.modifiedon >= '2022-08-30' AND currency_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".currency_hadoop WHERE (currency_hadoop.createdon >= '2022-08-30' AND currency_hadoop.createdon < '2022-08-31') OR (currency_hadoop.modifiedon >= '2022-08-30' AND currency_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('currency',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );

select count(*) into totalcount  from "HadoopMigration"
																									
select count(*) INTO totalcount from "HadoopMigration".users_hadoop  WHERE (users_hadoop.createdon >= '2022-08-30' AND users_hadoop.createdon < '2022-08-31') OR (users_hadoop.modifiedon >= '2022-08-30' AND users_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".users_hadoop WHERE (users_hadoop.createdon >= '2022-08-30' AND users_hadoop.createdon < '2022-08-31') OR (users_hadoop.modifiedon >= '2022-08-30' AND users_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".users_hadoop WHERE (users_hadoop.createdon >= '2022-08-30' AND users_hadoop.createdon < '2022-08-31') OR (users_hadoop.modifiedon >= '2022-08-30' AND users_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('users',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".wallettransactions_hadoop  WHERE (wallettransactions_hadoop.createdon >= '2022-08-30' AND wallettransactions_hadoop.createdon < '2022-08-31') OR (wallettransactions_hadoop.modifiedon >= '2022-08-30' AND wallettransactions_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".wallettransactions_hadoop WHERE (wallettransactions_hadoop.createdon >= '2022-08-30' AND wallettransactions_hadoop.createdon < '2022-08-31') OR (wallettransactions_hadoop.modifiedon >= '2022-08-30' AND wallettransactions_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".wallettransactions_hadoop WHERE (wallettransactions_hadoop.createdon >= '2022-08-30' AND wallettransactions_hadoop.createdon < '2022-08-31') OR (wallettransactions_hadoop.modifiedon >= '2022-08-30' AND wallettransactions_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('wallettransactions',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".wallettype_hadoop  WHERE (wallettype_hadoop.createdon >= '2022-08-30' AND wallettype_hadoop.createdon < '2022-08-31') OR (wallettype_hadoop.modifiedon >= '2022-08-30' AND wallettype_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".wallettype_hadoop WHERE (wallettype_hadoop.createdon >= '2022-08-30' AND wallettype_hadoop.createdon < '2022-08-31') OR (wallettype_hadoop.modifiedon >= '2022-08-30' AND wallettype_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".wallettype_hadoop WHERE (wallettype_hadoop.createdon >= '2022-08-30' AND wallettype_hadoop.createdon < '2022-08-31') OR (wallettype_hadoop.modifiedon >= '2022-08-30' AND wallettype_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('wallettype',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".favourite_hadoop  WHERE (favourite_hadoop.createdon >= '2022-08-30' AND favourite_hadoop.createdon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".favourite_hadoop WHERE (favourite_hadoop.createdon >= '2022-08-30' AND favourite_hadoop.createdon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".favourite_hadoop WHERE (favourite_hadoop.createdon >= '2022-08-30' AND favourite_hadoop.createdon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('favourite',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".userkyc_hadoop  WHERE (userkyc_hadoop.createdon >= '2022-08-30' AND userkyc_hadoop.createdon < '2022-08-31') OR (userkyc_hadoop.lastModifedOn >= '2022-08-30' AND userkyc_hadoop.lastModifedOn < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userkyc_hadoop WHERE (userkyc_hadoop.createdon >= '2022-08-30' AND userkyc_hadoop.createdon < '2022-08-31') OR (userkyc_hadoop.lastModifedOn >= '2022-08-30' AND userkyc_hadoop.lastModifedOn < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userkyc_hadoop WHERE (userkyc_hadoop.createdon >= '2022-08-30' AND userkyc_hadoop.createdon < '2022-08-31') OR (userkyc_hadoop.lastModifedOn >= '2022-08-30' AND userkyc_hadoop.lastModifedOn < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userkyc',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".walletbalance_hadoop  WHERE (walletbalance_hadoop.createdon >= '2022-08-30' AND walletbalance_hadoop.createdon < '2022-08-31') OR (walletbalance_hadoop.modifiedon >= '2022-08-30' AND walletbalance_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".walletbalance_hadoop WHERE (walletbalance_hadoop.createdon >= '2022-08-30' AND walletbalance_hadoop.createdon < '2022-08-31') OR (walletbalance_hadoop.modifiedon >= '2022-08-30' AND walletbalance_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".walletbalance_hadoop WHERE (walletbalance_hadoop.createdon >= '2022-08-30' AND walletbalance_hadoop.createdon < '2022-08-31') OR (walletbalance_hadoop.modifiedon >= '2022-08-30' AND walletbalance_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('walletbalance',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".businessproduct_hadoop  WHERE (businessproduct_hadoop.createdon >= '2022-08-30' AND businessproduct_hadoop.createdon < '2022-08-31') OR (businessproduct_hadoop.modifiedon >= '2022-08-30' AND businessproduct_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".businessproduct_hadoop WHERE (businessproduct_hadoop.createdon >= '2022-08-30' AND businessproduct_hadoop.createdon < '2022-08-31') OR (businessproduct_hadoop.modifiedon >= '2022-08-30' AND businessproduct_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".businessproduct_hadoop WHERE (businessproduct_hadoop.createdon >= '2022-08-30' AND businessproduct_hadoop.createdon < '2022-08-31') OR (businessproduct_hadoop.modifiedon >= '2022-08-30' AND businessproduct_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('businessproduct',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".channel_hadoop  WHERE (channel_hadoop.createdon >= '2022-08-30' AND channel_hadoop.createdon < '2022-08-31') OR (channel_hadoop.modifiedon >= '2022-08-30' AND channel_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".channel_hadoop WHERE (channel_hadoop.createdon >= '2022-08-30' AND channel_hadoop.createdon < '2022-08-31') OR (channel_hadoop.modifiedon >= '2022-08-30' AND channel_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".channel_hadoop WHERE (channel_hadoop.createdon >= '2022-08-30' AND channel_hadoop.createdon < '2022-08-31') OR (channel_hadoop.modifiedon >= '2022-08-30' AND channel_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('channel',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".charges_hadoop  WHERE (charges_hadoop.createdon >= '2022-08-30' AND charges_hadoop.createdon < '2022-08-31') OR (charges_hadoop.modifiedon >= '2022-08-30' AND charges_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".charges_hadoop WHERE (charges_hadoop.createdon >= '2022-08-30' AND charges_hadoop.createdon < '2022-08-31') OR (charges_hadoop.modifiedon >= '2022-08-30' AND charges_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".charges_hadoop WHERE (charges_hadoop.createdon >= '2022-08-30' AND charges_hadoop.createdon < '2022-08-31') OR (charges_hadoop.modifiedon >= '2022-08-30' AND charges_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('charges',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".offertype_hadoop  WHERE (offertype_hadoop.createdon >= '2022-08-30' AND offertype_hadoop.createdon < '2022-08-31') OR (offertype_hadoop.modifiedon >= '2022-08-30' AND offertype_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".offertype_hadoop WHERE (offertype_hadoop.createdon >= '2022-08-30' AND offertype_hadoop.createdon < '2022-08-31') OR (offertype_hadoop.modifiedon >= '2022-08-30' AND offertype_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".offertype_hadoop WHERE (offertype_hadoop.createdon >= '2022-08-30' AND offertype_hadoop.createdon < '2022-08-31') OR (offertype_hadoop.modifiedon >= '2022-08-30' AND offertype_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('offertype',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".role_hadoop  WHERE (role_hadoop.createdon >= '2022-08-30' AND role_hadoop.createdon < '2022-08-31') OR (role_hadoop.modifiedon >= '2022-08-30' AND role_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".role_hadoop WHERE (role_hadoop.createdon >= '2022-08-30' AND role_hadoop.createdon < '2022-08-31') OR (role_hadoop.modifiedon >= '2022-08-30' AND role_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".role_hadoop WHERE (role_hadoop.createdon >= '2022-08-30' AND role_hadoop.createdon < '2022-08-31') OR (role_hadoop.modifiedon >= '2022-08-30' AND role_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('role',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".rolewalletsetting_hadoop  WHERE (rolewalletsetting_hadoop.createdon >= '2022-08-30' AND rolewalletsetting_hadoop.createdon < '2022-08-31') OR (rolewalletsetting_hadoop.modifiedon >= '2022-08-30' AND rolewalletsetting_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".rolewalletsetting_hadoop WHERE (rolewalletsetting_hadoop.createdon >= '2022-08-30' AND rolewalletsetting_hadoop.createdon < '2022-08-31') OR (rolewalletsetting_hadoop.modifiedon >= '2022-08-30' AND rolewalletsetting_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".rolewalletsetting_hadoop WHERE (rolewalletsetting_hadoop.createdon >= '2022-08-30' AND rolewalletsetting_hadoop.createdon < '2022-08-31') OR (rolewalletsetting_hadoop.modifiedon >= '2022-08-30' AND rolewalletsetting_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('rolewalletsetting',totalcount,mincounter,maxcounter,'2022-08-31', '2022-08-30' );																									
																									
select count(*) into totalcount from "HadoopMigration".usersaudit_hadoop  WHERE to_char(createdon, 'YYYY-MM-DD') = '2022-08-30';
select min(sequenceid) INTO mincounter from "HadoopMigration".usersaudit_hadoop WHERE (usersaudit_hadoop.createdon >= '2022-08-30' AND usersaudit_hadoop.createdon < '2022-08-31') OR (usersaudit_hadoop.modifiedon >= '2022-08-30' AND usersaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".usersaudit_hadoop WHERE (usersaudit_hadoop.createdon >= '2022-08-30' AND usersaudit_hadoop.createdon < '2022-08-31') OR (usersaudit_hadoop.modifiedon >= '2022-08-30' AND usersaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('usersaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".absacodes_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".absacodes_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".absacodes_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('absacodes',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".atmconfigaudit_hadoop  WHERE (atmconfigaudit_hadoop.createdon >= '2022-08-30' AND atmconfigaudit_hadoop.createdon < '2022-08-31') OR (atmconfigaudit_hadoop.modifiedon >= '2022-08-30' AND atmconfigaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".atmconfigaudit_hadoop WHERE (atmconfigaudit_hadoop.createdon >= '2022-08-30' AND atmconfigaudit_hadoop.createdon < '2022-08-31') OR (atmconfigaudit_hadoop.modifiedon >= '2022-08-30' AND atmconfigaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".atmconfigaudit_hadoop WHERE (atmconfigaudit_hadoop.createdon >= '2022-08-30' AND atmconfigaudit_hadoop.createdon < '2022-08-31') OR (atmconfigaudit_hadoop.modifiedon >= '2022-08-30' AND atmconfigaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('atmconfigaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".atmconfig_hadoop  WHERE (atmconfig_hadoop.createdon >= '2022-08-30' AND atmconfig_hadoop.createdon < '2022-08-31') OR (atmconfig_hadoop.modifiedon >= '2022-08-30' AND atmconfig_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".atmconfig_hadoop WHERE (atmconfig_hadoop.createdon >= '2022-08-30' AND atmconfig_hadoop.createdon < '2022-08-31') OR (atmconfig_hadoop.modifiedon >= '2022-08-30' AND atmconfig_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".atmconfig_hadoop WHERE (atmconfig_hadoop.createdon >= '2022-08-30' AND atmconfig_hadoop.createdon < '2022-08-31') OR (atmconfig_hadoop.modifiedon >= '2022-08-30' AND atmconfig_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('atmconfig',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".atmintegrationrecords_hadoop  WHERE (atmintegrationrecords_hadoop.createdon >= '2022-08-30' AND atmintegrationrecords_hadoop.createdon < '2022-08-31') OR (atmintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND atmintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".atmintegrationrecords_hadoop WHERE (atmintegrationrecords_hadoop.createdon >= '2022-08-30' AND atmintegrationrecords_hadoop.createdon < '2022-08-31') OR (atmintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND atmintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".atmintegrationrecords_hadoop WHERE (atmintegrationrecords_hadoop.createdon >= '2022-08-30' AND atmintegrationrecords_hadoop.createdon < '2022-08-31') OR (atmintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND atmintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('atmintegrationrecords',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".authlevel_hadoop  WHERE (authlevel_hadoop.createdon >= '2022-08-30' AND authlevel_hadoop.createdon < '2022-08-31') OR (authlevel_hadoop.modifiedon >= '2022-08-30' AND authlevel_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".authlevel_hadoop WHERE (authlevel_hadoop.createdon >= '2022-08-30' AND authlevel_hadoop.createdon < '2022-08-31') OR (authlevel_hadoop.modifiedon >= '2022-08-30' AND authlevel_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".authlevel_hadoop WHERE (authlevel_hadoop.createdon >= '2022-08-30' AND authlevel_hadoop.createdon < '2022-08-31') OR (authlevel_hadoop.modifiedon >= '2022-08-30' AND authlevel_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('authlevel',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".authlevelaudit_hadoop  WHERE (authlevelaudit_hadoop.createdon >= '2022-08-30' AND authlevelaudit_hadoop.createdon < '2022-08-31') OR (authlevelaudit_hadoop.modifiedon >= '2022-08-30' AND authlevelaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".authlevelaudit_hadoop WHERE (authlevelaudit_hadoop.createdon >= '2022-08-30' AND authlevelaudit_hadoop.createdon < '2022-08-31') OR (authlevelaudit_hadoop.modifiedon >= '2022-08-30' AND authlevelaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".authlevelaudit_hadoop WHERE (authlevelaudit_hadoop.createdon >= '2022-08-30' AND authlevelaudit_hadoop.createdon < '2022-08-31') OR (authlevelaudit_hadoop.modifiedon >= '2022-08-30' AND authlevelaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('authlevelaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".billerintegrationrecords_hadoop  WHERE (billerintegrationrecords_hadoop.createdon >= '2022-08-30' AND billerintegrationrecords_hadoop.createdon < '2022-08-31') OR (billerintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND billerintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".billerintegrationrecords_hadoop WHERE (billerintegrationrecords_hadoop.createdon >= '2022-08-30' AND billerintegrationrecords_hadoop.createdon < '2022-08-31') OR (billerintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND billerintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".billerintegrationrecords_hadoop WHERE (billerintegrationrecords_hadoop.createdon >= '2022-08-30' AND billerintegrationrecords_hadoop.createdon < '2022-08-31') OR (billerintegrationrecords_hadoop.modifiedon >= '2022-08-30' AND billerintegrationrecords_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('billerintegrationrecords',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".billerpendingtransactions_hadoop  WHERE (billerpendingtransactions_hadoop.createdon >= '2022-08-30' AND billerpendingtransactions_hadoop.createdon < '2022-08-31') OR (billerpendingtransactions_hadoop.modifiedon >= '2022-08-30' AND billerpendingtransactions_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".billerpendingtransactions_hadoop WHERE (billerpendingtransactions_hadoop.createdon >= '2022-08-30' AND billerpendingtransactions_hadoop.createdon < '2022-08-31') OR (billerpendingtransactions_hadoop.modifiedon >= '2022-08-30' AND billerpendingtransactions_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".billerpendingtransactions_hadoop WHERE (billerpendingtransactions_hadoop.createdon >= '2022-08-30' AND billerpendingtransactions_hadoop.createdon < '2022-08-31') OR (billerpendingtransactions_hadoop.modifiedon >= '2022-08-30' AND billerpendingtransactions_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('billerpendingtransactions',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".blacklistuser_hadoop  WHERE (blacklistuser_hadoop.createdon >= '2022-08-30' AND blacklistuser_hadoop.createdon < '2022-08-31') OR (blacklistuser_hadoop.modifiedon >= '2022-08-30' AND blacklistuser_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".blacklistuser_hadoop WHERE (blacklistuser_hadoop.createdon >= '2022-08-30' AND blacklistuser_hadoop.createdon < '2022-08-31') OR (blacklistuser_hadoop.modifiedon >= '2022-08-30' AND blacklistuser_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".blacklistuser_hadoop WHERE (blacklistuser_hadoop.createdon >= '2022-08-30' AND blacklistuser_hadoop.createdon < '2022-08-31') OR (blacklistuser_hadoop.modifiedon >= '2022-08-30' AND blacklistuser_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('blacklistuser',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".cbspoolentity_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".cbspoolentity_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".cbspoolentity_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('cbspoolentity',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".channelbusinessproduct_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".channelbusinessproduct_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".channelbusinessproduct_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('channelbusinessproduct',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".coaeod_hadoop  WHERE (coaeod_hadoop.createdon >= '2022-08-30' AND coaeod_hadoop.createdon < '2022-08-31') OR (coaeod_hadoop.modifiedon >= '2022-08-30' AND coaeod_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".coaeod_hadoop  WHERE (coaeod_hadoop.createdon >= '2022-08-30' AND coaeod_hadoop.createdon < '2022-08-31') OR (coaeod_hadoop.modifiedon >= '2022-08-30' AND coaeod_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".coaeod_hadoop  WHERE (coaeod_hadoop.createdon >= '2022-08-30' AND coaeod_hadoop.createdon < '2022-08-31') OR (coaeod_hadoop.modifiedon >= '2022-08-30' AND coaeod_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('coaeod',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".coaqueue_hadoop WHERE (coaqueue_hadoop.createdon >= '2022-08-30' AND coaqueue_hadoop.createdon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".coaqueue_hadoop WHERE (coaqueue_hadoop.createdon >= '2022-08-30' AND coaqueue_hadoop.createdon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".coaqueue_hadoop WHERE (coaqueue_hadoop.createdon >= '2022-08-30' AND coaqueue_hadoop.createdon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('coaqueue',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".country_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".country_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".country_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('country',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".cybersourcetopup_hadoop WHERE (cybersourcetopup_hadoop.createdon >= '2022-08-30' AND cybersourcetopup_hadoop.createdon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".cybersourcetopup_hadoop WHERE (cybersourcetopup_hadoop.createdon >= '2022-08-30' AND cybersourcetopup_hadoop.createdon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".cybersourcetopup_hadoop WHERE (cybersourcetopup_hadoop.createdon >= '2022-08-30' AND cybersourcetopup_hadoop.createdon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('cybersourcetopup',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".externalbillers_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".externalbillers_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".externalbillers_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('externalbillers',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".faq_hadoop WHERE (faq_hadoop.createdon >= '2022-08-30' AND faq_hadoop.createdon < '2022-08-31') OR (faq_hadoop.modifiedon >= '2022-08-30' AND faq_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".faq_hadoop WHERE (faq_hadoop.createdon >= '2022-08-30' AND faq_hadoop.createdon < '2022-08-31') OR (faq_hadoop.modifiedon >= '2022-08-30' AND faq_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".faq_hadoop WHERE (faq_hadoop.createdon >= '2022-08-30' AND faq_hadoop.createdon < '2022-08-31') OR (faq_hadoop.modifiedon >= '2022-08-30' AND faq_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('faq',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".faqaudit_hadoop WHERE (faqaudit_hadoop.createdon >= '2022-08-30' AND faqaudit_hadoop.createdon < '2022-08-31') OR (faqaudit_hadoop.modifiedon >= '2022-08-30' AND faqaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".faqaudit_hadoop WHERE (faqaudit_hadoop.createdon >= '2022-08-30' AND faqaudit_hadoop.createdon < '2022-08-31') OR (faqaudit_hadoop.modifiedon >= '2022-08-30' AND faqaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".faqaudit_hadoop WHERE (faqaudit_hadoop.createdon >= '2022-08-30' AND faqaudit_hadoop.createdon < '2022-08-31') OR (faqaudit_hadoop.modifiedon >= '2022-08-30' AND faqaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('faqaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".linkedcard_hadoop WHERE (linkedcard_hadoop.createdon >= '2022-08-30' AND linkedcard_hadoop.createdon < '2022-08-31') OR (linkedcard_hadoop.modifiedon >= '2022-08-30' AND linkedcard_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".linkedcard_hadoop WHERE (linkedcard_hadoop.createdon >= '2022-08-30' AND linkedcard_hadoop.createdon < '2022-08-31') OR (linkedcard_hadoop.modifiedon >= '2022-08-30' AND linkedcard_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".linkedcard_hadoop WHERE (linkedcard_hadoop.createdon >= '2022-08-30' AND linkedcard_hadoop.createdon < '2022-08-31') OR (linkedcard_hadoop.modifiedon >= '2022-08-30' AND linkedcard_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('linkedcard',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".linkedcardaudit_hadoop WHERE (linkedcardaudit_hadoop.createdon >= '2022-08-30' AND linkedcardaudit_hadoop.createdon < '2022-08-31') OR (linkedcardaudit_hadoop.modifiedon >= '2022-08-30' AND linkedcardaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".linkedcardaudit_hadoop WHERE (linkedcardaudit_hadoop.createdon >= '2022-08-30' AND linkedcardaudit_hadoop.createdon < '2022-08-31') OR (linkedcardaudit_hadoop.modifiedon >= '2022-08-30' AND linkedcardaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".linkedcardaudit_hadoop WHERE (linkedcardaudit_hadoop.createdon >= '2022-08-30' AND linkedcardaudit_hadoop.createdon < '2022-08-31') OR (linkedcardaudit_hadoop.modifiedon >= '2022-08-30' AND linkedcardaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('linkedcardaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".notification_hadoop WHERE (notification_hadoop.createdon >= '2022-08-30' AND notification_hadoop.createdon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".notification_hadoop WHERE (notification_hadoop.createdon >= '2022-08-30' AND notification_hadoop.createdon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".notification_hadoop WHERE (notification_hadoop.createdon >= '2022-08-30' AND notification_hadoop.createdon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('notification',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".occupation_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".occupation_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".occupation_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('occupation',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
-----------------------------------------------------------------------------------------------------------------------------------------------																									
																									
select count(*) INTO totalcount from "HadoopMigration".offerbusinessproduct_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".offerbusinessproduct_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".offerbusinessproduct_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('offerbusinessproduct',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".pendingtransaction_hadoop WHERE (pendingtransaction_hadoop.createdon >= '2022-08-30' AND pendingtransaction_hadoop.createdon < '2022-08-31') OR (pendingtransaction_hadoop.modifiedon >= '2022-08-30' AND pendingtransaction_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".pendingtransaction_hadoop WHERE (pendingtransaction_hadoop.createdon >= '2022-08-30' AND pendingtransaction_hadoop.createdon < '2022-08-31') OR (pendingtransaction_hadoop.modifiedon >= '2022-08-30' AND pendingtransaction_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".pendingtransaction_hadoop WHERE (pendingtransaction_hadoop.createdon >= '2022-08-30' AND pendingtransaction_hadoop.createdon < '2022-08-31') OR (pendingtransaction_hadoop.modifiedon >= '2022-08-30' AND pendingtransaction_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('pendingtransaction',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".referraloffer_hadoop WHERE (referraloffer_hadoop.createdon >= '2022-08-30' AND referraloffer_hadoop.createdon < '2022-08-31') OR (referraloffer_hadoop.modifiedon >= '2022-08-30' AND referraloffer_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".referraloffer_hadoop WHERE (referraloffer_hadoop.createdon >= '2022-08-30' AND referraloffer_hadoop.createdon < '2022-08-31') OR (referraloffer_hadoop.modifiedon >= '2022-08-30' AND referraloffer_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".referraloffer_hadoop WHERE (referraloffer_hadoop.createdon >= '2022-08-30' AND referraloffer_hadoop.createdon < '2022-08-31') OR (referraloffer_hadoop.modifiedon >= '2022-08-30' AND referraloffer_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('referraloffer',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".referralofferaudit_hadoop WHERE (referralofferaudit_hadoop.createdon >= '2022-08-30' AND referralofferaudit_hadoop.createdon < '2022-08-31') OR (referralofferaudit_hadoop.modifiedon >= '2022-08-30' AND referralofferaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".referralofferaudit_hadoop WHERE (referralofferaudit_hadoop.createdon >= '2022-08-30' AND referralofferaudit_hadoop.createdon < '2022-08-31') OR (referralofferaudit_hadoop.modifiedon >= '2022-08-30' AND referralofferaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".referralofferaudit_hadoop WHERE (referralofferaudit_hadoop.createdon >= '2022-08-30' AND referralofferaudit_hadoop.createdon < '2022-08-31') OR (referralofferaudit_hadoop.modifiedon >= '2022-08-30' AND referralofferaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('referralofferaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".rolespecialfield_hadoop;																									
select min(sequenceid) INTO mincounter from "HadoopMigration".rolespecialfield_hadoop;																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".rolespecialfield_hadoop;																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('rolespecialfield',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".specialfield_hadoop WHERE (specialfield_hadoop.createdon >= '2022-08-30' AND specialfield_hadoop.createdon < '2022-08-31') OR (specialfield_hadoop.modifiedon >= '2022-08-30' AND specialfield_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".specialfield_hadoop WHERE (specialfield_hadoop.createdon >= '2022-08-30' AND specialfield_hadoop.createdon < '2022-08-31') OR (specialfield_hadoop.modifiedon >= '2022-08-30' AND specialfield_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".specialfield_hadoop WHERE (specialfield_hadoop.createdon >= '2022-08-30' AND specialfield_hadoop.createdon < '2022-08-31') OR (specialfield_hadoop.modifiedon >= '2022-08-30' AND specialfield_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('specialfield',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".specialfieldaudit_hadoop WHERE (specialfieldaudit_hadoop.createdon >= '2022-08-30' AND specialfieldaudit_hadoop.createdon < '2022-08-31') OR (specialfieldaudit_hadoop.modifiedon >= '2022-08-30' AND specialfieldaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".specialfieldaudit_hadoop WHERE (specialfieldaudit_hadoop.createdon >= '2022-08-30' AND specialfieldaudit_hadoop.createdon < '2022-08-31') OR (specialfieldaudit_hadoop.modifiedon >= '2022-08-30' AND specialfieldaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".specialfieldaudit_hadoop WHERE (specialfieldaudit_hadoop.createdon >= '2022-08-30' AND specialfieldaudit_hadoop.createdon < '2022-08-31') OR (specialfieldaudit_hadoop.modifiedon >= '2022-08-30' AND specialfieldaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('specialfieldaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".userenhancekyc_hadoop WHERE (userenhancekyc_hadoop.createdon >= '2022-08-30' AND userenhancekyc_hadoop.createdon < '2022-08-31') OR (userenhancekyc_hadoop.modifiedon >= '2022-08-30' AND userenhancekyc_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userenhancekyc_hadoop WHERE (userenhancekyc_hadoop.createdon >= '2022-08-30' AND userenhancekyc_hadoop.createdon < '2022-08-31') OR (userenhancekyc_hadoop.modifiedon >= '2022-08-30' AND userenhancekyc_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userenhancekyc_hadoop WHERE (userenhancekyc_hadoop.createdon >= '2022-08-30' AND userenhancekyc_hadoop.createdon < '2022-08-31') OR (userenhancekyc_hadoop.modifiedon >= '2022-08-30' AND userenhancekyc_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userenhancekyc',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".userenhancekycaudit_hadoop WHERE (userenhancekycaudit_hadoop.createdon >= '2022-08-30' AND userenhancekycaudit_hadoop.createdon < '2022-08-31') OR (userenhancekycaudit_hadoop.modifiedon >= '2022-08-30' AND userenhancekycaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userenhancekycaudit_hadoop WHERE (userenhancekycaudit_hadoop.createdon >= '2022-08-30' AND userenhancekycaudit_hadoop.createdon < '2022-08-31') OR (userenhancekycaudit_hadoop.modifiedon >= '2022-08-30' AND userenhancekycaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userenhancekycaudit_hadoop WHERE (userenhancekycaudit_hadoop.createdon >= '2022-08-30' AND userenhancekycaudit_hadoop.createdon < '2022-08-31') OR (userenhancekycaudit_hadoop.modifiedon >= '2022-08-30' AND userenhancekycaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userenhancekycaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".userkycdetails_hadoop WHERE (userkycdetails_hadoop.createdon >= '2022-08-30' AND userkycdetails_hadoop.createdon < '2022-08-31') OR (userkycdetails_hadoop.modifiedon >= '2022-08-30' AND userkycdetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userkycdetails_hadoop WHERE (userkycdetails_hadoop.createdon >= '2022-08-30' AND userkycdetails_hadoop.createdon < '2022-08-31') OR (userkycdetails_hadoop.modifiedon >= '2022-08-30' AND userkycdetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userkycdetails_hadoop WHERE (userkycdetails_hadoop.createdon >= '2022-08-30' AND userkycdetails_hadoop.createdon < '2022-08-31') OR (userkycdetails_hadoop.modifiedon >= '2022-08-30' AND userkycdetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userkycdetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".userreferral_hadoop WHERE (userreferral_hadoop.createdon >= '2022-08-30' AND userreferral_hadoop.createdon < '2022-08-31') OR (userreferral_hadoop.modifiedon >= '2022-08-30' AND userreferral_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userreferral_hadoop WHERE (userreferral_hadoop.createdon >= '2022-08-30' AND userreferral_hadoop.createdon < '2022-08-31') OR (userreferral_hadoop.modifiedon >= '2022-08-30' AND userreferral_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userreferral_hadoop WHERE (userreferral_hadoop.createdon >= '2022-08-30' AND userreferral_hadoop.createdon < '2022-08-31') OR (userreferral_hadoop.modifiedon >= '2022-08-30' AND userreferral_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userreferral',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".coaaudit_hadoop WHERE (coaaudit_hadoop.createdon >= '2022-08-30' AND coaaudit_hadoop.createdon < '2022-08-31') OR (coaaudit_hadoop.modifiedon >= '2022-08-30' AND coaaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".coaaudit_hadoop WHERE (coaaudit_hadoop.createdon >= '2022-08-30' AND coaaudit_hadoop.createdon < '2022-08-31') OR (coaaudit_hadoop.modifiedon >= '2022-08-30' AND coaaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".coaaudit_hadoop WHERE (coaaudit_hadoop.createdon >= '2022-08-30' AND coaaudit_hadoop.createdon < '2022-08-31') OR (coaaudit_hadoop.modifiedon >= '2022-08-30' AND coaaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('coaaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".channelaudit_hadoop WHERE (channelaudit_hadoop.createdon >= '2022-08-30' AND channelaudit_hadoop.createdon < '2022-08-31') OR (channelaudit_hadoop.modifiedon >= '2022-08-30' AND channelaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".channelaudit_hadoop WHERE (channelaudit_hadoop.createdon >= '2022-08-30' AND channelaudit_hadoop.createdon < '2022-08-31') OR (channelaudit_hadoop.modifiedon >= '2022-08-30' AND channelaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".channelaudit_hadoop WHERE (channelaudit_hadoop.createdon >= '2022-08-30' AND channelaudit_hadoop.createdon < '2022-08-31') OR (channelaudit_hadoop.modifiedon >= '2022-08-30' AND channelaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('channelaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".chargesaudit_hadoop WHERE (chargesaudit_hadoop.createdon >= '2022-08-30' AND chargesaudit_hadoop.createdon < '2022-08-31') OR (chargesaudit_hadoop.modifiedon >= '2022-08-30' AND chargesaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".chargesaudit_hadoop WHERE (chargesaudit_hadoop.createdon >= '2022-08-30' AND chargesaudit_hadoop.createdon < '2022-08-31') OR (chargesaudit_hadoop.modifiedon >= '2022-08-30' AND chargesaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".chargesaudit_hadoop WHERE (chargesaudit_hadoop.createdon >= '2022-08-30' AND chargesaudit_hadoop.createdon < '2022-08-31') OR (chargesaudit_hadoop.modifiedon >= '2022-08-30' AND chargesaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('chargesaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
----------------------------------------------------------------------------------------------------------------------------------------------------																									
																									
------- Audit Tables ----------------																									
select count(*) INTO totalcount from "HadoopMigration".currencyaudit_hadoop WHERE (currencyaudit_hadoop.createdon >= '2022-08-30' AND currencyaudit_hadoop.createdon < '2022-08-31') OR (currencyaudit_hadoop.modifiedon >= '2022-08-30' AND currencyaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".currencyaudit_hadoop WHERE (currencyaudit_hadoop.createdon >= '2022-08-30' AND currencyaudit_hadoop.createdon < '2022-08-31') OR (currencyaudit_hadoop.modifiedon >= '2022-08-30' AND currencyaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".currencyaudit_hadoop WHERE (currencyaudit_hadoop.createdon >= '2022-08-30' AND currencyaudit_hadoop.createdon < '2022-08-31') OR (currencyaudit_hadoop.modifiedon >= '2022-08-30' AND currencyaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('currencyaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".favouriteaudit_hadoop WHERE (favouriteaudit_hadoop.createdon >= '2022-08-30' AND favouriteaudit_hadoop.createdon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".favouriteaudit_hadoop WHERE (favouriteaudit_hadoop.createdon >= '2022-08-30' AND favouriteaudit_hadoop.createdon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".favouriteaudit_hadoop WHERE (favouriteaudit_hadoop.createdon >= '2022-08-30' AND favouriteaudit_hadoop.createdon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('favouriteaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".offertypeaudit_hadoop WHERE (offertypeaudit_hadoop.createdon >= '2022-08-30' AND offertypeaudit_hadoop.createdon < '2022-08-31') OR (offertypeaudit_hadoop.modifiedon >= '2022-08-30' AND offertypeaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".offertypeaudit_hadoop WHERE (offertypeaudit_hadoop.createdon >= '2022-08-30' AND offertypeaudit_hadoop.createdon < '2022-08-31') OR (offertypeaudit_hadoop.modifiedon >= '2022-08-30' AND offertypeaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".offertypeaudit_hadoop WHERE (offertypeaudit_hadoop.createdon >= '2022-08-30' AND offertypeaudit_hadoop.createdon < '2022-08-31') OR (offertypeaudit_hadoop.modifiedon >= '2022-08-30' AND offertypeaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('offertypeaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".roleaudit_hadoop WHERE (roleaudit_hadoop.createdon >= '2022-08-30' AND roleaudit_hadoop.createdon < '2022-08-31') OR (roleaudit_hadoop.modifiedon >= '2022-08-30' AND roleaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".roleaudit_hadoop WHERE (roleaudit_hadoop.createdon >= '2022-08-30' AND roleaudit_hadoop.createdon < '2022-08-31') OR (roleaudit_hadoop.modifiedon >= '2022-08-30' AND roleaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".roleaudit_hadoop WHERE (roleaudit_hadoop.createdon >= '2022-08-30' AND roleaudit_hadoop.createdon < '2022-08-31') OR (roleaudit_hadoop.modifiedon >= '2022-08-30' AND roleaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('roleaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".rolewalletsettingaudit_hadoop WHERE (rolewalletsettingaudit_hadoop.createdon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.createdon < '2022-08-31') OR (rolewalletsettingaudit_hadoop.modifiedon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".rolewalletsettingaudit_hadoop WHERE (rolewalletsettingaudit_hadoop.createdon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.createdon < '2022-08-31') OR (rolewalletsettingaudit_hadoop.modifiedon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".rolewalletsettingaudit_hadoop WHERE (rolewalletsettingaudit_hadoop.createdon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.createdon < '2022-08-31') OR (rolewalletsettingaudit_hadoop.modifiedon >= '2022-08-30' AND rolewalletsettingaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('rolewalletsettingaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".wallettypeaudit_hadoop WHERE (wallettypeaudit_hadoop.createdon >= '2022-08-30' AND wallettypeaudit_hadoop.createdon < '2022-08-31') OR (wallettypeaudit_hadoop.modifiedon >= '2022-08-30' AND wallettypeaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".wallettypeaudit_hadoop WHERE (wallettypeaudit_hadoop.createdon >= '2022-08-30' AND wallettypeaudit_hadoop.createdon < '2022-08-31') OR (wallettypeaudit_hadoop.modifiedon >= '2022-08-30' AND wallettypeaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".wallettypeaudit_hadoop WHERE (wallettypeaudit_hadoop.createdon >= '2022-08-30' AND wallettypeaudit_hadoop.createdon < '2022-08-31') OR (wallettypeaudit_hadoop.modifiedon >= '2022-08-30' AND wallettypeaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('wallettypeaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
																									
select count(*) INTO totalcount from "HadoopMigration".businessproductaudit_hadoop WHERE (businessproductaudit_hadoop.createdon >= '2022-08-30' AND businessproductaudit_hadoop.createdon < '2022-08-31') OR (businessproductaudit_hadoop.modifiedon >= '2022-08-30' AND businessproductaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".businessproductaudit_hadoop WHERE (businessproductaudit_hadoop.createdon >= '2022-08-30' AND businessproductaudit_hadoop.createdon < '2022-08-31') OR (businessproductaudit_hadoop.modifiedon >= '2022-08-30' AND businessproductaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".businessproductaudit_hadoop WHERE (businessproductaudit_hadoop.createdon >= '2022-08-30' AND businessproductaudit_hadoop.createdon < '2022-08-31') OR (businessproductaudit_hadoop.modifiedon >= '2022-08-30' AND businessproductaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('businessproductaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

--------------------------------------------
																									
select count(*) INTO totalcount from "HadoopMigration".notificationaudit_hadoop WHERE (notificationaudit_hadoop.createdon >= '2022-08-30' AND notificationaudit_hadoop.createdon < '2022-08-31') OR (notificationaudit_hadoop.modifiedon >= '2022-08-30' AND notificationaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".notificationaudit_hadoop WHERE (notificationaudit_hadoop.createdon >= '2022-08-30' AND notificationaudit_hadoop.createdon < '2022-08-31') OR (notificationaudit_hadoop.modifiedon >= '2022-08-30' AND notificationaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".notificationaudit_hadoop WHERE (notificationaudit_hadoop.createdon >= '2022-08-30' AND notificationaudit_hadoop.createdon < '2022-08-31') OR (notificationaudit_hadoop.modifiedon >= '2022-08-30' AND notificationaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('notificationaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

																								
select count(*) INTO totalcount from "HadoopMigration".banks_hadoop WHERE (banks_hadoop.createdon >= '2022-08-30' AND banks_hadoop.createdon < '2022-08-31') OR (banks_hadoop.modifiedon >= '2022-08-30' AND banks_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".banks_hadoop WHERE (banks_hadoop.createdon >= '2022-08-30' AND banks_hadoop.createdon < '2022-08-31') OR (banks_hadoop.modifiedon >= '2022-08-30' AND banks_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".banks_hadoop WHERE (banks_hadoop.createdon >= '2022-08-30' AND banks_hadoop.createdon < '2022-08-31') OR (banks_hadoop.modifiedon >= '2022-08-30' AND banks_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('banks',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

																									
select count(*) INTO totalcount from "HadoopMigration".branchs_hadoop WHERE (branchs_hadoop.createdon >= '2022-08-30' AND branchs_hadoop.createdon < '2022-08-31') OR (branchs_hadoop.modifiedon >= '2022-08-30' AND branchs_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".branchs_hadoop WHERE (branchs_hadoop.createdon >= '2022-08-30' AND branchs_hadoop.createdon < '2022-08-31') OR (branchs_hadoop.modifiedon >= '2022-08-30' AND branchs_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".branchs_hadoop WHERE (branchs_hadoop.createdon >= '2022-08-30' AND branchs_hadoop.createdon < '2022-08-31') OR (branchs_hadoop.modifiedon >= '2022-08-30' AND branchs_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('branchs',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

																									
select count(*) INTO totalcount from "HadoopMigration".useraccounts_hadoop WHERE (useraccounts_hadoop.createdon >= '2022-08-30' AND useraccounts_hadoop.createdon < '2022-08-31') OR (useraccounts_hadoop.modifiedon >= '2022-08-30' AND useraccounts_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".useraccounts_hadoop WHERE (useraccounts_hadoop.createdon >= '2022-08-30' AND useraccounts_hadoop.createdon < '2022-08-31') OR (useraccounts_hadoop.modifiedon >= '2022-08-30' AND useraccounts_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".useraccounts_hadoop WHERE (useraccounts_hadoop.createdon >= '2022-08-30' AND useraccounts_hadoop.createdon < '2022-08-31') OR (useraccounts_hadoop.modifiedon >= '2022-08-30' AND useraccounts_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('useraccounts',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".useraccountsaudit_hadoop WHERE (useraccountsaudit_hadoop.createdon >= '2022-08-30' AND useraccountsaudit_hadoop.createdon < '2022-08-31') OR (useraccountsaudit_hadoop.modifiedon >= '2022-08-30' AND useraccountsaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".useraccountsaudit_hadoop WHERE (useraccountsaudit_hadoop.createdon >= '2022-08-30' AND useraccountsaudit_hadoop.createdon < '2022-08-31') OR (useraccountsaudit_hadoop.modifiedon >= '2022-08-30' AND useraccountsaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".useraccountsaudit_hadoop WHERE (useraccountsaudit_hadoop.createdon >= '2022-08-30' AND useraccountsaudit_hadoop.createdon < '2022-08-31') OR (useraccountsaudit_hadoop.modifiedon >= '2022-08-30' AND useraccountsaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('useraccountsaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );


select count(*) INTO totalcount from "HadoopMigration".wallettobanktxdetails_hadoop WHERE (wallettobanktxdetails_hadoop.createdon >= '2022-08-30' AND wallettobanktxdetails_hadoop.createdon < '2022-08-31') OR (wallettobanktxdetails_hadoop.modifiedon >= '2022-08-30' AND wallettobanktxdetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".wallettobanktxdetails_hadoop WHERE (wallettobanktxdetails_hadoop.createdon >= '2022-08-30' AND wallettobanktxdetails_hadoop.createdon < '2022-08-31') OR (wallettobanktxdetails_hadoop.modifiedon >= '2022-08-30' AND wallettobanktxdetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".wallettobanktxdetails_hadoop WHERE (wallettobanktxdetails_hadoop.createdon >= '2022-08-30' AND wallettobanktxdetails_hadoop.createdon < '2022-08-31') OR (wallettobanktxdetails_hadoop.modifiedon >= '2022-08-30' AND wallettobanktxdetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('wallettobanktxdetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );			

																									
select count(*) INTO totalcount from "HadoopMigration".banktowallettxdetails_hadoop WHERE (banktowallettxdetails_hadoop.createdon >= '2022-08-30' AND banktowallettxdetails_hadoop.createdon < '2022-08-31') OR (banktowallettxdetails_hadoop.modifiedon >= '2022-08-30' AND banktowallettxdetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".banktowallettxdetails_hadoop WHERE (banktowallettxdetails_hadoop.createdon >= '2022-08-30' AND banktowallettxdetails_hadoop.createdon < '2022-08-31') OR (banktowallettxdetails_hadoop.modifiedon >= '2022-08-30' AND banktowallettxdetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".banktowallettxdetails_hadoop WHERE (banktowallettxdetails_hadoop.createdon >= '2022-08-30' AND banktowallettxdetails_hadoop.createdon < '2022-08-31') OR (banktowallettxdetails_hadoop.modifiedon >= '2022-08-30' AND banktowallettxdetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('banktowallettxdetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

									
select count(*) INTO totalcount from "HadoopMigration".absagfrecon_hadoop WHERE (absagfrecon_hadoop.createdon >= '2022-08-30' AND absagfrecon_hadoop.createdon < '2022-08-31') OR (absagfrecon_hadoop.modifiedon >= '2022-08-30' AND absagfrecon_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".absagfrecon_hadoop WHERE (absagfrecon_hadoop.createdon >= '2022-08-30' AND absagfrecon_hadoop.createdon < '2022-08-31') OR (absagfrecon_hadoop.modifiedon >= '2022-08-30' AND absagfrecon_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".absagfrecon_hadoop WHERE (absagfrecon_hadoop.createdon >= '2022-08-30' AND absagfrecon_hadoop.createdon < '2022-08-31') OR (absagfrecon_hadoop.modifiedon >= '2022-08-30' AND absagfrecon_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('absagfrecon',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									

-----------

select count(*) INTO totalcount from "HadoopMigration".refunddetails_hadoop WHERE (refunddetails_hadoop.createdon >= '2022-08-30' AND refunddetails_hadoop.createdon < '2022-08-31') OR (refunddetails_hadoop.modifiedon >= '2022-08-30' AND refunddetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".refunddetails_hadoop WHERE (refunddetails_hadoop.createdon >= '2022-08-30' AND refunddetails_hadoop.createdon < '2022-08-31') OR (refunddetails_hadoop.modifiedon >= '2022-08-30' AND refunddetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".refunddetails_hadoop WHERE (refunddetails_hadoop.createdon >= '2022-08-30' AND refunddetails_hadoop.createdon < '2022-08-31') OR (refunddetails_hadoop.modifiedon >= '2022-08-30' AND refunddetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('refunddetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );


select count(*) INTO totalcount from "HadoopMigration".autosweeptxdetails_hadoop WHERE (autosweeptxdetails_hadoop.createdon >= '2022-08-30' AND autosweeptxdetails_hadoop.createdon < '2022-08-31') OR (autosweeptxdetails_hadoop.modifiedon >= '2022-08-30' AND autosweeptxdetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".autosweeptxdetails_hadoop WHERE (autosweeptxdetails_hadoop.createdon >= '2022-08-30' AND autosweeptxdetails_hadoop.createdon < '2022-08-31') OR (autosweeptxdetails_hadoop.modifiedon >= '2022-08-30' AND autosweeptxdetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".autosweeptxdetails_hadoop WHERE (autosweeptxdetails_hadoop.createdon >= '2022-08-30' AND autosweeptxdetails_hadoop.createdon < '2022-08-31') OR (autosweeptxdetails_hadoop.modifiedon >= '2022-08-30' AND autosweeptxdetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('autosweeptxdetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".userautosweepauditsetting_hadoop WHERE (userautosweepauditsetting_hadoop.createdon >= '2022-08-30' AND userautosweepauditsetting_hadoop.createdon < '2022-08-31') OR (userautosweepauditsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepauditsetting_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userautosweepauditsetting_hadoop WHERE (userautosweepauditsetting_hadoop.createdon >= '2022-08-30' AND userautosweepauditsetting_hadoop.createdon < '2022-08-31') OR (userautosweepauditsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepauditsetting_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userautosweepauditsetting_hadoop WHERE (userautosweepauditsetting_hadoop.createdon >= '2022-08-30' AND userautosweepauditsetting_hadoop.createdon < '2022-08-31') OR (userautosweepauditsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepauditsetting_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userautosweepauditsetting',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".userautosweepsetting_hadoop WHERE (userautosweepsetting_hadoop.createdon >= '2022-08-30' AND userautosweepsetting_hadoop.createdon < '2022-08-31') OR (userautosweepsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepsetting_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".userautosweepsetting_hadoop WHERE (userautosweepsetting_hadoop.createdon >= '2022-08-30' AND userautosweepsetting_hadoop.createdon < '2022-08-31') OR (userautosweepsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepsetting_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".userautosweepsetting_hadoop WHERE (userautosweepsetting_hadoop.createdon >= '2022-08-30' AND userautosweepsetting_hadoop.createdon < '2022-08-31') OR (userautosweepsetting_hadoop.modifiedon >= '2022-08-30' AND userautosweepsetting_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('userautosweepsetting',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".refund_hadoop WHERE (refund_hadoop.createdon >= '2022-08-30' AND refund_hadoop.createdon < '2022-08-31') OR (refund_hadoop.modifiedon >= '2022-08-30' AND refund_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".refund_hadoop WHERE (refund_hadoop.createdon >= '2022-08-30' AND refund_hadoop.createdon < '2022-08-31') OR (refund_hadoop.modifiedon >= '2022-08-30' AND refund_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".refund_hadoop WHERE (refund_hadoop.createdon >= '2022-08-30' AND refund_hadoop.createdon < '2022-08-31') OR (refund_hadoop.modifiedon >= '2022-08-30' AND refund_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('refund',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
--------------- MVP2 Changes here after 
select count(*) INTO totalcount from "HadoopMigration".lienaccounttxdetails_hadoop WHERE (lienaccounttxdetails_hadoop.createdon >= '2022-08-30' AND lienaccounttxdetails_hadoop.createdon < '2022-08-31') OR (lienaccounttxdetails_hadoop.modifiedon >= '2022-08-30' AND lienaccounttxdetails_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".lienaccounttxdetails_hadoop WHERE (lienaccounttxdetails_hadoop.createdon >= '2022-08-30' AND lienaccounttxdetails_hadoop.createdon < '2022-08-31') OR (lienaccounttxdetails_hadoop.modifiedon >= '2022-08-30' AND lienaccounttxdetails_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".lienaccounttxdetails_hadoop WHERE (lienaccounttxdetails_hadoop.createdon >= '2022-08-30' AND lienaccounttxdetails_hadoop.createdon < '2022-08-31') OR (lienaccounttxdetails_hadoop.modifiedon >= '2022-08-30' AND lienaccounttxdetails_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('lienaccounttxdetails',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".bulkuserrecords_hadoop WHERE (bulkuserrecords_hadoop.createdon >= '2022-08-30' AND bulkuserrecords_hadoop.createdon < '2022-08-31') OR (bulkuserrecords_hadoop.modifiedon >= '2022-08-30' AND bulkuserrecords_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".bulkuserrecords_hadoop WHERE (bulkuserrecords_hadoop.createdon >= '2022-08-30' AND bulkuserrecords_hadoop.createdon < '2022-08-31') OR (bulkuserrecords_hadoop.modifiedon >= '2022-08-30' AND bulkuserrecords_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".bulkuserrecords_hadoop WHERE (bulkuserrecords_hadoop.createdon >= '2022-08-30' AND bulkuserrecords_hadoop.createdon < '2022-08-31') OR (bulkuserrecords_hadoop.modifiedon >= '2022-08-30' AND bulkuserrecords_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('bulkuserrecords',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".maintenancecharge_hadoop WHERE (maintenancecharge_hadoop.createdon >= '2022-08-30' AND maintenancecharge_hadoop.createdon < '2022-08-31') OR (maintenancecharge_hadoop.modifiedon >= '2022-08-30' AND maintenancecharge_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".maintenancecharge_hadoop WHERE (maintenancecharge_hadoop.createdon >= '2022-08-30' AND maintenancecharge_hadoop.createdon < '2022-08-31') OR (maintenancecharge_hadoop.modifiedon >= '2022-08-30' AND maintenancecharge_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".maintenancecharge_hadoop WHERE (maintenancecharge_hadoop.createdon >= '2022-08-30' AND maintenancecharge_hadoop.createdon < '2022-08-31') OR (maintenancecharge_hadoop.modifiedon >= '2022-08-30' AND maintenancecharge_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('maintenancecharge',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									


select count(*) INTO totalcount from "HadoopMigration".maintenancechargeaudit_hadoop WHERE (maintenancechargeaudit_hadoop.createdon >= '2022-08-30' AND maintenancechargeaudit_hadoop.createdon < '2022-08-31') OR (maintenancechargeaudit_hadoop.modifiedon >= '2022-08-30' AND maintenancechargeaudit_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".maintenancechargeaudit_hadoop WHERE (maintenancechargeaudit_hadoop.createdon >= '2022-08-30' AND maintenancechargeaudit_hadoop.createdon < '2022-08-31') OR (maintenancechargeaudit_hadoop.modifiedon >= '2022-08-30' AND maintenancechargeaudit_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".maintenancechargeaudit_hadoop WHERE (maintenancechargeaudit_hadoop.createdon >= '2022-08-30' AND maintenancechargeaudit_hadoop.createdon < '2022-08-31') OR (maintenancechargeaudit_hadoop.modifiedon >= '2022-08-30' AND maintenancechargeaudit_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('maintenancechargeaudit',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
		

select count(*) INTO totalcount from "HadoopMigration".notificationcenter_hadoop WHERE (notificationcenter_hadoop.createdon >= '2022-08-30' AND notificationcenter_hadoop.createdon < '2022-08-31') OR (notificationcenter_hadoop.modifiedon >= '2022-08-30' AND notificationcenter_hadoop.modifiedon < '2022-08-31');																									
select min(sequenceid) INTO mincounter from "HadoopMigration".notificationcenter_hadoop WHERE (notificationcenter_hadoop.createdon >= '2022-08-30' AND notificationcenter_hadoop.createdon < '2022-08-31') OR (notificationcenter_hadoop.modifiedon >= '2022-08-30' AND notificationcenter_hadoop.modifiedon < '2022-08-31');																									
select max(sequenceid) INTO maxcounter from "HadoopMigration".notificationcenter_hadoop WHERE (notificationcenter_hadoop.createdon >= '2022-08-30' AND notificationcenter_hadoop.createdon < '2022-08-31') OR (notificationcenter_hadoop.modifiedon >= '2022-08-30' AND notificationcenter_hadoop.modifiedon < '2022-08-31');																									
INSERT INTO "HadoopMigration".hadoop_migration_control_table VALUES ('notificationcenter',totalcount,mincounter,maxcounter, '2022-08-31', '2022-08-30' );																									
				
		
END;																									
$procedure$
;
