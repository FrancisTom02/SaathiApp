import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Counselling/Counselling_Service.dart';
import 'package:saathi/Offered_Services/Counselling/Counselling_Service2.dart';

import 'package:stroke_text/stroke_text.dart';

class Service_Counselling3 extends StatefulWidget {
  Service_Counselling3({super.key});

  @override
  State<Service_Counselling3> createState() => _Service_Counselling3State();
}

class _Service_Counselling3State extends State<Service_Counselling3> {
  bool checkedvalue = false;

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
                        Get.to(Service_Counselling());
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
                text: 'Dr. Francis Tom',
                textStyle: GoogleFonts.goldman(
                  shadows: [
                    const Shadow(
                      blurRadius: 0,
                      color: Color.fromRGBO(150, 147, 147, 1),
                      offset: Offset(3, 2),
                    ),
                  ],
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(253, 165, 145, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 255, 255, 0.782),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: TextButton(
                                onPressed: () {
                                  Get.to(Service_Counselling2());
                                },
                                child: Text(
                                  'Personal Info',
                                  style: GoogleFonts.goldman(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Booking',
                                  style: GoogleFonts.goldman(
                                      color: Colors.black, fontSize: 20),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
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
                        width: 400,
                      ),
                      Text(
                        'Working Hours',
                        style: GoogleFonts.goldman(fontSize: 20),
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
                      Text(
                        'Book Slot',
                        style: GoogleFonts.goldman(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CheckboxListTile(
                                shape: CircleBorder(),
                                title: Text("Fore-Noon Slot"), //    <-- label
                                value: checkedvalue,
                                onChanged: (newValue) {},
                              ),
                              CheckboxListTile(
                                shape: CircleBorder(),
                                title: Text("After-Noon Slot"), //    <-- label
                                value: false,
                                onChanged: (newValue) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: SizedBox(
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text('''**FN and AN sessions are constrained 
             to the working hours**'''),
                          ),
                        ),
                      )
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
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.black, fontSize: 16),
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
