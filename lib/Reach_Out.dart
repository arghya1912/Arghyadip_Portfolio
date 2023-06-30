import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class reach_out extends StatefulWidget {
  const reach_out({super.key});

  @override
  State<reach_out> createState() => _reach_outState();
}

class _reach_outState extends State<reach_out> {
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
        'https://res.cloudinary.com/dvypswxcv/raw/upload/v1680242476/Reach_out_dk7ljg.riv',
        artboard: 'ButtonRive',
        stateMachines: const ['State Machine 1'],
        onInit: _onRiveInit,
        ),
    );
  }
}