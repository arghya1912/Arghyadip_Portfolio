import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class skillscard1_1 extends StatelessWidget {
  const skillscard1_1({super.key});

  @override
  Widget build(BuildContext context) {
    String bullet = "\u2022 ";
    return Card(
      elevation: 50,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(236, 200, 246, 1),
              Color.fromRGBO(159, 156, 255, 1),
            ]
          ),
        ),
        //color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Coding profile links", style: GoogleFonts.openSans(
                    color: const Color.fromRGBO(15, 27, 97, 1), 
                    fontWeight: FontWeight.bold, 
                    fontSize: 12.sp)),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 13, 0, 255)),),
                  Container(height: 40, 
                            width: MediaQuery.of(context).size.width * 0.1, 
                            child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238771/leetcode_jcwrci.png", fit: BoxFit.contain,)),
                  InkWell(child: Text("LeetCode", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 11.sp),), 

                  onTap: () => launchUrl(Uri.https('leetcode.com', '/arghyadipsengupta')),)
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 13, 0, 255)),),
                  Container(height: 40, 
                            width: MediaQuery.of(context).size.width * 0.1, 
                            child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238770/codechef_yc0mmc.png", fit: BoxFit.contain,)),
                  InkWell(child: Text("CodeChef", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 11.sp),),
                   onTap: () => launchUrl(Uri.https('codechef.com', '/users/arghyadip1912')),)
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(bullet, style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 13, 0, 255)),),
                  SizedBox(height: 50, 
                            width: MediaQuery.of(context).size.width * 0.1, 
                            child: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238772/stopstalk_glcwgv.png", fit: BoxFit.contain,)),
                  
                  InkWell(child: Text("StopStalk", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                  fontSize: 11.sp),), onTap: () => launchUrl(Uri.https('stopstalk.com', '/user/profile/arghya1912')),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}