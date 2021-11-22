import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shrinarayanenterprises/screens/Contactus.dart';
import 'package:shrinarayanenterprises/screens/secondscreen.dart';
class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  bool downloading = false;

  String progress = '0';

  bool isDownloaded = false;






  String filename = 'brocher.pdf';
  Future<void> downloadFile(uri, fileName) async {
    setState(() {
      downloading = true;
    });

    Future<String> getFilePath(uniqueFileName) async {
      String path = '';

      Directory dir = await getApplicationDocumentsDirectory();

      path = '${dir.path}/$uniqueFileName.pdf';

      return path;
    }


    String savePath = await getFilePath(fileName);

    Dio dio = Dio();

    dio.download(
      uri,
      savePath,
      onReceiveProgress: (rcv, total) {
        print(
            'received: ${rcv.toStringAsFixed(0)} out of total: ${total.toStringAsFixed(0)}');

        setState(() {
          progress = ((rcv / total) * 100).toStringAsFixed(0);
        });

        if (progress == '100') {
          setState(() {
            isDownloaded = true;
          });
        } else if (double.parse(progress) < 100) {}
      },
      deleteOnError: true,
    ).then((_) {
      setState(() {
        if (progress == '100') {
          isDownloaded = true;
        }

        downloading = false;
      });
    });
  }


  String uri='https://firebasestorage.googleapis.com/v0/b/srinarayanenterprises-8b5c8.appspot.com/o/pdf%20documentation%2Fbrocher.pdf?alt=media&token=df8fdb0b-8db7-46bb-ab52-13701939c38f';
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('About Us',style: TextStyle(color: Colors.white),),),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("sri.png"))),),
            Text("About Us",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),),SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Welcome to SVN has emerged as a centre of excellence of higher"
                            " education in Uttar Pradesh. This college has started carving a position for itself in"
                                " the education domain and is rising as a shining star on the horizon of quality education."
                                " SVN has a multi-disciplinary approach and offers courses in various streams encompassing "
                                "Engineering, Management, Pharmacy, Polytechnic and Diploma in Elementary Education."
                                "The prime objective of SVN is to provide a world class learning environment to roll out"
                                " efficient human resources for the needs of industries, in which faculty, staff and students"
                                " can discover, examine critically preserve and transmit the knowledge, wisdom and values that "
                                "will ensure the survival of future generations and improve the quality of life for all."),
            )
            // Row(mainAxisAlignment: MainAxisAlignment.start,
            //   children:[Container(
            //     height: 100,width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: Colors.orange,
            //         image: DecorationImage(image: AssetImage("a.png"))),),
                // Container(
                //     height: 100,width:double.infinity,color: Colors.orange,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text("Welcome to /n SVN has emerged as a centre of excellence of higher"
                //           " education in Uttar Pradesh. This college has started carving a position for itself in"
                //               " the education domain and is rising as a shining star on the horizon of quality education."
                //               " SVN has a multi-disciplinary approach and offers courses in various streams encompassing "
                //               "Engineering, Management, Pharmacy, Polytechnic and Diploma in Elementary Education."
                //               "The prime objective of SVN is to provide a world class learning environment to roll out"
                //               " efficient human resources for the needs of industries, in which faculty, staff and students"
                //               " can discover, examine critically preserve and transmit the knowledge, wisdom and values that "
                //               "will ensure the survival of future generations and improve the quality of life for all.",style: TextStyle(fontSize: 15,color: Colors.white),)
                //         ],
                //       )
                //     ],
                //   ),
                // ),

            ]
            ),
            // SizedBox(height: 20,),
            // Row(mainAxisAlignment: MainAxisAlignment.start,
            //     children:[Container(
            //       height: 100,width: 100,
            //       decoration: BoxDecoration(
            //           color: Colors.orange,
            //           image: DecorationImage(image: AssetImage("c.png"))),),
            //       Container(
            //         decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
            //         height: 100,width:250,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text("View the complete profile\nof the hundreds of available \nstaff and shortlist as per\nyour prefrence.",style: TextStyle(fontSize: 15,color: Colors.white),)
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //
            //     ]
            // ),
            // SizedBox(height: 20,),
            // Row(mainAxisAlignment: MainAxisAlignment.start,
            //     children:[Container(
            //       height: 100,width: 100,
            //       decoration: BoxDecoration(
            //           color: Colors.orange,
            //           image: DecorationImage(image: AssetImage("b.png"))),),
            //       Container(
            //         decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
            //         height: 100,width:250,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text("Take to the staff on the\nphone or meet personally,\nSelect the staff & pay only after\nthe staff joins.",style: TextStyle(fontSize: 15,color: Colors.white),)
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //
            //     ]
            // ),
            // SizedBox(height: 20,),
            // Row(mainAxisAlignment: MainAxisAlignment.start,
            //     children:[Container(
            //       height: 100,width: 100,
            //       decoration: BoxDecoration(
            //           color: Colors.orange,
            //           image: DecorationImage(image: AssetImage("downlo.png"))),),
            //       Container(
            //         decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
            //         height: 100,width:250,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Text("For more details\n Download the Brocher.",style: TextStyle(fontSize: 15,color: Colors.white),),SizedBox(height: 5,),
            //                 InkWell(
            //                   focusColor: Colors.red,
            //                   onTap: () async{downloadFile(uri, filename);},splashColor: Colors.white,
            //                   child: Container(height: 40,child: Center(child: Text("Download",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            //                   decoration: BoxDecoration(border: Border.all(color: Colors.red),
            //                     borderRadius: BorderRadius.all(Radius.circular(16),),
            //                   ),width: 140,),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //
            //     ]
            // ),
        //     SizedBox(height: 50,)
        //
        //
        //   ],
        //
        // ),
      ),


    );
  }
}

