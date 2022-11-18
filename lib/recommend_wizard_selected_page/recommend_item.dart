import 'package:flutter/material.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        _buildItem(
            "0",
            "모두가 할 수 있는 플러터 UI 실전 ",
            "김근호, 최주호, 황승준 (지은이) | 앤써북 | 2021년 8월",
            "종합 연간 1위",
            "플러터 2.x 최신 버전을 사용했으며 클론 코딩으로 모두의마켓, 모두의컬리, 모두의플레이 3가지 앱을 "
                "구성하는 다양한 화면을 직접 만들어본다. "
                "실제로 서비스되고 있는 3가지 앱의 화면을 직접 만들어 보면서 "
                "실무에서 바로 적용할 수 있는 개념과 기법을 배울 수 있도록 구성되었다."),
        SizedBox(height: 10),
        _buildItem(
            "1",
            "한계선을 넘다",
            "크래프톤 (지은이) | 황금가지 | 2022년 11월",
            "종합 주간 1위",
            "이영도 작가의 대표적인 판타지 소설 <눈물을 마시는 새>를 게임 및 영상화하기 위해 "
                "2년간 준비된 일러스트와 설정 자료를 모은 아트북이다. <눈물을 마시는 새>는 "
                "이영도 작가의 4권짜리 대하 판타지 소설로서, 한국판 <반지의 제왕>이라불리울 정도로 "
                "독창적인 세계관과 놀라운 스토리텔링으로 국내 판타지 소설 중 독자들에게 최고로 꼽히는 작품이다."),
        SizedBox(height: 10),
        _buildItem(
            "2",
            "조국의 법고전 산책",
            "조국 (지은이) | 오마이북 | 2022년 11월",
            "종합 주간 2위",
            "저자 조국이 고른 법과 관련된 고전 15권을 중심으로 핵심 내용을 소개하고, "
                "그것이 지금의 한국 사회에 어떤 의미를 갖는지 밝히는 책이다. "
                "이 책에서 다루고 있는 법고전의 사상은 현대 민주주의 사회의 법과 제도 속에 여전히 살아 움직이고 있다."),
        SizedBox(height: 10),
        _buildItem(
            "3",
            "이은경쌤의 초등어휘일력 365",
            "이은경 (지은이) | 포레스트북스 | 2022년 10월",
            "종합 주간 3위",
            "유튜브 누적 조회수 1,300만 뷰, 네이버카페 유튜브 ‘슬기로운초등생활’ "
                "15만 부모의 멘토이자 자녀교육 베스트셀러 저자인 이은경쌤이 엄마와 아이가 함께 보는 초등어휘일력을 출간했다. "
                "탁상달력 형태인 이 책은 1월 1일부터 12월 31일까지 어린이가 좋아하는 문학 속 다양하고 흥미로운 어휘를 제공한다. "
                "이은경 쌤 특유의 친근한 위로와 응원가가 매일매일 그날의 어휘에 맞게 담겨있다."),
        SizedBox(height: 10),
        _buildItem(
            "4",
            "나의 문화유산답사기 11 : 서울편 3",
            "유홍준 (지은이) | 창비 | 2022년 10월",
            "종합 주간 4위",
            "초대형 베스트셀러이자 한국 인문서를 대표하는 시리즈 『나의 문화유산답사기』가 서울편 완간 소식을 가지고 돌아왔다. "
                "시리즈 중에서도 큰 사랑을 받았던 서울편 1~2권 출간 이후 중국편 3권을 거쳐 5년 만에 서울편 3~4권으로 찾아온 것이다. "
                "이번에 출간되는 서울편 3권 ‘사대문 안동네: 내 고향 서울 이야기’와 4권 ‘강북과 강남: 한양도성 밖 역사의 체취’는 "
                "세계인이 사랑하는 도시 서울의 오래된 동네와 뜻깊은 문화유산을 탐방하고 그곳의 매력적인 이력을 풀어내며 "
                "서울편 대장정을 마무리한다."),
        SizedBox(height: 10),
        _buildItem(
            "5",
            "인생의 허무를 어떻게 할 것인가 ",
            "김영민 (지은이) | 사회평론아카데미 | 2022년 10월",
            "종합 주간 5위",
            "오늘은 10월의 마지막 금요일. 하루하루 번민하며 살아내는 사이에 한 해가 또 꾸물렁 지나갔다. "
                "찬바람 불면 아차 싶지만 남은 시간은 짧고, 올해도 이룬 것 없이 흘려보냈다는 생각에 입맛을 쩝 다신다. "
                "허무는 인간의 유일한 진리. 시간은 녹아 없어지고, 진실은 변색되고, 악은 자주 발 뻗고 자며, "
                "미래는 항상 알 수 없는 것이기에 마음 한편의 휑한 공간엔 늘 서늘한 공기가 감돈다."),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildItem(var image, var title, var author, var best, var bookInfo) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 380,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/$image.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 345, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                      Icon(Icons.star, color: Colors.pink),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    author,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 8.0, top: 3.0, bottom: 3.0),
                      child: Text(
                        best,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      bookInfo,
                      maxLines: 3, //최대 3줄까지만 보여줘!
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
