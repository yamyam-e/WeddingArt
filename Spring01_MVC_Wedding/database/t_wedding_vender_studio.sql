	DROP TABLE T_WEDDING_VENDER_STUDIO PURGE;
	DROP SEQUENCE T_WEDDING_VENDER_STUDIO_SEQ;
	
	CREATE TABLE  T_WEDDING_VENDER_STUDIO(
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		NAME VARCHAR2(100) NOT NULL ENABLE, 
		CONTENT VARCHAR2(600) NOT NULL ENABLE, 
		HOMEURL VARCHAR2(500) NOT NULL ENABLE, 
		PHONE VARCHAR2(50) NOT NULL ENABLE, 
		ADDRESS VARCHAR2(500) NOT NULL ENABLE, 
		LOGO VARCHAR2(200) NOT NULL ENABLE, 
		IMAGE01 VARCHAR2(200), 
		IMAGE02 VARCHAR2(200), 
		IMAGE03 VARCHAR2(200), 
		IMAGE04 VARCHAR2(200), 
		JUDGE NUMBER(6,1) NOT NULL ENABLE
   	);
   	
   	SELECT * FROM T_WEDDING_VENDER_STUDIO;
  	 
	CREATE SEQUENCE T_WEDDING_VENDER_STUDIO_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_VENDER_STUDIO ADD CONSTRAINT T_WEDDING_VENDER_STUDIO_PK PRIMARY KEY(NUM);
	
	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'29아트컴퍼니','29아트컴퍼니는 단순히 제품이나 서비스의 품질에만 집중하는 것에서 탈피하여 두분의 소중한 스토리까지 담아낼 수 있도록 노력할 것입니다.','http://www.art29.co.kr','02-540-0229','서울시 강남구 신사동 648-11번지 B1','logo03.jpg','image03_01.jpg','image03_02.jpg','image03_03.jpg','image03_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'타라스튜디오','타라스튜디오 감각적인 연출과 냉철한 판단이 은은한 감동으로 이어집니다. 앵글의 변화와 조명을 이용한 깔끔하고 이지적인, 모던하면서 우아함이 느껴지는 신부연출과 고풍스러운 세트촬영은 타라만의 색깔과 어우러져 최고의 앨범을 드립니다','http://www.tahrastudio.co.kr','02-546-4594','서울 강남구 삼성동 33-3','logo04.jpg','image04_01.jpg','image04_02.jpg','image04_03.jpg','image04_04.jpg',9);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'S 스튜디오','다년간 웨딩과 패션의 노하우를 바탕으로 새로운 웨딩의 트렌드를 이끌어 가는 S스튜디오입니다. 정형화된 웨딩앨범에서 벗어난 화보집 같은 앨범으로 한편의 뮤직비디오 같은 앨범...','http://www.studioscompany.com','02-545-7860','서울시 강남구 신사동 648번지 석진빌딩 B1 ','logo07.jpg','image07_01.jpg','image07_02.jpg','image07_03.jpg','image07_04.jpg',5);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'동감스튜디오','하루를 찍어 평생을 간직하게 되는 웨딩앨범은 늘 긴장의 연속입니다. 실력적인 사진보다 마음이 전해지는 좋은 사진을 드리기 위해 저희 모두는 지금까지도 현재도 앞으로도 두 분을 위한 시간과 노력을 아끼지 않겠습니다.','http://www.donggam.company','02-512-2008','서울시 강남구 신사동 664-22번지','logo08.jpg','image08_01.jpg','image08_02.jpg','image08_03.jpg','image08_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'올제스튜디오','16개의 이국적인 테마별 세트장에서, 자연스럽고 품격있는 사진을 연출하실 수 있습니다. 스튜디오 40년에 새로운 미래(Olze)를 더하기 위해, 아름다운 기억을 이 세상 가장 행복한 모습으로 창조하기 위해 노력하겠습니다.','http://www.olzestudio.com/about/01','02-3453-2003','서울시 강남구 역삼동 721-27','logo09.jpg','image09_01.jpg','image09_02.jpg','image09_03.jpg','image09_04.jpg',6);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'THE THIRD MIND','고객님의 개성에 맞춘 컨셉츄얼한 사진으로 센슈얼한 패션화보와 영화 속 한 장면처럼 로맨틱한 사진을 선사해 드립니다.','http://www.the3studio.com/','82-2-516-5946','<작업실> 서울시 강남구 신사동 665-8번지 제인빌딩3층','logo10.jpg','image10_01.jpg','image10_02.jpg','image10_03.jpg','image10_04.jpg',4);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'원규&노블레스','촬영자와 신랑, 신부님이 즐겁게 웃고 즐기면서 촬영할 수 있는 곳, 그리고 두분만의 추억과 행복이 묻어나오는 사진을 위해 항상 노력하는 노블레스가 되겠습니다','http://www.wonkyu.co.kr/','02-518-6232','서울 강남구 청담동 3-7 2층','logo11.jpg','image11_01.jpg','image11_02.jpg','image11_03.jpg','image11_04.jpg',5);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'거울과창','저희는 거울입니다.고객들을 저희가 바라보는 창입니다. 거울에 비추어 더 열심히 바라보고, 탐구하여 좀더 아름다운 시선으로 창을 바라보는 햇살 가득한 풍경 속의 사진을 담아 드리겠습니다.','http://www.mirrorandwindow.com/','02-514-9474','서울 강남구 청담동 91-8 4F','logo01.jpg','image01_01.jpg','image01_02.jpg','image01_03.jpg','image01_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'라망스튜디오','인물과 배경의 완벽한 조화와 깊이있는 색감으로 가장 자연스럽고 행복한 모습을 담아드립니다. 모든 신부들의 꿈인 프린센스 풍을 현대의 감각으로 모던하게 재해석한 후 라망 특유의 상상력과 크리에이티브를 더해 세련되게 표현해 냅니다','http://www.visualcompanylnc.com/fade.asp','02-3444-8775','서울시 강남구 청담동16-19번지B1F','logo02.jpg','image02_01.jpg','image02_02.jpg','image02_03.jpg','image02_04.jpg',5);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'포토아뜰리에더함','부드럽고 따뜻한 느낌의 감성적인 사진으로 호평받는 포토아뜰리에 더함은 로맨틱함과 도회적인 스타일리쉬함을 절묘하게 결합시켜 마치 클래식 영화의 여주인공을 보는듯한 화보적 느낌으로 인기를 얻고 있습니다.','http://www.visualcompanylnc.com/fade.asp','02-3444-8775','서울시 강남구 삼성동 37-8번지 B1,2F','logo05.jpg','image05_01.jpg','image05_02.jpg','image05_03.jpg','image05_04.jpg',4);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'그리다스튜디오','미니멀 모던과 젠스타일의 믹스&매치로 절제된 공간의 깊이와 여백의 미를 추구합니다. 새로운 시도와 도전으로 또 다른 트랜드를 이끌 것이며 그 곳에 더그리다가 있겠습니다.','http://www.greeda.co.kr','02-547-9191','서울시 강남구 논현동 251번지 7F','logo06.jpg','image06_01.jpg','image06_02.jpg','image06_03.jpg','image06_04.jpg',8);

	INSERT INTO T_WEDDING_VENDER_STUDIO 
	VALUES(T_WEDDING_VENDER_STUDIO_SEQ.NEXTVAL,'구호스튜디오','즐겁다, 유쾌하다 구호에서의 리허설 촬영은 동적이며 다양한 컨셉촬영이 가능합니다. 신랑, 신부의 가장 행복한 순간을 사진 속에 담아 드립니다.','http://www.kuhostudio.co.kr','02-518-5282','서울 강남구 청담동 120-13 B1','logo12.jpg','image12_01.jpg','image12_02.jpg','image12_03.jpg','image12_04.jpg',7);

