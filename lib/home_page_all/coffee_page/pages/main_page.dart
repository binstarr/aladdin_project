import 'package:flutter/material.dart';
import '../../recommend_page/components/recoomend_footer.dart';
import 'home_page.dart';

class CoffeeMainPage extends StatelessWidget {
  const CoffeeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            CoffeePage(),
            Footer(),
          ],
      ),
    );
  }
}
