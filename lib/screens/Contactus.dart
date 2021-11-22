import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Contactus extends StatefulWidget {
  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.orange,
      title: Text("Contact Us"),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage("contactus.png"),)),
            SizedBox(height: 10,),
            Center(child: Text("Contact Us",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Safedabad, Barabanki",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),SizedBox(height: 5,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 30,width:30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("calll.png"),fit: BoxFit.fill)
                        
                    ),
                    ),SizedBox(width: 10,),
                    Text("+91-9005004242, +91-9651064242",style: TextStyle(color: Colors.orange),)
                  ],
                ),SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 25,width:25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("gmail.png"),fit: BoxFit.fill)

                      ),
                    ),SizedBox(width: 10,),
                    Text("svn.edu.society@gmail.com             ",style: TextStyle(color: Colors.orange),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SizedBox(width:10 ,),
                    Container(height: 30,width:30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("brow.png"),fit: BoxFit.fill)

                      ),
                    ),SizedBox(width: 10,),
                    Text("https://www.svn.ac.in/                     ",style: TextStyle(color: Colors.orange),)
                  ],
                ),
                Container(height:70,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}




class Contactush extends StatefulWidget {
  @override
  _ContactushState createState() => _ContactushState();
}

class _ContactushState extends State<Contactush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.orange,
        title: Text("संपर्क करें"),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage("contactus.png"),)),
            SizedBox(height: 10,),
            Center(child: Text("संपर्क करें",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("    #171, GF, Housing Board Colony, \n Sector-57,Near Lotus Valley School,\n                   Gurugram(HR)",style: TextStyle(color: Colors.orange),),
              ],
            ),SizedBox(height: 5,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 30,width:30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("calll.png"),fit: BoxFit.fill)

                      ),
                    ),SizedBox(width: 10,),
                    Text("9582673068 , 0124-2573068",style: TextStyle(color: Colors.orange),)
                  ],
                ),SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 25,width:25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("gmail.png"),fit: BoxFit.fill)

                      ),
                    ),SizedBox(width: 10,),
                    Text("narayangroupent@gmail.com",style: TextStyle(color: Colors.orange),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 30,width:30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("brow.png"),fit: BoxFit.fill)

                      ),
                    ),SizedBox(width: 10,),
                    Text("www.narayangroupent            ",style: TextStyle(color: Colors.orange),)
                  ],
                ),
                Container(height:70,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}

