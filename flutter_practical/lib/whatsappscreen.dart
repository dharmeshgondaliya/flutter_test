import 'package:flutter/material.dart';

class whatsapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => whats_app();
}

class whats_app extends State<whatsapp> with SingleTickerProviderStateMixin {
  
  TabController tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontroller = TabController(length: 4,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert),onPressed: (){})
        ],
        bottom: TabBar(
          controller: tabcontroller,
          tabs: <Widget>[
            IconButton(icon: Icon(Icons.camera_alt),onPressed: (){}),
            Text("Chats"),
            Text("Status"),
            Text("Calls")
          ],
        ),
      ),
      body: TabBarView(
        controller: tabcontroller,
        children: <Widget>[
          camerapage(),chatpage(),statuspage(),callspage()
        ],
      )
    );
  }
}
class camerapage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text("Camera")
    );
  }
}
class chatpage extends StatelessWidget{

  List msg = [
    'Dharmesh','Ninin','Nikul','Mayur','Raju','Pradip'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.message),onPressed: (){},),
          body: ListView.builder(
        itemCount: msg.length,
        itemBuilder: (context,index){
          return Container(
            child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
            ),
            title: Text(msg[index]),
            subtitle: Text("Hello"),
            trailing: Text("12:00",style: TextStyle(fontSize: 10),),
          )
        );
      }),
    );
  }
}
class statuspage extends StatelessWidget{
  
  List status = [
    'Dharmesh','Nitin','Nikul','Mayur','Raju','Pradip'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.camera_alt),onPressed: (){},),
          body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
            ),
            subtitle: Text("Add Status"),
            title: Text("My Status")
          ),

          Container(
            color: Colors.grey[300],
            child: Padding(padding: EdgeInsets.only(top: 5,bottom: 5,left: 15),child: Text("Recent Update"),),
          ),

        ],
      ),
    );
  }

}
class callspage extends StatelessWidget{
 
  List calls = [
    'Dharmesh','Nitin','Nikul','Mayur','Raju','Pradip'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add_call),onPressed: (){},),
          body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context,index){
          return Container(
            child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
            ),
            title: Text(calls[index]),
            subtitle: Text("12:00"),
            trailing: Icon(Icons.video_call),
          )
        );       
        }
      ),
    );
  }

}