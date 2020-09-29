import 'package:flutter/material.dart';
import 'package:texeer/screens/login.dart';
import 'package:texeer/screens/sign_up.dart';


class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color:Color(0xff042038),
          child: Column(
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
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Expanded(child: Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:Text("Fogortten your password? Don't worry just type in your email adress and we'll send you the link to recover your password"
                    ,style: TextStyle(color: Colors.white, fontSize: 18),
                   )
                 ),),
                 Expanded(child:Container(
                   margin: EdgeInsets.only(top:10, left: 5),
                   child:InkWell(
                     onTap:(){
                       //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Password()));
                     },
                     child: Text('Send',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold, fontSize: 18),
                   ),
                   )
                 ),),

                 Expanded(child:Container(
                   margin:EdgeInsets.only(top:50, left:20, right:20),
                   child:Row(
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
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
        ),
    );
  }
}