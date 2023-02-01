import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "This Month",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.date_range,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 255, 247, 244),
                    // rgba(255,247,244,255)
                  ),
                  width: double.infinity,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Analyze",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 70),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Color.fromARGB(255, 226, 137, 131),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Income",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Expences",
                            style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240, top: 160),
                  child: Text(
                    "Aug 2021",
                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "August 2021",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.play_circle_filled_rounded,
                    ),
                    title: Text(
                      "Income",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "+\$24,897",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.play_circle_filled_rounded,
                    ),
                    title: Text(
                      "Expenses",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "+\$10,597",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.play_circle_filled_rounded,
                    ),
                    title: Text(
                      "Credit Used",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "+\$1.347",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.play_circle_filled_rounded,
                    ),
                    title: Text(
                      "Available",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "+\$8.953",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
