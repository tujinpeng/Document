select 
    * 
from 
    tnt_route_trigger t; 
    
select 
    count(*) 
from 
    tnt_route_trigger t;
     
SELECT 
    count(*)
FROM 
    TNT_ROUTE_TRIGGER 
WHERE 
    STATUS in ('SUCCESS');

SELECT 
    count(*)
FROM 
    TNT_ROUTE_TRIGGER 
WHERE 
    STATUS in ('SUCCESS','FAIL');  


explain
SELECT MAX(TRI_ID) FROM TNT_ROUTE_TRIGGER WHERE STATUS in ('SUCCESS','FAIL');
  	 
explain    
INSERT INTO TNT_ROUTE_TRIGGER_HIS (
        TRI_ID, USER_NAME, TABLE_NAME, PK_VALUE, 
        STATUS, CREATE_TIME, TRIGGER_TYPE, 
        DATA_SOURCE_ID, FIELD_ONE, FIELD_TWO, 
        FIELD_THREE, PROCESS_TIME
    ) 
SELECT 
    TRI_ID, 
    USER_NAME, 
    TABLE_NAME, 
    PK_VALUE, 
    STATUS, 
    CREATE_TIME, 
    TRIGGER_TYPE, 
    DATA_SOURCE_ID, 
    FIELD_ONE, 
    FIELD_TWO, 
    FIELD_THREE, 
    PROCESS_TIME 
FROM 
    TNT_ROUTE_TRIGGER t 
WHERE 
    TRI_ID <= 206577 AND STATUS in ('SUCCESS','FAIL') 
    and not EXISTS ( SELECT 1 FROM TNT_ROUTE_TRIGGER_HIS sh WHERE sh.TRI_ID = t.TRI_ID )
    limit 1000;

explain   
DELETE FROM TNT_ROUTE_TRIGGER WHERE TRI_ID<= 206577
AND STATUS in ('SUCCESS','FAIL') limit 1000;

alter table lmm_tnt.tnt_route_trigger add index idx_status(`status`);


show index from tnt_route_trigger;