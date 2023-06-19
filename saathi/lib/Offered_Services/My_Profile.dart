import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/My_Profile_Edit.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:stroke_text/stroke_text.dart';

import '../views/HomePage1.dart';
import 'Status_Widget.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  get secureStorage => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdoctor();
  }

  TextEditingController name = TextEditingController();
  TextEditingController adharnumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController guardianName = TextEditingController();
  TextEditingController guardianRelation = TextEditingController();
  TextEditingController guardianEmail = TextEditingController();
  TextEditingController guardianPhone = TextEditingController();

  getdoctor() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('user')
        .doc('cDej3gBIdjg5jfO3D58KRxJTRkA2')
        .get();
    setState(() {
      name.text = (snap.data() as Map<String, dynamic>)['name'];
      adharnumber.text = (snap.data() as Map<String, dynamic>)['adharnumber'];
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
                  const SizedBox(
                    width: 20,
                  ),
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
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/icons8-home-64.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(const HomePage1());
                          },
                          child: const Text('Home'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/update-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(const StatusWidget1());
                          },
                          child: const Text('Status'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/profile-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {},
                          child: const Text('Profile'))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('asset/support-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(SupportWidget());
                          },
                          child: const Text('Support'))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 1200,
                width: 400,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(253, 165, 145, 1),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white60,
                          image: DecorationImage(
                              image: AssetImage('asset/Team/Francis.png'))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    StrokeText(
                      text: name.text,
                      textStyle: GoogleFonts.goldman(shadows: [
                        const Shadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(30, 30, 30, 1),
                          offset: Offset(2, 4.5),
                        ),
                      ], fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Adhar No :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(adharnumber.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Email Id :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(email.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Phone No. :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(phone.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Age :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(age.text)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Address',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(address.text)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    StrokeText(
                      text: 'Guardian Info',
                      textStyle: GoogleFonts.goldman(fontSize: 30, shadows: [
                        const Shadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(30, 30, 30, 1),
                          offset: Offset(2, 4.5),
                        ),
                      ]),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Full Name :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(guardianName.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Relation :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(guardianRelation.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Phone No. :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(guardianPhone.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 350,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StrokeText(
                                text: 'Email Id :',
                                textStyle: GoogleFonts.goldman(fontSize: 20),
                              ),
                              Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text(guardianEmail.text)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      width: 150,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                shadowColor: Color.fromARGB(255, 255, 255, 255),
                                elevation: 8,
                                backgroundColor: const Color.fromRGBO(
                                    253, 165, 145, 1), // Background color
                              ),
                              onPressed: () {
                                Get.to(MyProfileEdit());
                              },
                              child: const StrokeText(
                                strokeWidth: 1.5,
                                text: 'Edit Profile',
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 16),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
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
