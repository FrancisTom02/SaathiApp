import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

import 'Support_Complaint_Placed.dart';
import 'Support_Widget.dart';

class ReportUser extends StatelessWidget {
  const ReportUser({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(SupportWidget());
                    },
                    icon: Icon(Icons.arrow_back)),
                const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image(image: AssetImage('asset/Banner1.png'))),
              ],
            ),
            SizedBox(
              height: 80,
              width: 280,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: StrokeText(
                      text: 'Report User',
                      textStyle: GoogleFonts.goldman(
                          fontSize: 40,
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
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 350),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 165, 145, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Account name',
                        style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80)),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true, fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Date of Service',
                        style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80)),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true, fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Category ',
                        style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80)),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true, fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Description',
                        style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 66, 65, 65),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80)),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true, fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        height: 35,
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              shadowColor:
                                  const Color.fromRGBO(253, 165, 145, 1),
                              elevation: 8,
                              backgroundColor: Colors.white, // Background color
                            ),
                            onPressed: () {
                              Get.to(SupportComplaintPlaced());
                            },
                            child: const Text(
                              'Submit',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
