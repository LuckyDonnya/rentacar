import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentacar/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 302,
                    decoration: BoxDecoration(
                      color: Color(0xff2387E0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "This Is Gordon",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 22),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 36, top: 36),
                                  child: Image.asset(
                                    "images/home.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1, color: Colors.white))),
                                  padding: EdgeInsets.only(top: 25),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Home",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              "Jakarta Indonesia",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 120)),
                                      Container(
                                        child: InkWell(
                                          child:
                                              Image.asset("images/lanjut.png"),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 36, top: 15),
                                  child: Image.asset(
                                    "images/save_choose.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  ))),
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Choose saved a place",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 83)),
                                      Container(
                                        child: InkWell(
                                          child:
                                              Image.asset("images/lanjut.png"),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 158,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            splashColor: Colors.amber,
                            onTap: () {},
                            child: Center(
                              child: Text("Let's Go",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff303E44),
                                      fontSize: 13)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: GridView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        // padding: EdgeInsets.all(10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 110,
                        ),
                        children: [
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Ride")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Motorcycle")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Foods")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Grocery")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Package")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Hourly")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("Rent")
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset("images/ride.jpg")),
                                Text("More")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "Arround You",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                "images/map.png",
                width: 370,
                height: 201,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
