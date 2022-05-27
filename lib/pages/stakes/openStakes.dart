import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naspor_client/pages/stakes/stake.dart';

class OpenStakes extends StatelessWidget{
  List<Stake> _seedData=SeedData().Stakes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Naspor'),
        ),
        body:   ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: _seedData.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: (BuildContext context, int index){
            return ListTile(title: Text("${_seedData[index].Category}. ${_seedData[index].Title} - ${_seedData[index].Date}"));
          },
        )
      //
    );;
  }
}

