import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(219, 218, 222, 0.5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text(
                    "알라딘고객센터",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 3,
            color: Colors.black,
          ),
          _buildPostTitle(),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 15,),
          _buildContent(),
          SizedBox(height: 50,),
          _buildAnswerButton(),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          _buildLoginInfo(),

        ],
      ),
    );
  }

  _buildPostTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 10),
          child: Text(
            "당일배송&양탄자배송 일시중단(11.19.토.물류 재고조사)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 5),
          child: Text(
            "알라딘고객센터 2022/11/16 09:36",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: Text("댓글 (0))")),
            TextButton(onPressed: () {}, child: Text("먼댓글 (0))")),
            TextButton(onPressed: () {}, child: Text("좋아요 (12))")),
          ],
        )
      ],
    );
  }

  _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:6 ),
          child: Text("안녕하세요?\n"
              "알라딘 고객센터입니다.\n\n"
              "2022년 11월 19일(토)에 한해\n"
              "물류센터 재고조사 관계로 '당일배송&양탄자배송' 서비스가 일시\n "
              "중단되며"
              "11월 21일(월) 부터 재개 됩니다.\n\n"
              "* 당일배송&양탄자배송 중단 일시 : 2022년 11월 19일(토)\n"
              "* 사유 : 물류센터 재고조사\n\n\n"
              "감사합니다."),
        ),
      ],
    );
  }


  _buildAnswerButton() {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              TextButton(onPressed: () {}, child: Text("댓글 (0))")),
              TextButton(onPressed: () {}, child: Text("먼댓글 (0))")),
              TextButton(onPressed: () {}, child: Text("좋아요 (12))")),
            ],
          ),
        ),
        Container(
          width: 350,
    height: 50,
    color: Color.fromRGBO(219, 218, 222, 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("댓글쓰기",style: TextStyle(color: Colors.black,),),),
              TextButton(onPressed: () {}, child: Text("좋아요",style: TextStyle(color: Colors.black),),),
              TextButton(onPressed: () {}, child: Text("공유하기",style: TextStyle(color: Colors.black),),),
              TextButton(onPressed: () {}, child: Text("찜하기",style: TextStyle(color: Colors.black),),),
            ],
          ),
        ),
      ],
    );
  }



  _buildLoginInfo() {
    return    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text("PC버전",style: TextStyle(color: Colors.black),),),
          TextButton(onPressed: () {}, child: Text("전체메뉴",style: TextStyle(color: Colors.black),),),
          TextButton(onPressed: () {}, child: Text("나의 서재",style: TextStyle(color: Colors.black),),),
        ],
      ),
    );
  }
}
