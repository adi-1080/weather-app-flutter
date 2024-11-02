import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state function called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Loading . . . "),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Tooltip(
              message: "Go to home",
              child: IconButton(onPressed: () {
                Navigator.pushNamed(context, "/home");
              }, icon: Icon(Icons.home)),
            ),
            Text("GO TO HOME"),
          ],
        ),
      ),
    );
  }
}