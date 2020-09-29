
import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:texeer/screens/chats.dart';
import 'package:texeer/screens/contact.dart';
import 'package:texeer/screens/profile.dart';
import 'package:texeer/screens/shouts.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State {
  
  CameraController controller;
  List cameras;
  int selectedCameraIndex;
  String imgPath;
  PageController _controller1;
  
  

  @override
  void initState() {
    super.initState();
     _controller = PageController(initialPage: 1);
      _controller1 = PageController(initialPage: 1);
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
  void dispose() {
     _controller.dispose();
    controller?.dispose();
    super.dispose();
  }



  // page view 

    PageController _controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: _controller,
          children:[
            Container(
              child: Contacts(),
            ),



            Container(
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _controller1,
               
                //reverse: false,
                //dragStartBehavior: DragStartBehavior.down,
                //  onPageChanged: (index){
                //     _controller1.animateToPage(index, duration: Duration(milliseconds:400), curve: Curves.easeInOut);
                //  },
                children:[
                  Container(
                    child: Profile()
                  ),

                   Stack(
                children:[ Container(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: _cameraPreviewWidget(),
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


              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
//                margin: EdgeInsets.only(top: 600),

                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                          margin:EdgeInsets.only(right:20),
                          child: Image(image: AssetImage("icons/tabs/7_contacts icon shouts.png"),
                          )
                      ),
                      //  Spacer(),
                      _cameraControlWidget(context),
                      // Spacer(),
                      Container(
                        margin:EdgeInsets.only(right:20),
                        child:Image(image: AssetImage("icons/tabs/7_chat icon.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

             ]
            ),
            
                   Container(
                    child:Shouts()
                ),
                ]
              ),
            ),
           
          
        Container(
          child: Chat(),
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

    return AspectRatio(
            aspectRatio: controller.value.aspectRatio ,
            child: new CameraPreview(controller),
      );
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
              child: FaIcon(FontAwesomeIcons.stripeS, color: Colors.white,size:35),
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



