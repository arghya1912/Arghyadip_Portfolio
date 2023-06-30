import 'package:final_portfolio/Form.dart';
import 'package:final_portfolio/Reach_Out.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_portfolio/animation_provider.dart';
import 'package:final_portfolio/carousel.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:final_portfolio/carousel1.dart';
import 'package:final_portfolio/carousel1_1.dart';
import 'package:final_portfolio/carousel2.dart';
import 'package:final_portfolio/eyeball.dart';
import 'package:final_portfolio/robot_animation.dart';
import 'package:final_portfolio/skills_card0.dart';
import 'package:final_portfolio/skills_card0_1.dart';
import 'package:final_portfolio/skills_card1.dart';
import 'package:final_portfolio/skills_card1_1.dart';
import 'package:final_portfolio/skills_card2.dart';
import 'package:final_portfolio/skills_card2_1.dart';
import 'package:final_portfolio/skills_card3.dart';
import 'package:final_portfolio/skills_card3_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'circle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _launchURL() async {
    const url = 'https://drive.google.com/file/d/1miTvs35gEE103OmJm3JSxa_iqfPwyKFJ/view?usp=sharing';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isHovering = false; 

    if(MediaQuery.of(context).size.width > 900) {
    return Sizer(builder: (context, orientation, deviceType) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 238, 241, 1),
 
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20),


              Row(
                children: [
                  
                  Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238772/logo_lmojtp.png",
                                height: 50, 
                                width: MediaQuery.of(context).size.width * 0.07,),
                  


                  Text("My Portfolio", textAlign: TextAlign.right, style: GoogleFonts.openSans(color: Color.fromRGBO(15, 27, 97, 1), 
                        fontSize: (MediaQuery.of(context).size.width > 1000) ? 35 : 30, fontWeight: FontWeight.bold ),),

                  SizedBox(width: 63.w),


                  InkWell(
                    onTap: () async {
                      const u = 'https://mail.google.com/mail/u/0/?fs=1&to=arghyadipsengupta@gmail.com&tf=cm';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                    },
                    child: Text("Email Me!", style: GoogleFonts.openSans(color: Color.fromRGBO(15, 27, 97, 1), 
                          fontSize: 4.8.sp,
                          fontWeight: FontWeight.bold), ),
                  ),


                  ],
              ),

              
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(width: MediaQuery.of(context).size.width * 0.05,),

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: MediaQuery.of(context).size.height * 0.3,),

                        RichText(
                          text: TextSpan(
                            text: "Hi, I'm ",
                            style: GoogleFonts.openSans(
                              fontSize: 12.sp,
                              //fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(15, 27, 97, 1),
                            ),
                              
                            children: <TextSpan> [
                              TextSpan(text: 'Arghyadip', style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
                              TextSpan(text: '.', style: GoogleFonts.openSans(fontSize: 15.sp, color: const Color.fromRGBO(191, 0, 255, 1)))
                            ]
                          ),
                          
                        ),
                        
                        const SizedBox(
                          height: 25,
                        ),
                  
                        Container(
                          height: MediaQuery.of(context).size.height * 0.11,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'A final year undergrad of Jadavpur University,',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'pursuing BE in ETCE.',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                "I'm into DSA problem solving,",
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'C++ being my primary language.',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                            ],
                            pause: const Duration(milliseconds: 140),
                            repeatForever: true,
                            stopPauseOnTap: true,
                            onTap: () {
                              //print("Tap Event");
                            },
                          ),
                        ),
                        
                  
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                  
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                            //primary: Color.fromRGBO(236, 200, 246, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(12, 0, 252, 1), width: 3),
                            textStyle: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.normal),
                            backgroundColor: const Color.fromRGBO(245, 210, 255, 1),
                            foregroundColor: const Color.fromRGBO(12, 0, 252, 1),
                          ),
                          onPressed: _launchURL,
                          child: Text("Download my Resume!", 
                          style: GoogleFonts.openSans(color: const Color.fromRGBO(15, 27, 97, 1),
                                  fontWeight: FontWeight.bold)),
                        ),
                  
                      ],
                    ),

                    Container(
                    child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const eyeball(),
                        ),
                  ),

                ],
              ),

              
             

              //SizedBox(height: MediaQuery.of(context).size.height * 0.5, child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),),

              

              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),


              //* Ekhan theke projects start hocche ->


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Projects",
                    style: GoogleFonts.openSans(
                        fontSize: 11.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 80,
                    height: 5,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

              Container(
                padding: EdgeInsets.all(100),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6, 
                  width: MediaQuery.of(context).size.width , 
                  child: Carousel()),
              ),
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),



              //* Ekhan theke technical skills start hocche ->

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Technical Skills",
                    style: GoogleFonts.openSans(
                        fontSize: 11.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 5,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

             Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width * 0.075,
               ),
               Container(
                 height: MediaQuery.of(context).size.height * 0.4, 
                 width: MediaQuery.of(context).size.width * 0.4, 
                 child: robot(),
              ),


              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),


              //******************************************************************************* */

              Consumer<Animation_provider>(builder: (context, Animation_provider animation_provider, _) {
                return Provider.of<Animation_provider>(context, listen: false).get_button() == 0 ? 
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.25, 
                  
                  child: skillscard0(),) 
                  : 
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.28,
                    child: Provider.of<Animation_provider>(context, listen: false).get_button() == 1 ? 
                    skillscard1() : 
                    Provider.of<Animation_provider>(context, listen: false).get_button() == 2 ? 
                    skillscard2() : 
                    skillscard3());
                },)
                 
             ],
                         ),
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.14,),


              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),




              //*Ekhan theke frontend technologies start hocche
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Frontend Technologies",
                    style: GoogleFonts.openSans(
                        fontSize: 11.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 5,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
              
                  Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: RiveAnimation.network(
                    'https://res.cloudinary.com/dvypswxcv/raw/upload/v1687776770/developer_2_fma8b3.riv',
                  ),
                ),
              
                ],
              ),

              Container(
                padding: EdgeInsets.all(100),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4, 
                  width: MediaQuery.of(context).size.width , 
                  child: Carousel1()),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),

              



              


              //* Contact me suru hocche ->

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Contact Me",
                    style: GoogleFonts.openSans(
                        fontSize: 11.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 5,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),

                  Column(
                    children: [
                      SizedBox(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const reach_out())),

                      SizedBox(height: 10,),

                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          //SizedBox(width: MediaQuery.of(context).size.width * 0.192,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://api.whatsapp.com/send?phone=917586082138&text=Hello, more information!';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792225/whatsapp-removebg-preview_gtn4va.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://www.linkedin.com/in/arghyadip-sengupta-497292207/';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/linkedin_xeeb4f.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://github.com/arghya1912';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/github_yy6zid.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              Clipboard.setData(ClipboardData(text: "832546406186876968"));
                              await Fluttertoast.showToast(
                                msg: "Discord ID copied to Clipboard!",
                                timeInSecForIosWeb: 3,
                                //webBgColor: "linear-gradient(rgb(255, 61, 85), rgb(255, 61, 85))",
                                textColor: Colors.black);
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/discord_zhaq9z.png")
                          ),
                            
                            SizedBox(width: 60,),
                            Text(" "),

                          ],
                ),

                
                    ],
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: MyCustomForm()
                  ),
                ],
              ),
              
             

              //*FOOTER ->

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("---- © Arghyadip Sengupta, ",
                      style: GoogleFonts.openSans(
                          fontSize: 4.sp, color: const Color.fromRGBO(15, 27, 97, 1))),

                  Text("2023", style: GoogleFonts.openSans(fontSize: 4.sp, color: const Color.fromRGBO(191, 0, 255, 1)),)
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.09,
              ),
            ],
          ),
        ),
      ),
    );
    }
    );
  }
    else {
      return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 238, 241, 1),
 
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 20),


              Row(
                children: [
                  SizedBox(width: 10,),

                  Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1680238772/logo_lmojtp.png",
                                height: 50, 
                                width: MediaQuery.of(context).size.width * 0.07,),

                  SizedBox(width: 5,),

                  Text("My Portfolio", textAlign: TextAlign.right, style: GoogleFonts.openSans(color: Color.fromRGBO(15, 27, 97, 1), 
                        fontSize: (MediaQuery.of(context).size.width > 1000) ? 15.sp : 13.sp, fontWeight: FontWeight.bold ),),

                  SizedBox(width: 40.w),


                  InkWell(
                    onTap: () async {
                      const u = 'https://mail.google.com/mail/u/0/?fs=1&to=arghyadipsengupta@gmail.com&tf=cm';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                    },
                    child: Text("Email Me!", style: GoogleFonts.openSans(color: Color.fromRGBO(15, 27, 97, 1), 
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold), ),
                  ),


                  ],
              ),


              Stack(
                children: [
                  Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                              child: Container(
                                    height: MediaQuery.of(context).size.height * 0.4,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    child: const eyeball(),
                                    
                                  ),
                            ),
                          ],
                      ),



                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        RichText(
                          text: TextSpan(
                            text: "Hi, I'm ",
                            style: GoogleFonts.openSans(
                              fontSize: 20.sp,
                              //fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(15, 27, 97, 1),
                            ),
                              
                            children: <TextSpan> [
                              TextSpan(text: 'Arghyadip', style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
                              TextSpan(text: '.', style: GoogleFonts.openSans(fontSize: 15.sp, color: const Color.fromRGBO(191, 0, 255, 1)))
                            ]
                          ),
                          
                        ),
                        
                        const SizedBox(
                          height: 25,
                        ),
                  
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'A final year undergrad of Jadavpur University,',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'pursuing BE in ETCE.',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                "I'm into DSA problem solving,",
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'C++ being my primary language.',
                                textStyle: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(15, 27, 97, 1),
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                            ],
                            pause: const Duration(milliseconds: 140),
                            repeatForever: true,
                            stopPauseOnTap: true,
                            onTap: () {
                              //print("Tap Event");
                            },
                          ),
                        ),
                        
                  
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                  
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                            //primary: Color.fromRGBO(236, 200, 246, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(12, 0, 252, 1), width: 3),
                            textStyle: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.normal),
                            backgroundColor: const Color.fromRGBO(245, 210, 255, 1),
                            foregroundColor: const Color.fromRGBO(12, 0, 252, 1),
                          ),
                          onPressed: _launchURL,
                          child: Text("Download my Resume!", style: 
                                      GoogleFonts.openSans(
                                        color: const Color.fromRGBO(15, 27, 97, 1),
                                        fontSize: 10.sp)),
                        ),
                  
                      ],
                    ),




                    ],
                  ),

                  
                  

                ]
              ),

              
              

              
             

              //SizedBox(height: MediaQuery.of(context).size.height * 0.5, child: DecoratedBox(decoration: BoxDecoration(color: Colors.red)),),

              

              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),


              //* Ekhan theke projects start hocche ->


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Projects",
                    style: GoogleFonts.openSans(
                        fontSize: 13.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 60,
                    height: 3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Container(
                padding: EdgeInsets.all(10),
                child: Container(height: MediaQuery.of(context).size.height * 0.3, 
                        width: MediaQuery.of(context).size.width , 
                        child: Carousel2()),
              ),
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),



              //* Ekhan theke technical skills start hocche ->

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Technical Skills",
                    style: GoogleFonts.openSans(
                        fontSize: 13.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              

             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: MediaQuery.of(context).size.height * 0.3, 
                   width: MediaQuery.of(context).size.width * 0.9, 
                   child: robot(),
                  ),
               ],
             ),


              


              //******************************************************************************* */

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<Animation_provider>(builder: (context, Animation_provider animation_provider, _) {
                  return Provider.of<Animation_provider>(context, listen: false).get_button() == 0 ? 
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.6, child: skillscard0_1(),) 
                    
                    : Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Provider.of<Animation_provider>(context, listen: false).get_button() == 1 ? 
                    skillscard1_1() : 
                    Provider.of<Animation_provider>(context, listen: false).get_button() == 2 ? 
                    skillscard2_1() : skillscard3_1());
                  },),
                ],
              ),
              
              SizedBox(height: MediaQuery.of(context).size.height * 0.14,),


              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),




              //*Ekhan theke frontend technologies start hocche
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Frontend Technologies",
                    style: GoogleFonts.openSans(
                        fontSize: 13.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 120,
                    height: 3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
              
                  Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: RiveAnimation.network(
                    'https://res.cloudinary.com/dvypswxcv/raw/upload/v1687776770/developer_2_fma8b3.riv',
                  ),
                ),
              
                ],
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5, 
                  width: MediaQuery.of(context).size.width, 
                  child: Carousel1_1()),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5,
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 189, 252, 1))),
              ),

              



              


              //* Contact me suru hocche ->

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  Text(
                    "Contact Me",
                    style: GoogleFonts.openSans(
                        fontSize: 13.sp, color: const Color.fromRGBO(15, 27, 97, 1), fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.085,
                  ),
                  const SizedBox(
                    width: 100,
                    height: 3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(239, 189, 252, 1))),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const reach_out()
                ),

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                        // height: MediaQuery.of(context).size.height * 0.7,
                        // width: MediaQuery.of(context).size.width * 0.95,
                        child: MyCustomForm()
                  ),
                ],
              ),


              Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(width: MediaQuery.of(context).size.width * 0.1,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://api.whatsapp.com/send?phone=917586082138&text=Hello, more information!';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792225/whatsapp-removebg-preview_gtn4va.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://www.linkedin.com/in/arghyadip-sengupta-497292207/';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/linkedin_xeeb4f.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              const u = 'https://github.com/arghya1912';
                              final ui = Uri.parse(u);
                              if(await canLaunchUrl(ui)) {
                                await launchUrl(ui);
                              } else {
                                throw 'Url could not be launched';
                              }
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/github_yy6zid.png")),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),

                          IconButton(
                            onPressed: () async{
                              Clipboard.setData(ClipboardData(text: "832546406186876968"));
                              await Fluttertoast.showToast(
                                msg: "Discord ID copied to Clipboard!",
                                timeInSecForIosWeb: 3,
                                //webBgColor: "linear-gradient(rgb(255, 61, 85), rgb(255, 61, 85))",
                                textColor: Colors.black);
                            },
                            icon: Image.network("https://res.cloudinary.com/dvypswxcv/image/upload/v1687792224/discord_zhaq9z.png")),
                            
                            SizedBox(width: 60,),
                            Text(" "),

                          ],
                ),








              //*FOOTER ->

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("---- © Arghyadip Sengupta, ",
                      style: GoogleFonts.openSans(
                          fontSize: 20, color: const Color.fromRGBO(15, 27, 97, 1))),

                  Text("2023", style: GoogleFonts.openSans(fontSize: 20, color: const Color.fromRGBO(191, 0, 255, 1)),)
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.09,
              ),
            ],
          ),
        ),
      ),
    );
      }
      );
    }
  }
}
