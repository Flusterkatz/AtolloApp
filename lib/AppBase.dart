import 'package:flutter/material.dart';

import 'package:atollo_app/SplashScreen.dart';

class AppBase extends StatelessWidget {
  const AppBase({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atollo App',
      theme: ThemeData(primarySwatch: Colors.red,),
      home: const SplashScreen(),
    );
  }
}