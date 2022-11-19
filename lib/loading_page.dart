import 'package:flutter/material.dart';
import 'main_screen.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MainScreen();
      }));

    });
    return Container(
      color: Colors.white,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/loading.png"),
            CircularProgressIndicator(
              color: Colors.blue,
            ),
          ],

        ),
      ),
    );
  }
}