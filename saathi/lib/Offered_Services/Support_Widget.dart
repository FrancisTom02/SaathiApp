import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Support_Lodge_Widget.dart';
import 'package:saathi/Offered_Services/Support_ReportUser.dart';
import 'package:saathi/views/HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Column(
                      children: [
                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: IconButton(
                                onPressed: () {
                                  Get.to(HomePage1());
                                },
                                icon: Icon(Icons.arrow_back))),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: StrokeText(
                                text: 'Ask Me Anything!',
                                textStyle: GoogleFonts.goldman(
                                    fontSize: 25,
                                    shadows: [
                                      const Shadow(
                                        blurRadius: 5,
                                        color: Color.fromRGBO(59, 58, 58, 1),
                                        offset: Offset(2, 4.5),
                                      ),
                                    ],
                                    color:
                                        const Color.fromRGBO(253, 165, 145, 1),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
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
              Text(
                'Contact our help centre for immediate assistance',
                style: GoogleFonts.goldman(
                    fontSize: 15,
                    color: Color.fromARGB(255, 66, 65, 65),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 165, 145, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'CONTACT US',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 30,
                        ),
                        SizedBox(height: 30),
                        TextButton(
                          onPressed: () {
                            Get.to(LodgeComplaint());
                          },
                          child: Text(
                            'LODGE A COMPLAINT ',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 30,
                        ),
                        SizedBox(height: 30),
                        TextButton(
                          onPressed: () {
                            Get.to(ReportUser());
                          },
                          child: Text(
                            'REPORT ACCOUNT',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 30,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'PRIVACY GUIDELINES',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 30,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'TERMS & CONDITIONS',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          height: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'RATE US ',
                            style: GoogleFonts.goldman(
                                fontSize: 20,
                                color: Color.fromARGB(255, 66, 65, 65),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 40,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
