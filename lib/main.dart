import 'package:flutter/material.dart';
import 'package:go_to_moon_ui/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(31, 31, 31, 1)
      ),
      title: 'Go Moon',
      home: const HomePage()
    );
  }
}
