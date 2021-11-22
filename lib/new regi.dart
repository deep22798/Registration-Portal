import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as Path;
import 'package:google_fonts/google_fonts.dart';
import 'package:shrinarayanenterprises/screens/Contactus.dart';
import 'package:shrinarayanenterprises/screens/aboutus.dart';
import 'package:shrinarayanenterprises/screens/thankyou.dart';
import 'package:toast/toast.dart';
class newregi extends StatefulWidget {

  @override
  _newregiState createState() => _newregiState();

}


class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class _newregiState extends State<newregi> {


  String _selected;
  List<Map> _myJson = [
    {"id": 'Housemaid', "image": "assets/jobtype/housemaid.jpg", "name": "Housemaid"},
    {"id": 'Cooking', "image": "assets/jobtype/coki.jpeg", "name": "Cooking"},
    {"id": 'New born Baby care', "image": "assets/jobtype/babc.jpg", "name": "New born Baby care"},
    {"id": 'Housekeeping', "image": "assets/jobtype/hous.jpg", "name": "Housekeeping"},
    {
      "id": 'Patient Care',
      "image":"assets/jobtype/pc.jpg",
      "name": "Patient Care"
    },
    {"id": 'Japa maid', "image": "assets/jobtype/japam.jpeg", "name": "Japa maid"},

  ];
  List <String> city=[

    'Agartala',
    'Agra', 'Agumbe',
    'Ahmedabad',
    'Aizawl', 'Ajmer',
    'Alappuzha Beach',
    'Allahabad',
    'Alleppey',
    'Almora',
    'Amarnath',
    'Amritsar',
    'Anantagiri',
    'Andaman and Nicobar Islands',
    'Araku valley',
    'Aurangabad',
    'Ayodhya',
    'Badrinath',
    'Bangalore',
    'Baroda',
    'Bastar',
    'Bhagalpur',
    'Bhilai',
    'Bhimtal',
    'Bhopal',
    'Bhubaneswar',
    'Bhuj',
    'Bidar',
    'Bilaspur',
    'Bodh Gaya',
    'Calicut',
    'Chail',
    'Chamba',
    'Chandigarh',
    'Chennai',
    'Chennai Beaches',
    'Cherai',
    'Cherrapunji',
    'Chidambaram',
    'Chikhaldara Hills',
    'Chopta',
    'Coimbatore',
    'Coonoor',
    'Coorg',
    'Corbett National Park',
    'Cotigao Wild Life Sanctuary',
    'Cuttack',
    'Dadra and Nagar Haveli',
    'Dalhousie',
    'Daman and Diu',
    'Darjeeling',
    'Dehradun',
    'Delhi',
    'Devikulam',
    'Dhanaulti',
    'Dharamshala',
    'Dindigul',
    'Dudhwa National Park',
    'Dwaraka',
    'Faridabad',
    'Gandhinagar','Gangotri',
    'Gangtok',
    'Gir Wildlife Sanctuary',
    'Goa',
    'Great Himalayan National Park',
    'Gulmarg',
    'Gurgaon',
    'Guruvayoor',
    'Guwahati',
    'Gwalior',
    'Hampi',
    'Haridwar',
    'Hogenakkal',
    'Horsley Hills',
    'Hyderabad',
    'Idukki',
    'Imphal',
    'Indore',
    'Itangar',
    'Jabalpur',
    'Jaipur',
    'Jaisalmer',
    'Jalandhar',
    'Jammu',
    'Jamshedpur',
    'Jodhpur',
    'Kanchipuram',
    'Kanha National Park',
    'Kanpur',
    'Kanyakumari',
    'Kargil',
    'Karwar',
    'Kausani',
    'Kedarnath',
    'Keoladeo Ghana National Park',
    'Khajuraho',
    'Kochi',
    'Kodaikanal',
    'Kolkata',
    'Kollam',
    'Konark',
    'Kotagiri',
    'Kottakkal and Ayurveda',
    'Kovalam',
    'Kovalam and Ayurveda',
    'Kudremukh',
    'Kullu',
    'Kumaon',
    'Kumarakom',
    'Kumarakom and Ayurveda',
    'Kumarakom Bird Sanctuary',
    'Kurukshetra',
    'Lakshadweep',
    'Lucknow',
    'Ludhiana',
    'Madurai',
    'Mahabalipuram',
    'Malpe Beach',
    'Manas National Park',
    'Mangalore',
    'Maravanthe Beach',
    'Margoa',
    'Mount Abu',
    'Mumbai',
    'Munnar',
    'Mussoorie',
    'Mysore',
    'Nahsik',
    'Nalanda',
    'Nanda Devi National Park',
    'Nandi Hills',
    'Netravali Wild Life Sanctuary',
    'Ooty',
    'Orchha',
    'Pahalgam',
    'Palakkad',
    'Panchgani',
    'Patna',
    'Patnitop',
    'Pattadakkal',
    'Periyar Wildlife Sanctuary',
    'Pithoragarh',
    'Pondicherry',
    'Pune',
    'Puri',
    'Pushkar',
    'Raipur',
    'Rajaji National Park',
    'Rajgir',
    'Rameshwaram',
    'Ranchi',
    ' Ranganthittu Bird Sanctuary',
    'Ranikhet',
    'Ranthambore',
    'Rishikesh',
    'Rourkela',
    'Sanchi',
    'Saputara',
    ' Sariska Wildlife Sanctuary',
    'Shillong',
    'Shimla',
    'Sohna_Hill',
    'Srinagar',
    'Sunderbans',
    'Surat',
    'Tezpur',
    'Thanjavur',
    'Thiruvananthapuram',
    'Thrissur',
    'Tirunelveli',
    'Tirupati',
    'Trichy',
    'Udaipur',
    'Ujjain',
    'Vaishali',
    'Valley of Flowers',
    'Varanasi',
    'Varkala and Ayurveda',
    'Vijayawada',
    'Vishakhapatnam',
    'Vrindhavan',
    'Warangal',
    'Wayanad',
    ' Wayanad Wildlife Sanctuary',
    'Yercaud',
    'Zanskar',


  ];

