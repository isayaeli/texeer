import 'package:flutter/material.dart';

class Suggestion extends StatefulWidget {
  @override
  _SuggestionState createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20,left:20),
                width: 300,
                height: 40,
                  decoration:BoxDecoration(
                     color: Colors.grey[300],
                    borderRadius:BorderRadius.all(Radius.circular(20))
                  ),
                  child:TextField(
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontWeight:FontWeight.bold),
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:20, top: 20),
                 child: Text('Cancel',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                 ),
                )
            ],
          ),
          Padding(padding: EdgeInsets.only(left:20, top: 20),
           child: Text('Popular Texeer Stars',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize:20 ),
           ),
          ),

          Padding(padding: EdgeInsets.only(left:20),
           child: Card(
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               children:[
                 starsList('images/1.jpg', 'John Doe', 'big_J'),
                starsList('images/3.jpg', 'Kendrick Lamar', 'k_dot'),
                 starsList('images/4.jpg', 'Gyan', 'Lil_Gigantic'),
                 Divider(),
                 Center(child:Text('View More',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:20 ),
                 )),
                 SizedBox(height:10)
               ]
             ),
           ),
          ),


          Padding(padding: EdgeInsets.only(left:20, top: 20, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Trending Shouts',
             style: TextStyle(fontWeight: FontWeight.bold, fontSize:20 ),
             ),
             Text('Explore Lenses >',
            style: TextStyle(color:Colors.grey,fontWeight: FontWeight.bold, fontSize:18 ),
           ),
             ],
           ),
          ),

          Padding(padding: EdgeInsets.only(left:20, bottom: 10),
           child: Card(
             elevation: 1.5,
             child: Column(
               mainAxisAlignment:MainAxisAlignment.start,
               children:[
                 starsList('images/1.jpg', 'John Doe', 'big_J'),
                starsList('images/3.jpg', 'Kendrick Lamar', 'k_dot'),
                 starsList('images/4.jpg', 'Gyan', 'Lil_Gigantic'),
                 Divider(),
                 Center(child:Text('View More',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:20 ),
                 )),
                 SizedBox(height:10)
               ]
             ),
           ),
          )

        ],
      ),
    );
  }
  starsList(String img, String name, String username){
    return ListTile(
        leading:CircleAvatar(
          radius: 30,
          child: ClipOval(
            child:Image(image: AssetImage(img),
             height: 50,
             width: 50,
            )
          ),
        ),
        title: Text(name),
        subtitle: Text(username),
        trailing: Container(
          width: 100,
          height: 35,
          decoration:BoxDecoration(
          color: Colors.grey[300],
        borderRadius:BorderRadius.all(Radius.circular(20))
      ),
      child: Center(child:Text('Visit',
        style: TextStyle(fontWeight: FontWeight.bold,),
      ),
      )
        ),
      );
  }
}