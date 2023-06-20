import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Counselling/Counselling_Service.dart';
import 'package:saathi/Offered_Services/Home_Nursing/HomeNursing_Service.dart';
import 'package:saathi/Offered_Services/Home_Service/HomeService_Service.dart';
import 'package:saathi/Offered_Services/Medical_Run/Medical_Run_Service.dart';
import 'package:saathi/Offered_Services/My_Profile.dart';
import 'package:saathi/Offered_Services/Status_Widget.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:saathi/Offered_Services/Taxi_Service/Taxi_Service.dart';
import 'package:saathi/Volunteer/Consultancy/JoinServicePage.dart';
import 'package:saathi/Volunteer/Consultancy/ServiceHome.dart';
import 'package:saathi/Volunteer/Counselling/JoinServicePage.dart';
import 'package:saathi/Volunteer/Counselling/ServiceDetails.dart';
import 'package:saathi/Volunteer/Counselling/ServiceHome.dart';
import 'package:saathi/Volunteer/HomeNursing/JoinServicePage.dart';
import 'package:saathi/Volunteer/HomeNursing/ServiceDetails.dart';
import 'package:saathi/Volunteer/HomeNursing/ServiceHome.dart';
import 'package:saathi/Volunteer/HomeService/JoinServicePage.dart';
import 'package:saathi/Volunteer/MedicalRun/JoinServicePage.dart';
import 'package:saathi/Volunteer/MyProfile1.dart';
import 'package:saathi/Volunteer/TaxiService/JoinServicePage.dart';
import 'package:saathi/Volunteer/TaxiService/ServiceHome.dart';
import 'package:stroke_text/stroke_text.dart';

import '../Offered_Services/Consultancy/Consultancy_Service.dart';

class VolunteerHomePage1 extends StatefulWidget {
  const VolunteerHomePage1({super.key});

  @override
  State<VolunteerHomePage1> createState() => _VolunteerHomePage1State();
}

class _VolunteerHomePage1State extends State<VolunteerHomePage1> {
  checkconsultancy() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('consultancy')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceConsultancy());
    } else {
      Get.to(ConsultancyServicePage1());
    }
  }

  checkcounselling() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('counselling')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceCounselling());
    } else {
      Get.to(CounsellingServicePage1());
    }
  }

  checkhomenursing() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('homenursing')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceHomeNursing());
    } else {
      Get.to(HomeNursingPage1());
    }
  }

  checktaxiservice() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('taxiservice')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceTaxiService());
    } else {
      Get.to(TaxiServicePage1());
    }
  }

  checkhomeservice() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('homeservice')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceHomeService());
    } else {
      Get.to(JoinServiceHomeService());
    }
  }

  checkmedicalrun() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('medicalrun')
        .get();

    if (querySnapshot.size == 0) {
      Get.to(JoinServiceMedicalRun());
    } else {
      Get.to(JoinServiceMedicalRun());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.logout_outlined)),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: StrokeText(
                              text: 'Hi Francis!',
                              textStyle: GoogleFonts.goldman(
                                  shadows: [
                                    const Shadow(
                                      blurRadius: 5,
                                      color: Color.fromRGBO(59, 58, 58, 1),
                                      offset: Offset(2, 4.5),
                                    ),
                                  ],
                                  fontSize: 35,
                                  color: const Color.fromRGBO(253, 165, 145, 1),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
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
                        foregroundImage:
                            AssetImage('asset/widget/icons8-home-64.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {},
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
                        foregroundImage:
                            AssetImage('asset/widget/update-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {},
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
                        foregroundImage:
                            AssetImage('asset/widget/profile-icon.png'),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: const Color.fromRGBO(168, 107, 93, 1)),
                          onPressed: () {
                            Get.to(VolunteerProfile1());
                          },
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
                        foregroundImage:
                            AssetImage('asset/widget/support-icon.png'),
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
                height: 60,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select Your Service',
                        style: GoogleFonts.goldman(fontSize: 20),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              checkconsultancy();
                            },
                            child: StrokeText(
                              text: 'Consultancy',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              checkcounselling();
                            },
                            child: StrokeText(
                              text: 'Counselling',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              Get.to(JoinServiceMedicalRun());
                            },
                            child: StrokeText(
                              text: 'Medical Run',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              checktaxiservice();
                            },
                            child: StrokeText(
                              text: 'Taxi Service',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              checkhomenursing();
                            },
                            child: StrokeText(
                              text: 'Home Nursing',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    width: 350,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              color: Colors.white60,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'asset/consultants/consultant5.png')),
                              borderRadius: BorderRadius.circular(50)),
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextButton(
                            onPressed: () {
                              checkhomeservice();
                            },
                            child: StrokeText(
                              text: 'Home Service',
                              textStyle: GoogleFonts.goldman(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  const Shadow(
                                    blurRadius: 5,
                                    color: Color.fromRGBO(30, 30, 30, 1),
                                    offset: Offset(2, 4.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
            ])),
      ),
    ));
  }
}
