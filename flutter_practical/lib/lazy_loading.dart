import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lazy_loading extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>loadmore();
}

class loadmore extends State<lazy_loading>{
  
  List mylist;
  ScrollController scrollController = ScrollController();
  int currentmax = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mylist = List.generate(10, (index) => "Item: ${index + 1}");
    scrollController.addListener(() {
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
          getMoreData();
      }
    });
  }

  getMoreData(){
    for(int i = currentmax; i < currentmax + 10; i++){
      mylist.add("item: ${i + 1}");
    }
    currentmax += 10;
    setState(() {});
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lazy Loading"),),
      body: ListView.builder(
        controller: scrollController,
        itemExtent: 100,
        itemCount: mylist.length + 1,
        itemBuilder: (context,index){
          if(index == mylist.length){
            return CupertinoActivityIndicator();
          }
          return ListTile(
            title: Text(mylist[index]),
          );
        }
      ),
    );
  }
}