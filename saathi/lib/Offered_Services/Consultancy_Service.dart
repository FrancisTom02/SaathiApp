import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/views/HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class Service_Consultancy extends StatelessWidget {
  const Service_Consultancy({super.key});

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
                  IconButton(
                      onPressed: () {
                        Get.to(HomePage1());
                      },
                      icon: Icon(Icons.keyboard_double_arrow_left)),
                  const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Image(image: AssetImage('asset/Banner1.png'))),
                ],
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: StrokeText(
                    text: 'Consultancy',
                    textStyle: GoogleFonts.goldman(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        const Shadow(
                          blurRadius: 8,
                          color: Color.fromRGBO(150, 147, 147, 1),
                          offset: Offset(2, 4.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    height: 220,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Positioned(
                                top: 30,
                                right: 80,
                                child: Container(
                                  height: 130,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('asset/Francis.png')),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(100),
                                      color: Colors.white30),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          'Dr. Francis Tom',
                                          style: GoogleFonts.goldman(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'bookings: 75',
                                        style: GoogleFonts.goldman(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),

                                elevation: 0,
                                backgroundColor: Color.fromARGB(
                                    255, 255, 255, 255), // Background color
                              ),
                              onPressed: () {},
                              child: const Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                              ))
                        ],
                      ),
                    ),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 220,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Positioned(
                                top: 30,
                                right: 80,
                                child: Container(
                                  height: 130,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('asset/Diona.png')),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(100),
                                      color: Colors.white30),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          'Dr. Diona Joseph',
                                          style: GoogleFonts.goldman(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'bookings: 75',
                                        style: GoogleFonts.goldman(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),

                                elevation: 0,
                                backgroundColor: Color.fromARGB(
                                    255, 255, 255, 255), // Background color
                              ),
                              onPressed: () {},
                              child: const Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                              ))
                        ],
                      ),
                    ),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 220,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Positioned(
                                top: 30,
                                right: 80,
                                child: Container(
                                  height: 130,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('asset/Jithin.png')),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(100),
                                      color: Colors.white30),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          'Dr. Jithin George',
                                          style: GoogleFonts.goldman(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'bookings: 75',
                                        style: GoogleFonts.goldman(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  elevation: 0,
                                  backgroundColor: Color.fromARGB(
                                      255, 255, 255, 255), // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'BOOK NOW',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          )
                        ],
                      ),
                    ),
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
