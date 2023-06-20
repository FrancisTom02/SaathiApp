import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Offered_Services/Support_Widget.dart';
import 'package:saathi/Volunteer/HomeNursing/ServiceDetails.dart';
import 'package:saathi/Volunteer/Volunteer_HomePage1.dart';
import 'package:stroke_text/stroke_text.dart';

class JoinServiceHomeNursing extends StatefulWidget {
  const JoinServiceHomeNursing({super.key});

  @override
  State<JoinServiceHomeNursing> createState() => _JoinServiceHomeNursingState();
}

class _JoinServiceHomeNursingState extends State<JoinServiceHomeNursing> {
  join() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    String name = (snapshot.data() as Map<String, dynamic>)['name'];

    await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('homenursing')
        .doc()
        .set({'name': name});

    await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'homenursing': 'true'});
  }

  @override
  Widget build(BuildContext context) {
    List<String> sampleImages = [
      "https://images.unsplash.com/photo-1557700836-25f2464e845d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
      "https://images.unsplash.com/photo-1669462277329-f32f928a4a79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      "https://images.unsplash.com/photo-1542840410-3092f99611a3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    ];
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
                              onPressed: () {
                                Get.to(VolunteerHomePage1());
                              },
                              icon: Icon(Icons.arrow_back)),
                        ),
                      ],
                    ),
                  ),
                  const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Image(image: AssetImage('asset/Banner1.png'))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: StrokeText(
                    text: 'Home Nursing',
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
                      indicatorActiveColor:
                          const Color.fromRGBO(168, 107, 93, 1),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  '''       *Join As  a Service Provider*''',
                  style: GoogleFonts.goldman(
                      fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '''Join our community and gain recognition by offering your most valuable services !''',
                  style: GoogleFonts.goldman(
                      fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 35,
                width: 150,
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
                      join();
                      Get.to(HomeNursingDetails());
                    },
                    child: const StrokeText(
                      text: 'Join Now',
                      textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 70,
              )
            ])),
      ),
    ));
  }
}
