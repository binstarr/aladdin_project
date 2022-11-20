import 'package:aladdin_project/alarm_page/components/question_buttons.dart';
import 'package:flutter/material.dart';

import 'company_position_button.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(219, 218, 222, 0.5),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: Column(
            children: [
              Text(
                "(주)알라딘커뮤니케이션",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "일반문의 (발신자 부담) 1544-2514",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              QuestionButtons(),
              SizedBox(height: 20,),
              CompanyPositikonButton(),
            ],
          ),
        )
      ],
        ));
  }
}
