import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentacar/menu.dart';
import 'package:rentacar/views/themes/colors.dart';
import 'package:rentacar/main.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        // margin: EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 60,
                    color: Colors.transparent,
                    child: Image.asset("images/back.png"),
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.transparent,
                    child: Image.asset("images/Option.png"),
                  ),
                ],
              ),
              SizedBox(height: 75),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipOval(child: Image.asset("images/memek.jpeg")),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    Text(
                      "MAX",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff14161C)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(30),
                      width: 60,
                      height: 60,
                      child: ClipOval(
                          child: Image.asset(
                        "images/reward.png",
                        color: Color(0xff2387E0),
                      )),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 234, 250),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      width: 60,
                      height: 60,
                      child: ClipOval(
                          child: Image.asset(
                        "images/trip.png",
                        color: Color(0xffFF5858),
                      )),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 229, 229),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      width: 60,
                      height: 60,
                      child: ClipOval(
                          child: Image.asset(
                        "images/rivews.png",
                        color: Color(0xff34A853),
                      )),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 255, 224),
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 60)),
              Column(
                children: [
                  Image.asset(
                    "images/General.png",
                    height: 500,
                    fit: BoxFit.fill,
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
