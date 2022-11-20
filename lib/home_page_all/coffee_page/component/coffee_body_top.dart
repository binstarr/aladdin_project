import 'package:flutter/material.dart';

class CoffeeBodyTop extends StatelessWidget {
  const CoffeeBodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        _buildMyStemp(),
        _buildIconList(),
        
      ],
    );
  }

  Widget _buildMyStemp(){
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(237, 233, 230, 1.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(Icons.coffee, size: 40,
            color: Colors.brown),
            SizedBox(width: 10),
            Text("나의 스탬프",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(width: 10),
            Text("0개",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            Spacer(),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: (){},
                child: Text("교환하기", style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconList(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(Icons.coffee_outlined, "원두"),
          _buildIcon(Icons.backpack_outlined, "드랍백"),
          _buildIcon(Icons.hourglass_bottom, "콜드브루"),
          _buildIcon(Icons.coffee_maker_outlined, "커피도구"),
          _buildIcon(Icons.home_outlined, "매장메뉴"),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String title){
    return Column(
      children: [
        Icon(icon,
        size: 50,
        color: Colors.brown,),
        Text(title,
        style: TextStyle(
          color: Colors.brown,
        ),),
      ],
    );
  }
}
