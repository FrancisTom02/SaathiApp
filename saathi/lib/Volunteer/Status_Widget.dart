import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/My_Profile.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:saathi/Volunteer/MyProfile1.dart';
import 'package:saathi/Volunteer/Volunteer_HomePage1.dart';
import 'package:saathi/views/HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class ServiceStatusWidget1 extends StatefulWidget {
  const ServiceStatusWidget1({super.key});

  @override
  State<ServiceStatusWidget1> createState() => _ServiceStatusWidget1State();
}

class _ServiceStatusWidget1State extends State<ServiceStatusWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  height: 80,
                  width: 200,
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: StrokeText(
                        text: 'Status',
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
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image(image: AssetImage('asset/Banner1.png'))),
              ],
            ),
            SizedBox(
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
                          Get.to(VolunteerHomePage1());
                        },
                        child: const Text('Home'))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      foregroundImage: AssetImage('asset/update-icon.png'),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: const Color.fromRGBO(168, 107, 93, 1)),
                        onPressed: () {
                          // Get.to(const ServiceStatusWidget1());
                        },
                        child: const Text('Status'))
                  ],
                ),
                SizedBox(
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
                        onPressed: () {
                          Get.to(VolunteerProfile1());
                        },
                        child: const Text('Profile'))
                  ],
                ),
                SizedBox(
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text('Pending Requests',
                        style: GoogleFonts.goldman(fontSize: 20)))),
            Expanded(
              child: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('volunteer')
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .collection('booking-data')
                    .where('status', isEqualTo: 'accepted')
                    // .where('service', isEqualTo: 'Counselling')
                    .get(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.separated(
                      itemCount: (snapshot.data! as dynamic).docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  (snapshot.data! as dynamic).docs[index]
                                      ['user-name'],
                                  style: GoogleFonts.goldman(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  (snapshot.data! as dynamic).docs[index]
                                      ['service'],
                                  style: GoogleFonts.goldman(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                StrokeText(
                                  strokeWidth: .6,
                                  text: 'Accepted',
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 54, 133, 57)),
                                )
                              ],
                            ),
                          ),
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
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ));
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
