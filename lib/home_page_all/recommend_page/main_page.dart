import 'package:flutter/material.dart';

import 'components/recommend_footer_list.dart';
import 'components/recommend_header.dart';
import 'components/recommend_item.dart';
import 'components/recoomend_footer.dart';

class RecommandPage extends StatelessWidget {
  const RecommandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 232, 1.0),
      body: ListView(
        children: [
          RecommendHeader(),
          RecommendItem(),
          RecommendFooterList(),
          Footer(),
        ],
      ),
    );
  }

}
