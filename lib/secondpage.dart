import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Map<String, dynamic>> data = [
    {
      'icon': Icon(Icons.access_time_filled),
      'name': 'Income',
      'price': "+\$24,897"
    },
    {
      'icon': Icon(Icons.filter_list_alt),
      'name': 'Expenses',
      'price': "-\$10,597"
    },
    {
      'icon': Icon(Icons.play_circle_fill),
      'name': 'Credit used',
      'price': "\$1.347"
    },
    {
      'icon': Icon(Icons.workspaces_filled),
      'name': 'Available',
      'price': "\$8.953"
    }
  ];

  Widget word(int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Container(child: data[index]['icon']),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Text(
                data[index]['name'],
                style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                data[index]['price'],
                style: GoogleFonts.openSans(fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(margin: EdgeInsets.all(20),color: Colors.blue,width: double.infinity,)
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
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
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "August 2021",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 215,
                    child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => word(index),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Notification",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w900, fontSize: 20),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black,
                    ),
                    width: double.infinity,
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 206, 75),
                          // rgba(246,206,75,255)
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(
                          Icons.stars,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Open your business\naccount within minutes",
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "Open account",
                            style: GoogleFonts.openSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 246, 206, 75),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
