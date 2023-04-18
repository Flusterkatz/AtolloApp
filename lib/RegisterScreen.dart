import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  double textBoxWidth = 300;

  @override
  Widget build(BuildContext context) {
    List<Widget> entries = <Widget>[
      const SizedBox(height: 20),
      Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          iconSize: 64,
          color: Color(0xc0ffffff),
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          }
        )
      ),
      const SizedBox(height: 20),
      Column (
        children: <Widget> [
          SizedBox(
              width: textBoxWidth,
              child: Text(
                'Account',
                style: TextStyle(fontSize: 30, color: Color(0xeeffffff))
              )
          ),
          SizedBox(
            width: textBoxWidth,
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
          const SizedBox(height: 10),
          SizedBox(
              width: textBoxWidth,
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
          const SizedBox(height: 60),
          SizedBox(
              width: textBoxWidth,
              child: Text(
                  'Contact',
                  style: TextStyle(fontSize: 30, color: Color(0xeeffffff))
              )
          ),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 10),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone Number',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 60),
          SizedBox(
              width: textBoxWidth,
              child: Text(
                  'School',
                  style: TextStyle(fontSize: 30, color: Color(0xeeffffff))
              )
          ),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'School Name',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 10),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Grade Level',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 60),
          SizedBox(
              width: textBoxWidth,
              child: Text(
                  'Other',
                  style: TextStyle(fontSize: 30, color: Color(0xeeffffff))
              )
          ),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Intended Major',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 10),
          SizedBox(
              width: textBoxWidth,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Current Employment',
                      contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      filled: true,
                      fillColor: Color(0xc0ffffff)
                  ),
                  style: TextStyle(color: Color(0xc0ffffff))
              )
          ),
          const SizedBox(height: 60),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xffcadc48),
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 80.0),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
                'Submit',
                style: TextStyle(fontSize: 30, color: Color(0xff003d53))
            ),
          ),
          const SizedBox(height: 60)
        ]
      )
    ];

    return Scaffold (
        backgroundColor: const Color(0xff003D53),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return entries[index];
          }
        )
    );
  }
}