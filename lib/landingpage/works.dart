import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Projects',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black45),
            ),
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 100),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 500,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                      Container(
                        height: 200,
                        width: 500,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 100),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 500,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                      Container(
                        height: 200,
                        width: 500,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
