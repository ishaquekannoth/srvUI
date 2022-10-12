import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (Column(
      children: [
        Container(
          width: size.width,
          height: size.height *0.33,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("lib/images/topImage.png"),
            ),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.height*0.3,
          child: Center(
            child: Container(
              width: size.width * 0.5,
              height: size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("lib/images/middleImage.png"),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: size.height*0.333,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("lib/images/bottomImage.png"),
            ),
          ),
        )
      ],
        )),
      ),
    );
  }
}