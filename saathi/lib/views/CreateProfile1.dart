import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:saathi/views/CreateProfile2.dart';

import '../Services/auth_services.dart';
import 'HomePage1.dart';

class CreateProfile1 extends StatefulWidget {
  const CreateProfile1({super.key});

  @override
  State<CreateProfile1> createState() => _CreateProfile1State();
}

class _CreateProfile1State extends State<CreateProfile1> {
  final _usernameController2 = TextEditingController();

  final _passwordController2 = TextEditingController();

  _SignUpUser() async {
    String email = _usernameController2.text.trim();
    String password = _passwordController2.text.trim();

    String res = await AuthServices.signup(email: email, password: password);

    if (res != "success") {
      print(res);
      return;
    }

    Get.to(CreateProfile2());
  }

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
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: _usernameController2,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                      borderRadius: BorderRadius.circular(40)),
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: "*E-Mail ID",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                controller: _passwordController2,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                      borderRadius: BorderRadius.circular(40)),
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: "*Password",
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
                  labelText: "*Re-Enter Password",
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
                  _SignUpUser();
                },
                child: Text('Submit')),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already registered?'),
                TextButton(
                    style: TextButton.styleFrom(
                        primary: Color.fromRGBO(253, 165, 145, 1)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Sign in',
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
