import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class eyeball extends StatefulWidget {
  const eyeball({super.key});

  @override
  State<eyeball> createState() => _reach_outState();
}

class _reach_outState extends State<eyeball> {
  SMIBool? _isTap;

  void _onRiveInit(Artboard ButtonRive) {
    final controller = StateMachineController.fromArtboard(ButtonRive, 'State Machine 1');
    ButtonRive.addController(controller!);
    _isTap = controller.findInput<bool>('dance') as SMIBool?;

    setState(() {
      if(_isTap != null) {
        _isTap!.value = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(_isTap?.value != null) {
          _isTap?.value = !_isTap!.value;
        }
      },
      child: RiveAnimation.network(
        'https://res.cloudinary.com/dvypswxcv/raw/upload/v1680242477/eyeball_animation_jksp1z.riv',
        artboard: 'New Artboard',
        stateMachines: const ['State Machine 1'],
        onInit: _onRiveInit,
        ),
    );
  }
}