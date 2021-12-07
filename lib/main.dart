import 'package:flutter/material.dart';
import 'package:movies/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.black,

        primaryColor: Colors.black,
      ),

      routes: {
        HomeScreen.routeName:(buildContext)=>HomeScreen()

      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}


