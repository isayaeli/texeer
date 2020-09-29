import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:texeer/screens/camera.dart';
import 'package:texeer/screens/forgortpass.dart';
import 'package:texeer/screens/sign_up.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042038),
       body:Column(
           mainAxisAlignment:MainAxisAlignment.start,
           children:[
               Container(
                 margin: EdgeInsets.only(top:80, left:20, ),
                 height:150,
                 width:150,
                 decoration:BoxDecoration(
                   image:DecorationImage(
                     image: AssetImage('images/texeer.png')
                     )
                   )
                 ),
                 SizedBox(height:20),
                 Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:TextField(
                     style: TextStyle(color:Colors.white),
                     decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.white)
                        ),
                        hintStyle: TextStyle(color:Colors.white),
                        labelText: 'Email/username',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:TextField(
                     obscureText: true,
                     style: TextStyle(color:Colors.white),
                     decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color:Colors.white),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 Expanded(child:Container(
                   margin: EdgeInsets.only(top:20, left: 5),
                   child:GestureDetector(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Password()));
                     },
                     child: Text('Forgort Password??',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold, fontSize: 18),
                   ),
                   )
                 ),),

                 Expanded(
                   child:Container(
                   margin:EdgeInsets.only(top:50, left:20,right: 20 ),
                   child:Row(
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:[
                       GestureDetector(
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                         },
                         child: Text('Sign Up',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.w600, fontSize: 25),
                     ),
                       ),
                      GestureDetector(
                         onTap: (){
                          
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen()));
                         },
                         child: Text('Login',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.w600, fontSize: 25),
                     ),
                       ),
                     ]
                   )
                 ))
                ]
             )
    );
  }

  
}






//  Container(
//                child:Text('welcome to texeer'),
//              ),
//             Container(
//               margin: EdgeInsets.only(left:40, right: 40),
//               width: 400,
//               child: TextField(
//                 controller: controller,
//                  style: TextStyle(color: Colors.white),
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   //border: OutlineInputBorder(),
//                   //hintText:'Email/username',
//                   fillColor: Colors.white,
//                   filled: true,
//                   hintStyle: TextStyle(color:Colors.white),
//                   labelText: 'Email/username',
//                   labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  
//                 ),
//               ),
//             ),
//             SizedBox(height:40),
//             Container(
//               margin: EdgeInsets.only(left:40,right: 40),
//               width: 400,
//               child: TextField(
//                 controller: controller,
//                 style: TextStyle(color: Colors.white),
//                  obscureText: true,
//                  decoration: InputDecoration(
                    
                    
//                    fillColor: Colors.white,
//                     filled: false,
//                    //border: OutlineInputBorder(),
//                   //hintText:'Password',
//                   hintStyle: TextStyle(color:Colors.black),
//                   labelText: 'Password',
//                   labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//               ),
//             ),

//             SizedBox(
//                       height: 20.0,
//                    ),
//                   Container(
//                      height: 50,
//                      width: 200,
//                     color:Colors.transparent,
//                     child: RaisedButton(
//                      color: Colors.blue,
//                      onPressed: (){
//                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage()));
//                      },
//                      child: Text(
//                        "Login",
//                        style: TextStyle(color: Colors.white),
//                      ),
//                    )
//                   )