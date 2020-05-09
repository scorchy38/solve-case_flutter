import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      image: Image.asset(
        'assets/solvee.png',
      ),
      photoSize: 100.0,
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      loaderColor: Colors.redAccent,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      body: SafeArea(
        child: Card(
          color: Colors.deepPurple,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Text(
              'Hey There!!\nSolve case is here',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            ),
            title: Image.asset('assets/support.png'),
          ),
        ),
      ),
    );
  }
}
