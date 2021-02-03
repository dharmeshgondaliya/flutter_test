import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introductionscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => introduction_screen();
}
class introduction_screen extends State<introductionscreen>{
  List<PageViewModel> getPages(){
    return [
      PageViewModel(image: Image.asset("assets/image/html.png"),title: "HTML",body: "HTML is Hypertext Markup Language",footer: Text("Flutter")),
      PageViewModel(image: Image.asset("assets/image/css.png"),title: "CSS",body: "CSS is Cascading Style Sheet",footer: Text("Flutter")),
      PageViewModel(image: Image.asset("assets/image/javascript.png"),title: "JavaScript",body: "Javascript is Scripting Language",footer: Text("Flutter")),
      PageViewModel(image: Image.asset("assets/image/csharp.png"),title: "C Sharp",body: "C Sharp is used For Make Desktop Application",footer: Text("Flutter")),
      PageViewModel(image: Image.asset("assets/image/android.png"),title: "Android",body: "In Android use Java and Kotlin Language",footer: Text("Flutter")),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(), 
        onDone: (){}, 
        done: Text("Done",style: TextStyle(color: Colors.black),),
        skip: Text("Skip",style: TextStyle(color: Colors.black),),
        onSkip: (){},
      ),
    );
  }
}