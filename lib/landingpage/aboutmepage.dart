import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var data = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Hello I'm Pratima Budhathoki",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mobile Application Developer(Flutter)",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = true;
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black.withOpacity(0.8)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.8)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    child: Text(
                      "Education",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(width: 150),
                SizedBox(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            data = false;
                          });
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.black.withOpacity(0.9)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.white.withOpacity(0.7)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                        ),
                        child: Text(
                          "Skills",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ))),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: data == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 450, top: 30),
                            child: Text(
                              "Bachelor In Computer Application",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                            left: 450, top: 30, bottom: 30),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mobile Application Developer',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Dart",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Computer Science",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Firebase",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Web Development",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Mobile Web Design",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Software Development",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Flutter",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Android Developmnet",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Html,Css,JavaScript",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
