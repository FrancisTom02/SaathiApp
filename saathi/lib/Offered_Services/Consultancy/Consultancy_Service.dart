import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saathi/views/HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

import 'Consultancy_Service2.dart';

class Service_Consultancy extends StatelessWidget {
  const Service_Consultancy({super.key});

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
                IconButton(
                    onPressed: () {
                      Get.to(const HomePage1());
                    },
                    icon: const Icon(Icons.arrow_back)),
                const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Image(image: AssetImage('asset/Banner1.png'))),
              ],
            ),
            const SizedBox(
              height: 30,
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
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'CONSULTANCY',
                              style: GoogleFonts.goldman(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 3),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('volunteer')
                    .where('consultancy', isEqualTo: 'true')
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
                          height: 200,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        width: 125.0,
                                        height: 125.0,
                                        padding: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 2,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'asset/Counsellor/counsellor3.png')))),
                                    Container(
                                      height: 100,
                                      width: 180,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: Text(
                                                (snapshot.data! as dynamic)
                                                    .docs[index]['name'],
                                                style: GoogleFonts.goldman(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'bookings: 75',
                                              style: GoogleFonts.goldman(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(179, 255, 254, 254),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),

                                        elevation: 0,
                                        backgroundColor: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255), // Background color
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'BOOK NOW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800),
                                      )),
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
