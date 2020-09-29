import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:texeer/screens/camera.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';

class Shouts extends StatefulWidget {
  @override
  _ShoutsState createState() => _ShoutsState();
}

class _ShoutsState extends State<Shouts> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
           onWillPop: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen())),
          child: Scaffold(
        body: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children:[

            Stack(
                children:[ Container(
                  color: Colors.purple,
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, top:15),
                        child: Image(image: AssetImage("icons/tabs/7_contacts icon shouts.png"),
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30, top:15),
                        child: Image(image: AssetImage("icons/tabs/7_chat icon.png"),
                         height: 30,
                          width: 30,
                        )
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
                        padding: EdgeInsets.only( top: 20, left: 20, bottom: 5),
                        child: FaIcon(FontAwesomeIcons.stripeS, color: Colors.white, size: 30,)
                      ),
                    ),
                  )


                ]
            ),
            Container(
              margin: EdgeInsets.only(top:5, right: 30, bottom: 5),
              alignment:Alignment.topRight,
              child:Text('Search',
               style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ),

            
             Expanded(
                  child: Container(
                  height: MediaQuery.of(context).size.height,
                  child:ListView(
                    children:[
                      GestureDetector(
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoutsPage())),
                child: _tiles('images/1.jpg'),
            ),
            // Padding(padding: EdgeInsets.only(left:60, top:10),
            // child: Divider(color: Colors.grey,),
            // ),

               Container(
                margin: EdgeInsets.only(top:2,),
                alignment:Alignment.topLeft,
                color: Colors.grey[300],
                child:Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Interactions',
                    style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w700,),
                  ),
                ),
            ),

            Container(
                height: 80,
                child: ListView(
                   physics: NeverScrollableScrollPhysics(),
                  children: [
                    _tiles('images/2.jpg'),
                    // Padding(padding: EdgeInsets.only(left:60, ),
                    //   child: Divider(color: Colors.grey,),
                    // ),
                  ],
                ),
            ),

            Container(
                margin: EdgeInsets.only(top:15,),
                alignment:Alignment.topLeft,
                color: Colors.grey[300],
                child:Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Shouts',
                    style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w700,),
                  ),
                ),
            ),

            Container(
                 height: 330,
                 child: ListView(
                   physics: NeverScrollableScrollPhysics(),
                  children: [
                _tiles('images/3.jpg'),
                Padding(padding: EdgeInsets.only(left:60, top:10),
                child: Divider(color: Colors.grey,),
                ),
                 _tiles('images/4.jpg'),
                Padding(padding: EdgeInsets.only(left:60, top:10),
                child: Divider(color: Colors.grey,),
                ),

                 _tiles('images/3.jpg'),
                Padding(padding: EdgeInsets.only(left:60, top:10),
                child: Divider(color: Colors.grey,),
                ),
                 _tiles('images/4.jpg'),
                Padding(padding: EdgeInsets.only(left:60, top:10),
                child: Divider(color: Colors.grey,),
                ),


                  ],
                ),
               ),
           
                    ]
                  ),
                ),
             )
            


            

          ]
        ),
      ),
    );
  }

  _tiles(String img){
    return GestureDetector(
      //onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoutsPage())),
          child: Container(
              margin: EdgeInsets.only(top:10, left: 10),
              alignment:Alignment.topLeft,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image(image:AssetImage(img),
                        height: 50,
                      width: 50,
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Joe'),
                    SizedBox(width: 8,),

                  ],
                ),

                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child:Icon(Icons.favorite_border),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20, left: 5),
                      child:Text('0 likes'),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:20, left: 30),
                      child:FaIcon(FontAwesomeIcons.reply, size: 15,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:20,),
                      child:Text('15 replies'),
                    ),

                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Time Left'),
                    SizedBox(height: 20,),
                    Text('4:23',
                     style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
    ),
    );
  }

}


class ShoutsPage extends StatefulWidget {
  @override
  _ShoutsPageState createState() => _ShoutsPageState();
}

