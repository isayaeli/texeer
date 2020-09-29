
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:texeer/screens/camera.dart';
import 'package:page_transition/page_transition.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen())),
          child: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children:[ Container(
                color: Colors.purple,
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top:20),
                      child: FaIcon(FontAwesomeIcons.stripeS, size: 20, color:Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, top:20),
                      child:Image(image: AssetImage("icons/tabs/7_contacts icon shouts.png"),
                        height: 40,
                        width: 40,

                        ),
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
                    child: Padding(
                       padding: EdgeInsets.only( top: 20, right: 5, bottom: 5),
                      child: Image(image: AssetImage("icons/tabs/7_chat icon.png"),),
                    ),
                    ),
                )


              ]
            ),
            Container(
              margin: EdgeInsets.only(top:5, left:20, right:20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search',
                 style: TextStyle( fontSize: 20),
                ),
                IconButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatWith())),

                  icon: FaIcon(FontAwesomeIcons.comments),)
              ],
            ),
            ),
         
           Expanded(child:  Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
               children:[
                GestureDetector(
                   child: ListTile(
                     onTap: ()=> Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 500),
                      curve: Curves.easeOutQuint,  child: ChatPage())),
                      //onLongPress: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatProfile())),
                      leading: CircleAvatar(
                      child:ClipOval(
                            child:Image(
                            fit:BoxFit.fill,
                            image:AssetImage('images/chatProf.png'),
                            height:50,
                            width:50
                            )
                          ),
                          radius: 50,
                          ),
                          title: Text('Suzan Wilson'),
                          subtitle: Text("hey let's meet today"),
                          trailing: CircleAvatar(
                            child:Text('3'),
                            radius:10
                          ),
                    ),
                ),
                  Divider(color: Colors.grey,),
                    ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/1.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('Joe Jackson'),
                        subtitle: Text("hey we got lotta work"),
                        trailing: Text('4.07 PM'),
                  ),

                   Divider(color: Colors.grey,),
                    ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/2.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('John Doe'),
                        subtitle: Text("hey let's meet today"),
                        trailing: CircleAvatar(
                          child:Text('5'),
                          radius:10
                        ),
                  ),

                   Divider(color: Colors.grey,),
                    ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/3.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('Jack Dawson'),
                        subtitle: Text("hey let's meet today"),
                        trailing: Text('4.07 PM'),
                  ),
                    Divider(color: Colors.grey,),
                   ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/2.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('John Doe'),
                        subtitle: Text("hey let's meet today"),
                        trailing: CircleAvatar(
                          child:Text('5'),
                          radius:10
                        ),
                  ),

                   Divider(color: Colors.grey,),
                    ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/3.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('Jack Dawson'),
                        subtitle: Text("hey let's meet today"),
                        trailing: Text('4.07 PM'),
                  ),
                   Divider(color: Colors.grey,),
                    ListTile(
                    leading: CircleAvatar(
                    child:ClipOval(
                          child:Image(
                          fit:BoxFit.fill,
                          image:AssetImage('images/3.jpg'),
                          height:50,
                          width:50
                          )
                        ),
                        radius: 50,
                        ),
                        title: Text('Jack Dawson'),
                        subtitle: Text("hey let's meet today"),
                        trailing: Text('4.07 PM'),
                  ),
                  
                  ]
                
              ),
            ),),
            
          ],
        ),
//      bottomNavigationBar: CurvedNavigationBar(
//        height: 60,
//        backgroundColor: Colors.white,
//        items: [
//           FaIcon(FontAwesomeIcons.comments,color: Colors.white,),
//            FaIcon(FontAwesomeIcons.stripeS,color: Colors.white,),
//           FaIcon(FontAwesomeIcons.userCircle,color: Colors.white),
//        ],
//        color: Colors.purple,
//         //buttonBackgroundColor: Colors.white,
//          animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 300),
//
//
//          //  onTap: (index){
//          //    setState(() {
//          //      if(index == 0){
//          //        show = 'messages';
//          //        tile = null;
//          //        color = Colors.amberAccent;
//          //      }else if(index== 1){
//          //        show = 'Shouts';
//          //        tile =null;
//          //         color = Colors.lightBlueAccent;
//          //      }else{
//          //        show = 'profile';
//          //        //tile =ListTile(leading: CircleAvatar(child: Icon(Icons.person_outline),),);
//          //       color= Colors.blueGrey;
//          //      }
//          //    });
//          //  },
//      ),

      ),
    );
  }
}



