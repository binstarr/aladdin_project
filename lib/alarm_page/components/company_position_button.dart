import 'package:flutter/material.dart';

class CompanyPositikonButton extends StatelessWidget {
  const CompanyPositikonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(color: Color.fromRGBO(219, 218, 222, 0.5)),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, minimumSize: Size(360, 40)),
            onPressed: () {},
            child: Text(
              "중고매장 위치, 영업시간 안내",
              style:
                  TextStyle( color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
