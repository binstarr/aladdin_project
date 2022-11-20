import 'package:flutter/material.dart';

class HomeForeignPopularBook extends StatelessWidget {
  const HomeForeignPopularBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/foreign_book/book6.jpg")),
          SizedBox(height: 10,),
          Image.asset("assets/foreign_book/book7.jpg"),
          SizedBox(height: 20,),
          Text("Zootopia Read-Along Storybook & CD (Paperback)",
          style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("The modern mammal metropolis of Zootopia is a city like no other."
                  "Comprised of habitat neighborhoods like ritzy Sahara Square and frigid Tundratown,"
                  " it's a melting pot where no matter what you are, "
                  "from the biggest elephant to the smallest shrew, you can be anything. "
                  "But when optimistic Officer Judy Hopps arrives, "
                  "she discovers that being the first bunny on a police force of big, "
                  "tough animals isn't so easy. Determined to prove herself, "
                  "she jumps at the opportunity to crack a case, even if it means partnering with a fast-talking, "
                  "scam-artist fox, Nick Wilde, to solve the mystery. "
                  "Children ages 3 to 7 will love this beautifully illustrated hardcover Big Golden Book based on Disne",
                style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}