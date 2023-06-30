import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

String bullet = "\u2022 ";

final List<String> title_carousel=[
 'Portfolio',
 'Bus Booker',
 'Tab Locker',
];

final List<String> project_description_paragraph_1=[
 'A personal portfolio website listing my projects & tech stacks I know about.',
 'A Bus Booking web app where user can book tickets, cancel booking & many more.',
 'A Chrome Extension which can lock a tab using an user defined 4 digit PIN.',
];

final List<String> project_description_paragraph_2=[
 'Integrated several animations built in Rive to the website.',
 'User can choose their desired seat in different buses and ticket will be sent via Email',
 'Opening an URL for the first time or switching to other tabs will trigger the extension.',
];

final List<String> project_description_paragraph_3=[
 'Integrated Firebase as Backend and used Flutter for frontend.',
 'Used Flutter for frontend, Flask for backend with SQLite as Database & Firebase Database (admin).',
 'Created a .reg file, which upon installing prevents it from being uninstalled by strangers.',
];


 final List<String> live_link_domain=[
  'arghya1912.github.io',
  'master--precious-narwhal-8ce433.netlify.app',
  'drive.google.com',
 ];

final List<String> live_link_url=[
 '/arghyadip-portfolio/',
 '/#/',
 '/file/d/13ReGEb1Izcf4Oa1xUAcXxfdvLQEnm5cg/view',
];

final List<String> github_link_url=[
 '/arghya1912/Arghyadip_Portfolio',
 '/arghya1912/Bus_Booker',
 '/arghya1912/tab-locker',
];

class Carousel2  extends StatelessWidget {
  const Carousel2 ({super.key});

  
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
    
        options: CarouselOptions(
            enlargeCenterPage: false,
            viewportFraction: 1,
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIdx) {
    return Row(
      children: [0,1,2].map((idx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.22,
          
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 8, 255), width: 2.5),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(243, 198, 255, 1),
                  Color.fromRGBO(210, 209, 255, 1),
                ],
              ),
            //color: Color.fromARGB(255, 211, 244, 255)
          ),
          padding: EdgeInsets.all(5),
          //color: const Color.fromARGB(255, 211, 244, 255),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //Image.network(imgList[idx], fit: BoxFit.cover),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title_carousel[idx], style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), fontSize: 8.sp, fontWeight: FontWeight.bold),),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(child: Text("Live Link", style: GoogleFonts.openSans(textStyle: TextStyle(decoration: TextDecoration.underline), fontSize: 4.5.sp, fontWeight: FontWeight.bold),), 
                          onTap: () => launchUrl(Uri.https(live_link_domain[idx], live_link_url[idx]))),

                  //Text(" | ", style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), fontSize: 4.5.sp)),
                  Container(width: 2,),

                  InkWell(child: Text("Github Link", style: GoogleFonts.openSans(textStyle: TextStyle(decoration: TextDecoration.underline), fontSize: 4.5.sp, fontWeight: FontWeight.bold),), 
                          onTap: () => launchUrl(Uri.https('github.com', github_link_url[idx]))),
                ],
              ),


              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.008,),

                  Text(bullet, style: TextStyle(fontSize: 8.sp, color: Color.fromARGB(255, 13, 0, 255)),),
                  Flexible(child: Text(project_description_paragraph_1[idx], style: GoogleFonts.openSans(
                    fontSize: 4.5.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold ),)),
                  
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.008,),

                  Text(bullet, style: TextStyle(fontSize: 8.sp, color: Color.fromARGB(255, 13, 0, 255)),),
                  Flexible(child: Text(project_description_paragraph_2[idx], style: GoogleFonts.openSans(
                    fontSize: 4.sp, color: const Color.fromRGBO(15, 27, 97, 1) , fontWeight: FontWeight.bold),)),
                  
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: MediaQuery.of(context).size.width * 0.008,),

                  Text(bullet, style: TextStyle(fontSize: 8.sp, color: Color.fromARGB(255, 13, 0, 255)),),
                  Flexible(child: Text(project_description_paragraph_3[idx], style: GoogleFonts.openSans(
                    fontSize: 4.sp, color: const Color.fromRGBO(15, 27, 97, 1) , fontWeight: FontWeight.bold),)),
                  
                ],
              ),

              

            ],
          ),
        );
      }).toList(),
    );
        },
      );
  }
}