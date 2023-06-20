import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:saathi/Services/auth_services.dart';
import 'package:saathi/Volunteer/Volunteer_HomePage1.dart';
import 'package:saathi/views/HomePage.dart';
import 'package:saathi/views/HomePage1.dart';
import 'CreateProfile1.dart';

class CreateProfile2 extends StatefulWidget {
  const CreateProfile2({super.key});

  @override
  State<CreateProfile2> createState() => _CreateProfile2State();
}

class _CreateProfile2State extends State<CreateProfile2> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController age = TextEditingController();

  TextEditingController guardianName = TextEditingController();
  TextEditingController guardianRelation = TextEditingController();
  TextEditingController guardianPhone = TextEditingController();
  TextEditingController guardianEmail = TextEditingController();

  void updates() async {
    final role = await AuthServices.getrole();
    if (role == 'USER') {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        "name": name.text,
        "address": address.text,
        "phonenumber": phonenumber.text,
        "age": age.text,
        "gender": gender.text,
        "guardianName": guardianName.text,
        "guardianRelation": guardianRelation.text,
        "guardianPhone": guardianPhone.text,
        "guardianEmail": guardianEmail.text,
      });
      Get.to(HomePage1());
    } else if (role == 'VOLUNTEER') {
      await FirebaseFirestore.instance
          .collection('volunteer')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": name.text,
        "address": address.text,
        "phonenumber": phonenumber.text,
        "age": age.text,
        "gender": gender.text,
        "guardianName": guardianName.text,
        "guardianRelation": guardianRelation.text,
        "guardianPhone": guardianPhone.text,
        "guardianEmail": guardianEmail.text,
      });
      Get.to(VolunteerHomePage1());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Image(image: AssetImage('asset/Banner1.png'))),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Full Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Address",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: phonenumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Phone No",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: category,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Category",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    child: TextFormField(
                      controller: gender,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 165, 145, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(40)),
                        contentPadding: EdgeInsets.all(20.0),
                        labelText: "*Gender",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 120,
                    child: TextFormField(
                      controller: age,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 165, 145, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(40)),
                        contentPadding: EdgeInsets.all(20.0),
                        labelText: "*Age",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: guardianName,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*guardian name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: guardianRelation,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Relation",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: guardianPhone,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Phone No",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: guardianEmail,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                        borderRadius: BorderRadius.circular(40)),
                    contentPadding: EdgeInsets.all(20.0),
                    labelText: "*Email ID",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    shadowColor: Color.fromRGBO(253, 165, 145, 1),
                    elevation: 8,
                    backgroundColor:
                        Color.fromRGBO(253, 165, 145, 1), // Background color
                  ),
                  onPressed: () {
                    updates();
                  },
                  child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
