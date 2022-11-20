import 'package:aladdin_project/home_page_all/used_online_page/component/user_online_new2.dart';
import 'package:flutter/material.dart';

class UserOnlineUniverse extends StatelessWidget {
  const UserOnlineUniverse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/user_online/universe.jpg"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("중고매장 이 광할한 우주점", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 23,
              ),),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.white,),
            ],
          ),
        ),
        UserOnlineNew2(),
      ],
    );
  }
}
