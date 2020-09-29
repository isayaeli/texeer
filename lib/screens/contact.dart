import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:texeer/screens/camera.dart';
import 'package:url_launcher/url_launcher.dart';


class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen())),
          child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              //color: Colors.purple,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [

                  Container(
                    color: Colors.purple,
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Padding(
                         padding: EdgeInsets.only(left: 30, top:10),
                         child:   Image(image: AssetImage("icons/tabs/7_chat icon.png"),
                           height: 30,
                           width: 30,
                         ),
                       ),
                        Padding(
                          padding: EdgeInsets.only(right: 30, top:10),
                          child:  FaIcon(FontAwesomeIcons.stripeS, color: Colors.white,),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 60,
                      width: 60,

                      decoration: BoxDecoration(
                          color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(70))
                      ),
                      child:  Image(image: AssetImage("icons/tabs/7_contacts icon shouts.png"),
                    ),
                  ),
                  ),

                   Container(
                     alignment: AlignmentDirectional.topEnd,
                      margin: EdgeInsets.only(top: 80, right: 20),
                      child: Text('Search',
                       style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:125, left: 20),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('credit',
                               style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              SizedBox(height:10),
                              Text('\$${100}',
                               style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                         Container(
                           margin: EdgeInsets.only(top:20, right:30),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(20)),
                            color: Colors.purple
                          ),
                           height: 30,
                           width: 100,
                           child: Container(
                             margin: EdgeInsets.all(2),
                             decoration: BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(20)),
                             color:Colors.white,
                          ),
                            
                             child:Center(child: Text('Buy Credit',
                              style:TextStyle(color: Colors.purple)
                             ),
                             )
                           ),
                         ),

                        ],
                      ),
                    ),

                  Padding(padding: EdgeInsets.only(left:20, right:20, top: 180),
                   child: Divider(color:Colors.grey),
                  ),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    margin: EdgeInsets.only(top: 200, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Contacts (205)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         FaIcon(FontAwesomeIcons.globeAfrica,),
                         SizedBox(width:30),
                         Padding(padding: EdgeInsets.only(right:20),
                         child: Image(image: AssetImage('images/texeer.png'),
                          height: 25,
                          width: 25,
                         ),
                         )
                       ],
                     ),
                    ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:230),
                    height:MediaQuery.of(context).size.height,
                    child: ListView(
                      children:[
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text( 'A',
                            style: TextStyle( fontSize: 20),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VideoCall())),
                          child:_contactList('images/1.jpg', 'Adam', 'A'),
                        ),
                        _contactList('images/2.jpg', 'adam1', 'A'),
                        _contactList('images/4.jpg', 'adam2', 'A'),
                        _contactList('images/1.jpg', 'adam3', 'A'),

                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Divider(color: Colors.grey,)
                        ),


                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text( 'B',
                            style: TextStyle( fontSize: 20),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VideoCall())),
                          child: _contactList('images/1.jpg', 'Bryan', 'A'),
                        ),
                        _contactList('images/3.jpg', 'Bryan1', 'A'),
                        _contactList('images/1.jpg', 'Bryan', 'A'),
                        _contactList('images/3.jpg', 'Bryan1', 'A'),


                    ],
                    ),
                  ),

                ],
              )
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            _callPhone();
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Icon(Icons.dialpad,size:35,color:Colors.purple),
        ),
      ),
    );
  }

  _contactList(String img, String name,  String letter){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, bottom: 20),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 40,
              child: ClipOval(
                  child: Image(image: AssetImage(img),)
              ),
            ),
            title: Text(name,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }

   final String phone = 'tel:+2557012345678';

  _callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
  }

}




