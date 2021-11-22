import 'package:flutter/material.dart';
import 'package:shrinarayanenterprises/new%20regi.dart';
import 'package:shrinarayanenterprises/screens/hindihome.dart';
class thankyou extends StatefulWidget {
  @override
  _thankyouState createState() => _thankyouState();
}

class _thankyouState extends State<thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child:Image(image: AssetImage("thankyou.png"),)
        ),
        Text("Registration Successful",style: TextStyle(fontSize: 25,
            color: Colors.orange,
            fontWeight: FontWeight.bold),),
        Text("We'll Contact you soon",style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold)),
        SizedBox(height: 20,),
        FlatButton(
            color: Colors.orange,splashColor: Colors.white,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>newregi()));
            }, child: Text("Back to Home"))
      ],
    ),
    );
  }
}


//
// class thankyouh extends StatefulWidget {
//   @override
//   _thankyouhState createState() => _thankyouhState();
// }
//
// class _thankyouhState extends State<thankyouh> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       body: Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(child:Image(image: AssetImage("thankyou.png"),)
//           ),
//           Text("पंजीकरण सफल",style: TextStyle(fontSize: 25,
//               color: Colors.orange,
//               fontWeight: FontWeight.bold),),
//           Text("हम आपसे जल्द ही संपर्क करेंगे",style: TextStyle(
//               color: Colors.orange,
//               fontWeight: FontWeight.bold)),
//           SizedBox(height: 20,),
//           FlatButton(
//               color: Colors.orange,splashColor: Colors.white,
//               onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>newregih()));
//               }, child: Text("मुख्य मेनू में वापस जाएं।"))
//         ],
//       ),
//     );
//   }
// }
//
