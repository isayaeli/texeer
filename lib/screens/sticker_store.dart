import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Stickers extends StatefulWidget {
  @override
  _StickersState createState() => _StickersState();
}

class _StickersState extends State<Stickers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Container(
            height: 60,
            margin: EdgeInsets.only(top:20),
            color: Color(0xff042038),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left:20),
                 child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                ),
                Padding(padding: EdgeInsets.only(left:20),
                 child: Text('Stcker Store',
                  style: TextStyle(fontWeight:FontWeight.w900, fontSize: 26, color: Colors.white),
                 )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:20, right:20,top:25),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)),
              image:DecorationImage(image: AssetImage('images/sticker.png'),
               fit: BoxFit.cover
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:30),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Text('All',
                 style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w900, fontSize: 20)
                ),
                Text('free',
                 style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w900, fontSize: 20)
                ),
                    Text('Your Stickers',
                     style: TextStyle(color:Color(0xff042038), fontWeight: FontWeight.w900, fontSize: 20),
                    ), 
              ],
            ),
          ),
          Expanded(
              child: Container(
              height: 400,
              child:ListView(
                children:[
                  _buildSticker("\$${1.99}"),
                   _buildSticker("free"),
                  _buildSticker("\$${1.99}"),
                   _buildSticker("free"),
                ]
              ),
            ),
          )
        ]
      ),
    );
  }

  _buildSticker(String price){
    return  Container(
              margin: EdgeInsets.only(left:30, top:5),
              child: ListTile(
                leading:CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                 child: ClipOval(
                   child:Image(
                     image:AssetImage('images/skull.png'),
                     height:50,
                     width: 50,
                   )
                 ),
                ),
                title: Text('Memes',
                style: TextStyle(fontWeight:FontWeight.w700, color:Colors.grey,fontSize: 25),
                ),
                subtitle: Text(price),
                trailing:FaIcon(FontAwesomeIcons.toggleOn, color:Color(0xff042038), size: 30,) ,
              ),
    );
  }
}