import 'package:flutter/material.dart';
import 'package:texeer/screens/suggestions.dart';
import 'package:texeer/screens/visiting.dart';
import 'package:texeer/screens/visitors.dart';

class WelcomePage extends StatefulWidget {
   int index;
   WelcomePage({this.index});
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {

   TabController _controller;
   @override
  void initState() {
     _controller = TabController(length: 3, vsync: this, initialIndex: widget.index);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0xff042038),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: ()=>Navigator.of(context).pop(),),
        title: Text('Select or Enter a name'),
        
        bottom: PreferredSize(
      child: Expanded(child: Container(
         decoration: BoxDecoration(
           borderRadius:BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10)),
           color: Colors.white,
         ),
         height: 50.0,
           child:  TabBar(
             controller: _controller,
             indicatorColor: Colors.blue[900],
             indicatorWeight: 4,
            tabs:[
           Tab(child: Text("Suggestions",
           style: TextStyle(color:Color(0xff042038), fontSize: 18, ),
           ),
           ),
           Tab(child: Text("Visitors",
           style: TextStyle(color:Color(0xff042038), fontSize: 18, ),
           ),
           ),
           Tab(child: Text("Visiting",
           style: TextStyle(color:Color(0xff042038), fontSize: 18, ),
           ),
           ),
         ]),
      ),),
      preferredSize: Size.fromHeight(50.0)
      
      ),
      
      ),
      body: TabBarView(
        controller: _controller,
        children:[
          Suggestion(),
          Visitors(),
          Visiting(),
        ]
      ),
    );
  }
}