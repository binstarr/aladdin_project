import 'package:flutter/material.dart';

class SpaceStoreBanner extends StatelessWidget {
  const SpaceStoreBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/space_store/banner.png'),
          ),
        ),
      ],
    );
  }
}
