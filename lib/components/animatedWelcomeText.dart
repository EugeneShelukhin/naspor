import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AnimatedWelcomeText extends StatefulWidget{
  const AnimatedWelcomeText({Key? key, required this.contentText}):super(key: key);
  final String contentText;

  @override
  _AnimatedWelcomeTextState createState()=> _AnimatedWelcomeTextState();
}

class _AnimatedWelcomeTextState extends State<AnimatedWelcomeText>{
  double _marginTop=250;
  _updateState(){
    setState(() {
      _marginTop=10;
    });
  }

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:<Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 750),
          curve:Curves.bounceOut,
          margin: EdgeInsets.only(top: _marginTop),
          child: Text(
            widget.contentText,
            style: Theme.of(context).textTheme.headline4
            )
        ),
        ElevatedButton(onPressed: (){_updateState();}, child: Text('ok')),
      ]
    );
  }
}