class VideoCall extends StatefulWidget {


  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
           Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('images/4.jpg')
               )
             ),
           ),

           Align(
              alignment: Alignment.topRight,
             child: Padding(
               padding: EdgeInsets.only(top:30, right: 20),
               child: IconButton(icon: Icon(Icons.person_add, size: 35,color: Colors.white,), onPressed: (){},),
             ),
           ),

           Container(
             margin: EdgeInsets.only(top: 290, left: 20),
             height: 150,
             //width: 250,
             color: Colors.transparent,
             child: ListView(
               children: [

                 Container(
                   height: 50,
                   margin: EdgeInsets.only(bottom: 10, right: 150),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(50)),
                       color: Colors.white
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       CircleAvatar(
                         radius: 30,
                         child:ClipOval(
                           child: Image(image: AssetImage('images/2.jpg'),),
                         ),
                       ),
                       Text('What cracking Joe?')
                     ],
                   ),
                 ),

                 Container(
                   height: 50,
                   margin: EdgeInsets.only(bottom: 10, right: 200),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(50)),
                       color: Colors.white
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       CircleAvatar(
                         radius: 30,
                         child:ClipOval(
                           child: Image(image: AssetImage('images/2.jpg'),),
                         ),
                       ),
                       Text('Ya at home?')
                     ],
                   ),
                 ),
               ],
             ),
           ),


           Container(
             margin: EdgeInsets.only(top: 490, left: 20),
             height: 100,
             width: 100,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(image: AssetImage('images/3.jpg'))
             ),
           ),


           GestureDetector(
             onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GroupVideoCall())),
             child: Container(
               margin: EdgeInsets.only(top: 540, left: 180),
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(60)),
                     border: Border.all(color: Colors.red)
                 ),
               child: Icon(Icons.phone, color: Colors.red,),
               ),
           ),

           Align(
             alignment: Alignment.bottomCenter,
             child: Container(
                 height: 100,
                 child: Row(
                     mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                     children:[
                       FaIcon(FontAwesomeIcons.volumeUp,color: Colors.white,),
                       FaIcon(FontAwesomeIcons.video,color: Colors.white,),
                       FaIcon(FontAwesomeIcons.comments,color: Colors.white,),
                       FaIcon(FontAwesomeIcons.microphoneAltSlash,color: Colors.white,)
                     ]
                 ),
               ),
           ),

         ],
       ),
    );
  }
}





class GroupVideoCall extends StatefulWidget {


  @override
  _GroupVideoCallState createState() => _GroupVideoCallState();
}

class _GroupVideoCallState extends State<GroupVideoCall> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height/1.2,
              child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/4.jpg')
                      )
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top:30, right: 20),
                    child: IconButton(icon: Icon(Icons.person_add, size: 35,color: Colors.white,),onPressed:(){},),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 190, left: 20),
                  height: 150,
                  //width: 250,
                  color: Colors.transparent,
                  child: ListView(
                    children: [

                      Container(
                        height: 50,
                        margin: EdgeInsets.only(bottom: 10, right: 150),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child:ClipOval(
                                child: Image(image: AssetImage('images/2.jpg'),),
                              ),
                            ),
                            Text('What cracking Joe?')
                          ],
                        ),
                      ),

                      Container(
                        height: 50,
                        margin: EdgeInsets.only(bottom: 10, right: 200),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child:ClipOval(
                                child: Image(image: AssetImage('images/2.jpg'),),
                              ),
                            ),
                            Text('Ya at home?')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


//                Container(
//                  margin: EdgeInsets.only(top: 400, left: 20),
//                  height: 100,
//                  width: 100,
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(20)),
//                      image: DecorationImage(image: AssetImage('images/3.jpg'))
//                  ),
//                ),


                Container(
                  margin: EdgeInsets.only(top: 360, left: 180),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      border: Border.all(color: Colors.red)
                  ),
                  child: Icon(Icons.phone, color: Colors.red,),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children:[
                          FaIcon(FontAwesomeIcons.volumeUp,color: Colors.white,),
                          FaIcon(FontAwesomeIcons.video,color: Colors.white,),
                          FaIcon(FontAwesomeIcons.comments,color: Colors.white,),
                          FaIcon(FontAwesomeIcons.microphoneAltSlash,color: Colors.white,)
                        ]
                    ),
                  ),
                ),

              ],
        ),
            ),
          ),

    Expanded(
      flex: 1,
      child:Container(
        color: Colors.red,
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/3.jpg'),),
            ),
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/2.jpg'),),
            ),
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/3.jpg'),),
            ),
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/4.jpg'),),
            ),
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/1.jpg'),),
            ),
            Card(
              color: Colors.red,
              child:  Image(image: AssetImage('images/3.jpg'),),
            ),
          ],
        ),
      ),
      ),
    ]
      ),
    );
  }
}



