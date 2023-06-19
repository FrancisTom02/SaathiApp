//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saathi/Services/auth_services.dart';
import 'package:saathi/Volunteer/Volunteer_HomePage1.dart';
import 'package:saathi/views/CreateProfile1.dart';
import 'package:saathi/views/HomePage1.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  _loginUser() async {
    String email = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    final role = await AuthServices.login(email: email, password: password);

    // if (res != "success") {
    //   print(res);
    //   return;
    // }

    // Get.to(VolunteerHomePage1());
    if (role != "USER" && role != "VOLUNTEER") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: Text(
          'Invalid Username or Password',
          style: GoogleFonts.raleway(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ));
      return;
    }
    Widget? page;
    switch (role.toUpperCase()) {
      case 'USER':
        page = const HomePage1();
        break;
      case 'VOLUNTEER':
        page = VolunteerHomePage1();
        break;
      default:
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(role)));
    }
    if (page != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx2) => page!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                height: 500,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage("asset/Background4.png"),
                        fit: BoxFit.cover))),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(253, 165, 145, 1),
                              width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      contentPadding: EdgeInsets.all(20.0),
                      labelText: "Username",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(253, 165, 145, 1),
                              width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      contentPadding: EdgeInsets.all(20.0),
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromRGBO(253, 165, 145, 1),
                        elevation: 8,
                        backgroundColor: Color.fromRGBO(
                            253, 165, 145, 1), // Background color
                      ),
                      onPressed: () {
                        _loginUser();
                      },
                      child: Text('Submit')),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("haven't Registered ?"),
                      TextButton(
                          style: TextButton.styleFrom(
                              primary: Color.fromRGBO(253, 165, 145, 1)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CreateProfile1()));
                          },
                          child: Text('Sign Up'))
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
