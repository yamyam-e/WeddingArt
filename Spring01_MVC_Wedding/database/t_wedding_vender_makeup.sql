	DROP TABLE T_WEDDING_VENDER_MAKEUP PURGE;
	DROP SEQUENCE T_WEDDING_VENDER_MAKEUP_SEQ;

	CREATE TABLE  T_WEDDING_VENDER_MAKEUP(
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		NAME VARCHAR2(100) NOT NULL ENABLE,
		CONTENT VARCHAR2(500) NOT NULL ENABLE, 
		HOMEURL VARCHAR2(300) NOT NULL ENABLE, 
		PHONE VARCHAR2(50) NOT NULL ENABLE, 
		ADDRESS VARCHAR2(300) NOT NULL ENABLE, 
		LOGO VARCHAR2(100) NOT NULL ENABLE, 
		IMAGE01 VARCHAR2(100) NOT NULL ENABLE, 
		IMAGE02 VARCHAR2(100) NOT NULL ENABLE,
		IMAGE03 VARCHAR2(100) NOT NULL ENABLE,
		IMAGE04 VARCHAR2(100) NOT NULL ENABLE, 
		JUDGE NUMBER(6,0) NOT NULL ENABLE
   	);
   	
   	SELECT * FROM T_WEDDING_VENDER_MAKEUP;
  	 
	CREATE SEQUENCE T_WEDDING_VENDER_MAKEUP_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_VENDER_MAKEUP ADD CONSTRAINT T_WEDDING_VENDER_MAKEUP_PK PRIMARY KEY(NUM);
	
	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'A.La알레스','최고의 서비스를 통해 고객의 아름다운 미소를 이끌어 내는 것을 최우선시 하는 아라알레스 입니다. 맞춤시설을 통한 최고의 서비스와 1:1상담을 통하여 이루어지는 맞춤 서비스는 원하는 이미지, 자신의 맞는 이미지를 찾아주는 아라알레스만의 장점입니다.','http://blog.naver.com/alaalles','02-517-3494','서울 강남구 신사동 646-2번지 영안빌딩 2F A . La Alles','logo01.jpg','image01_01.jpg','image01_02.jpg','image01_03.jpg','image01_04.jpg',7);
	
	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'김활란뮤제네프_도산라벨르점','꼼꼼한 사전 상담으로 내추럴하면서도 우아하고 고귀한 이미지를 살리는 김활한뮤제네프. 최고의 날, 가장 아름다운 신부가 뮤제네프의 손끝에서 태어납니다','http://www.museeneuf.com/museeneuf/','02-516-0331','서울 강남구 언주로 164길 33','logo02.jpg','image02_01.jpg','image02_02.jpg','image02_03.jpg','image02_04.jpg',4);
	
	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'김청경헤어페이스','신부의 아름다운 모습은 행복한 마음에서 시작됩니다. 화려한 언변이 아닌 오직 실력으로 만나뵙겠습니다. 일생에 한번!! 김청경헤어페이스에서 지금 시작하세요.','http://www.hairface.net/contents/hairstyle.php','02-3446-2700','서울 강남구 청담동 2-10 남강빌딩5층~8층','logo03.jpg','image03_01.jpg','image03_02.jpg','image03_03.jpg','image03_04.jpg',5);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'보이드by박철','VOID는 건축 용어로 빈공간을 의미합니다. 비어있던 공간을 박철 원장의 감각과 노하우로 채웁니다.','http://www.voidbyparkchul.com/','02-3443-0999','서울 강남구 신사동 587-14번지 동현빌딩 2층','logo04.jpg','image04_01.jpg','image04_02.jpg','image04_03.jpg','image04_04.jpg',8);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'제니하우스_청담힐','규격화된 웨딩 헤어메이크업이 아닌, 신부의 아름다운 개성을 가장 자연스럽게 표현합니다. 가장 아름답게 빛나는 단 하루를 위해 최고의 웨딩 헤어, 메이크업을 선사합니다. 각각 분리된 헤어룸, 메이크업룸을 겸비한 최고급 인테리어로 최상의 편안함을 선사합니다.','http://www.jennyhouse.co.kr/ ','02-541-7788','서울 강남구 청담동 16-1번지','logo05.jpg','image05_01.jpg','image05_02.jpg','image05_03.jpg','image05_04.jpg',9);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'바이엘린','내추럴하고 여성스러운 스타일부터 로맨틱함과 시크함이 조화를 이루는 세미스모키까지 구현 내 생에 최고의 아름다움, 고객님의 아름다움을 위한 다양한 서비스와 최고의 날, 신부님을 위한 화사하고 로맨틱한 분위기로 최상읠 만족을 드릴 것입니다.','http://www.makeup-nozze.com/','02-545-2287','서울 강남구 청담동 83-7번지','logo06.jpg','image06_01.jpg','image06_02.jpg','image06_03.jpg','image06_04.jpg',5);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'순수_도산점','친환경 뷰티살롱 순수 도심속 작은공워느 순수 공간 가득히 자연의 향기가 묻어납니다. 순수에서만 느낄수 있는 특별하고 가치있는 서비스를 지금 체험해 보세요. 당신이 느낄 수 있는 최고의 만족감을 드리겠습니다.','http://www.soonsoobeauty.com/','02-515-5575','서울 강남구 신사동 630-24','logo07.jpg','image07_01.jpg','image07_02.jpg','image07_03.jpg','image07_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'끌림','스타일리시한 트렌드를 창조하는 끌림은 철저한 고객상담과 빈틈없는 서비스를 구현합니다. 고객님들의 시각에서 더운 차별화된 서비스를 제공하기 위해 항상 노력하며 각 파트별로 전문성을 강화, 고객 만족을 최대화하기 위해 연구와 투자를 아끼지 않습니다.','http://the0809.co.kr/xe/','02-3442-2979','서울 강남구 신사동 656-3번지','logo08.jpg','image08_01.jpg','image08_01.jpg','image08_01.jpg','image08_01.jpg',7);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'끌로에_청담본점','메이크업계의 장인 김선진 대표가 1995년 오픈한 국내 최초의 메이크업 전문 스튜디오','http://www.jinchloe.com/','516-4474','서울 강남구 논현동 104-1 더쇼빌딩 1층','logo09.jpg','image09_01.jpg','image09_02.jpg','image09_03.jpg','image09_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'에이바이봄','내추럴하고 깨끗한 느낌이 강점인 에이바이봄 최고의 아티스트들과 함께 맑고 투명한 고급스러움과 트렌드에 맞는 감각적인 1:1 맞춤 웨딩 헤어&메이크업으로 단 한 번의 최고의 순간을 만들어 드리겠습니다.','http://abybom.com/kor/','02-516-8765','서울 강남구 청담동 91-3번지 2~3층','logo10.jpg','image10_01.jpg','image10_02.jpg','image10_03.jpg','image10_04.jpg',7);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'제니하우스_프리모','규격화된 웨딩 헤어메이크업이 아닌, 신부의 아름다운 개성을 가장 자연스럽게 표현합니다. 가장 아름답게 빛나는 단 하루를 위해 최고의 웨딩 헤어, 메이크업을 선사합니다. 각각 분리된 헤어룸, 메이크업룸을 겸비한 최고급 인테리어로 최상의 편안함을 선사합니다.','http://www.jennyhouse.co.kr/','02-3448-7114','서울 강남구 청담동 114-8','logo11.jpg','image11_01.jpg','image11_02.jpg','image11_03.jpg','image11_04.jpg',9);

	INSERT INTO T_WEDDING_VENDER_MAKEUP 
	VALUES(T_WEDDING_VENDER_MAKEUP_SEQ.NEXTVAL,'보떼101','20여명의 헤어 메이크업 전문가를 보유한 보떼101 저예의 웨딩 팀이 일생 최고의 순간을 영원히 간직 할 수 있도록 감각적인 스타일을 제공합니다. 자신에게 맞는 아름다움, 세월이 흘러도 변치않는고급스러운 트렌드 삶의 질까지 끌어 올릴 수있는 세련된 미를 경험하실 수 있습니다.','http://beaute101.co.kr/','02-545-4706','서울 강남구 언주로 164길 23','logo12.jpg','image12_01.jpg','image12_02.jpg','image12_03.jpg','image12_04.jpg',8);

