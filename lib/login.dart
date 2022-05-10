import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _login = "test login";
  String _pass = "test login";

  void _incrementCounter() {
    setState(() {
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Please specify your credentials',
              style: Theme.of(context).textTheme.headline5,
            ),

            Text('login:'),
            TextField(decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.login),
                hintText: "Введите логин",
                fillColor: Colors.black12,
                filled: true)),
            Text('password:'),
            TextField(decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.password_rounded),
                hintText: "Введите пароль",
                fillColor: Colors.black12,
                filled: true
            )),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}