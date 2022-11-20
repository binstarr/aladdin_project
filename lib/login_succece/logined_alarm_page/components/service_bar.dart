import 'package:flutter/material.dart';

class ServiceBar extends StatelessWidget {
  const ServiceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(219, 218, 222, 0.5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            TextButton(onPressed: () {}, child: Text("로그인",style: TextStyle(color: Colors.black,),),),
            TextButton(onPressed: () {}, child: Text("전체 메뉴",style: TextStyle(color: Colors.black),),),
            TextButton(onPressed: () {}, child: Text("회사 소개",style: TextStyle(color: Colors.black),),),
            TextButton(onPressed: () {}, child: Text("출판사 안내",style: TextStyle(color: Colors.black),),),
            TextButton(onPressed: () {}, child: Text("PC 버전",style: TextStyle(color: Colors.black),),),
          ],
        ),
      ),
    );
  }
}