class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child:ChatProfile()
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage('images/back.jpg',

                    )
                  ),

                ),
                child:  ListView(
                    children:[

                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, left:20),

                            child: Padding(padding: EdgeInsets.only(left:10,top:8, right:15,bottom:8),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(' You on texxer now',
                                      style: TextStyle( color: Colors.black, fontWeight: FontWeight.w700),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),


                      Column(
                        mainAxisAlignment:MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, right:20),

                            child: Padding(padding: EdgeInsets.only(left:10,top:8, right:15,bottom:8),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Yeah Young blood issa vibe in here you dig??',
                                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),



                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, left:20),

                            child: Padding(padding: EdgeInsets.only(bottom:15),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 250,
                                      margin: EdgeInsets.only(bottom: 10,),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image:DecorationImage(image: AssetImage('images/1.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10))
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:10, right:15),
                                      child: Text('Check out my fresh new cut',
                                        style: TextStyle( color: Colors.black, fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),


                      Column(
                        mainAxisAlignment:MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, right:20),

                            child: Padding(padding: EdgeInsets.only(left:10,top:8, right:15,bottom:8),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Yeah Young blood issa vibe in here you dig??',
                                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),



                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, left:20),

                            child: Padding(padding: EdgeInsets.only(left:10,top:8, right:15,bottom:8),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Hello big hommie..!! You on texxer now',
                                      style: TextStyle( color: Colors.black, fontWeight: FontWeight.w700),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),


                      Column(
                        mainAxisAlignment:MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:BorderRadius.all(Radius.circular(10))
                            ),
                            width: 250,
                            margin: EdgeInsets.only(top:30, right:20),

                            child: Padding(padding: EdgeInsets.only(left:10,top:8, right:15,bottom:8,),
                              child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Yeah Young blood issa vibe in here you dig??',
                                      style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700),
                                    ),
                                    Padding(padding: EdgeInsets.only(left:185),
                                      child: Text('16:29',
                                        style: TextStyle(fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),

                    ]
                ),
              ),
            ),



            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color:Colors.white,
                child: Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Padding(padding: EdgeInsets.only(left:10, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Hello goes a mile',
                              style: TextStyle(fontWeight:FontWeight.w500, color:Colors.grey, fontSize: 15),
                            ),

                            FaIcon(FontAwesomeIcons.paperPlane, size: 28,color: Colors.black,),

                          ],
                        ),
                      ),
                      SizedBox(height:5),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                            Image(image: AssetImage('icons/chat/dog.png'),
                             color: Colors.black,
                            ),
                            SizedBox(width: 20,),
                            Image(image: AssetImage('icons/chat/background 2_send documents grey.png'),
                              color: Colors.black,
                            ),
                            SizedBox(width: 40,),
                            Image(image: AssetImage('icons/chat/camera1.png'),
                              color: Colors.black,
                            ),
                            SizedBox(width: 30,),
                            Image(image: AssetImage('icons/chat/mic.png'),
                              color: Colors.black,
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Call())),
                              child: FaIcon(FontAwesomeIcons.phoneAlt, color: Colors.black),
                            ),


                          ],
                        ),
                      ),
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Container(
            margin: EdgeInsets.only(top:50, right: 20),
            alignment:Alignment.topRight,
            height:50,
            child: Icon(Icons.person_add, size: 35,),
          ),

          Expanded(
            child: Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top:20),
              decoration: BoxDecoration(
               
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image:DecorationImage(
                  image:AssetImage('images/4.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(top:20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("John Doe",
                   style: TextStyle(fontWeight:FontWeight.w900, color:Colors.black, fontSize: 40),
                  ),
                  SizedBox(height:10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/texeer.png'),
                       height: 30,
                       width: 25,
                      ),
                      SizedBox(width:10),
                      Text('Texeer voice call',
                       style: TextStyle(fontWeight:FontWeight.w500, color:Colors.black, fontSize: 18)
                      )
                    ],
                  ),
                  SizedBox(height:10),
                  Text('calling',
                       style: TextStyle(fontWeight:FontWeight.w500, color:Colors.red, fontSize: 18)
                      )
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RecieveCall()));
            },
             child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:BorderRadius.circular(70)
              ),
              margin: EdgeInsets.only(top:50),
              child: Center(
                child:FaIcon(FontAwesomeIcons.phoneAlt,color: Colors.white,)
              ),
            ),
          ),

          Container(
            height: 100,
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:[
                FaIcon(FontAwesomeIcons.volumeUp,color: Colors.grey,),
                FaIcon(FontAwesomeIcons.video,color: Colors.grey,),
                FaIcon(FontAwesomeIcons.comments,color: Colors.grey,),
                FaIcon(FontAwesomeIcons.microphone,color: Colors.grey,)
              ]
            ),
          ),
        ]
      ),
    );
  }
}



