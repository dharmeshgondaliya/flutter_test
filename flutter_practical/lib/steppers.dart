import 'package:flutter/material.dart';

class mystepper extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>my_stepper();
}

class my_stepper extends State<mystepper>{
  var current = 0;
  var steps = [
    Step(title: Text("Step 1"), content: Text('First Step Data'),isActive: true,subtitle: Text("First Step")),
    Step(title: Text("Step 2"), content: Text('Second Step Data'),isActive: true,subtitle: Text("Second Step")),
    Step(title: Text("Step 3"), content: Text('Third Step Data'),isActive: true,subtitle: Text("Third Step")),
    Step(title: Text("Step 4"), content: Text('Fourth Data'),isActive: true,subtitle: Text("Fourth Step")),
    Step(title: Text("Step 5"), content: Text('Fifth Data'),isActive: true,subtitle: Text("Fifth Step")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stepper"),),
      body: Container(
        child: Stepper(
          steps: this.steps,
          type: StepperType.vertical,
          currentStep: current,
          onStepCancel: (){if(current != 0)setState(() {current--;});},
          onStepContinue: (){if(current != steps.length-1)setState(() {current++;});},
        ),
      ),
    );
  }
}