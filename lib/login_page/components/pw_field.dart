import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../url.dart';

class pwTextField extends StatefulWidget {
  const pwTextField({Key? key, required this.text}) : super(key: key);
  final String text;
  static bool visible = true;

  @override
  State<pwTextField> createState() => _pwTextFieldState();
}

class _pwTextFieldState extends State<pwTextField> {
  int selectedId = 0;
  List<IconData> iconList = [Icons.visibility, Icons.visibility_off];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textField(widget.text, LoginPage.pwController),
      ],
    );
  }

  Widget textField(String text, TextEditingController controller) {
    return Center(
      child: SizedBox(
        width: TEXT_FIELD_WIDTH,
        height: TEXT_FIELD_HEIGHT,
        child: Stack(children: [
          TextField(
            controller: LoginPage.pwController,
            obscureText: pwTextField.visible,
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
          Positioned(
            right: 0,
            bottom: 15,
            child: Row(
              children: [
                _iconChange(0, iconList[0]),
                _iconChange(1, iconList[1]),
                // _iconChange(1, Icons.visibility_off),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _iconChange(int id, IconData mIcon) {
    return Container(
      child: IconButton(
        onPressed: () {
          setState(() {
            selectedId = id;
            if (selectedId == 0) {
              mIcon = Icons.visibility;
              pwTextField.visible = false;
            } else if (selectedId == 1) {
              mIcon = Icons.visibility_off;
              pwTextField.visible = true;
            }
            print(selectedId);
            print(pwTextField.visible);
          });
        },
        icon: Icon(mIcon),
      ),
    );
  }
}
