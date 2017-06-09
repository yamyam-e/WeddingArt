	DROP TABLE T_WEDDING_FRIENDPAID PURGE;
	DROP SEQUENCE T_WEDDING_FRIENDPAID_SEQ;	

	CREATE TABLE  T_WEDDING_FRIENDPAID(
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		EMAIL VARCHAR2(200) NOT NULL ENABLE,
		NAME VARCHAR2(200) NOT NULL ENABLE,
		PAYMENT NUMBER(15,0) NOT NULL ENABLE
	);
	
	SELECT * FROM T_WEDDING_FRIENDPAID;
  	 
	CREATE SEQUENCE T_WEDDING_FRIENDPAID_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_FRIENDPAID ADD CONSTRAINT T_WEDDING_FRIENDPAID_PK PRIMARY KEY(NUM);