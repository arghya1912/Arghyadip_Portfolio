import 'package:final_portfolio/animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';
import 'variables.dart' as variables;

class robot extends StatefulWidget {
  const robot({super.key});

  @override
  State<robot> createState() => _reach_outState();
}

class _reach_outState extends State<robot> {
  //SMIInput<double>? _numberExampleInput;
  void printsomething1() {
    print("1");
  }
  void printsomething2() {
    print("2");
  }
  void printsomething3() {
    print("3");
  }
  void _onRiveInit(Artboard Harold) {
    final controller = StateMachineController.fromArtboard(Harold, 'State Machine 1');
    Harold.addController(controller!);
    variables.numberExampleInput = controller.findInput<double>('numButton') as SMINumber?;
  
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (variables.numberExampleInput?.value == 1) {
            /*variables.numberExampleInput?.value = 1;
            setState(() {
             
            });*/
            Provider.of<Animation_provider>(context, listen: false).set_button(1);
            //printsomething1();
          }


          if (variables.numberExampleInput?.value == 2) {
            /*variables.numberExampleInput?.value = 2;
            setState(() {
            
            });*/
            Provider.of<Animation_provider>(context, listen: false).set_button(2);
            //printsomething2();
          }


          if (variables.numberExampleInput?.value == 3) {
            /*variables.numberExampleInput?.value = 3;
            setState(() {
              
            });*/
            Provider.of<Animation_provider>(context, listen: false).set_button(3);
            //printsomething3();
          }
    },
      child: RiveAnimation.network(
        'https://res.cloudinary.com/dvypswxcv/raw/upload/v1680242476/robot_animation_oqs72u.riv',
        artboard: 'Artboard',
        stateMachines: const ['State Machine 1'],
        onInit: _onRiveInit,
        ),
    );
  }
}