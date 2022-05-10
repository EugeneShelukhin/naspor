import 'package:flutter/material.dart';
import 'package:naspor_client/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _login = "test login";
  String _pass = "test pass";

  void _changeName(String text) {
    setState(() => _login=text);
  }

  void _changePass(String text){
    setState(()=>_pass=text);
  }

  void _loginPressed(){
    Navigator.of(context).push(WelcomePageRoute(name: _login));
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

            Text('login: $_login'),
            TextField(decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.login),
                hintText: "Введите логин",
                fillColor: Colors.black12,
                filled: true),
                onChanged: _changeName,),
            Text('password: $_pass'),
            TextField(decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.password_rounded),
                hintText: "Введите пароль",
                fillColor: Colors.black12,
                filled: true),
                obscureText: true,
                onChanged: _changePass,
            ),
            ElevatedButton(
                child: Text("Login", style: TextStyle(fontSize: 22)),
                onPressed: _loginPressed
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}