import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  void tekantombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("yeet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString()),
              MaterialButton(
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                onPressed: tekantombol,
                child: Text("Tambah"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
