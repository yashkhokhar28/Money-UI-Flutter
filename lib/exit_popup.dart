import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<bool> howDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Column(
          children: <Widget>[
            Text("Do you want to exit?",style: GoogleFonts.openSans(fontWeight: FontWeight.w900),),
          ],
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text("Yes",style: GoogleFonts.openSans(fontWeight: FontWeight.bold,color: Colors.red),),
            onPressed: () {
              exit(0);
            },
          ),
          CupertinoDialogAction(
            child: Text("No",style: GoogleFonts.openSans(fontWeight: FontWeight.bold),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
