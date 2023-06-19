import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/views/HomePage1.dart';

import 'package:stroke_text/stroke_text.dart';

class Service_HomeService2 extends StatelessWidget {
  const Service_HomeService2({super.key});

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
                      icon: Icon(Icons.arrow_back)),
                  Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Image(image: AssetImage('asset/Banner1.png'))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Positioned(
                top: 30,
                right: 80,
                child: Container(
                  height: 130,
                  width: 120,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('asset/Team/Francis.png')),
                      borderRadius: BorderRadiusDirectional.circular(100),
                      color: Colors.white30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              StrokeText(
                text: 'Mr. Francis Tom',
                textStyle: GoogleFonts.goldman(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    const Shadow(
                      blurRadius: 0,
                      color: Color.fromRGBO(150, 147, 147, 1),
                      offset: Offset(3, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Professional Qualification',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        constraints: const BoxConstraints(
                          maxWidth: 330,
                        ),
                        child: const Text(
                            ''' Btech Graduate Rajagiri College of Engineering'''),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Category',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text('Electrician')),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 72,
                        width: 380,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Age',
                                  style: GoogleFonts.goldman(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(child: Text('21')),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Gender',
                                  style: GoogleFonts.goldman(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(child: Text('Male')),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Working Institution',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text('Ayushman Electricals')),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Phone No.',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text('+91-8891230510')),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email Id',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                              Center(child: Text('francistom2024@cs.ajce.in')),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Working Slots',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        constraints: const BoxConstraints(
                          maxWidth: 330,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 400,
                            ),
                            const Text('''Monday	          11:00 am - 6:00 pm

Tuesday	          11:00 am - 6:00 pm

Wednesday	    11:00 am - 6:00 pm

Thursday	         11:00 am - 6:00 pm

Friday	               11:00 am - 6:00 pm

Saturday	          8:00 am - 8:00 pm

Sunday	            8:00 am - 8:00 pm
'''),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(253, 165, 145, 1),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: const Color.fromRGBO(253, 165, 145, 1),
                      elevation: 8,
                      backgroundColor: Colors.white, // Background color
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )),
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