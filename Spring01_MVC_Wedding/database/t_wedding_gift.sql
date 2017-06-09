	DROP TABLE T_WEDDING_GIFT PURGE;
	DROP SEQUENCE T_WEDDING_GIFT_SEQ;

	CREATE TABLE  T_WEDDING_GIFT (
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		NAME VARCHAR2(100) NOT NULL ENABLE, 
		PRICE NUMBER(6,0) NOT NULL ENABLE, 
		CONTENT VARCHAR2(500) NOT NULL ENABLE, 
		SYSNAME VARCHAR2(200) NOT NULL ENABLE, 
		ORGNAME VARCHAR2(200) NOT NULL ENABLE, 
		QUANTITY NUMBER(6,0) NOT NULL ENABLE, 
		TYPE VARCHAR2(100)
  	 );
  	 
  	 SELECT * FROM T_WEDDING_GIFT;
  	 
  	 CREATE SEQUENCE T_WEDDING_GIFT_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;

  	 ALTER TABLE T_WEDDING_GIFT ADD CONSTRAINT T_WEDDING_GIFT_PK PRIMARY KEY(NUM);
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'LADY 커피',9500,'새콤한맛 커피','cf03.jpg','cf03.jpg',99,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'Yellow 커피',8000,'달콤한 커피','cf04.jpg','cf04.jpg',70,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'Stumptown 커피',6000,'로스팅이 잘 된 커피','cf05.jpg','cf05.jpg',101,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'가나 초콜렛',1000,'기본 초콜렛','cho01.jpg','cho01.jpg',88,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'로이스 초콜렛',15000,'아주 맛있는 초콜렛','cho02.jpg','cho02.jpg',55,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'아몬드 초콜렛',6000,'안에 아몬드가 들어있다','cho03.jpg','cho03.jpg',66,'Food');
  	
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'고급 초콜렛',8500,'모양과 맛이 일품인 초콜렛','cho04.jpg','cho04.jpg',60,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'페레로로쉐 초콜렛',9500,'다들 아시죠? 페레로로쉐','cho05.jpg','cho05.jpg',70,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'에티오피아 커피',10000,'고소한 향이 나는 커피','cf01.jpg','cf01.jpg',100,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'GAS 커피',9000,'씁쓸한 맛이 일품인 커피','cf02.jpg','cf02.jpg',150,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'다양한 쿠키',5000,'여러가지 쿠키가들어있는!!','coo01.jpg','coo01.jpg',40,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'짱구 쿠키',3000,'귀여운 짱구모양 쿠키','coo03.jpg','coo03.jpg',80,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'귀여운 쿠키',2000,'귀여운 모양의 맛있는 쿠키','coo04.jpg','coo04.jpg',50,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'잼 쿠키',4000,'잼이 들어있어요!','coo05.jpg','coo05.jpg',55,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'떡',4500,'쫄깃한 떡이에요!','etc01.jpg','etc01.jpg',80,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'마들렌',3500,'맛있는 마들렌~','etc01.jpg','etc01.jpg',60,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'마카롱',7000,'여러가지 맛이 들어있어요','ma01.jpg','ma01.jpg',99,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 마카롱',1000,'한가지맛 마카롱','ma02.jpg','ma02.jpg',79,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'호빵맨 마카롱',5500,'귀여운 모양의 호빵맨 마카롱','ma03.jpg','ma03.jpg',80,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'매우 귀여운 컵',2000,'컵이 귀여워요~','cup04.jpg','cup04.jpg',20,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 컵받침(코르크)',1500,'기본 코르크소재로 되어있는 컵받침','cupb01.jpg','cupb01.jpg',90,'Kitchen');
  	
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'동물모양 비누',2000,'토끼&물고기 모양 비누','soap03.bmp','soap03.bmp',71,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'다양한색의 비누',2500,'다양한 색의 비누에요','soap04.jpg','soap04.jpg',33,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'알로에 비누',40,'보습에 좋은 알로에 비누','soap05.jpg','soap05.jpg',55,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'황토 비누',2500,'피부에 좋은 황토 비누','soap06.jpg','soap06.jpg',67,'Kitchen');
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'장미 비누',2500,'장미가 들어있어요','soap07.jpg','soap07.jpg',53,'Kitchen');
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'귀여운 포크&스푼 Set',2000,'Wicker포크와 스푼 세트','fs01.jpg','fs01.jpg',90,'Kitchen'); 
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 포크&스푼&나이프 Set',3000,'기본 세트','fs02.jpg','fs02.jpg',70,'Kitchen');
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 포크&스푼&나이프 Set2',3500,'기본 포크&스푼&나이프 Set2','fs03.jpg','fs03.jpg',78,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 포크&나이프&스푼 Set3',3700,'기본형 세트','fs04.jpg','fs04.jpg',60,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'나무 포크&스푼',1800,'나무 포크와 스푼 세트','fs05.jpg','fs05.jpg',50,'Kitchen');
  	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'나무 포크&스푼&나이프 Set',2300,'나무로 만든 포크&스푼&나이프 세트','fs06.jpg','fs06.jpg',81,'Kitchen');
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'금 도금 세트',5000,'금으로 도금된 스푼&나이프&포크 세트','fs07.jpg','fs07.jpg',50,'Kitchen');
 	 
  	 INSERT INTO T_WEDDING_GIFT
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'다양한 쿠키2',6500,'다양한 쿠키가 들어있는!','coo02.jpg','coo02.jpg',50,'Food'); 
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'4가지맛 마카롱',3500,'4가지맛의 마카롱','ma04.jpg','ma04.jpg',45,'Food');
 	 
  	 INSERT INTO T_WEDDING_GIFT 
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'많은 마카롱',5000,'마카롱이 많이 들어있어요!','ma05.jpg','ma05.jpg',46,'Food');
  	 
  	 INSERT INTO T_WEDDING_GIFT
  	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'귀여운 컵',2000,'귀여운 모양의 컵이에요','cup01.jpg','cup02.jpg',70,'Kitchen');
  	
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'커플 컵',4000,'컵이 두개','cup02.jpg','cup02.jpg',50,'Kitchen');
  	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 컵',1500,'기본 모양의 컵이에요','cup03.jpg','cup03.jpg',80,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'고급 컴받침',4000,'고급 컵받침이에요','cupb02.jpg','cupb02.jpg',66,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'이쁜 컵받침',5000,'어디에나 잘어울리는 컵받침','cupb03.jpg','cupb03.jpg',50,'Kitchen'); 
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'플라스틱 컵받침',3000,'플라스틱 컵받침 안녹아요','cupb04.jpg','cupb04.jpg',65,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'캐릭터 컵받침',3000,'귀여운 캐릭터 컵받침','cupb06.jpg','cupb06.jpg',66,'Kitchen');
  	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 비누',1500,'기본 비누에요','soap01.jpg','soap01.jpg',50,'Kitchen');
  	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'무지개 비누',2000,'soap01.jpg','soap02.jpg','soap02.jpg',77,'Kitchen');
  	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 수건',5000,'기본형 수건','su01.jpg','su01.jpg',99,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세가지 수건',3500,'세가지 수건','su02.jpg','su02.jpg',77,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'4가지 수건',4500,'4가지 수건','su03.jpg','su03.jpg',88,'Kitchen'); 
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'7가지 수건',6000,'7가지 수건','su05.jpg','su05.jpg',77,'Kitchen');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본형 소이캔들',2000,'기본형 소이캔들 향이 좋아요','can01.jpg','can01.jpg',60,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'아로마향 양초',2500,'피로가 풀리는 아로마향 양초','can02.jpg','can02.jpg',50,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'향기나는 소이캔들',2200,'향기나요','can03.jpg','can03.jpg',40,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'덮개있는 캔들',2700,'덮개가있어 안전해요','can04.jpg','can04.jpg',83,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세가지 양초',4000,'세가지 양초','can05.jpg','can05.jpg',55,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'바닐라향 디퓨저',2000,'바닐라향이 솔솔~ 디퓨저','dif01.jpg','dif01.jpg',77,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'장미향 디퓨저',2500,'장미향이 솔솔~ 디퓨저','dif02.jpg','dif02.jpg',65,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'만다린향 디퓨저',2700,'만다린 향이 솔솔~ 디퓨저','dif03.jpg','dif03.jpg',56,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'향기 좋은 디퓨저',2400,'향이 좋은 디퓨저','dif04.jpg','dif04.jpg',39,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'딸기향 디퓨저',3100,'딸기향이 솔솔~ 디퓨저','dif05.jpg','dif05.jpg',86,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세가지 디퓨저',5000,'세가지 디퓨저','dif06.jpg','dif06.jpg',76,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본형 오프너',1500,'기본형 오프너','opn01.jpg','opn01.jpg',88,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'빈티지 오프너',1800,'빈티지느낌이 가득! 오프너','opn02.jpg','opn02.jpg',30,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'코카콜라 오프너',2200,'코카콜라 오프너','opn03.jpg','opn03.jpg',46,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'와인 오프너',2000,'기본형 와인 오프너','opn04.jpg','opn04.jpg',50,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'고급 와인 오프너',2300,'와인 오프너 고급형','opn05.jpg','opn05.jpg',75,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'캐릭터 텀블러',3500,'캐릭터 귀여운 텀블러','tum01.jpg','tum01.jpg',32,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 텀블러',4000,'기본형 텀블러','tum02.jpg','tum02.jpg',40,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'초록 텀블러',3600,'이쁜 초록색 텀블러','tum03.jpg','tum03.jpg',50,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세련된 텀블러',4500,'세련된 텀블러 고급형','tum04.jpg','tum04.jpg',20,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'스마일 텀블러',3900,'웃는 모양의 이쁜 텀블러','tum05.jpg','tum05.jpg',70,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'고급형 텀블러',4500,'고급형 텀블러','tum06.jpg','tum06.jpg',45,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세련&고급 텀블러',5000,'세련과 고급인 텀블러','tum07.jpg','tum07.jpg',20,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'기본 펜',2000,'기본형 펜','pen01.jpg','pen01.jpg',40,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'고급 펜',2500,'고급형 펜','pen02.jpg','pen02.jpg',40,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'파커 파란 펜',3500,'파커 파란색 펜','pen03.jpg','pen03.jpg',79,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'삼색 펜',6500,'빨강, 파랑, 검정 세가지색 펜','pen04.jpg','pen04.jpg',83,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'세련 실버 펜',3300,'세련미가 느껴지는 실버 펜','pen05.jpg','pen05.jpg',41,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'최고급 펜',4000,'써보면 알수있는 최고급형 펜','pen06.jpg','pen06.jpg',67,'Useful');
 	 
	 INSERT INTO T_WEDDING_GIFT 
	 VALUES(T_WEDDING_GIFT_SEQ.NEXTVAL,'선명한 빨강 펜',2300,'기본형 빨간 펜','pen07.jpg','pen07.jpg',58,'Useful');
