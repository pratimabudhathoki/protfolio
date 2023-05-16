import 'package:flutter/material.dart';

class uiPage extends StatefulWidget {
  const uiPage({super.key});

  @override
  State<uiPage> createState() => _uiPageState();
}

class _uiPageState extends State<uiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white38, actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Home"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("About"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Works"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Contact"),
              ),
            ),
          ],
        )
      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 60),
            child: Container(
              height: 50,
              width: 400,
              child: Text("Software Developer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 40,
                      color: Colors.black45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 20),
            child: Container(
              height: 50,
              width: 400,
              child: Text("WELCOME TO MY PROTFOLIO!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      color: Colors.black45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 10),
            child: Container(
              width: 400,
              child: Text(
                "By profession, I'm a Software Developer carring experience on Mobile App Development(Flutter).Bachelore in Computer Application tech enthusiast.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