class RecieveCall extends StatefulWidget {
  @override
  _RecieveCallState createState() => _RecieveCallState();
}

class _RecieveCallState extends State<RecieveCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Container(
            margin: EdgeInsets.only(top:50, right: 20),
            alignment:Alignment.topRight,
            height:50,
            child: Icon(Icons.person_add, size: 35,),
          ),

          Expanded(
            child: Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top:20),
              decoration: BoxDecoration(
               
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image:DecorationImage(
                  image:AssetImage('images/4.jpg'),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("John Doe",
                 style: TextStyle(fontWeight:FontWeight.w900, color:Colors.black, fontSize: 40),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/texeer.png'),
                     height: 30,
                     width: 25,
                    ),
                    SizedBox(width:10),
                    Text('Texeer voice call',
                     style: TextStyle(fontWeight:FontWeight.w500, color:Colors.black, fontSize: 18)
                    )
                  ],
                ),
                SizedBox(height:10),
                Text('Recieving call',
                     style: TextStyle(fontWeight:FontWeight.w500, color:Colors.green, fontSize: 18)
                    )
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GroupCall()));
            },
             child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:BorderRadius.circular(50)
              ),
              margin: EdgeInsets.only(top:40),
              child: Center(
                child:FaIcon(FontAwesomeIcons.phoneAlt,color: Colors.white,)
              ),
            ),
          ),

        Container(
          margin: EdgeInsets.only(top:20),
            child: Text("Swipe up to answer",
            style: TextStyle(color: Colors.green),
            ),
          ),


          
          Expanded(
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  FaIcon(FontAwesomeIcons.volumeUp,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.video,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.comments,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.microphone,color: Colors.grey,)
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}






class GroupCall extends StatefulWidget {
  @override
  _GroupCallState createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Container(
            margin: EdgeInsets.only(top:50, right: 20),
            alignment:Alignment.topRight,
            height:50,
            child: Icon(Icons.person_add, size: 35,),
          ),

