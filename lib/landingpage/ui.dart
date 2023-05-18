import 'package:flutter/material.dart';
import 'package:protfolio_wesite_app/landingpage/aboutmepage.dart';
import 'package:protfolio_wesite_app/landingpage/contactpage.dart';
import 'package:protfolio_wesite_app/landingpage/works.dart';

class uiPage extends StatefulWidget {
  const uiPage({super.key});

  @override
  State<uiPage> createState() => _uiPageState();
}

class _uiPageState extends State<uiPage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.2),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.7)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                    ),
                    child: const Text("Home"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 1;
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.7)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                    ),
                    child: const Text(
                      "About",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 2;
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.7)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                    ),
                    child: const Text("Works"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 3;
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.7)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                    ),
                    child: const Text("Contact"),
                  ),
                ),
              ],
            )
          ]),
      body: count == 0
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 100),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 70, left: 60),
                          child: SizedBox(
                            height: 50,
                            width: 500,
                            child: Text("Software Developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 50,
                                    color: Colors.black45)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 20),
                          child: Container(
                            height: 50,
                            width: 500,
                            child: const Text("WELCOME TO MY PORTFOLIO!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 30,
                                    color: Colors.black45)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, top: 10),
                          child: Container(
                            width: 400,
                            child: const Text(
                              "By profession, I'm a Software Developer caring experience on Mobile App Development(Flutter).Bachelor in Computer Application tech enthusiast.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40, bottom: 30, left: 300),
                  child: Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: Image.asset(
                        'assets/picture.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            )
          : count == 1
              ? AboutPage()
              : count == 2
                  ? WorkPage()
                  : ContactPage(),
    );
  }
}
