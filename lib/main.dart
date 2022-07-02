import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/completion_screen.dart';
import 'screens/get_started.dart';
import 'screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

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
      routes: {
        GetStarted.routename: (context) => const GetStarted(),
        LoginScreen.routename: (context) => const LoginScreen(),
        CompletionScreen.routename: (context) => const CompletionScreen(),
      },
    );
  }
}
