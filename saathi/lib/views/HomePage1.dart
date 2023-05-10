import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Text('Hi Diona!',
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
            SizedBox(
              height: 40,
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(136, 83, 79, 78),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 20,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Consultancy'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(253, 165, 145, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Counselling',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                SizedBox(
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(136, 83, 79, 78),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Medical Run',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromRGBO(50, 50, 50, 1),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(253, 165, 145, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Home Nursing',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                SizedBox(
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(136, 83, 79, 78),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Home Service',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromRGBO(50, 50, 50, 1),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(253, 165, 145, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
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
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Taxi Service',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
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
                                  shadowColor: Color.fromRGBO(253, 165, 145, 1),
                                  elevation: 8,
                                  backgroundColor:
                                      Colors.white, // Background color
                                ),
                                onPressed: () {},
                                child: Text(
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
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
          ])),
    ));
  }
}
