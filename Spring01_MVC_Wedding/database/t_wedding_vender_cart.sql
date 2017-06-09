	DROP TABLE T_WEDDING_VENDER_CART PURGE;
	DROP SEQUENCE T_WEDDING_VENDER_CART_SEQ;	

	CREATE TABLE  T_WEDDING_VENDER_CART(
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		NAME VARCHAR2(100) NOT NULL ENABLE, 
		EMAIL VARCHAR2(100) NOT NULL ENABLE, 
		JUDGE NUMBER(6,0), 
		ADDRESS VARCHAR2(300) NOT NULL ENABLE, 
		PHONE VARCHAR2(50) NOT NULL ENABLE, 
		HOMEURL VARCHAR2(300), 
		LOGO VARCHAR2(100) NOT NULL ENABLE, 
		TYPE VARCHAR2(100) NOT NULL ENABLE, 
		PNAME VARCHAR2(100)
	);
	
	SELECT * FROM T_WEDDING_VENDER_CART;
  	 
	CREATE SEQUENCE T_WEDDING_VENDER_CART_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_VENDER_CART ADD CONSTRAINT T_WEDDING_VENDER_CART_PK PRIMARY KEY(NUM);
	
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'루이엔젤','wastty@naver.com',5,'서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','http://luyangel.com/index.html','weddingdress01.jpg','dress','웨딩 D-42');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'라망스튜디오','wastty@naver.com',5,'서울시 강남구 청담동16-19번지B1F','02-3444-8775','http://www.visualcompanylnc.com/fade.asp','logo02.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'라망스튜디오','wastty@naver.com',5,'서울시 강남구 청담동16-19번지B1F','02-3444-8775','http://www.visualcompanylnc.com/fade.asp','logo02.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'타라스튜디오','wastty@naver.com',9,'서울 강남구 삼성동 33-3','02-546-4594','http://www.tahrastudio.co.kr','logo04.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'제니하우스_청담힐','wastty@naver.com',9,'서울 강남구 청담동 16-1번지','02-541-7788','http://www.jennyhouse.co.kr/','logo05.jpg','makeup','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'숲속드레스','wastty@naver.com',5,'서울 마포구 창전동 6-132 5층','070-7553-2842','http://supsokdress.com/index.html','weddingdress07.jpg','dress','플라워 코르셋 셀프웨딩드레스');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'거울과창','wastty@naver.com',8,'서울 강남구 청담동 91-8 4F','02-514-9474','http://www.mirrorandwindow.com/','logo01.jpg','studio','');
	
	
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'루이엔젤','seongkwon7000@gmail.com',5,'서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','http://luyangel.com/index.html','weddingdress01.jpg','dress','웨딩 D-42');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'라망스튜디오','seongkwon7000@gmail.com',5,'서울시 강남구 청담동16-19번지B1F','02-3444-8775','http://www.visualcompanylnc.com/fade.asp','logo02.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'라망스튜디오','seongkwon7000@gmail.com',5,'서울시 강남구 청담동16-19번지B1F','02-3444-8775','http://www.visualcompanylnc.com/fade.asp','logo02.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'타라스튜디오','seongkwon7000@gmail.com',9,'서울 강남구 삼성동 33-3','02-546-4594','http://www.tahrastudio.co.kr','logo04.jpg','studio','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'제니하우스_청담힐','seongkwon7000@gmail.com',9,'서울 강남구 청담동 16-1번지','02-541-7788','http://www.jennyhouse.co.kr/','logo05.jpg','makeup','');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'숲속드레스','seongkwon7000@gmail.com',5,'서울 마포구 창전동 6-132 5층','070-7553-2842','http://supsokdress.com/index.html','weddingdress07.jpg','dress','플라워 코르셋 셀프웨딩드레스');
	INSERT INTO T_WEDDING_VENDER_CART VALUES(T_WEDDING_VENDER_CART_SEQ.NEXTVAL,'거울과창','seongkwon7000@gmail.com',8,'서울 강남구 청담동 91-8 4F','02-514-9474','http://www.mirrorandwindow.com/','logo01.jpg','studio','');
	
	
