import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class VolunteerProfile1 extends StatefulWidget {
  const VolunteerProfile1({super.key});

  @override
  State<VolunteerProfile1> createState() => _VolunteerProfile1State();
}

class _VolunteerProfile1State extends State<VolunteerProfile1> {
  @override
  Widget build(context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
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
          SizedBox(
            height: 40,
          ),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("asset/Team/Diona.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Name Volunteer',
              style: GoogleFonts.goldman(
                  fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 60,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 165, 145, 1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Name',
                        style: GoogleFonts.goldman(
                            fontSize: 15,
                            color: Color.fromARGB(255, 73, 69, 69))),
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Ph Number',
                        style: GoogleFonts.goldman(
                            fontSize: 15,
                            color: Color.fromARGB(255, 73, 69, 69))),
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Adhar card',
                        style: GoogleFonts.goldman(
                            fontSize: 15,
                            color: Color.fromARGB(255, 73, 69, 69))),
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Address',
                        style: GoogleFonts.goldman(
                            fontSize: 15,
                            color: Color.fromARGB(255, 73, 69, 69))),
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            // height: 480,
            // width: 345,
            constraints: BoxConstraints(
              maxWidth: 380,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 165, 145, 1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      )),
    ));
  }
}
