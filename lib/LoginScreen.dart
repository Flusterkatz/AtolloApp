import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff003D53),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 150,
                    child: Image.asset('assets/images/logo_white.png')
                ),
                const SizedBox(height: 10),
                /*Text(
                    'username',
                    style: TextStyle(fontSize: 25, color: Color(0xc0ffffff))
                ),*/
                SizedBox(
                  width: 250,
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                          contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                          filled: true,
                          fillColor: Color(0xc0ffffff)
                      ),
                      style: TextStyle(color: Color(0xc0ffffff))
                  )
                ),
                const SizedBox(height: 15),
                SizedBox(
                    width: 250,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                            filled: true,
                            fillColor: Color(0xc0ffffff)
                        ),
                        style: TextStyle(color: Color(0xc0ffffff))
                    )
                ),
                const SizedBox(height: 25),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                        'create an account',
                        style: TextStyle(fontSize: 25, decoration: TextDecoration.underline, color: Color(0xffCADC48)))
                ),
                const SizedBox(height: 10),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xffcadc48),
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                      'LOG IN',
                      style: TextStyle(fontSize: 30, color: Color(0xff003d53))
                  ),
                )
              ]
            )
        )
    );
  }
}