class _ShoutsPageState extends State<ShoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
              children:[ 
          Stack(
          children:[
            GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SingleShoute())),
             child: Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                    image:DecorationImage(image: AssetImage('images/4.jpg'),
                      fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      margin: EdgeInsets.only(top:50, left: 20, right: 20),
                      child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                       children: [


                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [

                             Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.eye, color: Colors.white,size: 30,),
                              SizedBox(width:5),
                              Text('20',
                               style:TextStyle(color: Colors.white, fontSize:18)
                              )
                            ],
                            ),
                            SizedBox(width: 25,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              Image(image: AssetImage("icons/shouts/7_ripple icon white.png"),
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(width:5),
                              Text('20',
                               style:TextStyle(color: Colors.white, fontSize:18)
                              )
                            ],
                            ),


                             SizedBox(width: 30,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              Text('4',
                               style:TextStyle(color: Colors.white, fontSize:25)
                              )
                            ],
                            ),
                           ],
                         ),
                         Image(image: AssetImage("icons/shouts/3_muting.png"),
                           height: 40,
                           width: 40,
                         )
                       ],
                       
                    ),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width:20),
                              Text('Squid',
                               style:TextStyle(color: Colors.white, fontSize:25, fontWeight: FontWeight.bold)
                              ),
                               SizedBox(width:10),
                              Text('shouted',
                               style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                              )
                            ],
                          ),
                           SizedBox(height:20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width:20),
                             Icon(Icons.favorite_border, size: 40,color: Colors.white,),
                              SizedBox(width:10),
                              Text('1 likes',
                              style:TextStyle(color: Colors.white, fontSize:18)
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ]
        ),



         Stack(
          children:[
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage('images/3.jpg'),
                    fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                  //   margin: EdgeInsets.only(top:50, left: 20, right: 20),
                  //   child: Row(
                  //    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  //    children: [


                  //      Row(
                  //        mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //        children: [

                  //          Row(
                  //         mainAxisAlignment:MainAxisAlignment.start,
                  //         children: [
                  //           FaIcon(FontAwesomeIcons.eye, color: Colors.white,size: 30,),
                  //           SizedBox(width:5),
                  //           Text('20',
                  //            style:TextStyle(color: Colors.white, fontSize:18)
                  //           )
                  //         ],
                  //         ),
                  //         SizedBox(width: 25,),

                  //       Row(
                  //         mainAxisAlignment:MainAxisAlignment.start,
                  //         children: [
                  //           FaIcon(FontAwesomeIcons.circleNotch, color: Colors.white,size: 30,),
                  //           SizedBox(width:5),
                  //           Text('20',
                  //            style:TextStyle(color: Colors.white, fontSize:18)
                  //           )
                  //         ],
                  //         ),


                  //          SizedBox(width: 30,),

                  //       Row(
                  //         mainAxisAlignment:MainAxisAlignment.start,
                  //         children: [
                  //           Text('4',
                  //            style:TextStyle(color: Colors.white, fontSize:25)
                  //           )
                  //         ],
                  //         ),



                       
                      



                  //        ],
                  //      ),
                  //      Icon(Icons.volume_off, color: Colors.white, size: 30,)
                  //    ],
                     
                  // ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width:20),
                            Text('Dan',
                             style:TextStyle(color: Colors.white, fontSize:25, fontWeight: FontWeight.bold)
                            ),
                             SizedBox(width:10),
                            // Text('shouted',
                            //  style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                            // )
                          ],
                        ),
                         SizedBox(height:20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width:20),
                           Icon(Icons.favorite_border, size: 40,color: Colors.white,),
                            SizedBox(width:10),
                            Text('1 likes',
                            style:TextStyle(color: Colors.white, fontSize:18)
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            ),
          ]
        ),

        ]
      ),
    );
  }
}



class SingleShoute extends StatefulWidget {
  @override
  _SingleShouteState createState() => _SingleShouteState();
}

