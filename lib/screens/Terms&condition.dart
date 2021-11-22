import 'package:flutter/material.dart';
class termsandconditions extends StatefulWidget {
  @override
  _termsandconditionsState createState() => _termsandconditionsState();
}

class _termsandconditionsState extends State<termsandconditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image(image: AssetImage("nodata.png"),)),
        Center(child: Text("No Data Found"))

      ],
    ),);
  }
}

class termsandconditionsh extends StatefulWidget {
  @override
  _termsandconditionshState createState() => _termsandconditionshState();
}

class _termsandconditionshState extends State<termsandconditionsh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage("nodata.png"),)),
          Center(child: Text("No Data Found"))

        ],
      ),);
  }
}
