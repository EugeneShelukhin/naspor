import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naspor_client/pages/welcome.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naspor'),
      ),
      body: Center(child: Text("This is home page"))
      //
    );
  }
}