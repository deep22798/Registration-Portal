import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shrinarayanenterprises/new%20regi.dart';
import 'package:shrinarayanenterprises/screens/animation_screen.dart';
import 'package:shrinarayanenterprises/screens/secondscreen.dart';



void main() async{WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
            children: <Widget>[
              Scaffold(
                  body: newregi()
              ),
              IgnorePointer(
                  child: AnimationScreen(
                      color: Colors.white
                  )
              )
            ]
        )
    );
  }
}


