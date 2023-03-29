SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 ;

use bshop_db;

CREATE TABLE if not exists item  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `base_price` int NOT NULL,
  `deleted` bit(1) NOT NULL,
  `description` text NOT NULL,
  `item_status` char(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `open_at` datetime(6) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `year` smallint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2n9w8d0dp4bsfra9dcg0046l4` (`category_id`),
  CONSTRAINT `FK2n9w8d0dp4bsfra9dcg0046l4` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) COLLATE=utf8mb4_unicode_ci;


CREATE TABLE if not exists `item_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `base_price` int DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `item_status` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_at` datetime(6) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` smallint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK7xdof9iyt6pjrlx6nqb7wlbir` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`)
) COLLATE=utf8mb4_unicode_ci;


ALTER TABLE item ADD INDEX idx_item_deleted_item_year_item_status_item_name (deleted, year, item_status, name);

INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(1, '2023-03-08 15:09:10.246331', '2023-03-08 15:09:10.246331', 10000, 0, '![img1](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/b359bb5642a5a3461edf9f634ce3915d/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8-186119-1100x1100.png)

## **GABIA CLOUD BAG\_2022**


**가비아 클라우드 전시를 위한 리유저블백
장바구니 제작 요청**

전시에서 들고 다녀 눈에 띄고 홍보가 될 것, 전시장을 나가서도 사용할 수 있을 것

<br/>

가비아 클라우드/IT 전시에서 사용될 가비아 클라우드 가방이 필요하다는 요청이 디자인팀에 전달되었습니다.

전시장 뿐만 아니라 일상에서도 사용가능한 리유저블 가방을 목표로 진행하였는데요,

다양한 시도끝에 제작된 가비아 클라우드 가방을 소개합니다.




시작은 전시회에서 받은 가방을 마트에서도 사용할 수 있는 장바구니의 형태와 폴딩형태에 중점을 두고 진행하였습니다.

다양한 형태의 장바구니를 리서치하고, 샘플을 모으고, 실제 일상에서 사용하는 제품들을 찾아보았습니다.

폴딩 형태의 바쿠백이 가장 대표적인 그래픽이 가미된 리유저블백으로 실제로도 많은 사람들이 이용하고 있었습니다.

우선 바쿠백 형태로 그래픽 작업을 진행하였습니다.

![img2](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/66f054faae5376d8d7b5603987112648/image.png)![img3](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/2b408e21b69faf7b6492dcde8a4a942e/image.png)





다양한 그래픽을 적용한 끝에 임직원들의 의견을 토대로 가비아 브랜드에 적합한 디자인을 선별하였습니다.

바쿠백 뿐만 아니라 크게 3가지 종류의 장바구니 형태로 나누어 가비아 그래픽을 적용해 보고,

이를 토대로 장바구니 사용과 전시에 관한 인터뷰를 진행하였습니다.

![그룹 189395](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/eb506e9fc73d00f4875b0b173a9ab7ad/image.png)

![그룹 189397](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/d32666e83aef0696db2800e232303767/image.png)




클라우드/IT 전시회 관련부서 사내직원분들과 인터뷰를 진행하며 다양한 의견을 들을 수 있었습니다.

우선 타겟층인 3040남성분들은 장바구니를 쓰지 않는다는 의견이 지배적이었고, 장바구니에 대한 선호도가 낮은것으로 마무리하였습니다.

하지만 전시회에서 가비아의 리플렛과 소개서 등을 넣어줄 가방이 필요하다는 사실은 변함이 없었고,

튼튼한 내구성을 갖춘 쇼핑백 형태의 가방을 선호한다는 것을 알 수 있었습니다.


![그룹 189400](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/b464f0c62baa266d65184aa1e2ee4539/image.png)




그리하여 리서치와 인터뷰 도중에인기가 많았던 리유저블백을 토대로 제품을 특정하였고,

흐믈거리는 바쿠백 보다는 탄탄한 느낌의  R-PET 리유저블백으로 방향을 전환하였습니다.

실제로 길거리에서 나이키 브랜드의 리유저블백을 사용하는 사람들을 종종 볼 수 있고,

전시회에서 요구하는 튼튼한 제품에 적합한 소재였습니다.



![그룹 189404](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/1c2e1fbb74f1b875ab17d47b54c63418/image.png)



다양한 업체에 컨택하였고, 여러 레퍼런스를 갖춘 업체에 방문하여 상담 후, 세가지 시안으로 샘플을 제작하였습니다.

클라우드를 상징하는 큐브형태의 그래픽 디자인과 가비아의  g.의 형태로 이루어진 그래픽 작업을 진행하였고,

내부적으로 목업을 제작해하며 사이즈와 디자인 등을 추려 3가지 디자인의 샘플을 의뢰하였습니다.



![그룹 186123](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/e7b4edf58962338ed4b956429c23c1dc/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8-186123.png)

![그룹 186122](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/7953901ec2783b255271716062e0a6bd/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8-186122.png)



3종 샘플 제작 후, 사내 인터뷰 및 선호도 조사를 통해 최종 1번 시안으로 진행하기로 하였습니다.

샘플에서 손잡이의 길이와 위치 등 세부적인 디테일을 조정하여 최종적으로 가비아 클라우드백이 완성되었습니다.



![마스크 그룹 136](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/6b34fdfab533a5a14d18b756fab770a5/%E1%84%86%E1%85%A1%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3-%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8-136.png)

![그룹 189405](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/54594c14defea667412f2919e336fa20/%E1%84%80%E1%85%B3%E1%84%85%E1%85%AE%E1%86%B8-189405.png)



블랙&화이트 컬러로 어디에나 잘 어울릴 수 있는 가비아 클라우드 가방이 완성되었습니다.

코로나로 인해 아직 전시/컨퍼런스에 대한 계획이 없지만 조만간 전시장에서 만나보기를 기대합니다.

R-PET라는 재활용 소재로 제작되어 클라우드 환경뿐만 아니라 지구환경까지(!) 생각하는 마음을 담긴 가비아 클라우드 가방 소개를 마치겠습니다.
', 'PUBLIC', '가비아 클라우드 백', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(2, '2023-03-08 15:09:10.260548', '2023-03-08 15:09:10.260548', 22222, 0, '

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/ea9c274b246a958879ebeaae8abc1b05/image.png)

