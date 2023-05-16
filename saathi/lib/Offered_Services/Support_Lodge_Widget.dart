import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Support_Complaint_Placed.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:stroke_text/stroke_text.dart';

class LodgeComplaint extends StatelessWidget {
  const LodgeComplaint({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            height: 0,
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: StrokeText(
                    text: 'Lodge A Complaint',
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
              height: 500,
              width: 345,
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 165, 145, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    'ENTER YOUR COMPLAINT : ',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.goldman(
                      fontSize: 20,
                      color: Color.fromARGB(255, 66, 65, 65),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      maxLines: 10,
                      decoration: InputDecoration(
                          hintText: 'Enter  your complaint here',
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.white),
                    ),
                  ),
                ],
              ),
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
                  shadowColor: const Color.fromRGBO(253, 165, 145, 1),
                  elevation: 8,
                  backgroundColor: Colors.white, // Background color
                ),
                onPressed: () {
                  Get.to(SupportComplaintPlaced());
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
          ),
        ]),
      ),
    ));
  }
}
