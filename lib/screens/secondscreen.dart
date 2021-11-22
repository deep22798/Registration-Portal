// import 'package:flutter/material.dart';
// import 'package:shrinarayanenterprises/new%20regi.dart';
// import 'package:shrinarayanenterprises/screens/registration.dart';
// import 'package:toast/toast.dart';
//
// import 'hindihome.dart';
// class registration extends StatefulWidget {
//
//
//
//
//   @override
//   _registrationState createState() => _registrationState();
// }
// class _registrationState extends State<registration> {
//
//   // bool visible = false ;
//
//   void shToast(){
//     Toast.show(
//         "हिंदी में स्विच किया गया",
//         context,
//         backgroundColor: Colors.orange,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.white60
//     );
//   }
//   void shTost(){
//     Toast.show(
//         "Switched to English",
//         context,
//         backgroundColor: Colors.orange,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.white60
//     );
//   }
//
//   // loadProgre(){
//   //
//   //   if(visible == true){
//   //     setState(() {
//   //       visible = false;
//   //     });
//   //   }
//   //   else{
//   //     setState(() {
//   //       visible = true;
//   //     });
//   //   }
//   //
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
//               children:[
//             Image(image: AssetImage("job.png"),),
//           Text("Are you searching for a job",style: TextStyle(color: Colors.orange),),SizedBox(height: 5,),
//                 Text("क्या आप नौकरी खोज रहे हैं?",style: TextStyle(color: Colors.orange),),
//                 SizedBox(height: 20,),
//                 Text("Continue with / जारी रखें ",style: TextStyle(color: Colors.orange,fontSize: 20),),
//                 SizedBox(height: 5,),
//                 Container(height: 40,width: 200,child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//
//                   InkWell(
//                     borderRadius: BorderRadius.circular(16),
//                     onTap: (){
//                       // loadProgre();
//                       shTost();
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=>newregi()));},
//                     child: Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.orange,),
//                       height: 40,width: 90,
//                     child: Center(child: Text("ENGLISH",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),),
//                   ),
//                     SizedBox(width: 10,),
//                     InkWell(
//                       borderRadius: BorderRadius.circular(16),
//                       onTap: (){
//                         shToast();
//                         // loadProgre();
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>newregih()));},
//                       child: Container(
//                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.orange,),
//                         child: Center(child: Text("हिंदी",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
//
//                         height: 40,width: 90,),
//                     ),
//
//                 ],),
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.transparent
//                   ),
//
//                 ),SizedBox(height: 20,),
//                 // Container(
//                 //   height: 20,width:20,child: Visibility(visible: visible,
//                 //   child: CircularProgressIndicator(
//                 //   ),
//                 // ),
//                 //
//                 // ),SizedBox(height: 10,),
//
//                 ])),
//         ),
//       ),
//     );
//   }
// }
//
