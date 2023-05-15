import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Consultancy_Service.dart';
import 'package:saathi/Offered_Services/My_Profile.dart';
import 'package:saathi/Offered_Services/StatusWidget.dart';
import 'package:stroke_text/stroke_text.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 300,
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: StrokeText(
                        text: 'Hi Diona!',
                        textStyle: GoogleFonts.goldman(
                            shadows: [
                              const Shadow(
                                blurRadius: 5,
                                color: Color.fromRGBO(30, 30, 30, 1),
                                offset: Offset(2, 4.5),
                              ),
                            ],
                            fontSize: 40,
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
              height: 60,
            ),
            Container(
              height: 60,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''"You're braver than you believe, and stronger than you seem, and smarter than you think."''',
                        style: GoogleFonts.goldman(),
                      ),
                    ),
                  ),
                  height: 50,
                  width: 345,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
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
                        onPressed: () {},
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
                          Get.to(StatusWidget1());
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
              height: 60,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 321,
                      width: 175,
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
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 30,
                            width: 150,
                            child: StrokeText(
                              text: 'Consultancy',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                                style: GoogleFonts.goldman(
                                    fontSize: 10,
                                    wordSpacing: 3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 156,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 0,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),

                                      elevation: 0,
                                      backgroundColor: const Color.fromRGBO(
                                          253, 165, 145, 1), // Background color
                                    ),
                                    onPressed: () {
                                      Get.to(Service_Consultancy());
                                    },
                                    child: const Text(
                                      'BOOK NOW',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800),
                                    )),
                                IconButton(
                                  onPressed: () {
                                    Get.to(Service_Consultancy());
                                  },
                                  icon: const Icon(Icons.arrow_right_rounded),
                                  color: Colors.white,
                                  iconSize: 40,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 321,
                      width: 175,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 0.1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(253, 165, 145, 1),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          StrokeText(
                            text: 'Counselling',
                            textStyle: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Colors.white,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                              style: GoogleFonts.goldman(
                                  fontSize: 10,
                                  wordSpacing: 3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 80,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  shadowColor:
                                      const Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 321,
                      width: 175,
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
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          StrokeText(
                            text: 'Medical Run',
                            textStyle: GoogleFonts.goldman(
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                                style: GoogleFonts.goldman(
                                    fontSize: 10,
                                    wordSpacing: 3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 80,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  shadowColor:
                                      const Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 321,
                      width: 175,
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
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          StrokeText(
                            text: 'Home Nursing',
                            textStyle: GoogleFonts.goldman(
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                              style: GoogleFonts.goldman(
                                  fontSize: 10,
                                  wordSpacing: 3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 80,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  shadowColor:
                                      const Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 321,
                      width: 175,
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
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          StrokeText(
                            text: 'Home Service',
                            textStyle: GoogleFonts.goldman(
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                                style: GoogleFonts.goldman(
                                    fontSize: 10,
                                    wordSpacing: 3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 80,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  shadowColor:
                                      const Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 321,
                      width: 175,
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
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('asset/doc2.png')),
                                borderRadius: BorderRadius.circular(30)),
                            height: 92,
                            width: 151,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          StrokeText(
                            text: 'Taxi Service',
                            textStyle: GoogleFonts.goldman(
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            strokeWidth: 0.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                              style: GoogleFonts.goldman(
                                  fontSize: 10,
                                  wordSpacing: 3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 80,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  shadowColor:
                                      const Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 8),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
          ])),
    ));
  }
}
