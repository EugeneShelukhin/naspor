import 'package:flutter/material.dart';
import 'package:naspor_client/pages/welcome.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
    State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _userLogin=null;

  void _setUserLogin(String text) {
    setState(() => _userLogin=text);
  }

  void _logOut() {
    setState(() => _userLogin=null);
  }

  bool _isLoggedIn()=>_userLogin!=null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Naspor'),
          actions: [
            IconButton(onPressed: _logOut, icon: Icon(Icons.logout)),
            PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Log Out'),onTap: _logOut),
            ],
          ),],
        ),
        body: (_userLogin == null )? LoginPage(setUserLogin: _setUserLogin): WelcomePage(name: _userLogin!)
        ,bottomNavigationBar: (_userLogin == null )? null: BottomNavigationBar(items: [
          BottomNavigationBarItem(label:"home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:"open stakes", icon: Icon(Icons.stacked_line_chart)),
          BottomNavigationBarItem(label:"friends", icon: Icon(Icons.people)),
          //BottomNavigationBarItem(label:"Wallet",icon: Icon(Icons.account_balance_wallet_outlined)),
      ],
      currentIndex: 1,
      iconSize: 20,
        elevation: 50,
      ),
      )
    );
  }
}