         Stack(
           children: [
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(top:20),
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image:DecorationImage(
                            image:AssetImage('images/4.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                       
                       
                       SizedBox(width:40),
                        Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(top:20,),
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image:DecorationImage(
                            image:AssetImage('images/3.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                    ),
                 ],
               ),
             ),

             Container(
                margin: EdgeInsets.only(top:100),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(top:20,),
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image:DecorationImage(
                            image:AssetImage('images/1.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                       SizedBox(width:40),
                        Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(top:20,),
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image:DecorationImage(
                            image:AssetImage('images/4.jpg'),
                            fit: BoxFit.cover
                          ),
                        ),
                    ),

                 ],
               ),
             ),

              Container(
                margin:EdgeInsets.only(top:70, left:143),
                  height: 70,
                  width: 70,
                  // margin: EdgeInsets.only(top:20,),
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image:DecorationImage(
                      image:AssetImage('images/2.jpg'),
                      fit: BoxFit.cover
                    ),
                  ),
              ),
           ],
         ),

          Container(
            margin: EdgeInsets.only(top:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("John Doe",
                 style: TextStyle(fontWeight:FontWeight.w900, color:Colors.black, fontSize: 40),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/texeer.png'),
                     height: 30,
                     width: 25,
                    ),
                    SizedBox(width:10),
                    Text('Texeer voice call',
                     style: TextStyle(fontWeight:FontWeight.w500, color:Colors.black, fontSize: 18)
                    )
                  ],
                ),
                SizedBox(height:10),
                Text('calling',
                     style: TextStyle(fontWeight:FontWeight.w500, color:Colors.red, fontSize: 18)
                    )
              ],
            ),
          ),

          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:BorderRadius.circular(70)
            ),
            margin: EdgeInsets.only(top:50),
            child: Center(
              child:FaIcon(FontAwesomeIcons.phoneAlt,color: Colors.white,)
            ),
          ),

          Expanded(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:[
                  FaIcon(FontAwesomeIcons.volumeUp,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.video,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.comments,color: Colors.grey,),
                  FaIcon(FontAwesomeIcons.microphone,color: Colors.grey,)
                ]
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class ChatWith extends StatefulWidget {
  @override
  _ChatWithState createState() => _ChatWithState();
}

class _ChatWithState extends State<ChatWith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042038),
        leading:IconButton(onPressed: ()=> Navigator.of(context).pop(),
          color: Colors.white,icon: Icon(Icons.arrow_back_ios,)
      ),
      title: Text('Select or Enter a name',
       style: TextStyle(fontSize: 25),
      ),
    ),
     body: Column(
       mainAxisAlignment:MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children:[
         Padding(padding: EdgeInsets.only(top:20, left:40),
         child: GestureDetector(
           onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreateGroupChat())),
             child: ListTile(
             leading:CircleAvatar(backgroundColor: Color(0xff042038),
              child: FaIcon(FontAwesomeIcons.users, color: Colors.white,),
              radius: 30,
             ),
             title: Text('Group Chat',
              style:TextStyle(fontSize: 25,)
             ),
           ),
         )
         ),

         
         Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
             height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.only(left:20, top: 10, bottom: 10),
            child: Text('A',
            style:TextStyle(fontSize: 25,)
            ),
           ),
                _selectChat('Adam', 'images/1.jpg'),
               
                 _selectChat('Adam1', 'images/1.jpg'),
              
                _selectChat('Adam2', 'images/1.jpg'),

                 _selectChat('Adam3', 'images/1.jpg'),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,)
              ),
              
                Padding(padding: EdgeInsets.only(left:20, top: 10, bottom: 10),
            child: Text('B',
            style:TextStyle(fontSize: 25,)
            ),
           ),

           _selectChat('Bryan', 'images/4.jpg'),
               
                 _selectChat('Brya1', 'images/4.jpg'),
              
                _selectChat('Bryan2', 'images/4.jpg'),

                 _selectChat('Bryan3', 'images/4.jpg'),

              ],
            ),
           ),
         )

       ]
     ),
    
    );
  }

  _selectChat(String name ,String img){
    return Container(
      margin: EdgeInsets.only(left:40, bottom: 10),
      child: ListTile(
             leading: CircleAvatar(
               radius: 30,
               child:ClipOval(
                 child:Image(image: AssetImage(img),
                  width: 50,
                  height: 50,
                 )
               ),
             ),
             title: Text(name,
               style:TextStyle(fontSize: 25,)
             ),
             trailing: Image(image: AssetImage('images/texeer.png'),
              height:30,
              width:30
             ),
           ),
    );
  }

}



class CreateGroupChat extends StatefulWidget {
  @override
  _CreateGroupChatState createState() => _CreateGroupChatState();
}

