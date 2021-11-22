// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:shrinarayanenterprises/screens/Contactus.dart';
// import 'package:shrinarayanenterprises/screens/Terms&condition.dart';
// import 'package:shrinarayanenterprises/screens/aboutus.dart';
// import 'package:shrinarayanenterprises/screens/thankyou.dart';
// import 'package:toast/toast.dart';
//
// class regis extends StatefulWidget {  bool visible = false ;
//   @override
//   _regisState createState() => _regisState();
// }
//
// class _regisState extends State<regis> {
//
//   String a="";
//
//   TextEditingController _date = new TextEditingController();
//   //
//   // List<String> _locations = ['A', 'B', 'C', 'D'];
//
//   List<String> _cast = ['Sc', 'St', 'General','Obc']; // Option 2
//   String _selectedcast;
//   List <String> _state = ['Andhra Pradesh', 'Arunachal Pradesh', 'Assam','Bihar', 'Chhattisgarh', 'Goa', 'Gujarat','Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka','Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur','Meghalaya', 'Mizoram', 'Nagaland', 'Odisha','Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu','Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand','West Bengal']; // Option 2
//   String _selectedstate;
//   List<String> _city = ['Andhra Pradesh', 'Arunachal Pradesh', 'Assam','Bihar', 'Chhattisgarh', 'Goa', 'Gujarat','Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka','Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur','Meghalaya', 'Mizoram', 'Nagaland', 'Odisha','Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu','Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand','West Bengal']; // Option 2
//   String _selectedcity;
//   List<String> _JobType = ['Sc', 'St', 'General','Obc']; // Option 2
//   String _selectedJobType;
//
//   Future f1()async{
//     DateTime date1=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1950), lastDate: DateTime(2050));
//   setState(() {
//     a=DateFormat("dd/MM/yy").format(date1);
//   });
//   }
//
//   String mobileNo, email, name;
//   bool visible = false ;
//
//
//
//   TextEditingController lastsalleryController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileNoController = TextEditingController();
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//   bool inProgress;
//
//
//
//
//   void showToast(){
//     Toast.show(
//         "Register successful",
//         context,
//         duration: Toast.LENGTH_LONG,
//         gravity: Toast.BOTTOM,
//         textColor: Colors.blue
//     );
//   }
//
//   loadProgress(){
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
//   @override
//   void dispose() {
//     super.dispose();
//     // signupBloc.close();
//   }
//
//
//
//   @override
//
//   Widget build(BuildContext context) {
//
//
//
//     return Scaffold(
//       appBar: AppBar(shadowColor: Colors.transparent,
//         backgroundColor: Colors.orange[400],
//       ),
//       drawer: Drawer(
//         child: Scaffold(backgroundColor: Colors.white60,
//             body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.start,
//               children: [Container(
//                 decoration: BoxDecoration(color: Colors.orange[300],
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
//                 ),
//                 height: 200,width: double.infinity,child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [Container(
//                   height: 130,width: 130,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("sri.png"))),
//                 ),
//                   Text("Sri Narayan Enterprises",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
//                   SizedBox(height: 8,),
//                   Text("(Register For a Perfect Job)",style: TextStyle(color: Colors.white),)
//                 ],
//               )),),
//                 SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
//                   child: Container(height: 400,width: double.infinity,color: Colors.white30,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(height:80,),
//                       InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>regis()));},splashColor: Colors.orange,
//                           child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("HOME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),)),
//                           )
//                       ),
//                       SizedBox(height: 30,),
//                       InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));},splashColor: Colors.orange,
//                           child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                       SizedBox(height: 30,),
//                       InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactus()));},splashColor: Colors.orange,
//                           child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                       SizedBox(height: 30,),
//                       InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>termsandconditions()));},splashColor: Colors.orange,
//                           child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("Terms & Condition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
//                       SizedBox(height: 30,),
//                       // InkWell(onTap: (){},splashColor: Colors.orange,
//                       //     child: Container(height: 50,width: double.infinity,color: Colors.yellow,child: Center(child: Text("HOME")),)),
//
//                     ],
//
//
//                   ),
//
//
//                   ),
//                 ),
//               ],
//             )),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(height: 20,width: double.infinity,decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
//                 boxShadow: [BoxShadow(color: Colors.transparent,spreadRadius: 0)]),),
//             SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.all(5),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       color: Colors.black12,
//                       boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
//                   height: 800,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 40,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(16),
//                               color: Colors.transparent),
//                           child: Center(
//                               child: Text(
//                             "Registration",
//                             style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.orange),
//                           )),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Column(
//                           children: [
//                             Form(
//                               key: _formkey,
//                               child: Column(
//                                 children: [
//                                   TextFormField(
//                                     controller: nameController,
//                                     textAlignVertical: TextAlignVertical.center,
//                                     validator: (String val) {
//                                       if (val.isEmpty) {
//                                         return 'Full name is required';
//                                       }
//                                       return null;
//                                     },
//                                     onChanged: (val) {
//                                      setState(() {
//                                        // _name=val;
//                                      });
//                                     },
//                                     enableInteractiveSelection: false,
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 14.5,
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.5,
//                                     ),
//                                     textInputAction: TextInputAction.done,
//                                     keyboardType: TextInputType.text,
//                                     textCapitalization: TextCapitalization.words,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.all(0),
//                                       helperStyle: GoogleFonts.poppins(
//                                         color: Colors.black.withOpacity(0.65),
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       errorStyle: GoogleFonts.poppins(
//                                         fontSize: 13.0,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       hintStyle: GoogleFonts.poppins(
//                                         color: Colors.black54,
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixIcon: Icon(
//                                         Icons.person,color: Colors.orange,
//                                       ),
//                                       prefixIconConstraints: BoxConstraints(
//                                         minWidth: 50.0,
//                                       ),
//                                       labelText: 'Full name',
//                                       labelStyle: GoogleFonts.poppins(
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(12.0),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   TextFormField(
//                                     controller:emailController,
//                                     textAlignVertical: TextAlignVertical.center,
//                                     validator: (String val) {
//                                       if (val.trim().isEmpty) {
//                                         return 'Email Address is required';
//                                       }
//                                       if (!RegExp(
//                                               r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$")
//                                           .hasMatch(val)) {
//                                         return 'Please enter a valid email address';
//                                       }
//                                       return null;
//                                     },
//                                     onSaved: (val) {
//                                       email = val;
//                                     },
//                                     enableInteractiveSelection: false,
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 14.5,
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.5,
//                                     ),
//                                     textInputAction: TextInputAction.done,
//                                     keyboardType: TextInputType.emailAddress,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.all(0),
//                                       helperStyle: GoogleFonts.poppins(
//                                         color: Colors.black.withOpacity(0.65),
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       errorStyle: GoogleFonts.poppins(
//                                         fontSize: 13.0,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       hintStyle: GoogleFonts.poppins(
//                                         color: Colors.black54,
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixIcon: Icon(
//                                         Icons.email,color: Colors.orange,
//                                       ),
//                                       prefixIconConstraints: BoxConstraints(
//                                         minWidth: 50.0,
//                                       ),
//                                       labelText: 'Email address',
//                                       labelStyle: GoogleFonts.poppins(
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(12.0),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   TextFormField(
//                                     controller: mobileNoController,
//                                     textAlignVertical: TextAlignVertical.center,
//                                     validator: (String val) {
//                                       if (val.isEmpty) {
//                                         return 'Mobile No. is required';
//                                       } else if (val.length != 10) {
//                                         return 'Mobile No. is invalid';
//                                       }
//                                       return null;
//                                     },
//                                     onSaved: (val) {
//                                       mobileNo = val;
//                                     },
//                                     enableInteractiveSelection: false,
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 14.5,
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.5,
//                                     ),
//                                     textInputAction: TextInputAction.done,
//                                     keyboardType: TextInputType.number,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.all(0),
//                                       helperStyle: GoogleFonts.poppins(
//                                         color: Colors.black.withOpacity(0.65),
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixText: '+91 ',
//                                       prefixStyle: GoogleFonts.poppins(
//                                         color: Colors.black87,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14.5,
//                                       ),
//                                       errorStyle: GoogleFonts.poppins(
//                                         fontSize: 13.0,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       hintStyle: GoogleFonts.poppins(
//                                         color: Colors.black54,
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixIcon: Icon(
//                                         Icons.phone,color: Colors.orange,
//                                       ),
//                                       prefixIconConstraints: BoxConstraints(
//                                         minWidth: 50.0,
//                                       ),
//                                       labelText: 'Mobile no.',
//                                       labelStyle: GoogleFonts.poppins(
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(12.0),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   Container(height: 45,width: double.infinity,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: Colors.black38),
//                                         borderRadius: BorderRadius.circular(12)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(10.0),
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Container(height: 40,color: Colors.transparent,width: 20,
//                                           child: Icon(Icons.date_range,color: Colors.orange,)),
//                                           SizedBox(width: 17,),
//                                           Container(height: 40,width: 220,color: Colors.transparent,child: Center(child: Text(a,style: TextStyle(color: Colors.black54,
//                                               fontSize: 18),)),),
//                                           SizedBox(width: 10,),
//                                           InkWell(onTap: (){f1();},splashColor: Colors.black54,
//                                           child: Container(color: Colors.transparent,
//                                             child: Center(child: Text("Date")),),)
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 10,),
//                                   TextFormField(
//                                     controller: lastsalleryController,
//                                     textAlignVertical: TextAlignVertical.center,
//                                     validator: (String val) {
//                                       if (val.isEmpty) {
//                                         return 'Last Sallery is required';
//                                       }
//                                       return null;
//                                     },
//                                     onSaved: (val) {
//                                       name = val;
//                                     },
//                                     enableInteractiveSelection: false,
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 14.5,
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.5,
//                                     ),
//                                     textInputAction: TextInputAction.done,
//                                     keyboardType: TextInputType.number,maxLength: 7,
//                                     textCapitalization: TextCapitalization.words,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.all(0),
//                                       helperStyle: GoogleFonts.poppins(
//                                         color: Colors.black.withOpacity(0.65),
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       errorStyle: GoogleFonts.poppins(
//                                         fontSize: 13.0,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       hintStyle: GoogleFonts.poppins(
//                                         color: Colors.black54,
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixIcon: Icon(
//                                         Icons.person,color: Colors.orange,
//                                       ),
//                                       prefixIconConstraints: BoxConstraints(
//                                         minWidth: 50.0,
//                                       ),
//                                       labelText: 'Last Sallery',
//                                       labelStyle: GoogleFonts.poppins(
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(12.0),
//                                       ),
//                                     ),
//                                   ),
//
//                                   TextFormField(
//                                     controller: lastsalleryController,
//                                     textAlignVertical: TextAlignVertical.center,
//                                     validator: (String val) {
//                                       if (val.isEmpty) {
//                                         return 'Work Experience is required';
//                                       }
//                                       return null;
//                                     },
//                                     enableInteractiveSelection: false,
//                                     style: GoogleFonts.poppins(
//                                       color: Colors.black,
//                                       fontSize: 14.5,
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 0.5,
//                                     ),
//                                     textInputAction: TextInputAction.done,
//                                     keyboardType: TextInputType.text,
//                                     textCapitalization: TextCapitalization.words,
//                                     decoration: InputDecoration(
//                                       contentPadding: EdgeInsets.all(0),
//                                       helperStyle: GoogleFonts.poppins(
//                                         color: Colors.black.withOpacity(0.65),
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       errorStyle: GoogleFonts.poppins(
//                                         fontSize: 13.0,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       hintStyle: GoogleFonts.poppins(
//                                         color: Colors.black54,
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       prefixIcon: Icon(
//                                         Icons.person,color: Colors.orange,
//                                       ),
//                                       prefixIconConstraints: BoxConstraints(
//                                         minWidth: 50.0,
//                                       ),
//                                       labelText: 'Work Experience',
//                                       labelStyle: GoogleFonts.poppins(
//                                         fontSize: 14.5,
//                                         fontWeight: FontWeight.w500,
//                                         letterSpacing: 0.5,
//                                       ),
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(12.0),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   InkWell(splashColor: Colors.white,onTap: () {
//                                     // submitdata();
//                                   },
//                                     child: Container(height: 35,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.orange),child: Center(child: Text("Submit Details")),),
//                                   ),
//                                   Stack(
//                                     children: [Container(height: 45,width: double.infinity,
//                                     decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                         borderRadius: BorderRadius.circular(12)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(10.0),
//                                         child: Row(
//                                           children: [Container(child: Icon(Icons.cast,color: Colors.orange,),
//                                             height: 40,width: 20,color: Colors.transparent,
//                                           ),
//                                           // SizedBox(width: 10,),
//                                           // Container(height: 40,width: 180,color: Colors.red,),
//                                           SizedBox(width: 50,),
//                                             new DropdownButton(
//                                               hint: Text('Please choose a Cast         '), // Not necessary for Option 1
//                                               value: _selectedcast,
//                                               onChanged: (newValue) {
//                                                 setState(() {
//                                                   _selectedcast = newValue;
//                                                 });
//                                               },
//                                               items: _cast.map((cast) {
//                                                 return DropdownMenuItem(
//                                                   child: new Text(cast),
//                                                   value: cast,
//                                                 );
//                                               }).toList(),
//                                             )
//
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [Container(height: 45,width: double.infinity,
//                                       decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                           borderRadius: BorderRadius.circular(12)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(10.0),
//                                         child: Row(
//                                           children: [Container(child: Icon(Icons.details,color: Colors.orange,),
//                                             height: 40,width: 20,color: Colors.transparent,
//                                           ),
//                                             // SizedBox(width: 10,),
//                                             // Container(height: 40,width: 180,color: Colors.red,),
//                                             SizedBox(width: 50,),
//                                             new DropdownButton(
//                                               hint: Text('Please choose a State        '), // Not necessary for Option 1
//                                               value: _selectedcast,
//                                               onChanged: (newValue) {
//                                                 setState(() {
//                                                   _selectedstate = newValue;
//                                                 });
//                                               },
//                                               items: _state.map((cast) {
//                                                 return DropdownMenuItem(
//                                                   child: new Text(cast),
//                                                   value: cast,
//                                                 );
//                                               }).toList(),
//                                             )
//
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [Container(height: 45,width: double.infinity,
//                                       decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                           borderRadius: BorderRadius.circular(12)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(10.0),
//                                         child: Row(
//                                           children: [Container(child: Icon(Icons.location_city,color: Colors.orange,),
//                                             height: 40,width: 20,color: Colors.transparent,
//                                           ),
//                                             // SizedBox(width: 10,),
//                                             // Container(height: 40,width: 180,color: Colors.red,),
//                                             SizedBox(width: 50,),
//                                             new DropdownButton(
//                                               hint: Text('Please choose a City          '), // Not necessary for Option 1
//                                               value: _selectedcity,
//                                               onChanged: (newValue) {
//                                                 setState(() {
//                                                   _selectedcity = newValue;
//                                                 });
//                                               },
//                                               items: _state.map((cast) {
//                                                 return DropdownMenuItem(
//                                                   child: new Text(cast),
//                                                   value: cast,
//                                                 );
//                                               }).toList(),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Stack(
//                                     children: [Container(height: 45,width: double.infinity,
//                                       decoration: BoxDecoration(border: Border.all(color: Colors.black38),
//                                           borderRadius: BorderRadius.circular(12)),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(10.0),
//                                         child: Row(
//                                           children: [Container(child: Icon(Icons.work,color: Colors.orange,),
//                                             height: 40,width: 20,color: Colors.transparent,
//                                           ),
//                                             // SizedBox(width: 10,),
//                                             // Container(height: 40,width: 180,color: Colors.red,),
//                                             SizedBox(width: 50,),
//                                             new DropdownButton(
//                                               hint: Text('Please choose a Jobtype  '), // Not necessary for Option 1
//                                               value: _selectedJobType,
//                                               onChanged: (newValue) {
//                                                 setState(() {
//                                                   _selectedJobType = newValue;
//                                                 });
//                                               },
//                                               items: _state.map((cast) {
//                                                 return DropdownMenuItem(
//                                                   child: new Text(cast),
//                                                   value: cast,
//                                                 );
//                                               }).toList(),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   Container(height: 45,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black38)),),
//                                  SizedBox(height: 20,),
//
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
