	DROP TABLE T_WEDDING_VENDER_FLORISTS PURGE;
	DROP SEQUENCE T_WEDDING_VENDER_FLORISTS_SEQ;
	
	CREATE TABLE  T_WEDDING_VENDER_FLORISTS(
		NUM NUMBER(6,0) NOT NULL ENABLE,
		NAME VARCHAR2(200) NOT NULL ENABLE,
		PRICE NUMBER(7,0) NOT NULL ENABLE, 
		BUYURL VARCHAR2(500) NOT NULL ENABLE,
		HOMEURL VARCHAR2(300) NOT NULL ENABLE, 
		ORGNAME VARCHAR2(200) NOT NULL ENABLE,
		SYSNAME VARCHAR2(200) NOT NULL ENABLE,
		TYPE VARCHAR2(100) NOT NULL ENABLE, 
		ADDRESS VARCHAR2(200),
		PHONE VARCHAR2(50),
		BNAME VARCHAR2(100) 
	);
	
	SELECT * FROM T_WEDDING_VENDER_FLORISTS;
  	 
	CREATE SEQUENCE T_WEDDING_VENDER_FLORISTS_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_VENDER_FLORISTS ADD CONSTRAINT T_WEDDING_VENDER_FLORISTS_PK PRIMARY KEY(NUM);
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'줄리엣옥시아미부케',120000,'http://www.ateliera.net/product/detail.html?product_no=216&cate_no=48&display_group=1','http://www.ateliera.net/index.html','bouquet19.jpg','bouquet19.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'파블로믹스부케',140000,'http://www.ateliera.net/product/detail.html?product_no=205&cate_no=48&display_group=1','http://www.ateliera.net/index.html','bouquet21.jpg','bouquet21.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Head dress(화이트핑크)',100000,'http://www.kinaflower.com/product/detail.html?product_no=438&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc10.jpg','acc10.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'퓨어핑크',120000,'http://www.kinaflower.com/product/detail.html?product_no=557&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet01.jpg','bouquet01.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-60',100000,'http://www.lecielflower.com/product/detail.html?product_no=209&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet08.jpg','bouquet08.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-59',100000,'http://www.lecielflower.com/product/detail.html?product_no=208&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet11.jpg','bouquet11.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-63',120000,'http://www.lecielflower.com/product/detail.html?product_no=212&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet12.jpg','bouquet12.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-62',120000,'http://www.lecielflower.com/product/detail.html?product_no=211&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet13.jpg','bouquet13.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-52',100000,'http://www.lecielflower.com/product/detail.html?product_no=140&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet14.jpg','bouquet14.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'블러싱브라이드 핑크믹스부케',18900,'http://www.ateliera.net/product/detail.html?product_no=222&cate_no=48&display_group=2','http://www.ateliera.net/index.html','bouquet15.jpg','bouquet15.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'피치카라 줄리엣믹스부케',220000,'http://www.ateliera.net/product/detail.html?product_no=212&cate_no=48&display_group=1','http://www.ateliera.net/index.html','bouquet20.jpg','bouquet20.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Vanda Corsage',10000,'http://www.kinaflower.com/product/detail.html?product_no=118&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc01.jpg','acc01.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'HairPin(화이트블루)',40000,'http://www.kinaflower.com/product/detail.html?product_no=436&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc02.jpg','acc02.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'HairPin(화이트핑크)',40000,'http://www.kinaflower.com/product/detail.html?product_no=437&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc03.jpg','acc03.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'HairPin(화이트)',40000,'http://www.kinaflower.com/product/detail.html?product_no=423&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc04.jpg','acc04.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Flower Braceiet(연핑크)',50000,'http://www.kinaflower.com/product/detail.html?product_no=433&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc05.jpg','acc05.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Head dress(그린퍼플)',100000,'http://www.kinaflower.com/product/detail.html?product_no=397&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc06.jpg','acc06.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Head dress(연핑크)',100000,'http://www.kinaflower.com/product/detail.html?product_no=115&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc07.jpg','acc07.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Head dress(핑크)',100000,'http://www.kinaflower.com/product/detail.html?product_no=427&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc08.jpg','acc08.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'Head dress(화이트블루)','100000','http://www.kinaflower.com/product/detail.html?product_no=427&cate_no=62&display_group=1','http://www.kinaflower.com/index.html','acc09.jpg','acc09.jpg','decoration','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'화이트 스위트피',350000,'http://www.kinaflower.com/product/detail.html?product_no=473&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet02.jpg','bouquet02.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'퍼플반다믹싱',300000,'http://www.kinaflower.com/product/detail.html?product_no=585&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet03.jpg','bouquet03.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'로즈리시안',220000,'http://www.kinaflower.com/product/detail.html?product_no=575&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet04.jpg','bouquet04.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'블루바이올렛',180000,'http://www.kinaflower.com/product/detail.html?product_no=567&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet05.jpg','bouquet05.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'부바르디아',350000,'http://www.kinaflower.com/product/detail.html?product_no=591&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet06.jpg','bouquet06.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'로즈가든',350000,'http://www.kinaflower.com/product/detail.html?product_no=590&cate_no=60&display_group=1','http://www.kinaflower.com/index.html','bouquet07.jpg','bouquet07.jpg','bouquet','서울 강남구 논현동 85-15 1F','02-2248-4580','키나플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'M-73',100000,'http://www.lecielflower.com/product/detail.html?product_no=220&cate_no=32&display_group=1','http://www.lecielflower.com/index.html','bouquet09.jpg','bouquet09.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'C-67',140000,'http://www.lecielflower.com/product/detail.html?product_no=148&cate_no=33&display_group=1','http://www.lecielflower.com/index.html','bouquet10.jpg','bouquet10.jpg','bouquet','서울 송파구 충민로 52 BF 1065호','02-573-4513','르씨엘 플라워');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'화이트수국 스카이블루옥시부케',140000,'http://www.ateliera.net/product/detail.html?product_no=220&cate_no=48&display_group=2','http://www.ateliera.net/index.html','bouquet16.jpg','bouquet16.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'화이트그린 믹스부케',150000,'http://www.ateliera.net/product/detail.html?product_no=218&cate_no=48&display_group=2','http://www.ateliera.net/index.html','bouquet17.jpg','bouquet17.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');
	
	INSERT INTO T_WEDDING_VENDER_FLORISTS 
	VALUES(T_WEDDING_VENDER_FLORISTS_SEQ.NEXTVAL,'마릴린먼로 아미부케',165000,'http://www.ateliera.net/product/detail.html?product_no=219&cate_no=48&display_group=2','http://www.ateliera.net/index.html','bouquet18.jpg','bouquet18.jpg','bouquet','서울 중량구 상봉중앙로 1다길 21','070-4696-1771','아뜰리에 에이');

