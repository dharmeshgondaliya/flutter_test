import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gmail_floating extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>gmail_floating_btn();

}
class gmail_floating_btn extends State<gmail_floating>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gmail Floating Button"),),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1,color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(75)
          ),
          child: CustomPaint(
            //child: Container(),
            foregroundPainter: FloatingPainter(15),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.white,
        child: CustomPaint(child: Container(),
        foregroundPainter: FloatingPainter(5),),
      ),
    );
  }

}

class FloatingPainter extends CustomPainter{
  double linewidth;
  FloatingPainter(this.linewidth);
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;

  @override
  void paint(Canvas canvas, Size size) {

    Paint amberpaint = Paint()..color = Colors.amber..strokeWidth = linewidth;
    Paint bluepaint = Paint()..color = Colors.blue..strokeWidth = linewidth;
    Paint greenpain = Paint()..color = Colors.green..strokeWidth = linewidth;
    Paint redpaint = Paint()..color = Colors.red..strokeWidth = linewidth;
    Paint blackpaint = Paint()..color = Colors.black..strokeWidth = linewidth;

    canvas.drawLine(Offset(size.width * 0.25, size.height * 0.5), Offset(size.width * 0.45, size.height * 0.5), amberpaint);
    canvas.drawLine(Offset(size.width * 0.55,size.height * 0.5), Offset(size.width * 0.75, size.height * 0.5), bluepaint);
    canvas.drawLine(Offset(size.width * 0.5,size.height * 0.55), Offset(size.width * 0.5,size.height * 0.75), greenpain);
    canvas.drawLine(Offset(size.width * 0.5,size.height * 0.45), Offset(size.width * 0.5,size.height * 0.25), redpaint);
    canvas.drawLine(Offset(size.width * 0.45,size.height * 0.5), Offset(size.width * 0.55,size.height * 0.5), blackpaint);
    canvas.drawLine(Offset(size.width * 0.5,size.height * 0.45), Offset(size.width * 0.5,size.height * 0.55),blackpaint);
  }

}