2019년을 맞이하여 제작된 가비아의 캘린더 다이어리 세트를 소개합니다.
디자인실에서는 매년 다른 디자인으로 캘린더 다이어리를 제작하는데요.
사내 직원들과 사외 고객 및 협력사들을 위해 배포하고 있습니다.

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/71f5a3a3dad92f49a535cd0154ac67c4/image.png)

제작에 앞서, 가비아 사내 직원들을 대상으로 설문을 진행했었는데요. 그중 쓸모없는 과대 패키지에 대한 지적이 있었습니다. 하지만 외부고객에게도 배포하는 만큼 패키지를 없앨 수는 없었습니다. 그래서 이번엔 포장은 최소화하고, 내부 구성품의 퀄리티에 더 많은 신경을 썼습니다. 두꺼운 하드커버가 아닌 얇은 케이스에 간단하게 가비아 로고를 넣었습니다.

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/df6061cf08f7449cd2db07c69153fe6e/image.png)

구성품으로는 가비아의 브랜드 컬러의 블루에서 바리에이션 한 색상들로 1년 내내 보아도 눈이 편안하고 질리지 않는 색상입니다.  모든 사람들을 만족 시킬 수 없겠지만, 최대한 취향을 타지 않는 컬러와 소재를 선택하는데 많은 고민을 하였습니다. 캐쥬얼하게 사용할 수 있는 패브릭소재의 스프링노트와, 고급스러운 가죽 소재의 다이어리는 1년 내내 사용해도 외부오염에도 쉽게 더럽혀 지지 않습니다


다이어리의 그래픽은 리뉴얼 된 가비아의 그래픽 소스를 활용하였습니다. 한쪽면은 그래픽을 강조하고 또 다른 면은 최대한 달력을 꽉차게 구성하였습니다. 달력에 직접 스케쥴이나 기념일을 상세하게 기재하는 분들을 위해서 입니다. 또한 맨 뒷장에 보면 특별한 기념일을 표시할 수 있는 투명 스티커 한장도 포함되어 있습니다.

', 'PUBLIC', '캘린더/스프링노트/다이어리', '2023-03-08 15:09:10.242831', "https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/ea9c274b246a958879ebeaae8abc1b05/image.png", 2022, 1);

INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(3, '2023-03-08 15:09:10.263615', '2023-03-08 15:09:10.263615', 33333, 0, '
![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/62d78731c8e4052d1f1edfbc6851e090/image.png)

‘가비아만의 제품라인을 만들어 보자’ 라는 목표로 첫번째 아이템인 가비아 티셔츠.

Big logo,  Point label이라고 정의한  두가지 디자인 4가지 소재와 3가지 컬러로 진행했습니다.
각각의 컨셉을 간단하게 소개하겠습니다.

### 로고 플레이

화이트와 블랙을 기본으로, 가비아 로고가 크게 가로지르는 형태의 디자인으로 나염시, 통기성과 가볍게 보이기 위해 면적을 적게 라인 스타일로 변형했습니다.
쿨에라 원단으로 기본적인 면에 안감은 메시소재를 사용해서 통기성을 높였습니다.

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/62d78731c8e4052d1f1edfbc6851e090/image.png/uploads/62cfec8cd3cd95d612664488b6b1e042/image.png)


### Point label

브랜드 그래픽 요소인 닷 과 g.을 직조 라벨로 제작하여, 하단과 뒤쪽 상단 넥 부분에 포인트 디자인으로 적용했습니다.
여름에는 무지 티셔츠를  즐겨 입는 만큼, 평상복으로 부담 없이 착용할 수 있도록 디자인입니다.

가벼운 실켓면 원단과 빈티지 원단 사용하여 최적의 활동성과 통기성을 높였습니다.

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/62d78731c8e4052d1f1edfbc6851e090/image.png/uploads/edeed290d841905ec523cec96edc9d66/image.png)

공통 디자인요소로는 가비아 로고라벨이 사이즈 라벨와 함께 넥 부분에 들어가고, 넥테잎은 목에 닿아도 부드러운 실켓면 소재를 사용했습니다.
칼라는 가비아의 블루를 선택했습니다.
![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/62d78731c8e4052d1f1edfbc6851e090/image.png/uploads/54e3a563abe6b4070e40a6792223ab87/image.png)
', 'PUBLIC', '가비아 티셔츠', '2023-03-08 15:09:10.242831', "https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/62d78731c8e4052d1f1edfbc6851e090/image.png", 2022, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(4, '2023-03-08 15:09:10.266615', '2023-03-08 15:09:10.266615', 44444, 0, '
![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/88762b40ea2e37b887263c33df1f823e/image.png)

###상품 기본 정보
얇고 가벼운 폴리카보네이트 소재의 하드케이스입니다.
충격에 강하고 부드러운 그립감을 갖습니다.
화려하고 선명한 컬러 표현이 가능하며 긁힘과 색바램에 강합니다.

![image](http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/dd1b8759494d1ec51ac73d09f4bdb9ad/image.png)

소재 : 폴리카보네이트
제조국 : Made in Korea

###주의사항

모델컷의 경우 촬영장소의 환경에 따라 실제 색상과 상이할 수 있습니다.
오염 시 수건에 미지근한 물을 적셔 오염 부분을 닦아 주시기 바랍니다.
케이스 교체 시에 무리한 힘을 가하지 마십시오.
내구성이 우수하지만, 고열에서의 장시간 노출 시에는 변형이 올 수 있습니다.
카드수납은 불가능합니다.
', 'PUBLIC', '나비 케이크 아이폰 하드 케이스', '2023-03-08 15:09:10.242831', "http://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/88762b40ea2e37b887263c33df1f823e/image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(5, '2023-03-08 15:09:10.269117', '2023-03-08 15:09:10.269117', 55555, 0, '
# SMS서비스 브로슈어

![image](https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/23c1e05065383731e44d1acc825b9af2/image.png)

가비아의 모든 고객들에게 더 나아진 SMS서비스를 제공하고자 노력하고 있습니다.
최근에 오픈한 마이크로사이트를 시작으로
온, 오프라인 홍보 마케팅을 위해 진행된 프로젝트입니다.


실제로 모바일과  패드를 보는 것과 같은 경험을 주기 위해 기획과 여러 차례 논의 후 진행되었습니다.
기획 의도에 맞게 디자인 방향도 SMS 환경에서 주고받았던 익숙한 요소들을 활용해 화면 구성이 되었습니다.
브로슈어에 대한 상세정보와 일반적이지만 고려해야 할 사항들 작성해둡니다.

 

## 1. 상세 정보

- 형식: 5단 접이식
- 종이: 랑데뷰 190g
- 인쇄 부수: 1,000부(MOQ)
- 귀도리 공정 포함
- 전면/후면 부분 유광 코팅(에폭시) 공정

