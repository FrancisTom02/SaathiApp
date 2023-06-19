import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../views/HomePage1.dart';

class MedicalRun extends StatelessWidget {
  const MedicalRun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(const HomePage1());
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Image(image: AssetImage('asset/Banner1.png'))),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(253, 165, 145, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Enter Prescription',
                              style: GoogleFonts.goldman(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  constraints: BoxConstraints(maxHeight: 300, maxWidth: 400),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Text(
                                'Enter Prescription',
                                style: GoogleFonts.goldman(
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(253, 165, 145, 1),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Text(
                                'Amount',
                                style: GoogleFonts.goldman(
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(253, 165, 145, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(child: Text('Cetrizine 500mg')),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(child: Text('20')),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_rounded,
                                size: 50,
                              )),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(253, 165, 145, 1),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  constraints: BoxConstraints(maxHeight: 150, maxWidth: 400),
                  child: Center(
                      child: Column(children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(6),
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth: FixedColumnWidth(170),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: [
                              Text('Website', style: TextStyle(fontSize: 20.0))
                            ]),
                            Column(children: [
                              Text('Review', style: TextStyle(fontSize: 20.0))
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('5*')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('5*')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('5*')]),
                          ]),
                        ],
                      ),
                    )
                  ])),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(253, 165, 145, 1),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
