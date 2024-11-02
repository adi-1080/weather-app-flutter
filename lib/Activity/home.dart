import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mausam/Worker/worker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  late Worker vileparle;
  void startApp() async{
    
    await vileparle.getData();
    print(vileparle.temp.toStringAsFixed(2));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vileparle = new Worker();
    print("Home Screen Created");
    startApp();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state function called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Home Screen Disposed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Screen"
            " , Welcome!"),
      ),
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () => setState( () {
              counter++;
            }),
          ),
          Text("You have pressed this button $counter times"),
          Text("Temperature: ${vileparle.temp.toStringAsFixed(2)}"),
        ],
      ),
    );
  }
}
