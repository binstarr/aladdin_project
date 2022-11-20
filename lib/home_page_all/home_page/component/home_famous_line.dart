import 'package:flutter/material.dart';

class HomeFamousLine extends StatelessWidget {
  const HomeFamousLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Image(image: AssetImage(
            "assets/book05.jpg"),
          width: 300, fit: BoxFit.fitHeight,),
        ),
        SizedBox(height: 30,),
        Text(" “ ", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("N? 좋아. 자연을 만들어봐, 클라파우치우시가 말했다. 기계가 윙 소리를내자"
              "트루들의 앞마당은 순식간에 자연사학자들로 가득 찼다"
              "그들은 논쟁하고, 각자 두꺼운 책을 출판해대고, 자기 것이 아닌 다른"
              "책들은 갈기갈기 찢어버렸다. 먼 곳에서는 불타는 장작"
              "N? 좋아. 자연을 만들어봐, 클라파우치우시가 말했다. 기계가 윙 소리를내자"
              "트루들의 앞마당은 순식간에 자연사학자들로 가득 찼다"
              "그들은 논쟁하고, 각자 두꺼운 책을 출판해대고, 자기 것이 아닌 다른"
              "책들은 갈기갈기 찢어버렸다. 먼 곳에서는 불타는 장작"
              , style: TextStyle(
            fontSize: 20,
          ), maxLines: 5, overflow: TextOverflow.visible,),
        ),
        SizedBox(height: 20,),
        Text(" ” ", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),),
        Text("- <사이버리아드> 스타니스와프 렘", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16, color: Colors.grey,
        ),),
      ],
    );
  }
}