class _CreateGroupChatState extends State<CreateGroupChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042038),
        leading: IconButton(onPressed:()=> Navigator.of(context).pop(),icon: Icon(Icons.arrow_back_ios)),
        title: Text("New Group",
         style: TextStyle(fontSize: 24),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Create',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           margin: EdgeInsets.only(top: 25),
           child:  ListTile(
             leading: CircleAvatar(
               radius:50,
               child: ClipOval(
                 child: Container(
                   height: 50,
                   width: 50,
                   color: Colors.white,
                   child: Icon(Icons.camera_alt, color: Colors.black,),
                 ),

               ),
             ),
             title: Text('What is your Group name'),
             subtitle: Text('max 30 char'),
           ),
         ),
         SizedBox(height: 40,),
          Text('Names of who you want to add'),


          SizedBox(height: 40,),

          _contacts('images/1.jpg', 'John Doe'),
          _contacts('images/4.jpg', 'John Doe'),
          _contacts('images/2.jpg', 'Joe Doe'),
          _contacts('images/3.jpg', 'John Doe'),

        ],
      ),
    );
  }

  _contacts(String image, String name){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius:50,
              child: ClipOval(
                child: Image(image:AssetImage(image),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            title: Text(name,
              style: TextStyle(fontSize: 23),
            ),
            trailing: FaIcon(FontAwesomeIcons.checkCircle),
          ),
        ),
      ],
    );
  }
}



class ChatProfile extends StatefulWidget {
  final img;

  ChatProfile({this.img});

  @override
  _ChatProfileState createState() => _ChatProfileState();
}

class _ChatProfileState extends State<ChatProfile> {

   bool isOn = false;
   bool isOn1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


         Container(
             height: MediaQuery.of(context).size.height/2.5,
             decoration: BoxDecoration(
               image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage('images/chatProf.png')
               ),
             ),
           ),
             


          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.7+8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child:  Text('Suzan Wilson',
                  style: TextStyle(fontSize: 20),
                  ),
                ),
               Padding(
                 padding: EdgeInsets.only(left: 40),
                 child:  Text('@Sarah',
                   style: TextStyle(fontSize: 17),
                 ),
               ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, top: 20 ),
                          child: Text('Media',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          height: 60,
                          child:ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 40, top: 10),
                                  child: Image(image: AssetImage('images/1.jpg'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),

                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Image(image: AssetImage('images/chatProf.png'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),

                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Image(image: AssetImage('images/4.jpg'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Image(image: AssetImage('images/1.jpg'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),

                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Image(image: AssetImage('images/chatProf.png'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),

                              Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Image(image: AssetImage('images/4.jpg'),
                                    height: 50,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ],
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Padding(
                                 padding: EdgeInsets.only(left: 20, top: 20),
                                 child:  Text('Mute Notification',
                                  style: TextStyle(fontSize: 23),
                                 ),
                               ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20, top:20),
                                  child: IconButton(icon:isOn?FaIcon(FontAwesomeIcons.toggleOff, color: Colors.blue[900],size: 30,):
                                  FaIcon(FontAwesomeIcons.toggleOn, color: Colors.blue[900],size: 30,),
                                  onPressed: (){
                                    if(isOn == false){
                                      setState(() {
                                        isOn = true;
                                      });
                                    }else{
                                      setState(() {
                                        isOn = false;
                                      });
                                    }
                                  },
                                  )
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, ),
                                  child:  Text('Block',
                                    style: TextStyle(fontSize: 23),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(right: 20, ),
                                    child: IconButton(icon:isOn1?FaIcon(FontAwesomeIcons.toggleOn, color: Colors.blue[900],size: 30,):
                                    FaIcon(FontAwesomeIcons.toggleOff, color: Colors.blue[900],size: 30,),
                                      onPressed: (){
                                        if(isOn1 == false){
                                          setState(() {
                                            isOn1 = true;
                                          });
                                        }else{
                                          setState(() {
                                            isOn1 = false;
                                          });
                                        }
                                      },
                                    )
                                ),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 20 ),
                              child:  Text('Delete Messages',
                                style: TextStyle(fontSize: 23),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 20 ),
                              child:  Text('Report',
                                style: TextStyle(fontSize: 23),
                              ),
                            ),


                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}





