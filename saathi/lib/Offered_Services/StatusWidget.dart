import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/My_Profile.dart';
import 'package:saathi/views/HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class StatusWidget1 extends StatelessWidget {
  const StatusWidget1({super.key});

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
                    height: 80,
                    width: 200,
                    child: Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: StrokeText(
                          text: 'Status',
                          textStyle: GoogleFonts.goldman(
                              fontSize: 40,
                              shadows: [
                                const Shadow(
                                  blurRadius: 5,
                                  color: Color.fromRGBO(30, 30, 30, 1),
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
                          onPressed: () {
                            Get.to(MyProfile());
                          },
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
              SizedBox(
                  height: 50,
                  child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text('Pending Requests',
                          style: GoogleFonts.goldman(fontSize: 20)))),
              Container(
                height: 321,
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
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Service',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                        Text(
                          'Status',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                        Text(
                          'Details',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Consultancy',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Pending',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 80,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Details',
                                      style: GoogleFonts.goldman(fontSize: 13),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Consultancy',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Pending',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 80,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Details',
                                      style: GoogleFonts.goldman(fontSize: 13),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 50,
                  child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text('History',
                          style: GoogleFonts.goldman(fontSize: 20)))),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 321,
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
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Service',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                        Text(
                          'Status',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                        Text(
                          'Date',
                          style: GoogleFonts.goldman(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Consultancy',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Failed',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 80,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      '05-10-22',
                                      style: GoogleFonts.goldman(fontSize: 13),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Consultancy',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 100,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Completed',
                                    style: GoogleFonts.goldman(fontSize: 13),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                        SizedBox(
                            width: 80,
                            height: 30,
                            child: Container(
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      '15-12-22',
                                      style: GoogleFonts.goldman(fontSize: 13),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