//
// class aboutush extends StatefulWidget {
//   @override
//   _aboutushState createState() => _aboutushState();
// }
//
// class _aboutushState extends State<aboutush> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.orange,
//         title: Text('हमारे बारे में',style: TextStyle(color: Colors.white),),),
//       body: SingleChildScrollView(
//         child: Column(mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,width: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage("aboutus.png"))),),
//             Text("हमारे बारे में",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(height: 10,),
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 children:[Container(
//                   height: 100,width: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.orange,
//                       image: DecorationImage(image: AssetImage("a.png"))),),
//                   Container(
//                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
//                     height: 100,width:250,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("हमारे सरल खोज का उपयोग करें \nहमें बताएं कि आपके लिए क्या \nआवश्यक है, आपके सभी उपलब्ध \nकर्मचारियों की सूची \nहै।",style: TextStyle(fontSize: 15,color: Colors.white),)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ]
//             ),
//             SizedBox(height: 20,),
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 children:[Container(
//                   height: 100,width: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.orange,
//                       image: DecorationImage(image: AssetImage("c.png"))),),
//                   Container(
//                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
//                     height: 100,width:250,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("उपलब्ध पूर्वग्रहों के अनुसार सैकड़ों \nउपलब्ध कर्मचारियों और शॉर्टलिस्ट की\nपूरी प्रोफाइल देखें.",style: TextStyle(fontSize: 15,color: Colors.white),)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ]
//             ),
//             SizedBox(height: 20,),
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 children:[Container(
//                   height: 100,width: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.orange,
//                       image: DecorationImage(image: AssetImage("b.png"))),),
//                   Container(
//                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
//                     height: 100,width:250,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("कर्मचारियों को कॉल पर ले जाएं\nया व्यक्तिगत रूप से मिलें, स्टाफ का चयन करें\nऔर स्टाफ के जुड़ने के बाद ही भुगतान करें।.",style: TextStyle(fontSize: 15,color: Colors.white),)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ]
//             ),
//             SizedBox(height: 20,),
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 children:[Container(
//                   height: 100,width: 100,
//                   decoration: BoxDecoration(
//                       color: Colors.orange,
//                       image: DecorationImage(image: AssetImage("downlo.png"))),),
//                   Container(
//                     decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.orange),
//                     height: 100,width:250,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("अधिक जानकारी के लिए\n फ़ाइल डाउनलोड करें.",style: TextStyle(fontSize: 15,color: Colors.white),),SizedBox(height: 5,),
//                             InkWell(
//                               focusColor: Colors.red,splashColor: Colors.white,
//                               onTap: (){},
//                               child: Container(height: 40,child: Center(child: Text("डाउनलोड",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
//                                 decoration: BoxDecoration(border: Border.all(color: Colors.red),
//                                   borderRadius: BorderRadius.all(Radius.circular(16),),
//                                 ),width: 140,),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ]
//             ),
//             SizedBox(height: 50,)
//
//
//           ],
//
//         ),
//       ),
//
//
//     );
//   }
