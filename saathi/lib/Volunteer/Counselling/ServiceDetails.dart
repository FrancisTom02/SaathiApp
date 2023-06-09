import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Volunteer/Counselling/ServiceHome.dart';
import 'package:stroke_text/stroke_text.dart';

class CounselingDetails extends StatefulWidget {
  const CounselingDetails({super.key});

  @override
  State<CounselingDetails> createState() => _CounselingDetailsState();
}

class _CounselingDetailsState extends State<CounselingDetails> {
  TextEditingController designation = TextEditingController();
  TextEditingController proqualf = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController institution = TextEditingController();
  TextEditingController specialty = TextEditingController();
  TextEditingController age = TextEditingController();

  void updates() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('counselling')
        .get();
    String uid = querySnapshot.docs[0].id;

    await FirebaseFirestore.instance
        .collection('volunteer')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('counselling')
        .doc(uid)
        .update({
      "designation": designation.text,
      "proqualf": proqualf.text,
      "designation": designation.text,
      "phone2": phonenumber.text,
      "institution": institution.text,
      "speciality": specialty.text,
    });

    // await FirebaseFirestore.instance
    //     .collection('volunteer')
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .collection('counselling')
    //     .doc()
    //     .update({
    //   "designation": designation.text,
    //   "proqualf": proqualf.text,
    //   "designation": designation.text,
    //   "phone2": phonenumber.text,
    //   "institution": institution.text,
    //   "speciality": specialty.text,
    // });
  }

  @override
  Widget build(context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 130,
              ),
              const Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Image(image: AssetImage('asset/Banner1.png'))),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: StrokeText(
                    textStyle: GoogleFonts.goldman(fontSize: 25),
                    text: 'Service Profile',
                    strokeWidth: .8,
                    textColor: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 165, 145, 1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 200),
                  child: Text('Designation',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: TextFormField(
                    controller: designation,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 100),
                  child: Text('Professional Qualification',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  child: TextFormField(
                    controller: proqualf,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text('Speciality',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  child: TextFormField(
                    controller: specialty,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text('Institution',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  child: TextFormField(
                    controller: institution,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text('Phone No',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
                  child: TextFormField(
                    controller: phonenumber,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        fillColor: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 200),
                  child: Text('Working Hours',
                      style: GoogleFonts.goldman(
                          fontSize: 15,
                          color: Color.fromARGB(255, 73, 69, 69))),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Monday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Tuesday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Wednesday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Thursday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Friday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Saturday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Sunday',
                                style: GoogleFonts.goldman(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 73, 69, 69))),
                          ),
                          SizedBox(width: 60),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 1),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  fillColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
            constraints: BoxConstraints(maxWidth: 350),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 165, 145, 1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                updates();
                Get.to(CounsellingServicePage1());
              },
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 2),
                backgroundColor: Color.fromRGBO(253, 165, 145, 1),
                shape: StadiumBorder(),
              ),
              child: Text(
                'SAVE ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            height: 50,
            width: 190,
          ),
          SizedBox(
            height: 20,
          )
        ],
      )),
    ));
  }
}
