import 'package:aladdin_project/login_page/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        _buildAppBar(context),
        SizedBox(height: 30,),
        _profileImage(),
        SizedBox(height: 10,),
        _aboutProfile(),
        SizedBox(height: 10,),
        // _aboutMe(),
      ],
    );
  }

  Widget _profileImage(){
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/binstarr.jpg"),
      ),
    );
  }

  Widget _aboutProfile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${LoginPage.idController.text} 님, 안녕하세요! \n 고객님은 일반 회원입니다.", style: TextStyle(color: Colors.black, fontSize: 20),),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30, child: Image.asset("assets/logo.png")),
            SizedBox(
              width: 20,
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    onTap: () {
                      Navigator.pushNamed(context, "/search");
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(232, 232, 232, 1.0),
                      contentPadding: EdgeInsets.only(left: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 5),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.grey)),
              )
            ]),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
              onPressed: () {
                // 아이콘 버튼 실행
                Navigator.pushNamed(context, "/shoppincart");
              },
              iconSize: 25,
            ),
          ],
        ),
      ],
    );
  }

  // Widget _aboutMe(){
  //   return Row(
  //     children: [
  //       GridView.builder(
  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 5,
  //           crossAxisSpacing: 10,
  //           mainAxisSpacing: 10),
  //         itemBuilder: (context, index) {
  //           return Text("asdsda");
  //         },
  //         itemCount: 10,
  //       ),
  //     ],
  //   );
  // }
}
