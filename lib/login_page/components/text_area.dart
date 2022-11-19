import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  const TextArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "회원가입",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
          SizedBox(
            width: 90,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "아이디, 비밀번호 찾기",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}
