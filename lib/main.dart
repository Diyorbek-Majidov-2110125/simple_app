import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
      },
    );
  }
}