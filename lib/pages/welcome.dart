import 'package:flutter/material.dart';
import '../components/animatedWelcomeText.dart';
/*
class WelcomePageRoute extends MaterialPageRoute {
  WelcomePageRoute({Key? key, required String name}) : super(builder: (context){
    return WelcomePage(name: name);
  });
}*/

class WelcomePage extends StatelessWidget{
  const WelcomePage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Center(
        child:AnimatedWelcomeText(contentText:'привет, $name')
    );
  }
}