import 'package:flutter/material.dart';
import 'package:template_project/app/presentaion/pages/welcome_screen/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Stack(
    //     children: <Widget>[
    //       Positioned.fill(child: SkyBackGround()),
    //       // Center(),
    //     ],
    //   ),
    // );
    return HomeScreen();
  }
}
