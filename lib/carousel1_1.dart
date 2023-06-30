import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

String bullet = "\u2022 ";

final List<String> title_carousel=[
 'HTML, JS',
 'FLUTTER',
 'FIGMA',
];

final List<String> project_description_paragraph_1=[
 "Used HTML to create popup page of Tab Locker.",
 'Used it for creating frontend of Web Applications.',
 'Created blueprints of Web Appications.',
];

final List<String> project_description_paragraph_2=[
 'Used JavaScript for other pages too.',
 'Also added rive interactive animations in flutter.',
 'Before building the frontend, created a basic layout in here.',
];


final List<double> space_1_2 = [
  0.03,
  0.01,
  0.01,
];

final List<double> space_2_3 = [
  0.03,
  0.01,
  0.01,
];


class Carousel1_1  extends StatelessWidget {
  const Carousel1_1 ({super.key});

  
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
    
        options: CarouselOptions(
            // autoPlay: true,
            // autoPlayAnimationDuration: const Duration(milliseconds: 9500),
            pauseAutoPlayOnTouch: true,
            //aspectRatio: 2,
            //enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,

            viewportFraction: 1,
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIdx) {
    return Row(
      children: [0,1,2].map((idx) {
        return Container(
          height: MediaQuery.of(context).size.height,
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
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              //Image.network(imgList[idx], fit: BoxFit.cover),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title_carousel[idx], style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1), 
                      fontSize: 10.sp, fontWeight: FontWeight.bold),),
                ],
              ),


              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.008,),

                  Text(bullet, style: TextStyle(fontSize: 15.sp, color: Color.fromARGB(255, 13, 0, 255)),),
                  Flexible(child: Text(project_description_paragraph_1[idx], style: GoogleFonts.openSans(
                    fontSize: 8.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold ),)),
                  
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.008,),

                  Text(bullet, style: TextStyle(fontSize: 15.sp, color: Color.fromARGB(255, 13, 0, 255)),),
                  Flexible(child: Text(project_description_paragraph_2[idx], style: GoogleFonts.openSans(
                    fontSize: 7.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold ),)),
                  
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