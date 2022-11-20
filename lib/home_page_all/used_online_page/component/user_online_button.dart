import 'package:flutter/material.dart';

class UserOnlineButton extends StatelessWidget {
  const UserOnlineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _buildButton("중고 베스트"),
          _buildButton("새로 등록된 중고"),
          _buildButton("균일가"),
        ],
      ),
    );
  }
  
  Widget _buildButton(var text){
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
            onPressed: () {},
            child: Text(text, style: TextStyle(
              color: Colors.black,
            ),)),
      ),
    );
  }
}