class _SingleShouteState extends State<SingleShoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
         decoration:BoxDecoration(
           image:DecorationImage(
             image:AssetImage('images/4.jpg'),
             fit: BoxFit.cover
           ),
         ),
         child:Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              Container(
                      margin: EdgeInsets.only(top:50, left: 20, right: 20),
                      child: Row(
                       mainAxisAlignment:MainAxisAlignment.spaceBetween,
                       children: [


                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [

                             Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.eye, color: Colors.white,size: 30,),
                              SizedBox(width:5),
                              Text('20',
                               style:TextStyle(color: Colors.white, fontSize:18)
                              )
                            ],
                            ),
                            SizedBox(width: 25,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              Image(image: AssetImage("icons/shouts/7_ripple icon white.png"),
                               height: 40,
                                width: 40,
                              ),
                              SizedBox(width:5),
                              Text('20',
                               style:TextStyle(color: Colors.white, fontSize:18)
                              )
                            ],
                            ),


                             SizedBox(width: 30,),

                          Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              Text('4',
                               style:TextStyle(color: Colors.white, fontSize:25)
                              )
                            ],
                            ),

                           ],
                         ),
                          Image(image: AssetImage("icons/shouts/3_muting.png"),
                            height: 40,
                            width: 40,
                          )
                       ],
                       
                    ),
                    ),

                    Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width:20),
                                Text('Squid',
                                 style:TextStyle(color: Colors.white, fontSize:25, fontWeight: FontWeight.bold)
                                ),
                                 SizedBox(width:10),
                                Text('shouted',
                                 style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                )
                              ],
                            ),
                             SizedBox(height:20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width:20),
                               Icon(Icons.favorite_border, size: 40,color: Colors.white,),
                                SizedBox(width:10),
                                Text('1 likes',
                                style:TextStyle(color: Colors.white, fontSize:18)
                                )
                              ],
                            ),
                          ],
                        ),
                       Container(
                         margin: EdgeInsets.only(right:20),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen2())),
                                child:Image(image: AssetImage("icons/shouts/background 2_reply shout.png"),
                            )),
                            SizedBox(width:20),
                            GestureDetector(
                              onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoutTo())),
                              child: Image(image: AssetImage("icons/shouts/7_ripple icon white.png"),
                              ),
                            )
                          ],
                        ),
                       ),
                      ],
                    ),
                  ),
           ],
         ),
      ),
    );
  }
}




class ShoutTo extends StatefulWidget {
  @override
  _ShoutToState createState() => _ShoutToState();
}

class _ShoutToState extends State<ShoutTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
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
              child: Text('Ripple to',
                  style:TextStyle(color: Color(0xff042038), fontSize: 23)
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Visitors',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.circle)
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Family',
                      style:TextStyle(color: Color(0xff042038), fontSize: 20)
                  ),
                  FaIcon(FontAwesomeIcons.circle)
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, right:20),
               child:Divider( color: Colors.grey,)
            ),
            
            Expanded(
              child: Container(
                
                child: ListView(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:  Text('J',
                        style: TextStyle(fontSize: 23),
                      ),
                    ),

                    _contacts('images/1.jpg', 'John Doe'),
                    _contacts('images/4.jpg', 'John Doe'),
                    _contacts('images/2.jpg', 'Joe Doe'),
                    _contacts('images/3.jpg', 'John Doe'),
                    _contacts('images/1.jpg', 'John Doe'),
                    _contacts('images/4.jpg', 'John Doe'),
                    _contacts('images/2.jpg', 'Joe Doe'),
                    _contacts('images/3.jpg', 'John Doe'),
                    _contacts('images/1.jpg', 'John Doe'),
                    _contacts('images/4.jpg', 'John Doe'),
                    _contacts('images/2.jpg', 'Joe Doe'),
                    _contacts('images/3.jpg', 'John Doe'),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:  Text('B',
                        style: TextStyle(fontSize: 23),
                      ),
                    ),

                    _contacts('images/3.jpg', 'Anna Rose'),

                  ],
                ),
              ),
            )


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff042038),
        child: Icon(Icons.send,),
        onPressed: (){},
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



class CameraScreen2 extends StatefulWidget {
  @override
  _CameraScreen2State createState() => _CameraScreen2State();
}

class _CameraScreen2State extends State {
  CameraController controller;
  List cameras;
  int selectedCameraIndex;
  String imgPath;


