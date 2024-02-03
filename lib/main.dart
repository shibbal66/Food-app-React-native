import 'package:flutter/material.dart';
import 'package:pfa2/dashboard.dart';
import 'package:pfa2/Models/recette_list.dart';
import 'package:pfa2/details.dart';
import 'package:pfa2/homePage.dart';
import 'package:pfa2/loginPage.dart';
import 'package:pfa2/signup.dart';
import 'package:pfa2/started.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:pfa2/tryStep.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>RecetteData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SignUp(),
        /*AnimatedSplashScreen(
            splashIconSize: 200,
            duration: 3000,
            animationDuration: Duration(milliseconds: 3000),
            splashTransition:SplashTransition.fadeTransition,
            splash: "images/logo.png",
            nextScreen: StartedPage()),*/
        routes: {
          "started" : (context)=>StartedPage(),
          "home" : (context)=> HomePage(),
          "login":(context)=>Login(),
          "signup":(context)=>SignUp(),
          "tryIt":(context)=>TryStep(),
          "dashboard":(context)=>Dashboard(),
        },
      ),
    );
  }
}
