import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loaders extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>loading();
}

class loading extends State<loaders>{

  double sizes = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Spinkit"),),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          SpinKitRotatingCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitRotatingPlain(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitChasingDots(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitPumpingHeart(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitPulse(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitDoubleBounce(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),

          //wave
          SpinKitWave(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,type: SpinKitWaveType.start,),
          SpinKitWave(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,type: SpinKitWaveType.center,),
          SpinKitWave(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,type: SpinKitWaveType.end,),

          //wander cubes
          SpinKitThreeBounce(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitWanderingCubes(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitWanderingCubes(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,shape: BoxShape.circle,),

          //circle & fading four
          SpinKitCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitFadingFour(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitFadingFour(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,shape: BoxShape.rectangle,),

          //fading cubes
          SpinKitFadingCube(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitCubeGrid(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitFoldingCube(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),

          //Ring
          SpinKitRing(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitDualRing(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitRipple(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),

          //Grid
          SpinKitFadingGrid(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitFadingGrid(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,shape: BoxShape.rectangle,),

          //Spinning
          SpinKitSpinningCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitSpinningCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,shape: BoxShape.rectangle,),

          //hourglass
          SpinKitHourGlass(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitPouringHourglass(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),

          SpinKitFadingCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),
          SpinKitSquareCircle(color: Colors.blue,duration: Duration(seconds: 3),size: sizes,),

          SpinKitFadingCircle(
            itemBuilder: (context,index){
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.blue : Colors.green
                ),
              );
            },
          )

        ],
      ),
    );
  }
}