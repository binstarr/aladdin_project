import 'package:aladdin_project/home_page_all/coffee_page/component/coffee_body_bottom.dart';
import 'package:aladdin_project/home_page_all/coffee_page/component/coffee_body_top.dart';
import 'package:flutter/material.dart';
import '../component/coffee_banner.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 10),
          CoffeeBanner(),
          CoffeeBodyTop(),
          CoffeeBodyBottom(),
        ],
    );
  }

  Widget _buildHomeTitle(String title){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        child: Text(
          title, textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _bottomLine(){
    return Container(
      width: double.infinity,
      height: 0.3,
      color: Colors.grey,
    );
  }
}
