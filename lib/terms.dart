import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xff042038),
        title:Text('Terms and Conditions')
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(padding: EdgeInsets.only(left:20, top: 20),
                child:  Text('Terms',
                 style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold, fontSize: 17)
                ),
               ),
                Padding(padding: EdgeInsets.only(top:20, left:20),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod '),
                ),

                Padding(padding: EdgeInsets.only(left:20, top: 20),
                child:  Text('User Licence',
                 style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold, fontSize: 17)
                ),
               ),
                Padding(padding: EdgeInsets.only(top:20, left:20),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod '),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}