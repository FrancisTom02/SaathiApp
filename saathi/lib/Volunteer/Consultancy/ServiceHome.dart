import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:saathi/Volunteer/Counselling/ServiceDetails.dart';
import 'package:saathi/Volunteer/Volunteer_HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class ConsultancyServicePage1 extends StatefulWidget {
  const ConsultancyServicePage1({super.key});

  @override
  State<ConsultancyServicePage1> createState() =>
      _ConsultancyServicePage1State();
}

class _ConsultancyServicePage1State extends State<ConsultancyServicePage1> {
  acceptbooking(String id) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('booking-data')
        .where('user-id', isEqualTo: id)
        .where('service', isEqualTo: 'Consultancy')
        .where('status', isEqualTo: 'pending')
        .get();
    String uid = querySnapshot.docs[0].id;
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    String vname = (snap.data() as Map<String, dynamic>)['name'];
    String vid = (snap.data() as Map<String, dynamic>)['uid'];
    await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('booking-data')
        .doc(uid)
        .update({'status': 'accepted'});
    QuerySnapshot query2 = await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('consultancy-data')
        .where('consultant-id', isEqualTo: vid)
        .where('consultant-name', isEqualTo: vname)
        .get();
    String uid1 = query2.docs[0].id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('consultancy-data')
        .doc(uid1)
        .update({'status': 'accepted'});
    setState(() {});
  }

  cancelbooking(String id) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('booking-data')
        .where('user-id', isEqualTo: id)
        .where('service', isEqualTo: 'Consultancy')
        .where('status', isEqualTo: 'pending')
        .get();
    String uid = querySnapshot.docs[0].id;
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    String vname = (snap.data() as Map<String, dynamic>)['name'];
    String vid = (snap.data() as Map<String, dynamic>)['uid'];
    await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('booking-data')
        .doc(uid)
        .delete();
    QuerySnapshot query2 = await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('consultancy-data')
        .where('consultant-id', isEqualTo: vid)
        .where('consultant-name', isEqualTo: vname)
        .get();
    String uid1 = query2.docs[0].id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('consultancy-data')
        .doc(uid1)
        .delete();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<String> sampleImages = [
      "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
      "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    ];
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(VolunteerHomePage1());
                    },
                    icon: Icon(Icons.arrow_back)),
                Image(image: AssetImage('asset/Banner1.png')),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: StrokeText(
                  text: 'Consultancy',
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
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(229, 255, 255, 255)),
                  child: FanCarouselImageSlider(
                    sidesOpacity: 0.2,
                    indicatorActiveColor: const Color.fromRGBO(168, 107, 93, 1),
                    sliderHeight: 180,
                    sliderWidth: 300,
                    imagesLink: sampleImages,
                    isAssets: false,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // Row(
            //   children: [
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     Column(
            //       children: [
            //         const CircleAvatar(
            //           radius: 25,
            //           backgroundColor: Colors.white,
            //           foregroundImage:
            //               AssetImage('asset/widget/icons8-home-64.png'),
            //         ),
            //         const SizedBox(
            //           height: 1,
            //         ),
            //         TextButton(
            //             style: TextButton.styleFrom(
            //                 primary: const Color.fromRGBO(168, 107, 93, 1)),
            //             onPressed: () {},
            //             child: const Text('Home'))
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 25,
            //     ),
            //     Column(
            //       children: [
            //         const CircleAvatar(
            //           radius: 25,
            //           backgroundColor: Colors.white,
            //           foregroundImage:
            //               AssetImage('asset/widget/update-icon.png'),
            //         ),
            //         const SizedBox(
            //           height: 1,
            //         ),
            //         TextButton(
            //             style: TextButton.styleFrom(
            //                 primary: const Color.fromRGBO(168, 107, 93, 1)),
            //             onPressed: () {},
            //             child: const Text('Status'))
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 25,
            //     ),
            //     Column(
            //       children: [
            //         const CircleAvatar(
            //           radius: 25,
            //           backgroundColor: Colors.white,
            //           foregroundImage:
            //               AssetImage('asset/widget/profile-icon.png'),
            //         ),
            //         const SizedBox(
            //           height: 1,
            //         ),
            //         TextButton(
            //             style: TextButton.styleFrom(
            //                 primary: const Color.fromRGBO(168, 107, 93, 1)),
            //             onPressed: () {},
            //             child: const Text('Profile'))
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 25,
            //     ),
            //     Column(
            //       children: [
            //         const CircleAvatar(
            //           radius: 25,
            //           backgroundColor: Colors.white,
            //           foregroundImage:
            //               AssetImage('asset/widget/support-icon.png'),
            //         ),
            //         const SizedBox(
            //           height: 1,
            //         ),
            //         TextButton(
            //             style: TextButton.styleFrom(
            //                 primary: const Color.fromRGBO(168, 107, 93, 1)),
            //             onPressed: () {
            //               Get.to(SupportWidget());
            //             },
            //             child: const Text('Support'))
            //       ],
            //     )
            //   ],
            // ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('volunteer')
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .collection('booking-data')
                    .where('status', isEqualTo: 'pending')
                    .where('service', isEqualTo: 'Consultancy')
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  (snapshot.data! as dynamic).docs[index]
                                      ['user-name'],
                                  style: GoogleFonts.goldman(),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                // ElevatedButton(
                                //     onPressed: () {
                                //       acceptbooking((snapshot.data! as dynamic)
                                //           .docs[index]['user-id']);
                                //       print('entered');
                                //     },
                                //     child: Text("Accept")),
                                SizedBox(
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        shadowColor: const Color.fromRGBO(
                                            253, 165, 145, 1),
                                        elevation: 8,
                                        backgroundColor:
                                            Colors.white, // Background color
                                      ),
                                      onPressed: () {
                                        acceptbooking(
                                            (snapshot.data! as dynamic)
                                                .docs[index]['user-id']);
                                        print('entered');
                                      },
                                      child: const Text(
                                        'Accept',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 64, 164, 77),
                                            fontSize: 14),
                                      )),
                                ),
                                // ElevatedButton(
                                //     onPressed: () {}, child: Text("Decline")),
                                SizedBox(
                                  height: 25,
                                  width: 80,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        shadowColor: const Color.fromRGBO(
                                            253, 165, 145, 1),
                                        elevation: 8,
                                        backgroundColor:
                                            Colors.white, // Background color
                                      ),
                                      onPressed: () {
                                        cancelbooking(
                                            (snapshot.data! as dynamic)
                                                .docs[index]['user-id']);
                                      },
                                      child: const Text(
                                        'Decline',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 165, 44, 44),
                                            fontSize: 14),
                                      )),
                                ),
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
          ])),
    ));
  }
}
