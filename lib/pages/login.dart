import 'package:flutter/material.dart';
import 'package:naspor_client/pages/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.setUserLogin}) : super(key: key);

  final void Function(String text) setUserLogin;
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
    widget.setUserLogin(_login);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Please specify your credentials',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text('Enter your login:'),
            new Container(
              margin: const EdgeInsets.only(left:10.0, top:5.0, right:50.0, bottom: 5),
              child:TextField(decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.login),
                    hintText: "Введите логин",
                    fillColor: Colors.black12,
                    filled: true),
                    onChanged: _changeName,)
            ),
            Text('password: '),
            new Container(
              margin: const EdgeInsets.only(left:10.0, top:5.0, right:50.0, bottom: 5),
              child:TextField(decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.password_rounded),
                    hintText: "Введите пароль",
                    fillColor: Colors.black12,
                    filled: true),
                    obscureText: true,
                    onChanged: _changePass,
                )
            ),
            new Container(
              margin: const EdgeInsets.only(left: 50,top:20.0, right: 50.0),
              width: double.infinity, height: 50,
              child: ElevatedButton(
                child: Text("Login", style: TextStyle(fontSize: 22)),
                onPressed: _loginPressed,
                //style: Size.fromHeight(),
            )),
          ],
        ),
      );
  }
}