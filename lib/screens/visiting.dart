import 'package:flutter/material.dart';


class Visiting extends StatefulWidget {
  @override
  _VisitingState createState() => _VisitingState();
}

class _VisitingState extends State<Visiting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
         children:[
            Container(
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                 Padding(padding: EdgeInsets.only(top:10, left: 10),
                 child: Text('A',
                 style: TextStyle(fontSize:25,color:Color(0xff042038), fontWeight: FontWeight.w500),
                 ),
                 ),


                _visitingList('images/4.jpg', 'Adam Leon'),
                 _visitingList( 'images/2.jpg','Adam Leon',),
                 _visitingList('images/3.jpg', 'Adam Leon'),
                 _visitingList('images/1.jpg','Adam Leon',),



               ]
             ),

           ),
          Padding(padding: EdgeInsets.only(left:70),
           child:Divider(color: Colors.grey,),
          ),
//================================================= the b container starts============================================================================
           Container(
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                 Padding(padding: EdgeInsets.only(top:10, left: 10),
                 child: Text('B',
                 style: TextStyle(fontSize:25,color:Color(0xff042038), fontWeight: FontWeight.w500),
                 ),
                 ),
                 _visitingList('images/4.jpg','Bryan Leon'),
                 _visitingList('images/3.jpg','Bryan Leon'),
                 _visitingList('images/2.jpg','Bryan Leon'),


               ]
             ),
             
           ),
//================================================= the B container ends============================================================================
          
         ]
       ),
    );
  }
   _visitingList(String img, String name){
    return Padding(padding: EdgeInsets.only(left:20),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xff042038),
          radius: 50,
          child:ClipOval(
            child: Image(image: AssetImage(img),),
          ),
        ),
        title: Text(name,
          style: TextStyle(fontSize:20),
        ),
        subtitle: Text('@example1',
          style: TextStyle(fontSize:15),
        ),
        trailing: Container(
          height: 40,
          width: 80,
          decoration:BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10),
                  bottomLeft:Radius.circular(10),bottomRight:Radius.circular(10))
          ),
          child: Container(
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10),
                      bottomLeft:Radius.circular(10),bottomRight:Radius.circular(10))
              ),
              margin:EdgeInsets.all(1),
              child: Center(child:Text("Visiting",
                  style: TextStyle(color: Color(0xff042038), fontSize: 18)
              ),)
          ),
        ),
      ),
    );
   }


}