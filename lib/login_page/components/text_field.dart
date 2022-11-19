import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../url.dart';

class IdTextField extends StatelessWidget {
  const IdTextField({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(text, LoginPage.idController),
      ],
    );
  }

  Widget textField(String text, TextEditingController controller) {
    return Center(
      child: SizedBox(
        width: TEXT_FIELD_WIDTH,
        height: TEXT_FIELD_HEIGHT,
        child: Column(
          children: [
            TextField(
              controller: LoginPage.idController,
              obscureText: text == "Password" ? true : false,
              decoration: InputDecoration(
                hintText: "$text 입력",
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                errorBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
