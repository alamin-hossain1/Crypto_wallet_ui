import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget profile() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(200, 40),
              bottomRight: Radius.elliptical(200, 40),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Profile",
              style: GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(0, -50, 0),
          child: Stack(
            children: [
              Container(
                height: 190,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 37, 0, 2),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                top: 35,
                right: 30,
                child: Column(
                  children: [
                    Text(
                      "Sharif Robin",
                      style: GoogleFonts.ubuntu(
                          fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Sydney, Australia",
                      style: GoogleFonts.ubuntu(fontSize: 20),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "+24823649238742",
                      style: GoogleFonts.ubuntu(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        listTile(Icons.photo, "PHOTO"),
        listTile(Icons.person, "NAME"),
        listTile(Icons.location_city, "ADDRESS"),
        listTile(Icons.phone, "CONTACT"),
      ],
    ),
  );
}

Widget listTile(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.orange[50],
        leading: Icon(icon, color: Colors.teal),
        title: Text(title),
        trailing: Icon(
          Icons.edit,
          color: Colors.teal,
        ),
      ),
    ),
  );
}
