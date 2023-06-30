import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';


class skillscard2 extends StatelessWidget {
  const skillscard2({super.key});

  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022 ";
    return Card(
      elevation: 50,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
                  Text("Languages known", style: GoogleFonts.openSans(
                    color: const Color.fromRGBO(15, 27, 97, 1), 
                    fontWeight: FontWeight.bold, 
                    fontSize: 5.sp)),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 50, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238770/c_rnvtrc.png", fit: BoxFit.contain,)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.006,),
                  InkWell(child: Text("C++", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 4.sp),)),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.05,),

                  Text(bullet, style: const TextStyle(fontSize: 50, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238770/css_otd7vh.png", fit: BoxFit.contain,)),
                  InkWell(child: Text("CSS", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 4.sp),))
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 50, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238770/dart_wwolic.png", fit: BoxFit.contain,)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.006,),
                  InkWell(child: Text("Dart", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 4.sp),)),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.04,),

                  Text(bullet, style: const TextStyle(fontSize: 50, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238771/mysql_rzityc.png", fit: BoxFit.contain,)),
                  InkWell(child: Text("MySql", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 4.sp),))
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 50, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11, width: MediaQuery.of(context).size.width * 0.04, child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238771/html_a1qspj.png", fit: BoxFit.contain,)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.006,),
                  InkWell(child: Text("HTML", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 4.sp),))
                ],
              ),
            ],
          ),
        )
        ),
    );
  }
}