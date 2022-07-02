import 'package:flutter/material.dart';

import 'screens/get_started.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Live Coding Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
              .copyWith(
                  primary: Colors.deepPurple, secondary: Colors.purpleAccent)),
      home: const GetStarted(),
    );
  }
}
