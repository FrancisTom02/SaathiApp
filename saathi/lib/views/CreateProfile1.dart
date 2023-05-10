import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:saathi/views/CreateProfile2.dart';

class CreateProfile1 extends StatelessWidget {
  const CreateProfile1({super.key});

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
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(253, 165, 145, 1), width: 2),
                      borderRadius: BorderRadius.circular(40)),
                  contentPadding: EdgeInsets.all(20.0),
                  labelText: "*E-Mail",
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => CreateProfile2()));
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
