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

class CounsellingServicePage1 extends StatefulWidget {
  const CounsellingServicePage1({super.key});

  @override
  State<CounsellingServicePage1> createState() =>
      _CounsellingServicePage1State();
}

class _CounsellingServicePage1State extends State<CounsellingServicePage1> {
  acceptbooking(String id) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('booking-data')
        .where('user-id', isEqualTo: id)
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
        .collection('counselling-data')
        .where('counsellor-id', isEqualTo: vid)
        .where('counsellor-name', isEqualTo: vname)
        .get();
    String uid1 = query2.docs[0].id;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .collection('counselling-data')
        .doc(uid1)
        .update({'status': 'accepted'});
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
                  text: 'Counselling',
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
            SizedBox(
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
                    .where('service', isEqualTo: 'Counselling')
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
                          child: Row(
                            children: [
                              Text((snapshot.data! as dynamic).docs[index]
                                  ['user-name']),
                              ElevatedButton(
                                  onPressed: () {
                                    acceptbooking((snapshot.data! as dynamic)
                                        .docs[index]['user-id']);
                                    print('entered');
                                  },
                                  child: Text("Accept")),
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Decline"))
                            ],
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
            )
          ])),
    ));
  }
}
