import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyui/firstpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (builder) => FirstPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 247, 244),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Fast",
                    style: GoogleFonts.openSans(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Row(
                  children: [
                    Text(
                      "&",
                      style: GoogleFonts.openSans(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 227, 148, 141)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Digital",
                      style: GoogleFonts.openSans(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Banking for your company",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 125, 124, 124),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 225),
                    child: Image.asset("assets/crop.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          "assets/chip.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          "assets/pie-chart.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
