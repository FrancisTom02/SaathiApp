import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saathi/views/HomePage.dart';
import 'package:saathi/views/HomePage1.dart';

class CreateProfile2 extends StatelessWidget {
  const CreateProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image(image: AssetImage('asset/Banner1.png'))),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => HomePage1()));
                },
                child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
