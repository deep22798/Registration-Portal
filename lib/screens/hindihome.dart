//
// import 'dart:async';
// import 'dart:convert';
// import 'dart:math';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flushbar/flushbar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:path/path.dart' as Path;
// import 'package:google_fonts/google_fonts.dart';
// import 'package:shrinarayanenterprises/city.dart';
// import 'package:shrinarayanenterprises/screens/Contactus.dart';
// import 'package:shrinarayanenterprises/screens/aboutus.dart';
// import 'package:shrinarayanenterprises/screens/thankyou.dart';
// import 'package:toast/toast.dart';
// class newregih extends StatefulWidget {
//   @override
//   _newregihState createState() => _newregihState();
// }
//
// class _newregihState extends State<newregih> {
//   String a='https://firebasestorage.googleapis.com/v0/b/srinarayanenterprises-8b5c8.appspot.com/o/pdf%20documentation%2FShri%20Narayan%20Enterprises%20I.pdf?alt=media&token=d538a2e6-53bb-46a2-873b-c7123926bb85';
//
//   List <String> cast = ['Sc', 'St', 'General','Obc'];
//
//   List <String> city=cit;
//
//
//   List <String> jobtype=['हाउस मेड','कुकिंग खाना बनाना','हाउसकीपिंग','पेशेंट केयर','न्यूबॉर्न बेबी केयर','जापा मेड'];
//
//   List <String> state = ['आंध्र प्रदेश ',' अरुणाचल प्रदेश ',' असम ',' बिहार ',' छत्तीसगढ़ ',' गोवा ',
//   'गुजरात', 'हरियाणा', 'हिमाचल प्रदेश', 'झारखंड', 'कर्नाटक', 'केरल', 'मध्य प्रदेश', 'महाराष्ट्र',
//   'मणिपुर', 'मेघालय', 'मिजोरम', 'नागालैंड', 'ओडिशा', 'पंजाब', 'राजस्थान', 'सिक्किम', 'तमिलनाडु', 'तेलंगाना',
//   'त्रिपुरा', 'उत्तर प्रदेश', 'उत्तराखंड', 'पश्चिम बंगाल']; // Option 2
//
//   String name,mobile,email,lastsallery,workexperience;
//
//   String _selectedstate,_selectedcity,_selectedjobtype;
//
//   String _selected;
//   List<Map> _myJson = [
//     {"id": 'हाउस मेड', "image": "assets/jobtype/housemaid.jpg", "name": "हाउस मेड"},
//     {"id": 'कुकिंग खाना बनाना', "image": "assets/jobtype/coki.jpeg", "name": "कुकिंग खाना बनाना"},
//     {"id": 'न्यूबॉर्न बेबी केयर', "image": "assets/jobtype/babc.jpg", "name": "न्यूबॉर्न बेबी केयर"},
//     {"id": 'हाउसकीपिंग', "image": "assets/jobtype/hous.jpg", "name": "हाउसकीपिंग"},
//     {
//       "id": 'पेशेंट केयर',
//       "image":"assets/jobtype/pc.jpg",
//       "name": "पेशेंट केयर"
//     },
//     {"id": 'जापा मेड', "image": "assets/jobtype/japam.jpeg", "name": "जापा मेड"},
//
//   ];
//
//
//
//
//
//   final firebasedata=FirebaseDatabase.instance.reference().child("Candidate");
//   final GlobalKey <FormState> _formkey=GlobalKey();
//   final TextEditingController _namecontroller=TextEditingController();
//   final TextEditingController _mobilecontroller=TextEditingController();
//   final TextEditingController _emailcontroller=TextEditingController();
//   final TextEditingController _lastsallerycontroller=TextEditingController();
//   final TextEditingController _workExperiencecontroller=TextEditingController();
//
//   bool _loading=false;
//
//   File _image;
//   String _uploadedFileURL;
//   String _uploadedFileUR;
//   String _uploadedFileU;
//
//
//   bool showtost=false;
//
//
//
//   void showToast(){
//     Toast.show(
//         "सफल पंजीकृत",
//         context,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.blue
//     );
//   }
//
//   void shoToast(){
//     Toast.show(
//         "फोटो अपलोड सफल रहा",
//         context,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.blue
//     );
//   }
//
//
//   void shToast(){
//     Toast.show(
//         "फोटो अपलोड सफल रहा",
//         context,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.blue
//     );
//   }
//
//
//
//
//   Future chooseFile() async {
//     await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
//       setState(() {
//         _image = image;
//       });
//     });
//   }
//
//
//
//   Future uploadFil() async {
//     StorageReference storageReference = FirebaseStorage.instance
//         .ref()
//         .child('Candidate images/${Path.basename(_image.path)}}');
//     StorageUploadTask uploadTask = storageReference.putFile(_image);
//     await uploadTask.onComplete;
//
//     storageReference.getDownloadURL().then((fileURL) {
//       setState(() {
//         loadProgre();
//         _uploadedFileU = fileURL;
//         shoToast();
//         if(_uploadedFileU==null){
//
//           shoToast();
//
//         }
//
//       });
//     });
//   }
//   static final DateTime now = DateTime.now();
//   static final DateFormat formatter = DateFormat('yyyy-MM-dd');
//   final String ok = formatter.format(now);
//
//   String timeString;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
//   }
//
//   void _getTime() {
//     final String formattedDateTime =
//     DateFormat('kk:mm:ss').format(DateTime.now()).toString();
//     setState(() {
//       timeString = formattedDateTime;
//       print(timeString);
//     });
//   }
//
//
//
//
//   @override
//
//   void dispose() {
//     _emailcontroller.dispose();
//     _namecontroller.dispose();
//     _mobilecontroller.dispose();
//     _lastsallerycontroller.dispose();
//     _workExperiencecontroller.dispose();
//     _namecontroller.dispose();
//     super.dispose();
//   }
//
//
//
//
//   Future uploadFile() async {
//     StorageReference storageReference = FirebaseStorage.instance
//         .ref()
//         .child('Candidate images/${Path.basename(_image.path)}}');
//     StorageUploadTask uploadTask = storageReference.putFile(_image);
//     await uploadTask.onComplete;
//
//     storageReference.getDownloadURL().then((fileURL) {
//       setState(() {
//         loadProgress();
//         _uploadedFileUR = fileURL;
//         shoToast();
//         if(_uploadedFileUR==null){
//
//           shoToast();
//
//         }
//
//       });
//     });
//   }
//
//
//
//   void showTot(){
//     Toast.show(
//         "Please upload all the photos or fields",
//         context,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.blue
//     );
//   }
//
//   Future uploadF() async {
//     StorageReference storageReference = FirebaseStorage.instance
//         .ref()
//         .child('Candidate images/${Path.basename(_image.path)}}');
//     StorageUploadTask uploadTask = storageReference.putFile(_image);
//     await uploadTask.onComplete;
//
//     storageReference.getDownloadURL().then((fileURL) {
//       setState(() {
//         loadProgres();
//         _uploadedFileURL = fileURL;
//         shoToast();
//         if(_uploadedFileURL==null){
//
//           shoToast();
//
//         }
//
//       });
//     });
//   }
//
//   bool visible = false ;
//   bool visibl = false ;
//   bool visib = false ;
//   bool visi = false ;
//
//   loadProgress(){
//     if(visib == true){
//       setState(() {
//        visib = false;
//       });
//     }
//    else{
//       setState(() {
//         visib = true;
//       });
//     }
//
//   }
//   loadProgr(){
//     if(visi == true){
//       setState(() {
//         visi = false;
//       });
//     }
//     else{
//       setState(() {
//         visi = true;
//       });
//     }
//
//   }
//
//   loadProgres(){
//     if(visibl == true){
//       setState(() {
//         visibl = false;
//       });
//     }
//     else{
//       setState(() {
//         visibl = true;
//       });
//     }
//
//   }
//
//   loadProgre(){
//     if(visible == true){
//       setState(() {
//         visible = false;
//       });
//     }
//     else{
//       setState(() {
//         visible = true;
//       });
//     }
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(toolbarHeight: 70,
//         shadowColor: Colors.transparent,title: Text('श्री नारायण एंटरप्राइजेज',style: TextStyle(fontWeight: FontWeight.bold),),
//         backgroundColor: Colors.orange[400],
//       ),
//       drawer: Drawer(
//         child: Scaffold(backgroundColor: Colors.white,
//           body: SingleChildScrollView(
//             child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               children: [Container(
//                 decoration: BoxDecoration(color: Colors.orange[400],
//                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
//                 ),
//                 height: 300,width: double.infinity,child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Container(
//                   height: 130,width: 130,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("sri.png"))),
//                 ),
//                   Text("श्री नारायण एंटरप्राइजेज",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
//                   SizedBox(height: 8,),
//                   Text("(एक संपूर्ण नौकरी के लिए पंजीकरण करें)",style: TextStyle(color: Colors.white),)
//                 ],
//               )),),
//                 SingleChildScrollView(
//                   child: Container(height: 380,width: double.infinity,color: Colors.white30,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(height:80,),
//                         InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>newregih()));},splashColor: Colors.orange,
//                             child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("पंजीकरण",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),)),
//                             )
//                         ),
//                         SizedBox(height: 30,),
//                         InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutush()));},splashColor: Colors.orange,
//                             child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("हमारे बारे में",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                         SizedBox(height: 30,),
//                         InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactush()));},splashColor: Colors.orange,
//                             child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("संपर्क करें",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                         SizedBox(height: 30,),
//                         // InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>termsandconditionsh()));},splashColor: Colors.orange,
//                         //     child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("नियम व शर्त",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                         // SizedBox(height: 30,),
//                         // InkWell(onTap: (){},splashColor: Colors.orange,
//                         //     child: Container(height: 50,width: double.infinity,color: Colors.yellow,child: Center(child: Text("HOME")),)),
//                       ],
//                     ),
//
//
//                   ),
//                 ),
//               ],
//             )),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(0.0),
//         child: SingleChildScrollView(
//           child: Column(mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(height: 20,width: double.infinity,decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
//                   boxShadow: [BoxShadow(color: Colors.transparent,spreadRadius: 0)]),),
//               SizedBox(height: 5,),
//
//               Center(
//                   child: Text(
//                     "पंजीकरण",
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.orange),
//                   )),
//
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Container(
//
//                   decoration: BoxDecoration(
//                       color: Colors.white10,
//                       borderRadius: BorderRadius.circular(16)
//                   ),
//                   child: Container(child: Column(
//                     children: [
//
//                       Form(key: _formkey,
//                           child: Column(
//                             children: [
//                               TextFormField(
//                                 controller: _namecontroller,
//                                 textAlignVertical: TextAlignVertical.center,
//                                 validator: (String val) {
//                                   if (val.isEmpty) {
//                                     return 'पूरा नाम आवश्यक है';
//                                   }
//                                   return null;
//                                 },
//                                 onChanged: (val){name=val;},keyboardType: TextInputType.multiline,
//                                 maxLines: 1,
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontSize: 14.5,
//                                   fontWeight: FontWeight.w500,
//                                   letterSpacing: 0.5,
//                                 ),
//                                 textInputAction: TextInputAction.done,
//                                 textCapitalization: TextCapitalization.words,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.all(0),
//                                   helperStyle: GoogleFonts.poppins(
//                                     color: Colors.black.withOpacity(0.65),
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   errorStyle: GoogleFonts.poppins(
//                                     fontSize: 13.0,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   hintStyle: GoogleFonts.poppins(
//                                     color: Colors.black54,
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixIcon: Icon(
//                                     Icons.person,color: Colors.orange,
//                                   ),
//                                   prefixIconConstraints: BoxConstraints(
//                                     minWidth: 50.0,
//                                   ),
//                                   labelText: 'पूरा नाम',
//                                   labelStyle: GoogleFonts.poppins(
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12.0),
//                                   ),
//                                 ),
//
//                               ),
//                               SizedBox(height: 10,),
//                               TextFormField(
//                                 controller: _emailcontroller,
//                                 textAlignVertical: TextAlignVertical.center,
//                                 validator: (String val) {
//                                   if (val.trim().isEmpty) {
//                                     return 'ईमेल पते की ज़रुरत है';
//                                   }
//                                   if (!RegExp(
//                                       r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$")
//                                       .hasMatch(val)) {
//                                     return 'कृपया एक वैध ई - मेल एड्रेस डालें';
//                                   }
//                                   return null;
//                                 },
//                                 onChanged: (val){email=val;},
//                                 maxLines: 1,
//                                 enableInteractiveSelection: false,
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontSize: 14.5,
//                                   fontWeight: FontWeight.w500,
//                                   letterSpacing: 0.5,
//                                 ),
//                                 textInputAction: TextInputAction.done,
//                                 keyboardType: TextInputType.emailAddress,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.all(0),
//                                   helperStyle: GoogleFonts.poppins(
//                                     color: Colors.black.withOpacity(0.65),
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   errorStyle: GoogleFonts.poppins(
//                                     fontSize: 13.0,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   hintStyle: GoogleFonts.poppins(
//                                     color: Colors.black54,
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixIcon: Icon(
//                                     Icons.email,color: Colors.orange,
//                                   ),
//                                   prefixIconConstraints: BoxConstraints(
//                                     minWidth: 50.0,
//                                   ),
//                                   labelText: 'ईमेल',
//                                   labelStyle: GoogleFonts.poppins(
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12.0),
//                                   ),
//                                 ),
//
//                               ),
//                               SizedBox(height: 10,),
//                               TextFormField(
//                                 controller: _mobilecontroller,
//                                 textAlignVertical: TextAlignVertical.center,
//                                 validator: (String val) {
//                                   if (val.isEmpty) {
//                                     return 'मोबाइल नंबर आवश्यक है';
//                                   } else if (val.length != 10) {
//                                     return '10 नंबर चाहिए';
//                                   }
//                                   return null;
//                                 },
//                                 onChanged: (val){mobile=val;},
//                                 maxLines: 1,
//                                 enableInteractiveSelection: false,
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontSize: 14.5,
//                                   fontWeight: FontWeight.w500,
//                                   letterSpacing: 0.5,
//                                 ),
//                                 textInputAction: TextInputAction.done,
//                                 keyboardType: TextInputType.number,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.all(0),
//                                   helperStyle: GoogleFonts.poppins(
//                                     color: Colors.black.withOpacity(0.65),
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixText: '+91 ',
//                                   prefixStyle: GoogleFonts.poppins(
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 14.5,
//                                   ),
//                                   errorStyle: GoogleFonts.poppins(
//                                     fontSize: 13.0,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   hintStyle: GoogleFonts.poppins(
//                                     color: Colors.black54,
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixIcon: Icon(
//                                     Icons.phone,color: Colors.orange,
//                                   ),
//                                   prefixIconConstraints: BoxConstraints(
//                                     minWidth: 50.0,
//                                   ),
//                                   labelText: 'मोबाइल न',
//                                   labelStyle: GoogleFonts.poppins(
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12.0),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 10,),
//                               TextFormField(
//                                 controller: _lastsallerycontroller,
//                                 textAlignVertical: TextAlignVertical.center,
//                                 validator: (String val) {
//                                   if (val.isEmpty) {
//                                     return 'अंतिम वेतन आवश्यक है';}
//                                   return null;
//                                 }, keyboardType: TextInputType.number,
//                                 onChanged: (val){lastsallery=val;},
//                                 maxLines: 1,
//                                 style: GoogleFonts.poppins(
//                                   color: Colors.black,
//                                   fontSize: 14.5,
//                                   fontWeight: FontWeight.w500,
//                                   letterSpacing: 0.5,
//                                 ),
//                                 textInputAction: TextInputAction.done,
//                                 textCapitalization: TextCapitalization.words,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.all(0),
//                                   helperStyle: GoogleFonts.poppins(
//                                     color: Colors.black.withOpacity(0.65),
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   errorStyle: GoogleFonts.poppins(
//                                     fontSize: 13.0,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   hintStyle: GoogleFonts.poppins(
//                                     color: Colors.black54,
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixIcon: Icon(
//                                     Icons.monetization_on,color: Colors.orange,
//                                   ),
//                                   prefixIconConstraints: BoxConstraints(
//                                     minWidth: 50.0,
//                                   ),
//                                   labelText: 'अंतिम वेतन',
//                                   labelStyle: GoogleFonts.poppins(
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12.0),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 10,),
//                               TextFormField(
//                                 controller: _workExperiencecontroller,
//                                 textAlignVertical: TextAlignVertical.center,
//                                 validator: (String val) {
//                                   if (val.isEmpty) {
//                                     return 'कार्य अनुभव की आवश्यकता है';
//                                   }
//                                   return null;
//                                 }, keyboardType: TextInputType.text,
//                                 onChanged: (val){workexperience=val;},
//                                 maxLines: 1,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.all(0),
//
//                                   errorStyle: GoogleFonts.poppins(
//                                     fontSize: 13.0,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   hintStyle: GoogleFonts.poppins(
//                                     color: Colors.black54,
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   prefixIcon: Icon(
//                                     Icons.work,color: Colors.orange,
//                                   ),
//                                   prefixIconConstraints: BoxConstraints(
//                                     minWidth: 50.0,
//                                   ),
//                                   labelText: 'कार्य अनुभव',
//                                   labelStyle: GoogleFonts.poppins(
//                                     fontSize: 14.5,
//                                     fontWeight: FontWeight.w500,
//                                     letterSpacing: 0.5,
//                                   ),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12.0),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 10,),
//                               Stack(
//                                 children: [Container(height: 47,width: double.infinity,
//                                   decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                       borderRadius: BorderRadius.circular(12)),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Row(
//                                       children: [Container(child: Icon(Icons.location_city,color: Colors.orange,),
//                                         height: 50,width: 20,color: Colors.transparent,
//                                       ),
//                                         // SizedBox(width: 10,),
//                                         // Container(height: 40,width: 180,color: Colors.red,),
//                                         SizedBox(width: 40,),
//
//                                         DropdownButton <String>(
//                                           iconEnabledColor: Colors.orange,
//                                           hint: Text('कृपया एक राज्य चुनें                     '), // Not necessary for Option 1
//                                           value: _selectedstate,onChanged: (String newValue){
//                                           setState(() {
//                                             _selectedstate=newValue;
//                                           });
//                                         },
//                                           items: state.map<DropdownMenuItem<String>>((String value){
//                                             return DropdownMenuItem<String>(child: Center(child: Text(value)),value: value,);
//                                           }).toList(),underline: Container(color: Colors.transparent),
//                                         ),
//                                         SizedBox(height: 10,),
//                                       ],
//                                     ),
//                                   ),
//                                 )
//                                 ],
//                               ),
//                               SizedBox(height: 10,),
//                               Stack(
//                                 children: [Container(height: 47,width: double.infinity,
//                                   decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                       borderRadius: BorderRadius.circular(12)),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Row(
//                                       children: [Container(child: Icon(Icons.location_city,color: Colors.orange,),
//                                         height: 50,width: 20,color: Colors.transparent,
//                                       ),
//                                         // SizedBox(width: 10,),
//                                         // Container(height: 40,width: 180,color: Colors.red,),
//                                         SizedBox(width: 40,),
//
//                                         DropdownButton <String>(
//                                             iconEnabledColor: Colors.orange,
//                                           hint: Text('कृपया एक शहर चुनें                  '), // Not necessary for Option 1
//                                           value: _selectedcity,onChanged: (String newValue){
//                                           setState(() {
//                                             _selectedcity=newValue;
//                                           });
//                                         },
//                                           items: city.map<DropdownMenuItem<String>>((String value){
//                                             return DropdownMenuItem<String>(child: Center(child: Text(value)),value: value,);
//                                           }).toList(),underline: Container(color: Colors.transparent),
//                                         ),
//
//                                         SizedBox(height: 10,),
//
//                                       ],
//                                     ),
//                                   ),
//                                 )
//                                 ],
//                               ),
//                               SizedBox(height: 10,),
//                               Stack(
//                                 children: [Container(height: 47,width: double.infinity,
//                                   decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                       borderRadius: BorderRadius.circular(12)),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Row(
//                                       children: [Container(child: Icon(Icons.work,color: Colors.orange,),
//                                         height: 50,width: 20,color: Colors.transparent,
//                                       ),
//                                         // SizedBox(width: 10,),
//                                         // Container(height: 40,width: 180,color: Colors.red,),
//                                         SizedBox(width: 40,),
//
//                                         DropdownButton <String>(
//
//                                           icon: Icon(Icons.work,color: Colors.orange,),
//                                           hint: Text('कृपया जॉब टाइप चुनें                   '), // Not necessary for Option 1
//                                           value: _selected,onChanged: (String newValue){
//                                           setState(() {
//                                             _selected=newValue;
//                                           });
//                                         },isExpanded: false,
//                                           underline: Container(color: Colors.transparent),
//                                           items: _myJson.map(
//                                                   (Map map){
//                                                 return new DropdownMenuItem<String>(
//                                                   value: map["id"].toString(),
//                                                   // value: _mySelection,
//                                                   child: Row(
//                                                     children: <Widget>[
//                                                       Image.asset(
//                                                         map["image"],
//                                                         width: 50,
//                                                       ),
//                                                       Container(
//                                                           margin: EdgeInsets.only(left: 10),
//                                                           child: Text(map["name"])),
//                                                     ],
//                                                   ),
//                                                 );
//                                               }
//                                           ).toList(),
//                                         ),
//
//                                         SizedBox(height: 10,),
//
//                                       ],
//                                     ),
//                                   ),
//                                 )
//                                 ],
//                               ),
//
//                               SizedBox(height: 10,),
//                               Text("आधार कार्ड या पैन कार्ड भेजें",style: TextStyle(fontSize: 22),),
//
//
//
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(height: 120,width: double.infinity,decoration: BoxDecoration(
//                                     boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2)],
//                                     borderRadius: BorderRadius.circular(16),color: Colors.white60),
//                                   child: Center(
//                                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Row(mainAxisAlignment: MainAxisAlignment.center,
//                                           children: <Widget>[
//
//                                             Text("(सामने से)",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
//                                             RaisedButton(
//                                               child: Text('फ़ोटो चुनें'),
//                                               onPressed: chooseFile,
//                                               color: Colors.orange,
//                                             ),
//                                             SizedBox(width: 10,),
//
//                                             RaisedButton(
//                                               child: Text('फ़ोटो भेजे'),
//                                               onPressed: () async{
//                                                 uploadFile();
//                                                 loadProgress();
//                                               }
//
//                                               ,
//                                               color: Colors.orange,
//                                             ),
//
//                                           ],
//                                         ), Container(
//                                           height: 5,width: double.infinity,child: Visibility(visible: visib,
//                                           child: LinearProgressIndicator(
//                                           ),
//                                         ),
//                                         ),
//                                         Center(
//                                           child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                                             children: <Widget>[
//
//                                               Text("(पीछे से)",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
//                                               RaisedButton(
//                                                 child: Text('फ़ोटो चुनें'),
//                                                 onPressed: chooseFile,
//                                                 color: Colors.orange,
//                                               ),
//                                             SizedBox(width: 10,),
//
//                                               RaisedButton(
//                                                 child: Text('फ़ोटो भेजे'),
//                                                 onPressed: () async{
//                                                   uploadFil();
//                                                   loadProgre();
//                                                 }
//
//                                                 ,
//                                                 color: Colors.orange,
//                                               ),
//
//                                             ],
//                                           ),
//                                         ),
//                                         Container(
//                                           height: 5,width: double.infinity,child: Visibility(visible: visible,
//                                           child: LinearProgressIndicator(
//                                           ),
//                                         ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),SizedBox(height: 20,),
//
//
//
//                               Text("अपना फोटो भेजें",style: TextStyle(fontSize: 22),),
//
//
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(
//                                     boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2)],
//                                     borderRadius: BorderRadius.circular(16),color: Colors.white60),
//                                   child: Center(
//                                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Row(mainAxisAlignment: MainAxisAlignment.center,
//                                           children: <Widget>[
//
//                                             Text("(फ़ोटो)",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
//                                             RaisedButton(
//                                               child: Text('फ़ोटो चुनें'),
//                                               onPressed: chooseFile,
//                                               color: Colors.orange,
//                                             ),
//                                            SizedBox(width: 10,),
//
//                                             RaisedButton(
//                                               child: Text('फ़ोटो भेजे'),
//                                               onPressed: () async {
//                                                 uploadF();
//                                                 loadProgres();
//                                               }
//                                               ,
//                                               color: Colors.orange,
//                                             ),
//
//                                           ],
//                                         ),
//                                         Container(
//                                           height: 5,width: double.infinity,child: Visibility(visible: visibl,
//                                             child: LinearProgressIndicator(
//                                         ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),SizedBox(height: 5,),
//
//                           Container(
//                             height: 20,width:20,child: Visibility(visible: visi,
//                             child: _circular(
//                             ),
//                           ),
//
//                               ),SizedBox(height: 10,),
//
//                               MaterialButton(onPressed: () async{DateTime currentPhoneDate = DateTime.now(); //DateTime
//
//                               Timestamp myTimeStamp = Timestamp.fromDate(currentPhoneDate); //To TimeStamp
//
//                               DateTime myDateTime = myTimeStamp.toDate(); // TimeStamp to DateTime
//
//                               print("current phone data is: $currentPhoneDate");
//                               print("current phone data is: $myDateTime");
//                                 if(_formkey.currentState.validate() && _uploadedFileURL!=null && _uploadedFileUR!=null  && _uploadedFileU!=null){
//                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>thankyouh()));
//
//                                   dynamic key=CreatCryptoRandomString(32);
//                                   firebasedata.child("$ok").child("$timeString").set({
//
//                                     "mobile":mobile,
//                                     "email":email,
//                                     "work_Experience":workexperience,
//                                     "state":_selectedstate,
//                                     "city":_selectedcity,
//                                     "jobtype":_selected,
//                                     "lastsallery":lastsallery,
//                                     "name":name,
//                                     "imageurl":_uploadedFileURL,
//                                     "imageur":_uploadedFileUR,
//                                     "imageu":_uploadedFileU,
//                                     "timez":timeString,
//                                     "date":ok
//
//
//                                   });
//                                   setState(() {
//                                     loadProgr();
//                                     showToast();
//                                   });
//                                 }
//                                 else{
//                                   showTot();
//                                 }
//
//
//                               },
//                                 textColor: Colors.white,
//                                 child: Container(
//                                   decoration:const BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(16))
//                                   ),
//                                   padding: const EdgeInsets.all(10),
//                                   child: Text("विवरण भेजें",style: TextStyle(
//                                     fontSize: 20,color: Colors.white
//                                   ),),
//
//                                 ),
//                               )
//
//                             ],
//
//                           ))
//                     ],
//                   ),),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
//
//   Widget _linear1(){
//     return LinearProgressIndicator();
//   }
//   Widget _linear2(){
//     return LinearProgressIndicator();
//   }
//   Widget _circular(){
//     return CircularProgressIndicator();
//   }
// }
//
// String CreatCryptoRandomString([int length=32]){
//   final Random random =Random.secure();
//   var values=List<int>.generate(length,(i)=>random.nextInt(256));
//   return base64Url.encode(values);
// }
// void showInfoFlushBar(BuildContext context){
//   Flushbar(
//     title: "error message",
//     message: "field empty",
//     icon: Icon(Icons.info_outline,size: 20,color: Colors.blue.shade300,),
//     duration: Duration(seconds: 3),
//   )..show(context);
//
// }
//
