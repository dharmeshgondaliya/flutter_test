import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab_bar extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>bottom_menu(); 
}

class bottom_menu extends State<tab_bar> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.phone),),
            Tab(icon: Icon(Icons.email),)
          ]
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          newpage("First Page"),newpage("Second Page"),newpage("Third Page")
        ]
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.phone),),
          Tab(icon: Icon(Icons.email),)
        ]),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

}
class newpage extends StatelessWidget{
  String title;
  newpage(this.title);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(this.title),
    );
  }
}