import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Consultancy_Service2.dart';
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
                        Get.to(const HomePage1());
                      },
                      icon: const Icon(Icons.arrow_back)),
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
                    height: 200,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(
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
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/Team/Francis.png')),
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
                                    color: const Color.fromARGB(
                                        197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  elevation: 0,
                                  backgroundColor: const Color.fromARGB(
                                      255, 255, 255, 255), // Background color
                                ),
                                onPressed: () {
                                  Get.to(Service_Consultancy2());
                                },
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(
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
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/Team/Diona.png')),
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
                                    color: const Color.fromARGB(
                                        197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  elevation: 0,
                                  backgroundColor: const Color.fromARGB(
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const SizedBox(
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
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/Team/Jithin.png')),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(100),
                                      color: Colors.white30),
                                ),
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
                                    color: const Color.fromARGB(
                                        197, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),

                                  elevation: 0,
                                  backgroundColor: const Color.fromARGB(
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
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
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
