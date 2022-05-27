import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      home: Scaffold(
        backgroundColor: Color.fromARGB(31, 31, 31, 1),
        // body: Container(
        //   child: Text('Go To Moon', style: TextStyle(color: Colors.white),),
        // ),
        // appBar: AppBar(
        //   title: const Text(
        //     '#Go To Moon',
        //     style: TextStyle(
        //         fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        //   ),
        // ),
        // body: Container(),
      ),
    );
  }
}
