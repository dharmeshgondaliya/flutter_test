import 'package:flutter/material.dart';
import 'package:flutter_practical/animation1.dart';
import 'package:flutter_practical/cupertino_screen.dart';
import 'package:flutter_practical/gmail_floating_btn.dart';
import 'package:flutter_practical/introduction_screen.dart';
import 'package:flutter_practical/lazy_loading.dart';
import 'package:flutter_practical/loaders.dart';
import 'package:flutter_practical/search_app.dart';
import 'package:flutter_practical/steppers.dart';
import 'package:flutter_practical/tabandbottommenu.dart';
import 'package:flutter_practical/whatsappscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: MyApp(),
      ),
    )
  );
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>My_app();
}

class My_app extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
            child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              newitem("Tabbar and Bottom Navigation Menu",tab_bar()),
              newitem("Stepper", mystepper()),
              newitem("Gmail Floating Action Button", gmail_floating()),
              newitem("Cupertino", my_cupertino()),                      
              newitem("Search", searchapp()),
              newitem("Listview Load more", lazy_loading()),
              newitem("Animation 1", animation1()),
              newitem("WhatsApp", whatsapp()),
              newitem("Loaders", loaders()),
              newitem("Introduction Screen", introductionscreen()),
            ],
          ),
        ),
      ),
    );
  }

  newitem(txt,obj){
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.white),borderRadius: BorderRadius.circular(25),color: Colors.blueAccent),
          child: Center(child: Padding(padding: EdgeInsets.all(10),child: Text(txt,style: TextStyle(fontSize: 18,color: Colors.white,),),),),
        ),
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>obj)),  
    );
  }

}