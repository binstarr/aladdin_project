import 'package:flutter/material.dart';

class RecommendHeader extends StatelessWidget {
  const RecommendHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "추천마법사의 선택",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text("[로그인하기]",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          Text("로그인하면 독서 취향에 맞는 책을 보여드립니다."),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.view_day,color: Colors.blue,),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.grid_view_sharp,color: Colors.grey,),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.format_list_bulleted_sharp,color: Colors.grey,),
            ],
          ),
        ],
      ),
    );
  }
}
