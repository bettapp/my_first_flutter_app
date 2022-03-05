import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: MyHomePage(title: 'Calculator',),
      title: Text('Calculator Beta 0.1'),
      image: Image.asset('images/Logo.jpg'),
      //imageBackground: Image.asset('images/Background.jpg'), Does not Work
      //TODO: implement background image
      loadingText: Text('Loading ...'),
      photoSize: 100,
      loaderColor: Colors.red,
    );
  }
}

