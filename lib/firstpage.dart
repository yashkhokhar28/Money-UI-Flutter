import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyui/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Money Flow",
          style: GoogleFonts.openSans(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          // IconButton(
          //   onPressed: null,
          //   icon: Icon(
          //     Icons.more_horiz_outlined,
          //     color: Colors.black,
          //   ),
          // )
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 30,
            height: 30,
            child: Image.asset("assets/four-dots.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => SecondPage(),
                  ),
                );
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Total Balance",
                            style: GoogleFonts.openSans(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 47),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.notifications_on_outlined,
                                color: Colors.white54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Paul_Circle.png/767px-Paul_Circle.png"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 47),
                    child: Text(
                      "24,897",
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 125, left: 47, right: 47),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "****   3567",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold, color: Colors.white54),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "USD",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        )
                      ],
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
                  "Statistics",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Slider(
                      //   activeColor: Colors.orange,
                      //   inactiveColor: Colors.white,
                      //   label: "Select Age",
                      //   value: age.toDouble(),
                      //   onChanged: (value) {
                      //     setState(
                      //       () {
                      //         age = value.toInt();
                      //       },
                      //     );
                      //   },
                      //   min: 5,
                      //   max: 100,
                      // ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // rgba(247,188,71,255)
                                  color: Colors.black12),
                              width: double.infinity,
                              height: 22,
                            ),
                            Container(
                              width: 90,
                              height: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // rgba(247,188,71,255)
                                  color: Color.fromARGB(255, 247, 188, 71)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "\$10,597 expences",
                          style: GoogleFonts.openSans(
                               color: Colors.black26),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      Text(
                        "\$10.3k",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 19),
                      ),
                      Text(
                        "available",
                        style: GoogleFonts.openSans(
                            color: Colors.black26),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Services",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward_ios,size: 18,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.black26)),
                      height: 120,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // alignment: Alignment.topLeft,
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 226, 137, 131),
                                  ),
                                  child: Icon(
                                    Icons.attach_money,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Payments",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.black26)),
                      height: 120,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // alignment: Alignment.topLeft,
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 76, 149, 132),
                                  ),
                                  child: Transform.rotate(
                                    angle: pi * 0.75,
                                    child: Icon(Icons.arrow_back_rounded,
                                        size: 25,
                                        // rgba(76,149,132,255)
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Transfers",
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recent Transactions",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w900, fontSize: 20),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "http://tricky-photoshop.com/wp-content/uploads/2017/08/6.jpg"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "https://instagram.fraj2-1.fna.fbcdn.net/v/t51.2885-19/324926140_188986387142979_2223386982515341886_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fraj2-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=wbqkYkCLOmYAX9Ny1uG&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDz1GcgiNvrhKa_lVhhQJbYRT3LNq5o7nSUkMpU6Y3ghA&oe=63E0E189&_nc_sid=8fd12b"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "https://instagram.fraj2-1.fna.fbcdn.net/v/t51.2885-19/320623307_1305175336720699_7732710810924820337_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fraj2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=xKk-d3v2JYgAX9cdBq2&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCVqmL9GQ8zC7-AjPyc9K9GFlawK1btmd3RyHXwpXnUNA&oe=63E09D36&_nc_sid=8fd12b"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "https://st3.depositphotos.com/11585370/18013/i/600/depositphotos_180135228-stock-photo-are-you-kidding-me-oh.jpg"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIrhWXqJlJWNs2__nePzg_FcwuPfkaCEWQkA&usqp=CAU"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "ABC"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user_outlined,
                color: Colors.black,
              ),
              label: "ABC"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.games_outlined,
                color: Colors.black,
              ),
              label: "ABC"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: "ABC"),
        ],
      ),
    );
  }
}
