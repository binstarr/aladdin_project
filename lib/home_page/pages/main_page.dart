import 'package:aladdin_project/recommend_page/components/recoomend_footer.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class HomePageMain extends StatelessWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            HomePage(),
            Footer(),
          ],
      ),
    );
  }
}
