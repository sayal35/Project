import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'View/Login.dart';
import 'View/route_constants.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initFirebase();
  runApp(MaterialApp(
    title: 'Flutter App!!',
    theme: ThemeData(
        primaryColor: Color(0xFF6D4C41), // Use the color of your furniture items
        hintColor: Color(0xFF8D6E63), // Use a complementary color
        visualDensity: VisualDensity.adaptivePlatformDensity,

    ),

    debugShowCheckedModeBanner: false,
    initialRoute: RouteConstants.loginRoute,
    routes: {
      RouteConstants.loginRoute: (context) => Login(),
    },
  ));
}

initFirebase()async{
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
}
