select * from tnt_merchant.tnt_user;


select max(tnt_cruise_package_id) from tnt_prod.tnt_cruise_package t where 1=2 limit 10;


select count(*) from tnt_sell_package sp WHERE (sp.VALID = 'N' OR sp.IS_COMPLETED = 'N' OR sp.DELETE_FLAG = 'Y') and sp.PACKAGE_TYPE = 'LVMAMA';

select * from tnt_prod.tnt_route_product t where t.sub_type is not null limit 100;
