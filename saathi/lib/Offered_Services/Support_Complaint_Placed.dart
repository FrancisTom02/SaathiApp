import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:saathi/views/HomePage1.dart';

class SupportComplaintPlaced extends StatelessWidget {
  const SupportComplaintPlaced({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
                const SizedBox(height: 100),
                CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("asset/tick.gif"),
                ),
                SizedBox(height: 50),
                Center(
                  child: Text(
                    'COMPLAINT REGISTERED',
                    style: GoogleFonts.goldman(
                      fontSize: 20,
                      color: Color.fromARGB(255, 66, 65, 65),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Thank you!!',
                  style: GoogleFonts.goldman(
                      fontSize: 18,
                      color: Color.fromARGB(255, 66, 65, 65),
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Your feedback helps keep SAATHI safe and secure',
                    style: GoogleFonts.goldman(
                      fontSize: 18,
                      color: Color.fromARGB(255, 66, 65, 65),
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
