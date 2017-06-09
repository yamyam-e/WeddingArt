	DROP TABLE T_WEDDING_VENDER_DRESS PURGE;
	DROP SEQUENCE T_WEDDING_VENDER_DRESS_SEQ;	

	CREATE TABLE  T_WEDDING_VENDER_DRESS(
		NUM NUMBER(6,0) NOT NULL ENABLE, 
		NAME VARCHAR2(100) NOT NULL ENABLE, 
		PRICE NUMBER(8,0) NOT NULL ENABLE, 
		CONTENT VARCHAR2(500) NOT NULL ENABLE, 
		BUYURL VARCHAR2(200) NOT NULL ENABLE, 
		HOMEURL VARCHAR2(200) NOT NULL ENABLE, 
		ORGNAME VARCHAR2(100) NOT NULL ENABLE, 
		SYSNAME VARCHAR2(100) NOT NULL ENABLE, 
		TYPE VARCHAR2(100), 
		ADDRESS VARCHAR2(200), 
		PHONE VARCHAR2(50), 
		BNAME VARCHAR2(100) 
	);
	
	SELECT * FROM T_WEDDING_VENDER_DRESS;
  	 
	CREATE SEQUENCE T_WEDDING_VENDER_DRESS_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
	
	ALTER TABLE T_WEDDING_VENDER_DRESS ADD CONSTRAINT T_WEDDING_VENDER_DRESS_PK PRIMARY KEY(NUM);
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[대여]웨딩슈즈#13 들러리슈즈',10000,'.','http://www.happypartyco.kr/product/detail.html?product_no=259&cate_no=85&display_group=1','http://www.happypartyco.kr','shoes04.jpg','shoes04.jpg','shoes','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]Shoes-ss06',55000,'진주 오픈토힐 / 굽높이 10 cm ','http://www.mysoodress.com/shop/shopdetail.html?branduid=937178&xcode=004&mcode=000&scode=&type=O&sort=order&cur_code=004&GfDT=bW53WQ%3D%3D','http://www.mysoodress.com/index.html','shoes08.jpg','shoes08.jpg','shoes','서울 강동구 성내동 417-2번지 일석빌딩 3층','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩드레스 :)러브미 베이직♡',139000,'심플하면서 고급스러운 드레스 상체 핏감을 잘 살려주고 스커트는 풍성한 드레스','http://www.mysoodress.com/shop/shopdetail.html?branduid=956553&xcode=008&mcode=000&scode=&type=O&sort=order&cur_code=008&GfDT=bm53WA%3D%3D','http://www.mysoodress.com/index.html','weddingdress11.jpg','weddingdress11.jpg','weddingdress','서울 강동구 성내동 417-2번지 일석빌딩 3층','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'웨딩 D-42',260000,'상체 비딩이 신부를 더욱 화사하게 본식용으로도 굿~!!!!','http://luyangel.com/product/detail.html?product_no=1160&cate_no=214&display_group=2','http://luyangel.com/index.html','weddingdress01.jpg','weddingdress01.jpg','weddingdress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'웨딩 D-46',360000,'상체에 있는 고급스러운 레이스가 트레인까지 깔끔하면서 화려해','http://luyangel.com/product/detail.html?product_no=1181&cate_no=214&display_group=1','http://luyangel.com/index.html','weddingdress02.jpg','weddingdress02.jpg','weddingdress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'웨딩 D-47',295000,'시스루 느낌에 비딩이 블링블링 품격있는 웨딩 드레스를 찾으신다면 딱이거','http://luyangel.com/product/detail.html?product_no=1201&cate_no=214&display_group=2','http://luyangel.com/index.html','weddingdress03.jpg','weddingdress03.jpg','weddingdress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'소피아',85000,'오프숄더 미니라인 드레스 허리리본이 사랑스러워 코르셋으로 사이즈조절 가능','http://luyangel.com/product/detail.html?product_no=1240&cate_no=207&display_group=2','http://luyangel.com/index.html','minidress03.jpg','minidress03.jpg','minidress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'레이스 라운드넥 셀프웨딩드레스',119000,'고급스러운 플라워 패턴 자수 레이스로 전체를 감싼 미니드레스 부담스럽지 않게 길지도 짧지도 않은 기장에 풍성한 밑단까지~ 발랄하면서도 우아함을 한껏 살린 제품','http://supsokdress.com/product/detail.html?product_no=738&cate_no=7&display_group=1','http://supsokdress.com/index.html','minidress09.jpg','minidress09.jpg','minidress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'햅번 드레스♡',108000,'하이퀄리티 소재 심플하고 세련된 디자인^^ 핏감도 너무 예쁘게 떨어져요♡','http://www.mysoodress.com/shop/shopdetail.html?branduid=1005508&xcode=009&mcode=000&scode=&type=O&sort=order&cur_code=009&GfDT=bm15W18%3D','http://www.mysoodress.com/index.html','minidress10.jpg','minidress10.jpg','minidress','서울 강동구 성내동 417-2번지 일석빌딩 3층','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'플로라미니드레스♡',65000,'시스루 숄더라인에 플라워 모티브가 예쁘게 장식된 여성스러운 미니드레스에요^^','http://www.mysoodress.com/shop/shopdetail.html?branduid=950729&xcode=009&mcode=000&scode=&type=O&sort=order&cur_code=009&GfDT=Z2l3WQ%3D%3D','http://www.mysoodress.com/index.html','minidress11.jpg','minidress11.jpg','minidress','서울 강동구 성내동 417-2번지 일석빌딩 3층','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'오드리 미니♡',168000,'오드리 미니드레스와 오프숄더 레이스 쟈켓을 함께 코디한 세트상품','http://www.mysoodress.com/shop/shopdetail.html?branduid=1042959&xcode=009&mcode=000&scode=&type=O&sort=order&cur_code=009&GfDT=a293WA%3D%3D','http://www.mysoodress.com/index.html','minidress12.jpg','minidress12.jpg','minidress','서울 강동구 성내동 417-2번지 일석빌딩 3층 ','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]망사레이스 (11Cm)',47000,'망사레이스로 고급스러우면서 러블리한 웨딩슈즈','http://supsokdress.com/product/detail.html?product_no=460&cate_no=36&display_group=1','http://supsokdress.com/index.html','shoes05.jpg','shoes05.jpg','shoes','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]망사레이스 (9Cm)',45000,'망사레이스로 고급스러우면서 러블리한 웨딩슈즈','http://supsokdress.com/product/detail.html?product_no=459&cate_no=36&display_group=1','http://supsokdress.com/index.html','shoes06.jpg','shoes06.jpg','shoes','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]Shoes-g01♡골드 레이스',69000,'쉬폰진주코사지 탈부착 가능 / 굽높이 10cm','http://www.mysoodress.com/shop/shopdetail.html?branduid=937149&xcode=004&mcode=000&scode=&type=O&sort=order&cur_code=004&GfDT=amh3Vw%3D%3D','http://www.mysoodress.com/index.html','shoes07.jpg','shoes07.jpg','shoes','서울 마포구 창전동 6-132 5층','070-7553-2842','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'플라워 코르셋 셀프웨딩드레스',239000,'오프숄더 플라워 장식과 허리부분을 날씬해 보이는 클래식 코르섹라인이 포인트인 드레스','http://supsokdress.com/product/detail.html?product_no=625&cate_no=4&display_group=1','http://supsokdress.com/index.html','weddingdress07.jpg','weddingdress07.jpg','weddingdress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩원피스 비치원피스',75000,'드레스는 선착순 주문  예약 마감입니다','http://www.happypartyco.kr/product/detail.html?product_no=337&cate_no=24&display_group=1','http://www.happypartyco.kr','weddingdress04.jpg','weddingdress04.jpg','weddingdress','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'프리미엄 본식드레스 #101',120000,'드레스는 선착순 주문  예약 마감입니다','http://www.happypartyco.kr/product/detail.html?product_no=262&cate_no=24&display_group=1','http://www.happypartyco.kr','weddingdress05.jpg','weddingdress05.jpg','weddingdress','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩드레스 프리미엄#4',125000,'드레스는 선착순 주문  예약 마감입니다','http://www.happypartyco.kr/product/detail.html?product_no=133&cate_no=24&display_group=1','http://www.happypartyco.kr','weddingdress06.jpg','weddingdress06.jpg','weddingdress','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'선플라워 셀프웨딩드레스',149000,'깔끔한 스타일의 드레스로 확퍼지는 풍성한 밑단에 포인트를 준 제품 허리가 잘록해 보이면서 가장 어려보이는 벨라인 드레스','http://supsokdress.com/product/detail.html?product_no=707&cate_no=4&display_group=1','http://supsokdress.com/index.html','weddingdress08.jpg','weddingdress08.jpg','weddingdress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'올레이스 오프숄더 웨딩드레스',368000,'전체를 프리미엄 레이스로 디자인한 오프숄더 소매의 드레스 클래식하면서도 우아해 보이는 드레스','http://supsokdress.com/product/detail.html?product_no=745&cate_no=4&display_group=1','http://supsokdress.com/index.html','weddingdress09.jpg','weddingdress09.jpg','weddingdress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩드레스 :) 코코블라썸♡',159000,'사랑에 빠진 소녀같은 이미지가 물씬 풍기는 예쁜 드레스','http://www.mysoodress.com/shop/shopdetail.html?branduid=942090&xcode=008&mcode=000&scode=&type=O&sort=order&cur_code=008&GfDT=bmp9W11C','http://www.mysoodress.com/index.html','weddingdress10.jpg','weddingdress10.jpg','weddingdress','서울 강동구 성내동 417-2번지 일석빌딩 3층 ','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩드레스 :) 마리안느♡',129000,'심플하면서도 디테일 있는 여신드레스 팔뚝도 가려주고 여리여리한 느낌은 그대로 살려주는 살랑살랑 여신 드레스','http://www.mysoodress.com/shop/shopdetail.html?branduid=1042944&xcode=008&mcode=000&scode=&type=O&sort=order&cur_code=008&GfDT=bmt7W10%3D','http://www.mysoodress.com/index.html','weddingdress12.jpg','weddingdress12.jpg','weddingdress','서울 강동구 성내동 417-2번지 일석빌딩 3층','010-4311-8811','마이수드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'트윙클',98000,'신상 미니웨딩드레스 셀프웨딩 드레스로 추천 허리비딩 고급스러워','http://luyangel.com/product/detail.html?product_no=1269&cate_no=207&display_group=2','http://luyangel.com/index.html','minidress01.jpg','minidress01.jpg','minidress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'앤틱로즈',130000,'골드색상의 자수원단에 끝단 포인트 A라인에 우아함을 겸비한 미니드레스 아가랑 셋트상품','http://luyangel.com/product/detail.html?product_no=1343&cate_no=207&display_group=2','http://luyangel.com/index.html','minidress02.jpg','minidress02.jpg','minidress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'셀프웨딩 미니드레스',20000,'드레스는 선착순 주문  예약 마감입니다','http://www.happypartyco.kr/product/detail.html?product_no=335&cate_no=79&display_group=1','http://www.happypartyco.kr','minidress04.jpg','minidress04.jpg','minidress','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'미니드레스 #100',40000,'드레스는 선착순 주문  예약 마감입니다','http://www.happypartyco.kr/product/detail.html?product_no=339&cate_no=79&display_group=1','http://www.happypartyco.kr','minidress05.jpg','minidress05.jpg','minidress','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'로리안',79000,'상체라인이 부담스럽지 않은 상큼한 미니기장 화이트 신상드레스 입고!!♡','http://luyangel.com/product/detail.html?product_no=1183&cate_no=207&display_group=2','http://luyangel.com/index.html','minidress06.jpg','minidress06.jpg','minidress','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'웬디 레이스 미니드레스',119000,'발랄함과 우아함을 동시에~ 어떻게 코디해도 사랑스러운 아이템 오프숄더 느낌의 레이스 탑에 풍성한 밑단이 예쁜 드레스','http://supsokdress.com/product/detail.html?product_no=661&cate_no=7&display_group=1','http://supsokdress.com/index.html','minidress07.jpg','minidress07.jpg','minidress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'레이스 라운드넥 셀프웨딩드레스',119000,'고급스러운 플라워 패턴 자수레이스로 전체를 감싼 미니 드레스 부담스럽지 않게 길지도 짧지도 않은 기장에 풍성한 밑단까지~ 발랄하면서도 우아함을 한껏 살린 제품','http://supsokdress.com/product/detail.html?product_no=739&cate_no=7&display_group=1','http://supsokdress.com/index.html','minidress08.jpg','minidress08.jpg','minidress','서울 마포구 창전동 6-132 5층','070-7553-2842','숲속드레스');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 02',150000,'기본블랙 턱시도 제니아원단으로 고급스럽게 본식용으로도 손색없어요','http://luyangel.com/product/detail.html?product_no=623&cate_no=109&display_group=2','http://luyangel.com/index.html','tuxedo01.jpg','tuxedo01.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 04',180000,'다크브라운 컬러에 카라는 벨벳소재로 포인트 고급스러워 본식용으로도 선호','http://luyangel.com/product/detail.html?product_no=908&cate_no=109&display_group=2','http://luyangel.com/index.html','tuxedo02.jpg','tuxedo02.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 07',180000,'.','http://luyangel.com/product/detail.html?product_no=1350&cate_no=109&display_group=1','http://luyangel.com/index.html','tuxedo03.jpg','tuxedo03.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 08',180000,'.','http://luyangel.com/product/detail.html?product_no=1351&cate_no=109&display_group=1','http://luyangel.com/index.html','tuxedo06.jpg','tuxedo06.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 09',180000,'.','http://luyangel.com/product/detail.html?product_no=1352&cate_no=109&display_group=1','http://luyangel.com/index.html','tuxedo05.jpg','tuxedo05.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'턱시도 10',150000,'더블버튼 디자인 세련되고 트렌디함에 반하게될 턱시도','http://luyangel.com/product/detail.html?product_no=905&cate_no=109&display_group=1','http://luyangel.com/index.html','tuxedo04.jpg','tuxedo04.jpg','tuxedo','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]SH-15',170000,'.','http://luyangel.com/product/detail.html?product_no=1494&cate_no=52&display_group=1','http://luyangel.com/index.html','shoes01.jpg','shoes01.jpg','shoes','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[판매]SH-24',150000,'.','http://luyangel.com/product/detail.html?product_no=1571&cate_no=52&display_group=1','http://luyangel.com/index.html','shoes02.jpg','shoes02.jpg','shoes','서울 강남구 논현동 39-18 성도빌딩4F','02-2252-8787','루이엔젤');
	
	INSERT INTO T_WEDDING_VENDER_DRESS 
	VALUES(T_WEDDING_VENDER_DRESS_SEQ.NEXTVAL,'[대여]웨딩슈즈 #10',10000,'.','http://www.happypartyco.kr/product/detail.html?product_no=227&cate_no=85&display_group=1','http://www.happypartyco.kr','shoes03.jpg','shoes03.jpg','shoes','서울 서초구 양재동 19 7층','02-571-1005','해피파티코');