  @override
  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {
      cameras = availableCameras;

      if (cameras.length > 0) {
        setState(() {
          selectedCameraIndex = 0;
        });
        _initCameraController(cameras[selectedCameraIndex]).then((void v) {});
      } else {
        print('No camera available');
      }
    }).catchError((err) {
      print('Error :${err.code}Error message : ${err.message}');
    });
  }

  Future _initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SwipeDetector(
        onSwipeUp: (){
          setState(() {

          });
          //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>Chat())
          //);
        },
        onSwipeDown: (){
          setState(() {

          });
          //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>Profile())
          //);
        },
        onSwipeLeft: (){
          setState(() {

          });
          //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>Shouts())
         // );
        },
        child: Stack(
            children:[ Container(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: _cameraPreviewWidget(),
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
//                          Container(
//                              margin:EdgeInsets.only(right:20),
//                              child: Image(image: AssetImage("icons/tabs/7_contacts icon shouts.png"),
//                              )
//                          ),
                           SizedBox(width:150),
                          _cameraControlWidget(context),
                           Spacer(),
                          Container(
                            margin:EdgeInsets.only(),
                            child:  FloatingActionButton(
                              onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reply())),
                              child: Icon(Icons.send, size: 30,),
                              backgroundColor: Color(0xff042038),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
              Container(
                alignment: Alignment.topRight,
                height: 40,
                //color: Colors.red,
                margin: EdgeInsets.only(top:50, left: 270),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.flash_on, color: Colors.white,),
                    _cameraToggleRowWidget(),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.topLeft,
                height: 40,
                //color: Colors.red,
                margin: EdgeInsets.only(top:50,left:20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: ClipOval(
                        child: Image(image: AssetImage("images/1.jpg"),
                          height: 35,
                          width: 35,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ]
        ),
      ),




    );
  }
  /// Display Camera preview.
  Widget _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
      );
    }

    return Transform.scale(
        scale: 1.5 / controller.value.aspectRatio,
        child: new Center(
          child: new AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: new CameraPreview(controller)),
        ));
  }

  /// Display the control bar with buttons to take pictures
  Widget _cameraControlWidget(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              child: FaIcon(FontAwesomeIcons.stripeS, color: Colors.white,size:40),
              onTap: () {
                _onCapturePressed(context);
              },
            )
          ],
        ),
      ),
    );
  }

  /// Display a row of toggle to select the camera (or a message if no camera is available).
  Widget _cameraToggleRowWidget() {
    if (cameras == null || cameras.isEmpty) {
      return Spacer();
    }
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton.icon(
          onPressed: _onSwitchCamera,
          label: Text('',
            style: TextStyle(
                color: Colors.transparent,
                fontWeight: FontWeight.w500
            ),),
          icon: Icon(
            _getCameraLensIcon(lensDirection),
            color: Colors.white,
            size: 35,
          ),

        ),
      ),
    );
  }

  IconData _getCameraLensIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.back:
        return CupertinoIcons.switch_camera;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }




  void _showCameraException(CameraException e) {
    String errorText = 'Error:${e.code}\nError message : ${e.description}';
    print(errorText);
  }

  void _onCapturePressed(context) async {
    try {
      final path =
      join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');
      await controller.takePicture(path);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PreviewScreen(
              imgPath: path,
            )),
      );
    } catch (e) {
      _showCameraException(e);
    }
  }

  void _onSwitchCamera() {
    selectedCameraIndex =
    selectedCameraIndex < cameras.length - 1 ? selectedCameraIndex + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    _initCameraController(selectedCamera);
  }
}







class PreviewScreen extends StatefulWidget{
  final String imgPath;

  PreviewScreen({this.imgPath});

  @override
  _PreviewScreenState createState() => _PreviewScreenState();

}
class _PreviewScreenState extends State<PreviewScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(File(widget.imgPath),fit: BoxFit.cover,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.black,
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.share,color: Colors.white,),
                    onPressed: (){
                      getBytesFromFile().then((bytes){
                        Share.file('Share via', basename(widget.imgPath), bytes.buffer.asUint8List(),'image/path');
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<ByteData> getBytesFromFile() async{
    Uint8List bytes = File(widget.imgPath).readAsBytesSync() as Uint8List;
    return ByteData.view(bytes.buffer);
  }
}






class Reply extends StatefulWidget {
  @override
  _ReplyState createState() => _ReplyState();
}

class _ReplyState extends State<Reply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration:BoxDecoration(
          image:DecorationImage(
              image:AssetImage('images/4.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top:30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [




                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: ClipOval(
                      child: Image(image: AssetImage("images/1.jpg"),
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          FaIcon(FontAwesomeIcons.trashAlt, color: Colors.white,size: 30,),
                        ],
                      ),
                      SizedBox(width: 25,),

                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Image(image: AssetImage("icons/shouts/7_camera in circle white.png"),
                            height: 60,
                            width: 60,
                          ),

                        ],
                      ),


                    ],
                  ),

                ],

              ),
            ),

            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    margin: EdgeInsets.only(left:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          //onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reply())),
                            child:Image(image: AssetImage("icons/shouts/1_camera take picture circle white_add text icon.png"),
                            )),
                        SizedBox(width:20),
                        GestureDetector(
                          onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShoutTo())),
                          child:FaIcon(FontAwesomeIcons.smile,
                            size: 30, color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          child: Icon(Icons.send),
                          backgroundColor: Color(0xff042038),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}













