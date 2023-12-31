import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();

    Navigator.pushReplacementNamed(context, "/home",arguments: {
      "location":instance.location,
      "flag":instance.flag,
      'time': instance.time
    });
    print(instance.time);
    setState(() {
      time = instance.time!;
    });
  }

  @override
  void initState() {
    //super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:
        SpinKitDualRing( //spinkit pakageni indirdik
          color: Colors.orange,
          size: 100,
        )
      )
    );
  }
}
