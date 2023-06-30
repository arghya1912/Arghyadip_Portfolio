import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class skillscard3_1 extends StatelessWidget {
  const skillscard3_1 ({super.key});

  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022 ";
    return Card(
      elevation: 50,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(236, 200, 246, 1),
              Color.fromRGBO(159, 156, 255, 1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Backend Technologies", style: GoogleFonts.openSans(
                    color: const Color.fromRGBO(15, 27, 97, 1), 
                    fontWeight: FontWeight.bold, 
                    fontSize: 12.sp)),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238770/firebase_zq4pdr.png", fit: BoxFit.contain,)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.006,),
                  InkWell(child: Text("FireBase", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 15.sp),)),

                 ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238771/flask_bhcxo7.png", fit: BoxFit.contain,)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.006,),
                  InkWell(child: Text("Flask", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 15.sp),)),

                  ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}