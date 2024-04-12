import 'package:flutte_profile/profile.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.blue),
          scaffoldBackgroundColor: Colors.grey,
        ),
        home: userprofile());
  }
}
