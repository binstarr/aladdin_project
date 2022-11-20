import 'package:flutter/material.dart';
import '../../recommend_page/components/recoomend_footer.dart';
import 'home_page.dart';

class SpaceStrorePage extends StatelessWidget {
  const SpaceStrorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            SpaceStroreHomePage(),
            Footer(),
          ],
      ),
    );
  }
}