  List <String> jobtype=['housemaid',
    'Cooking',
    'baby care',
    'housekeeping',

    'patient care',
    'newborn baby care',
    'Japa maid'
  ];

  List <String> state = [
    'Andhra Pradesh', 'Arunachal Pradesh', 'Assam','Bihar', 'Chhattisgarh', 'Goa',
    'Gujarat','Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka','Kerala', 'Madhya Pradesh', 'Maharashtra',
    'Manipur','Meghalaya', 'Mizoram', 'Nagaland', 'Odisha','Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu','Telangana',
    'Tripura', 'Uttar Pradesh', 'Uttarakhand','West Bengal']; // Option 2
  List <String> course = [
    'BE/B.Tech- Bachelor of Technology', 'B.Arch- Bachelor of Architecture', 'BCA- Bachelor of Computer Applications','B.Sc.- Information Technology',
    'B.Sc- Nursing','BPharma- Bachelor of Pharmacy', 'Himachal Pradesh', 'B.Sc- Interior Design',
    'BBA- Bachelor of Business Administration',
    'BFA- Bachelor of Fine Arts', 'BA', 'BDS- Bachelor of Dental Surgery','BMS- Bachelor of Management Science'];





  String name,mobile,email,lastsallery,workexperience;

  String _selectedstate,_selectedcity,_course;
  String _time;

  final firebasedata=FirebaseDatabase.instance.reference().child("Students");
  final GlobalKey <FormState> _formkey=GlobalKey();
  final TextEditingController _namecontroller=TextEditingController();
  final TextEditingController _mobilecontroller=TextEditingController();
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _lastsallerycontroller=TextEditingController();
  final TextEditingController _workExperiencecontroller=TextEditingController();

  File _image;
  String _uploadedFileURL;
  String _uploadedFileUR;
  String _uploadedFileU;


