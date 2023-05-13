import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Text('Hi Francis!',
                    style: GoogleFonts.goldman(
                        fontSize: 40,
                        color: Color.fromRGBO(253, 165, 145, 1),
                        fontWeight: FontWeight.bold)),
                const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image(image: AssetImage('asset/Banner1.png'))),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/icons8-home-64.png'),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(168, 107, 93, 1)),
                        onPressed: () {},
                        child: Text('Home'))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/update-icon.png'),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(168, 107, 93, 1)),
                        onPressed: () {},
                        child: Text('Status'))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/profile-icon.png'),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(168, 107, 93, 1)),
                        onPressed: () {},
                        child: Text('Profile'))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/support-icon.png'),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(168, 107, 93, 1)),
                        onPressed: () {},
                        child: Text('Support'))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 500,
              width: 350,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 165, 145, 1),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/doc2.png')),
                        borderRadius: BorderRadius.circular(60)),
                    height: 270,
                    width: 320,
                  ),
                  Text(
                    'Consultancy',
                    style: GoogleFonts.goldman(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Talk to our experts, counselors and discover your inner self. Find your peace and forget your troubles!',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          wordSpacing: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              width: 350,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 165, 145, 1),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/medicalRun.png')),
                        borderRadius: BorderRadius.circular(60)),
                    height: 270,
                    width: 320,
                  ),
                  Text(
                    'Medical Run',
                    style: GoogleFonts.goldman(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      '''Need a quick run to the medicine store? 
Our volunteers can do it for you!''',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          wordSpacing: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              width: 350,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 165, 145, 1),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/Taxi4.png')),
                        borderRadius: BorderRadius.circular(60)),
                    height: 270,
                    width: 320,
                  ),
                  Text(
                    'Taxi Service',
                    style: GoogleFonts.goldman(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      '''Need a quick ride ? 
Our volunteers are ready to give you a your desired  ride!''',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          wordSpacing: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              width: 350,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 165, 145, 1),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/care4.png')),
                        borderRadius: BorderRadius.circular(60)),
                    height: 270,
                    width: 320,
                  ),
                  Text(
                    'Home Nursing',
                    style: GoogleFonts.goldman(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      '''Need a helper at home for your health needs? 
Our experienced nurses are here to provide top tier healthcare ''',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          wordSpacing: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              width: 350,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(253, 165, 145, 1),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('asset/ele1.png')),
                        borderRadius: BorderRadius.circular(60)),
                    height: 270,
                    width: 320,
                  ),
                  Text(
                    'Powercut Service',
                    style: GoogleFonts.goldman(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      '''Having Electricity problems  needs fixing ? 
Our volunteers can help you with t services during your powercut. ''',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          wordSpacing: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ])),
    ));
  }
}
