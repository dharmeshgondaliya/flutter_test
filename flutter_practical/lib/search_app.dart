import 'dart:collection';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>search_app();
}

class search_app extends State<searchapp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  
  final cities = [
    "Junagadh","Amreli","Rajkot","Ahmedabad","Surat","Gandhinagar","Morbi","Botad","Somnath","Porbandar","Dwarka","Surendranagar","Navsari","Bhavnagar","Dang","Mahesana","Katch","Bharuch","Jamnagar"
  ];

  final recent = ["Junagadh","Amreli","Rajkot"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){ query = ""; })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress:transitionAnimation), onPressed: (){
      close(context, null);
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 100,
        child: Card(
          color: Colors.lightBlue,
          child: Center(
            child: Text(query,style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
        ),
      ),
    );
  } 

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty ? recent : cities.where((p) => p.contains(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
        onTap: (){
          query = suggestionlist[index];
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(text: TextSpan(
          text: suggestionlist[index].substring(0,query.length),
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: suggestionlist[index].substring(query.length),
              style: TextStyle(color: Colors.grey)
            )
          ]
        ))
      ),
      itemCount: suggestionlist.length,
      );
  }

} 