  bool showtost=false;
  String timeString;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
    DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      timeString = formattedDateTime;
      print(timeString);
    });
  }




  void showToast(){
    Toast.show(
        "Registration Successful",
        context,
        duration: Toast.LENGTH_LONG,
        gravity: Toast.BOTTOM,
        textColor: Colors.blue
    );
  }

  void showTot(){
    Toast.show(
        "Please upload all the photos or fields",
        context,
        duration: Toast.LENGTH_LONG,
        gravity: Toast.BOTTOM,
        textColor: Colors.white,
      backgroundColor: Colors.orange
    );
  }


  void shoToast(){
    Toast.show(
        "Photo upload",
        context,
        duration: Toast.LENGTH_LONG,
        gravity: Toast.BOTTOM,
        textColor: Colors.blue
    );
  }





  Future chooseFile() async {
    await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
      setState(() {
        _image = image;
      });
    });
  }



  Future uploadFil() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('Students images/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;

    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        loadProgre();
        _uploadedFileU = fileURL;
        shoToast();
        if(_uploadedFileU==null){

          shoToast();

        }

      });
    });
  }


  @override

  void dispose() {
    _emailcontroller.dispose();
    _namecontroller.dispose();
    _mobilecontroller.dispose();
    _lastsallerycontroller.dispose();
    _workExperiencecontroller.dispose();
    _namecontroller.dispose();
    super.dispose();
  }




  Future uploadFile() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('Students images/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;

    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        loadProgress();
        _uploadedFileUR = fileURL;
        shoToast();
        if(_uploadedFileUR==null){

          shoToast();

        }

      });
    });
  }


  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String ok = formatter.format(now);



  Future uploadF() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('Students images/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;

    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        loadProgres();
        _uploadedFileURL = fileURL;
        shoToast();
        if(_uploadedFileURL==null){

          shoToast();

        }

      });
    });
  }

  bool visible = false ;
  bool visibl = false ;
  bool visib = false ;
  bool visi = false ;

  loadProgress(){
    if(visib == true){
      setState(() {
        visib = false;
      });
    }
    else{
      setState(() {
        visib = true;
      });
    }

  }
  loadProgr(){
    if(visi == true){
      setState(() {
        visi = false;
      });
    }
    else{
      setState(() {
        visi = true;
      });
    }

  }

  loadProgres(){
    if(visibl == true){
      setState(() {
        visibl = false;
      });
    }
    else{
      setState(() {
        visibl = true;
      });
    }

  }

  loadProgre(){
    if(visible == true){
      setState(() {
        visible = false;
      });
    }
    else{
      setState(() {
        visible = true;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 50, shadowColor:Colors.transparent,title: Text('Student registration portal',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orange[400],
      ),
      drawer: Drawer(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(
                decoration: BoxDecoration(color: Colors.orange[400],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
                ),
                height: 300,width: double.infinity,child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [Container(
                  height: 130,width: 130,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("sri.png"))),
                ),
                  Text("Student registration portal",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("(Registration for a better course)",style: TextStyle(color: Colors.white),)
                ],
              )),),
                SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
                  child: Container(height: 400,width: double.infinity,color: Colors.white30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height:80,),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>newregi()));},splashColor: Colors.orange,
                            child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("Registration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),)),
                            )
                        ),
                        SizedBox(height: 30,),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));},splashColor: Colors.orange,
                            child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
                        SizedBox(height: 30,),
                        InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactus()));},splashColor: Colors.orange,
                            child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
                        SizedBox(height: 30,),
                        // InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>termsandconditions()));},splashColor: Colors.orange,
                        //     child: Container(height: 50,width: double.infinity,color: Colors.transparent,child: Center(child: Text("Terms & Condition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange))),)),
                        // SizedBox(height: 30,),
                        // InkWell(onTap: (){},splashColor: Colors.orange,
                        //     child: Container(height: 50,width: double.infinity,color: Colors.yellow,child: Center(child: Text("HOME")),)),
                      ],
                    ),


                  ),
                ),
              ],
            )),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 30,width: double.infinity,decoration: BoxDecoration(color: Colors.orange[400],borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
              )),

              Center(
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  )),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(

                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(child: Column(
                    children: [

                      Form(key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _namecontroller,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (String val) {
                                  if (val.isEmpty) {
                                    return 'Required full name';
                                  }
                                  return null;
                                },
                                onChanged: (val){name=val;},keyboardType: TextInputType.multiline,
                                maxLines: 1,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                                textInputAction: TextInputAction.done,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  helperStyle: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  errorStyle: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,color: Colors.orange,
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50.0,
                                  ),
                                  labelText: 'Full name',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),

                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: _emailcontroller,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (String val) {
                                  if (val.trim().isEmpty) {
                                    return 'Required Email Address';
                                  }
                                  if (!RegExp(
                                      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$")
                                      .hasMatch(val)) {
                                    return 'Please type a valid Email';
                                  }
                                  return null;
                                },
                                onChanged: (val){email=val;},
                                maxLines: 1,
                                enableInteractiveSelection: false,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  helperStyle: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  errorStyle: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email,color: Colors.orange,
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50.0,
                                  ),
                                  labelText: 'Email',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),

                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: _mobilecontroller,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (String val) {
                                  if (val.isEmpty) {
                                    return 'Mobile No. is required';
                                  } else if (val.length != 10) {
                                    return '10 numbers required';
                                  }
                                  return null;
                                },
                                onChanged: (val){mobile=val;},
                                maxLines: 1,
                                enableInteractiveSelection: false,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  helperStyle: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixText: '+91 ',
                                  prefixStyle: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.5,
                                  ),
                                  errorStyle: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.phone,color: Colors.orange,
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50.0,
                                  ),
                                  labelText: 'Mobile no.',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: _lastsallerycontroller,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (String val) {
                                  if (val.isEmpty) {
                                    return 'Last Qualification required';}
                                  return null;
                                }, keyboardType: TextInputType.text,
                                onChanged: (val){lastsallery=val;},
                                maxLines: 1,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                                textInputAction: TextInputAction.done,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  helperStyle: GoogleFonts.poppins(
                                    color: Colors.black.withOpacity(0.65),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  errorStyle: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.table_rows_outlined,color: Colors.orange,
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50.0,
                                  ),
                                  labelText: 'Last Qualification',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              TextFormField(
                                controller: _workExperiencecontroller,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (String val) {
                                  if (val.isEmpty) {
                                    return 'Address required';
                                  }
                                  return null;
                                }, keyboardType: TextInputType.text,
                                onChanged: (val){workexperience=val;},
                                maxLines: 1,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),

                                  errorStyle: GoogleFonts.poppins(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  hintStyle: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.home,color: Colors.orange,
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 50.0,
                                  ),
                                  labelText: 'Address',
                                  labelStyle: GoogleFonts.poppins(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Stack(
                                children: [Container(height: 47,width: double.infinity,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black38),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [Container(child: Icon(Icons.location_city,color: Colors.orange,),
                                        height: 50,width: 20,color: Colors.transparent,
                                      ),
                                        // SizedBox(width: 10,),
                                        // Container(height: 40,width: 180,color: Colors.red,),
                                        SizedBox(width: 40,),

                                        DropdownButton <String>(
                                          iconEnabledColor: Colors.orange,
                                          hint: Text('Please select a state                             '), // Not necessary for Option 1
                                          value: _selectedstate,onChanged: (String newValue){
                                          setState(() {
                                            _selectedstate=newValue;
                                          });
                                        },
                                          items: state.map<DropdownMenuItem<String>>((String value){
                                            return DropdownMenuItem<String>(child: Center(child: Text(value)),value: value,);
                                          }).toList(),underline: Container(color: Colors.transparent),
                                        ),
                                        SizedBox(height: 10,),
                                      ],
                                    ),
                                  ),
                                )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Stack(
                                children: [Container(height: 47,width: double.infinity,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black38),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [Container(child: Icon(Icons.location_city,color: Colors.orange,),
                                        height: 50,width: 20,color: Colors.transparent,
                                      ),
                                        // SizedBox(width: 10,),
                                        // Container(height: 40,width: 180,color: Colors.red,),
                                        SizedBox(width: 40,),

                                        DropdownButton <String>(
                                          iconEnabledColor: Colors.orange,
                                          hint: Text('Please select a city                               '), // Not necessary for Option 1
                                          value: _selectedcity,onChanged: (String newValue){
                                          setState(() {
                                            _selectedcity=newValue;
                                          });
                                        },
                                          items: city.map<DropdownMenuItem<String>>((String value){
                                            return DropdownMenuItem<String>(child: Center(child: Text(value)),value: value,);
                                          }).toList(),underline: Container(color: Colors.transparent),
                                        ),

                                        SizedBox(height: 10,),

                                      ],
                                    ),
                                  ),
                                )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Stack(
                                children: [Container(height: 47,width: double.infinity,
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black38),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [Container(child: Icon(Icons.work,color: Colors.orange,),
                                        height: 50,width: 20,color: Colors.transparent,
                                      ),
                                        // SizedBox(width: 10,),
                                        // Container(height: 40,width: 180,color: Colors.red,),
                                        SizedBox(width: 40,),

                                        DropdownButton <String>(
                                          iconEnabledColor: Colors.orange,
                                          hint: Text('Select a course            '), // Not necessary for Option 1
                                          value: _course,onChanged: (String newValue){
                                          setState(() {
                                            _course=newValue;
                                          });
                                        },
                                          items: course.map<DropdownMenuItem<String>>((String value){
                                            return DropdownMenuItem<String>(child: Center(child: Text(value)),value: value,);
                                          }).toList(),underline: Container(color: Colors.transparent),
                                        ),

                                        SizedBox(height: 10,),

                                      ],
                                    ),
                                  ),
                                )
                                ],
                              ),SizedBox(height: 20,),

                              Text("Upload last qualification marksheet",style: TextStyle(fontSize: 15),),



                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 120,width: double.infinity,decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2)],
                                    borderRadius: BorderRadius.circular(16),color: Colors.white60),
                                  child: Center(
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[

                                            Text("      (Marksheet)        ",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
                                            RaisedButton(
                                              child: Text('Pick'),
                                              onPressed: chooseFile,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(width: 10,),

                                            RaisedButton(
                                              child: Text('Upload'),
                                              onPressed: () async{
                                                uploadFile();
                                                loadProgress();
                                              }

                                              ,
                                              color: Colors.orange,
                                            ),

                                          ],
                                        ),
                                        Container(
                                          height: 5,width: double.infinity,child: Visibility(visible: visib,
                                          child: LinearProgressIndicator(
                                          ),
                                        ),
                                        ),
                                        Center(
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[

                                              Text("(Other qualification)",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
                                              RaisedButton(
                                                child: Text('Pick'),
                                                onPressed: chooseFile,
                                                color: Colors.orange,
                                              ),
                                              SizedBox(width: 10,),

                                              RaisedButton(
                                                child: Text('Upload'),
                                                onPressed: () async{
                                                  uploadFil();
                                                  loadProgre();
                                                }
                                                ,
                                                color: Colors.orange,
                                              ),

                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 5,width: double.infinity,child: Visibility(visible: visible,
                                          child: LinearProgressIndicator(
                                          ),
                                        ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),SizedBox(height: 20,),

                              Text("Plese send your Photo",style: TextStyle(fontSize: 15),),


                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 2)],
                                    borderRadius: BorderRadius.circular(16),color: Colors.white60),
                                  child: Center(
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[

                                            Text("       (Photo)        ",style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
                                            RaisedButton(
                                              child: Text('Pick'),
                                              onPressed: chooseFile,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(width: 10,),

                                            RaisedButton(
                                              child: Text('Upload'),
                                              onPressed: () async {
                                                uploadF();
                                                loadProgres();
                                              }
                                              ,
                                              color: Colors.orange,
                                            ),

                                          ],
                                        )         ,
                                        Container(
                                          height: 5,width: double.infinity,child: Visibility(visible: visibl,
                                          child: LinearProgressIndicator(
                                          ),
                                        ),
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),SizedBox(height: 5,),

                              Container(
                                height: 20,width:20,child: Visibility(visible: visi,
                                child: _circular(
                                ),
                              ),
                              ),SizedBox(height: 10,),

                              MaterialButton(onPressed: () async{
                                if(_formkey.currentState.validate() && _uploadedFileURL!=null && _uploadedFileUR!=null  && _uploadedFileU!=null){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>thankyou()));

                                  dynamic key=CreatCryptoRandomString(32);
                                  firebasedata.child('$ok').child('$timeString').set({
                                    "mobile":mobile,
                                    "email":email,
                                    "Adddress":workexperience,
                                    "state":_selectedstate,
                                    "city":_selectedcity,
                                    "last qualification":lastsallery,
                                    "Course":_course,
                                    "name":name,
                                    "Photo":_uploadedFileURL,
                                    "Marksheet":_uploadedFileUR,
                                    "Other qualifications":_uploadedFileU,
                                    "date":ok,
                                    "timez":timeString

                                  });
                                  setState(() {
                                    loadProgr();
                                    showToast();
                                  });
                                }
                                else{
                                  showTot();
                                }


                              },
                                textColor: Colors.white,
                                child: Container(
                                  decoration:const BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Text("Send Details",style: TextStyle(
                                      fontSize: 20,color: Colors.white
                                  ),),

                                ),
                              )

                            ],

                          ))
                    ],
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }



  Widget _linear(){
    return LinearProgressIndicator(
    );

  }

  Widget _linear1(){
    return LinearProgressIndicator();
  }
  Widget _linear2(){
    return LinearProgressIndicator();
  }
  Widget _circular(){
    return CircularProgressIndicator();
  }
}

String CreatCryptoRandomString([int length=32]){
  final Random random =Random.secure();
  var values=List<int>.generate(length,(i)=>random.nextInt(256));
  return base64Url.encode(values);
}
void showInfoFlushBar(BuildContext context){
  Flushbar(
    title: "error message",
    message: "field empty",
    icon: Icon(Icons.info_outline,size: 20,color: Colors.blue.shade300,),
    duration: Duration(seconds: 3),
  )..show(context);
}