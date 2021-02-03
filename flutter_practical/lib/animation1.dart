import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animation1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>animation_1();
}

class animation_1 extends State<animation1> with SingleTickerProviderStateMixin{
  
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 5));
    _animation = Tween<double>(begin: 0.0,end: 1.0).animate(_animationController);
    
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        _animationController.reverse();
      }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedLogo(animation: _animation,),
    );
  }
}

class AnimatedLogo extends AnimatedWidget{
  final sizeanim = Tween<double>(begin: 0.0,end: 500.0);
  AnimatedLogo({Key key,Animation animation}):super(key: key,listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Transform.scale(
      scale: sizeanim.evaluate(animation),
      child: FlutterLogo()
    );   
  }

}