import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saathi/views/CreateProfile1.dart';
import 'package:saathi/views/HomePage1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => HomePage1()));
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
