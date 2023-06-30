import 'package:final_portfolio/rive_on_skillscard0.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class skillscard0 extends StatelessWidget {
  const skillscard0({super.key});

  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022 ";
    return Card(
      elevation: 50,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(236, 200, 246, 1),
              Color.fromRGBO(159, 156, 255, 1),
            ]
          ),
        ),
        //color: Colors.purple,
        child: Container(
          child: Column(
            children: [
              Row(children: [SizedBox(height: 25,)],),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [rive_on_skillscard0()],),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Hover & Unfold the three buttons!", style: GoogleFonts.openSans(color: Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold, 
              fontSize: 3.5.sp), )],)
            ],
          ),
        ),
      ),
    );
  }
}