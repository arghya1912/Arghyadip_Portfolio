import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class rive_on_skillscard0 extends StatelessWidget {
  const rive_on_skillscard0({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.1,
      child: RiveAnimation.network("https://res.cloudinary.com/dvypswxcv/raw/upload/v1680288890/can_go_next_1_dhkktp.riv"),
    );
  }
}