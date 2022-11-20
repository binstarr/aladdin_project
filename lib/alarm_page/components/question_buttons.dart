import 'package:flutter/material.dart';

class QuestionButtons extends StatelessWidget {
  const QuestionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(219, 218, 222, 0.5),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(170, 40),
                ),
                onPressed: () {},
                child: Text(
                  "1:1문의",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                )),
            SizedBox(
              width: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: Size(170, 40),
                ),
                onPressed: () {},
                child: Text(
                  "FAQ",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,

                )),
          ],
        ),
      ),
    );
  }


}
