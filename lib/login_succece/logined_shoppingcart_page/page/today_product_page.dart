import 'package:flutter/material.dart';

import '../../../home_page_all/recommend_page/components/recoomend_footer.dart';


class LoginedTodayProduct extends StatefulWidget {
  const LoginedTodayProduct({Key? key}) : super(key: key);

  @override
  State<LoginedTodayProduct> createState() => _TodayProductState();
}

class _TodayProductState extends State<LoginedTodayProduct> {
  var selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          SizedBox(height: 15),
          _buildHeader(),
          SizedBox(height: 10),
          _buildminiButtons(),
          SizedBox(height: 10),
          _buildBookList(
              "book15", "[국내도서] 아주 오랜만에 행복하다는 느낌", "백수린(지은이)", "창비",
              "12,600원","(10% 할인 / 700원)" ,"친필 사인본(선착순 한정)",
              "사진 엽서 증정", "택배로 주문하면 내일 수령 변경"),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ),
          SizedBox(height: 20),
          _buildBookList(
              "book03", "[국내도서] 커튼콜은 사양할게요", "김유담(지은이)", "창비",
              "14,400원","(10% 할인 / 800원)" ,"아버지의 해방일지, 정호승 머그 (창비 문학 포함 소설/시 2만원 이상)",
              "책 소개 페이지에서 분철 선택 가능", "택배로 주문하면 내일 수령 변경"),
          SizedBox(height: 10),
          _buildBookList(
              "book08", "[국내도서] 아주 오랜만에 행복하다는 느낌", "백수린(지은이)", "창비",
              "12,600원","(10% 할인 / 700원)" ,"친필 사인본(선착순 한정)",
              "사진 엽서 증정", "택배로 주문하면 내일 수령 변경"),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black12,
          ),
          SizedBox(height: 20),
          _buildBookList(
              "book07", "[국내도서] 커튼콜은 사양할게요", "김유담(지은이)", "창비",
              "14,400원","(10% 할인 / 800원)" ,"아버지의 해방일지, 정호승 머그 (창비 문학 포함 소설/시 2만원 이상)",
              "책 소개 페이지에서 분철 선택 가능", "택배로 주문하면 내일 수령 변경"),
          SizedBox(height: 50),
          Footer(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildMainButton(0, '오늘 본 상품'),
          _buildMainButton(1, '지금 이 시간 추천'),
        ],
      ),
    );
  }

  Widget _buildMainButton(int id, var title) {
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: id == selectedId ? Colors.grey : Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
        child: Text(
          title,
          style: TextStyle(
              color: id == selectedId ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildminiButtons() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "삭제",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              SizedBox(width: 10),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "리스트 보내기",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )),
              ),
              SizedBox(width: 10),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue),
                  color: Colors.blue,
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "장바구니 담기",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBookList(var img, var title, var author, var publisher,
      var price, var sale, var bookinfo, var bookintroduce, var delivery) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
            activeColor: Colors.grey,
            checkColor: Colors.white,
            value: false,
            onChanged: (value) {}),
        Column(
          children: [
            Container(width: 130, child: Image.asset("assets/$img.jpg")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined, color: Colors.black87),
                      SizedBox(width: 5),
                      Text('미리보기', style:
                      TextStyle(color: Colors.black87),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              Text(author, style: TextStyle(color: Colors.grey)),
              Text(publisher, style: TextStyle(color: Colors.black54)),
              Row(
                children: [
                  Text(price, style: TextStyle(color: Colors.pink)),
                  SizedBox(height: 5),
                  Text(sale, style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 5),
              Text(bookinfo, style: TextStyle(color: Colors.pink)),
              SizedBox(height: 10),
              Text(bookintroduce, style: TextStyle(color: Colors.deepOrange)),
              Text(delivery, style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ],
    );
  }
}