* 접어지는 부분과 모서리 부분 추가적으로 “귀도리 공정” 과정이 들어가게 되었습니다.
 
![image](https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/1f12ea05697c8dbe0727981243030405/image.png)
 

## 2. 완성된 브로슈어 콘셉트 샷

### 앞면) 고객들에게 줄 수 있는 혜택과 서비스의 장점들로 구성되었습니다.
![image](https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/9e2938b3692bf61c562c200de2fc5b73/image.png)

### 뒷면) 가비아의 신뢰를 줄 수 있는 회사소개 내용과
타깃별로 선호하는 단문, 장문의 서비스 내용으로 구성되었습니다.
![image](https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/54fbf590f70af6919d0650b5ad31f20b/image.png)', 'PUBLIC', 'SMS 서비스 브로슈어', '2023-03-08 15:09:10.242831', "https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/23c1e05065383731e44d1acc825b9af2/image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(6, '2023-03-08 15:09:10.271615', '2023-03-08 15:09:10.271615', 66666, 0, '
temp_item_6_description cc906240-119a-4d29-af1a-8b6bbbd43ece', 'PUBLIC', '오구패밀리 팁탭 에어팟 케이스', '2023-03-07 15:09:10.242831', "https://mentoring-gitlab.gabia.com/mentee/mentee_2023.01/team/g-market/gabia_b_shop_backend/uploads/5a12cd0c9cb06bb1f5a484f37b3a24ff/image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(7, '2023-03-08 15:09:10.274115', '2023-03-08 15:09:10.274115', 77777, 0, 'temp_item_7_description 22a931fc-906b-40f4-8b96-6b0ea613e159', 'PUBLIC', 'temp_item_name7', '2023-03-07 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(8, '2023-03-08 15:09:10.276114', '2023-03-08 15:09:10.276114', 88888, 0, 'temp_item_8_description 50cf6240-2c93-45e2-b65d-09744ccaa640', 'RESERVED', 'temp_item_name8', '2023-03-09 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(9, '2023-03-08 15:09:10.279235', '2023-03-08 15:09:10.279235', 99999, 0, 'temp_item_9_description 443a5cf0-2064-4426-b1fe-e1da46bf1c71', 'RESERVED', 'temp_item_name9', '2023-03-09 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(10, '2023-03-08 15:09:10.282240', '2023-03-08 15:09:10.282240', 12345, 0, 'temp_item_10_description ca434c94-8bf0-49ae-9563-ae09d2ceceaf', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(11, '2023-03-08 15:09:10.286240', '2023-03-08 15:09:10.286240', 12345, 0, 'temp_item_10_description 417e4dcc-8bd5-4adb-9d3b-266e9463d940', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(12, '2023-03-08 15:09:10.289240', '2023-03-08 15:09:10.289240', 12345, 0, 'temp_item_10_description 1b9ace09-6ae3-40db-bec3-4eb6a1cd748c', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(13, '2023-03-08 15:09:10.291239', '2023-03-08 15:09:10.291239', 12345, 0, 'temp_item_10_description 72d4f2da-8abc-4275-9b45-2419d60110d8', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);

/***********************************/
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(14, '2023-03-08 15:09:10.294240', '2023-03-08 15:09:10.294240', 12345, 0, 'temp_item_10_description cfd5bed3-e281-4a4a-8b0d-84e9b602a573', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(15, '2023-03-08 15:09:10.296740', '2023-03-08 15:09:10.296740', 12345, 0, 'temp_item_10_description 4ccd04bd-1d48-4245-848a-c7f0b5f2054f', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(16, '2023-03-08 15:09:10.299768', '2023-03-08 15:09:10.299768', 12345, 0, 'temp_item_10_description af516cd5-8574-4d8d-bf80-69fb1cc3758e', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(17, '2023-03-08 15:09:10.303240', '2023-03-08 15:09:10.303240', 44444, 0, 'temp_item_4_description 2fd5d704-cce3-4d72-8e4a-452de0c3eb0e', 'PUBLIC', 'temp_item_name4', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(18, '2023-03-08 15:09:10.306241', '2023-03-08 15:09:10.306241', 55555, 0, 'temp_item_5_description 58db30aa-bc63-4038-b8dc-52e54b5742ed', 'PUBLIC', 'temp_item_name5', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(19, '2023-03-08 15:09:10.309740', '2023-03-08 15:09:10.309740', 66666, 0, 'temp_item_6_description b804a882-ad7c-4519-ad8a-f131377ffd88', 'PRIVATE', 'temp_item_name6', '2023-03-07 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(20, '2023-03-08 15:09:10.312741', '2023-03-08 15:09:10.312741', 77777, 0, 'temp_item_7_description f2c9ec64-0b82-491d-ba3e-c64fc70d51cb', 'PRIVATE', 'temp_item_name7', '2023-03-07 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(21, '2023-03-08 15:09:10.316741', '2023-03-08 15:09:10.316741', 88888, 0, 'temp_item_8_description 08d73901-bdea-4fc4-8ca1-cbb35492a57f', 'RESERVED', 'temp_item_name8', '2023-03-09 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(22, '2023-03-08 15:09:10.319740', '2023-03-08 15:09:10.319740', 99999, 0, 'temp_item_9_description 5c254e60-dd20-42d0-a13e-fa57573099d3', 'RESERVED', 'temp_item_name9', '2023-03-09 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(23, '2023-03-08 15:09:10.322241', '2023-03-08 15:09:10.322241', 12345, 0, 'temp_item_10_description 9a96ea41-b672-4ed7-9992-23f0d0548e31', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(24, '2023-03-08 15:09:10.325740', '2023-03-08 15:09:10.325740', 12345, 0, 'temp_item_10_description b41af6a7-c544-450b-b5cb-ae13aeee2aa0', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(25, '2023-03-08 15:09:10.329240', '2023-03-08 15:09:10.329240', 12345, 0, 'temp_item_10_description c63859c6-fbf8-48c1-b953-44fa57249916', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(26, '2023-03-08 15:09:10.333745', '2023-03-08 15:09:10.333745', 12345, 0, 'temp_item_10_description 4649c200-2f84-4cb5-8456-0b6dc776dad7', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(27, '2023-03-08 15:09:10.337240', '2023-03-08 15:09:10.337240', 12345, 0, 'temp_item_10_description d0a5cc01-7843-4bfd-b5cc-23c930b955d0', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(28, '2023-03-08 15:09:10.340240', '2023-03-08 15:09:10.340240', 12345, 0, 'temp_item_10_description 718249f4-0ee7-4394-b04b-9b5e54b728b3', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(29, '2023-03-08 15:09:10.343241', '2023-03-08 15:09:10.343241', 12345, 0, 'temp_item_10_description 2e4d2922-dff9-4026-ba6a-c97ebc0e3efa', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(30, '2023-03-08 15:09:10.345741', '2023-03-08 15:09:10.345741', 12345, 0, 'temp_item_10_description 4f758fbc-5624-4780-abf5-c73620cb5afa', 'PUBLIC', 'temp_item_name10', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(31, '2023-03-08 15:09:10.350241', '2023-03-08 15:09:10.350241', 44444, 0, 'temp_item_4_description cdd9855e-498d-49f9-b3c1-535e511adc5f', 'PUBLIC', 'temp_item_name4', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(32, '2023-03-08 15:09:10.353740', '2023-03-08 15:09:10.353740', 55555, 0, 'temp_item_5_description 7471b576-89d1-48f7-ac2a-9312b7fff7b4', 'PUBLIC', 'temp_item_name5', '2023-03-08 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(33, '2023-03-08 15:09:10.357349', '2023-03-08 15:09:10.357349', 66666, 0, 'temp_item_6_description da16af2a-0ebd-4857-9f7a-b3c26cb0bcc2', 'PRIVATE', 'temp_item_name6', '2023-03-07 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(34, '2023-03-08 15:09:10.360923', '2023-03-08 15:09:10.360923', 77777, 0, 'temp_item_7_description 6d1266a4-5eab-439c-bb00-243c8bef554b', 'PRIVATE', 'temp_item_name7', '2023-03-07 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);
INSERT INTO item (id, created_at, updated_at, base_price, deleted, description, item_status, name, open_at, thumbnail, `year`, category_id) VALUES(35, '2023-03-08 15:09:10.363403', '2023-03-08 15:09:10.363403', 88888, 0, 'temp_item_8_description 387cdd79-3a3d-499c-8014-a0918a7204e6', 'RESERVED', 'temp_item_name8', '2023-03-09 15:09:10.242831', "http://139.150.73.182:9000/images/no-item-image.png", 2023, 1);


SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS ;
