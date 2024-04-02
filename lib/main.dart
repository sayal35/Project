import 'package:flutter/material.dart';

import 'View/Login.dart';
import 'View/route_constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: false,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: false,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.loginRoute,
      routes: {
        RouteConstants.loginRoute:(context)=>Login(),
      },
    );
  }
}