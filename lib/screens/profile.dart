import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:texeer/screens/camera.dart';
import 'package:texeer/screens/sticker_store.dart';
import 'package:texeer/screens/welcome.dart';
import 'package:texeer/terms.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
           onWillPop: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen())),
          child: Scaffold(
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top:50),

                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:30),
                          child: Text('Sarah Talan',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left:35),
                          child: Text('@Porkytotatoes1234',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(right:40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 50,
                            child: ClipOval(
                              child: Image(
                                fit: BoxFit.fill,
                                  image:AssetImage('images/1.jpg'),
                               height:90,
                                width: 90,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Edit Profile',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ]
                ),
              ),


              //============================= second container in a column starts============================================

             Padding(
               padding: EdgeInsets.only(left: 30, right: 30),
               child:  Divider(
                 color: Colors.grey,
               ),
             ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   GestureDetector(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VisitUsers()));
                     },
                     child:  Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Icon(Icons.refresh, color: Colors.blue,),
                         Text('Visit Users')
                       ],
                     ),
                   ),


                    GestureDetector(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(
                        index: 1,
                      ))),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('490k',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          Text('Visitors',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(
                        index: 2,
                      ))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('990k',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                          ),
                          Text('Visiting ',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top:10),
                child:  Divider(
                  color: Colors.grey,
                ),
              ),

              // =================================second container ends here================================================================


              // ====================Third container starts here====================================================================

             Expanded(
               child: Container(
                 height: 45,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     GestureDetector(
                        onTap: (){
                           changeBrightness();
                          if(isOpen == false){
                            setState(() {
                              isOpen = true;
                            });
                          }else{
                            setState(() {
                              isOpen = false;

                            });
                          }
                        },
                       child:  _listTile(isOpen?FontAwesomeIcons.moon:FontAwesomeIcons.lightbulb, 
                       isOpen?FontAwesomeIcons.toggleOff:FontAwesomeIcons.toggleOn,
                        isOpen?"Dark mode":"Light Mode", Colors.deepPurple),
                     ),
                     _listTile(FontAwesomeIcons.circle, FontAwesomeIcons.chevronRight, "Circles",  Colors.red),
                     _listTile(FontAwesomeIcons.phone, FontAwesomeIcons.chevronRight, "Call Store",  Colors.orangeAccent),
                     _listTile(FontAwesomeIcons.circleNotch, FontAwesomeIcons.chevronRight, "Shout Store",  Colors.lightBlue),
                     GestureDetector(
                        onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stickers())),
                       child:  _listTile(FontAwesomeIcons.store, FontAwesomeIcons.chevronRight, "Sticker Store",  Colors.green),
                     ),

                     GestureDetector(
                       child: _listTile(FontAwesomeIcons.cog, FontAwesomeIcons.chevronRight, "Settings",  Colors.deepPurple),
                       onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings())),
                     ),
                     GestureDetector(
                       onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Terms())),
                       child: _listTile(FontAwesomeIcons.file, FontAwesomeIcons.chevronRight, "Terms",  Colors.orange),
                     ),
                     _listTile(FontAwesomeIcons.fileContract, FontAwesomeIcons.chevronRight, "Legal",  Colors.pink)
                   ],
                 ),
               ),
             ),




            ],
          ),
        ),
      ),
    );
  }

  _listTile(IconData leading, IconData trailing, String title, Color color){
      return GestureDetector(

        child: Container(
          height: 45,
          margin: EdgeInsets.only(left: 40, right: 40),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 CircleAvatar(
                   backgroundColor: color,
                   child:  FaIcon(leading, color: Colors.white,),
                 ),
                  SizedBox(width: 15,),
                  Padding(
                    padding: EdgeInsets.only(left:2),
                    child: Text(title,
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  )
                ],
              ),

              FaIcon(trailing, size: 20, color: Colors.grey,)
            ],
          ),
        ),
      );
  }

   void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

}


class VisitUsers extends StatefulWidget {
  @override
  _VisitUsersState createState() => _VisitUsersState();
}

class _VisitUsersState extends State<VisitUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              height:80,
              color: Color(0xff042038),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Padding(
                   padding: EdgeInsets.only(top: 20,left: 30),
                   child:  GestureDetector(
                       onTap: ()=> Navigator.of(context).pop(),
                       child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                 ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 30),
                    child: Text('Ada',
                    style: TextStyle(color: Colors.white, fontSize: 23,),
                    )
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                height: 600,
                child: ListView(
                  children: [
                    _visit('images/1.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/3.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/2.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/4.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/1.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/3.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/2.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                    _visit('images/4.jpg', 'Adam Leon', 'Visiting 234 | Visitor 1.2k'),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  _visit( String img, String name, String info){
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      height: 70,

      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [



          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image(image: AssetImage(img),
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  SizedBox(height: 10,),
                  Text(info)
                ],
              )
            ],
          ),


          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 20),
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(0xff042038)
              ),
              child: Container(
                height: 45,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.white
                ),
                child: Center(child: Text('Visit',
                 style: TextStyle(color:Colors.black),
                ),),
              ),
            ),
          ),


        ],
      ),
    );
  }

}



class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: ()=> Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text('Settings',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          _tiles(Icons.person_outline, 'Accounts', Colors.deepPurple),
          _tiles(FontAwesomeIcons.tachometerAlt, 'Display',  Colors.red),
          _tiles(Icons.notifications_active, 'Notification',  Colors.orange),
          _tiles(FontAwesomeIcons.mask, 'Privacy',  Colors.lightBlueAccent),
          _tiles(Icons.lock, 'Security',  Colors.blue),
          GestureDetector(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoutSettings())),
            child: _tiles(Icons.volume_up, 'Shouts',  Colors.deepPurple),
          ),
          _tiles(Icons.store, 'Store',  Colors.orange),
          _tiles(Icons.block, 'Blocked',  Colors.red),
          _tiles(FontAwesomeIcons.signOutAlt, 'Logout',  Colors.green),



        ],
      ),
    );
  }

  _tiles(IconData icon, String feature ,Color color){
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white,),
        ),
        title: Text(feature,
          style: TextStyle(fontSize: 25),
        ),
      );
    ;
  }

}





class ShoutSettings extends StatefulWidget {
  @override
  _ShoutSettingsState createState() => _ShoutSettingsState();
}

class _ShoutSettingsState extends State<ShoutSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: ()=> Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        elevation: 0,
        backgroundColor: Color(0xff042038),
        title: Text('Select or enter a name'),

      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text('Shout as',
                  style:TextStyle(color: Color(0xff042038), fontSize: 23)
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Public',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.checkCircle)
                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30, top: 10, right:20, bottom: 10),
                child:Text('Any one and everyone can view the shout')
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Private',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.circle)
                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30, top: 10, right:20),
                child:Text('Only selected can view the shout')
            ),







            Container(
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Text('Who can reply',
                  style:TextStyle(color: Color(0xff042038), fontSize: 23)
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Only shoutes at',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.checkCircle)
                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30, top: 10, right:20, bottom: 10),
                child:Text('Any one yuo specifically shout to')
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Every one',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.circle)
                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30, top: 10, right:30,  bottom:10),
                child:Text('People who recieve  your shout as forward can reply')
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('No one',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.circle)
                ],
              ),
            ),

            Padding(
                padding: EdgeInsets.only(left: 30, top: 10, right:20),
                child:Text('No one will be able to reply but watch')
            ),




          ],
        ),
      ),


    );
  }

}


