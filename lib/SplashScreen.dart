import 'package:flutter/material.dart';

import 'package:atollo_app/LoginScreen.dart';
import 'package:atollo_app/RegisterScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D53),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/images/splash_top.png')
            )
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    child: Image.asset('assets/images/shield_noText.png')
                  ),
                  const SizedBox(height: 50),
                  FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: const Color(0x50ffffff),
                        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                        'LOG IN',
                        style: TextStyle(fontSize: 30)
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 30, decoration: TextDecoration.underline, color: Color(0xffCADC48))
                    )
                  )
                ]
              )
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('assets/images/splash_bottom.png')
            )
          )
        ]
      )
    );
  }
}