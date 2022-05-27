import 'package:flutter/material.dart';
import 'package:naspor_client/pages/friends.dart';
import 'package:naspor_client/pages/home.dart';
import 'package:naspor_client/pages/stakes/openStakes.dart';

class OpenStakesPageRoute extends MaterialPageRoute {
  OpenStakesPageRoute({Key? key}) : super(builder: (context){
    return OpenStakes();
  });
}

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute({Key? key}) : super(builder: (context){
    return Home();
  });
}

class FriendsPageRoute extends MaterialPageRoute {
  FriendsPageRoute({Key? key}) : super(builder: (context){
    return Friends();
  });
}