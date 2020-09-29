import 'package:flutter/material.dart';
import 'package:texeer/screens/camera.dart';
import 'package:texeer/terms.dart';
import 'package:country_code_picker/country_code_picker.dart';

//import 'package:flutter_localizations/flutter_localizations.dart';

//===============================================================sign up class starts here ====================================

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
       body: Container(
         color:Color(0xff042038),
         child: Column(
           mainAxisAlignment:MainAxisAlignment.start,
           children:[
               Container(
                 margin: EdgeInsets.only(top:20, left:10, ),
                 height:120,
                 width:120,
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
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:TextField(
                     style: TextStyle(color:Colors.white),
                     decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color:Colors.white),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Expanded(
                   child:  Container(
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
                 ),
                  Expanded(child:Container(
                   margin: EdgeInsets.only(top:10, left: 5),
                   child:GestureDetector(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AgeCheck()));
                     },
                     child: Text('Next',
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
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Terms()));
                         },
                         child: Text('Terms',
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

//===============================================================sign up class ends here ====================================












//===============================================================Inputing age class starts here ====================================

class AgeCheck extends StatefulWidget {
  @override
  _AgeCheckState createState() => _AgeCheckState();
}

class _AgeCheckState extends State<AgeCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.of(context).size.width,
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
                        labelText: 'Enter Your Age',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Expanded(child: Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:Text("You're almost done, By pressing 'Finish' you're indicating that you've read Privacy Policy and agreed to the Terms of Srevice"
                    ,style: TextStyle(color: Colors.white, fontSize: 18),
                   )
                 ),),
                 Expanded(child:Container(
                   margin: EdgeInsets.only(top:10, left: 5),
                   child:InkWell(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetNumber()));
                     },
                     child: Text('Finish',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold, fontSize: 18),
                   ),
                   )
                 ),),

                
                ]
             )
        ),
    );
  }
}
//===============================================================Inputing age class starts here ====================================







//===============================================================Inputing number class starts here ====================================

class GetNumber extends StatefulWidget {
  @override
  _GetNumberState createState() => _GetNumberState();
}

class _GetNumberState extends State<GetNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Color(0xff042038),
        child: Container(
       width: MediaQuery.of(context).size.width,
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
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       CountryCodePicker(
                         textStyle: TextStyle(color:Colors.white),
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'TZ',
                       //favorite: ['+255', 'TZ'],
                      //countryFilter: ['TZ', 'KE'],
                     showFlagDialog: true,
                       comparator: (a, b) => b.name.compareTo(a.name),
                     //Get the country information relevant to the initial selection
                         onInit: (code) =>
                    print("on init ${code.name} ${code.dialCode} ${code.name}"),
                     ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        margin: EdgeInsets.only(left:20),
                        child:TextField(
                     style: TextStyle(color:Colors.white),
                     decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color:Colors.white)
                        // ),
                        hintStyle: TextStyle(color:Colors.white),
                        labelText: 'Phone number',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   ),
                      )
                     ],
                   ),
              
                 ),
                 SizedBox(height:20),
                 Expanded(child: Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:Text("Please put in your phone number to start your new account now.Make sure to put valid phone number"
                    ,style: TextStyle(color: Colors.white, fontSize: 18),
                   )
                 ),),
                 Expanded(child:Container(
                   margin: EdgeInsets.only(top:10, left: 5),
                   child:InkWell(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NumVerify()));
                     },
                     child: Text('Send code',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold, fontSize: 18),
                   ),
                   )
                 ),),

               
            
                ]
             )
        ),
      ),
    );
  }
}


//===============================================================Inputing number class ends here====================================







//===============================================================Verification class starts here ====================================

class NumVerify extends StatefulWidget {
  @override
  _NumVerifyState createState() => _NumVerifyState();
}

class _NumVerifyState extends State<NumVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
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
                        labelText: 'Verify your number',
                        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                     ),
                   )
                 ),
                 SizedBox(height:20),
                 Expanded(child: Container(
                   margin: EdgeInsets.only(left:10, right: 10),
                   width: MediaQuery.of(context).size.width/1.2,
                   child:Text("In case you did not get the verification codes press resend button below to request new ones"
                    ,style: TextStyle(color: Colors.white, fontSize: 18),
                   )
                 ),),
                 Expanded(child:Container(
                   margin: EdgeInsets.only(top:0, left: 5),
                   child:InkWell(
                     onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CameraScreen()));
                     },
                     child: Text('Resend sms',
                    style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold, fontSize: 18),
                   ),
                   )
                 ),),
                 Expanded(child:SizedBox())
                ]
             )
        ),
    );
  }
}


//===============================================================Verification class ends here ====================================
