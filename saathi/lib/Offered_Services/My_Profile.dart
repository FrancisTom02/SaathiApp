import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

import '../views/HomePage1.dart';
import 'StatusWidget.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: StrokeText(
                          text: 'My Profile',
                          textStyle: GoogleFonts.goldman(
                              fontSize: 35,
                              shadows: [
                                const Shadow(
                                  blurRadius: 5,
                                  color: Color.fromRGBO(59, 58, 58, 1),
                                  offset: Offset(2, 4.5),
                                ),
                              ],
                              color: const Color.fromRGBO(253, 165, 145, 1),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Image(image: AssetImage('asset/Banner1.png'))),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/icons8-home-64.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(const HomePage1());
                          },
                          child: const Text('Home'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/update-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(const StatusWidget1());
                          },
                          child: const Text('Status'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/profile-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {},
                          child: const Text('Profile'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/support-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {},
                          child: const Text('Support'))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 1000,
                width: 400,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(253, 165, 145, 1),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white60,
                          image: DecorationImage(
                              image: AssetImage('asset/Team/Francis.png'))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    StrokeText(
                      text: 'Mr. FRANCIS TOM',
                      textStyle: GoogleFonts.goldman(shadows: [
                        const Shadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(30, 30, 30, 1),
                          offset: Offset(2, 4.5),
                        ),
                      ], fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Personal Id :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('4522178')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Email Id :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('francistom04@gmail.com')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Phone No. :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('+91-9562026130')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'D.o.B :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('04.10.2002')),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    StrokeText(
                      text: 'Guardian Info',
                      textStyle: GoogleFonts.goldman(fontSize: 30, shadows: [
                        const Shadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(30, 30, 30, 1),
                          offset: Offset(2, 4.5),
                        ),
                      ]),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Full Name :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('Rogin Roy')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Relation :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('Brother')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Phone No. :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('+91-8891230510')),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Email Id :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text('roginroy@gmail.com')),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
