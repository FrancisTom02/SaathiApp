import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stroke_text/stroke_text.dart';

import 'Consultancy_Service.dart';
import 'Consultancy_Service2.dart';

class Service_Consultancy3 extends StatefulWidget {
  String id;
  Service_Consultancy3({super.key, required this.id});

  @override
  State<Service_Consultancy3> createState() => _Service_Consultancy3State();
}

class _Service_Consultancy3State extends State<Service_Consultancy3> {
  bool checkedvalue = false;
  TextEditingController name = TextEditingController();
  storeconsultancydetails() async {}

  @override
  void initState() {
    // TODO: implement initState

    getdoctor();

    super.initState();
  }

  getdoctor() async {
    print("akath ond");
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(widget.id)
        .get();
    setState(() {
      name.text = (snap.data() as Map<String, dynamic>)['name'];
    });
    // setState(() {});
  }

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
                        Get.to(Service_Consultancy());
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
                text: name.text,
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
                                  Get.to(Service_Consultancy2(id: widget.id));
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
                    onPressed: () {
                      storeconsultancydetails();
                    },
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
