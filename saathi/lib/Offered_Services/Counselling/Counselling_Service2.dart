import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Counselling/Counselling_Service.dart';
import 'package:saathi/Offered_Services/Counselling/Counselling_Service3.dart';

import 'package:stroke_text/stroke_text.dart';

class Service_Counselling2 extends StatefulWidget {
  String id;
  Service_Counselling2({super.key, required this.id});

  @override
  State<Service_Counselling2> createState() => _Service_Counselling2State();
}

class _Service_Counselling2State extends State<Service_Counselling2> {
  TextEditingController name = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController guardianName = TextEditingController();
  TextEditingController guardianRelation = TextEditingController();
  TextEditingController guardianEmail = TextEditingController();
  TextEditingController qualificationcontroller = TextEditingController();
  TextEditingController guardianPhone = TextEditingController();
  TextEditingController specialitycontroller = TextEditingController();
  TextEditingController institutioncontroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    getdoctor();

    super.initState();
  }

  getdoctor() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(widget.id)
        .get();
    setState(() {
      name.text = (snap.data() as Map<String, dynamic>)['name'];
      gender.text = (snap.data() as Map<String, dynamic>)['gender'];
      email.text = (snap.data() as Map<String, dynamic>)['email'];
      age.text = (snap.data() as Map<String, dynamic>)['age'];
      address.text = (snap.data() as Map<String, dynamic>)['address'];
      phone.text = (snap.data() as Map<String, dynamic>)['phonenumber'];

      guardianEmail.text =
          (snap.data() as Map<String, dynamic>)['guardianEmail'];
      guardianName.text = (snap.data() as Map<String, dynamic>)['guardianName'];
      guardianPhone.text =
          (snap.data() as Map<String, dynamic>)['guardianPhone'];
      guardianRelation.text =
          (snap.data() as Map<String, dynamic>)['guardianRelation'];
    });
    QuerySnapshot snap1 = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(widget.id)
        .collection('counselling')
        .get();
    DocumentSnapshot snap2 = snap1.docs[0];
    print((snap2.data() as Map<String, dynamic>)['proqualf']);
    setState(() {
      qualificationcontroller.text =
          (snap2.data() as Map<String, dynamic>)['proqualf'];
      specialitycontroller.text =
          (snap2.data() as Map<String, dynamic>)['speciality'];
      institutioncontroller.text =
          (snap2.data() as Map<String, dynamic>)['institution'];
    });
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 360,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 180,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Personal Info',
                                  style: GoogleFonts.goldman(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Container(
                            height: 40,
                            width: 180,
                            child: TextButton(
                                onPressed: () {
                                  Get.to(Service_Counselling3(id: widget.id));
                                },
                                child: Text(
                                  'Booking',
                                  style: GoogleFonts.goldman(
                                      color: Colors.black, fontSize: 20),
                                )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 255, 255, 0.782),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(253, 165, 145, 1),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  constraints: BoxConstraints(maxHeight: 700, maxWidth: 400),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Professional Qualification',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                              Center(child: Text(qualificationcontroller.text)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Speciality',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text(specialitycontroller.text)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Institution',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                              Center(child: Text(institutioncontroller.text)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Phone No.',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text(phone.text)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 72,
                        width: 380,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Age',
                                  style: GoogleFonts.goldman(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(child: Text(age.text)),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Gender',
                                  style: GoogleFonts.goldman(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(child: Text(gender.text)),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email Id',
                        style: GoogleFonts.goldman(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(child: Text(email.text)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(253, 165, 145, 1),
                  )),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
