import 'package:flutter/material.dart';

import 'home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rToDo2',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomePage(),
      },
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true),
    );
  }
}