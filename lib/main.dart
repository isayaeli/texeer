import 'package:flutter/material.dart';
import 'package:texeer/screens/login.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
              //primarySwatch: Colors.teal,
              primaryColor: Colors.purple,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Texeer',
            theme: theme,
            home: Login(),
          );
        });
  }
}



































// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           width: MediaQuery.of(context).size.width,
//           color:Color(0xff042038),
//           child:Column(
//             mainAxisAlignment:MainAxisAlignment.spaceBetween,
//             children:[
//               Container(
//                 height: 150,
//                 width: 150,
//                 margin: EdgeInsets.only(top:350),
//               decoration: BoxDecoration(
//                 image:DecorationImage(image: 
//                   AssetImage('images/texeer.png'),
//                    fit: BoxFit.fill
//                 )
//               ),
//           ),
//            Container(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children:[
//                  FlatButton(
//                    child:Text('Login',
//                     style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
//                    ),
//                    onPressed:(){
//                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Logi()));
//                    }
//                  ),
//                   FlatButton(
//                    child:Text('Register',
//                     style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
//                    ),
//                    onPressed:(){}
//                  )
//                ]
//              ),
//            )
//             ]
//           )
//         )
//     );
//   }
// }