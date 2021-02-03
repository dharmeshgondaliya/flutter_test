import 'package:flutter/cupertino.dart';

class my_cupertino extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mycupertino();
}

class mycupertino extends State<my_cupertino>{
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone),title: Text("Phone")),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.conversation_bubble),title: Text("Chat")),
          ]
        ), 
        tabBuilder: (context,i)=>CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: i == 0 ? Text("Phone") : Text("Chat"),
              ),
              SliverFillRemaining(
                child: i == 0 ? Text("Phone") : Text("Chat"),
              )
            ],
          ),
          // navigationBar: CupertinoNavigationBar(
          //   leading: Icon(CupertinoIcons.back),
          //   middle: Text("Cupertino"),
          //   trailing: Icon(CupertinoIcons.search),
          // ),
        )
      )
    );
  }
}