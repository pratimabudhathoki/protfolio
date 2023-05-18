import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  final _subject = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final Uri _url = Uri.parse('https://www.facebook.com/pratima.budhathoki.18');
  final Uri _instaurl = Uri.parse('https://www.instagram.com/ipeek_7/');
  final Uri _linkedInuri =
      Uri.parse('https://np.linkedin.com/in/pratima-budhathoki-3a7493248');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchinsta() async {
    if (!await launchUrl(_instaurl)) {
      throw Exception('Could not launch $_instaurl');
    }
  }

  Future<void> _launchLinkedin() async {
    if (!await launchUrl(_linkedInuri)) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30, bottom: 30),
                  child: Container(
                    height: 150,
                    width: 290,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    margin: const EdgeInsets.all(40),
                    child: Column(children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Email:",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        "pratimabdth7@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30, bottom: 30),
                  child: Container(
                    height: 150,
                    width: 290,
                    color: Colors.grey.shade200,
                    child: Column(
                      children: [
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Address:",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Kathmandu,Old Baneshwore",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30, bottom: 30),
                  child: Container(
                      height: 150,
                      width: 290,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Phone:",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Text(
                            "+977 9861444977",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30, bottom: 30),
                  child: Container(
                      height: 150,
                      width: 290,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Contact:",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    _launchUrl();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 40,
                                    child: Image.asset('assets/fb_icon.png'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    _launchinsta();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 40,
                                    child: Image.asset('assets/insta.jfif'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    _launchLinkedin();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 40,
                                    child:
                                        Image.asset('assets/linked image.png'),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 4),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Container(
                    height: 100,
                    width: 600,
                    child: Text(
                      'For futher project or need help. Contact me',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                      constraints:
                          const BoxConstraints.expand(height: 70, width: 400),
                      hintText: "Name",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.black38)),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 235, 190, 188),
                            width: 2),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your name';
                      }
                      return null;
                    }),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    constraints:
                        const BoxConstraints.expand(height: 70, width: 400),
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 235, 190, 188), width: 2),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your Email';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _address,
                  decoration: InputDecoration(
                    constraints:
                        const BoxConstraints.expand(height: 70, width: 400),
                    hintText: "Address",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 235, 190, 188), width: 2),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Address";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _subject,
                  decoration: InputDecoration(
                    constraints:
                        const BoxConstraints.expand(height: 70, width: 400),
                    hintText: "Subject",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 235, 190, 188), width: 2),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Subject";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        30,
                      )),
                      primary: Colors.blueGrey.shade300, // background
                      onPrimary: Colors.black, // foreground
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text('Submit', style: TextStyle(fontSize: 20)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
