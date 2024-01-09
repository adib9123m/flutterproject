import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:drivers_app/splashScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      projectId: "uber-ola-and-in-driver-c-96ab1",
      apiKey: "AIzaSyBCREnlNUa3iecNG2NDq5JnKJx_CxRzdNU",
      appId: "1:716166659204:android:3bf5d474783b02b58116d1",
      messagingSenderId: "716166659204",
      authDomain: 'uber-ola-and-in-driver-c-96ab1.firebaseapp.com',
      databaseURL: 'https://uber-ola-and-in-driver-c-96ab1.firebaseio.com',
      storageBucket: 'uber-ola-and-in-driver-c-96ab1.appspot.com',
    ),
  );

  runApp(
    MyApp(
        child: MaterialApp(
      title: 'Drivers App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
      debugShowCheckedModeBanner: false,
    )),
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;
  MyApp({this.child});
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
