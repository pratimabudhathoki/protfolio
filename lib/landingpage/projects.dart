import 'package:flutter/material.dart';

List project = [
  'E-Commerce App fetch from Rest API',
  'A simple Calculator Application by using Dart Language and Flutter Framework. Which is Support on both Ios and Android. ',
  "Instagram Clone  with firebase ",
  'ONline Doctor Project ',
  'Todo App by using dart language and Flutter Framework',
  "Flutter Developer Portfolio using Dart Language and Flutter Framework",
  "Chatting App with Firebase ",
  "Go_Sort App is develop by using dart language where user can  upload their Video and also can give review along with like and comments"
];

class ProjectClass extends StatefulWidget {
  const ProjectClass({super.key});

  @override
  State<ProjectClass> createState() => _ProjectClassState();
}

class _ProjectClassState extends State<ProjectClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 35,
            width: 95,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_outlined),
                label: Text('More')),
          )
        ],
      ),
    );
  }
}
