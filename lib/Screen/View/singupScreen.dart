import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Firebase/Firebase.dart';

class SignUpScreen extends StatefulWidget {
  final int? index;

  SignUpScreen({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Container(
                height: 180,
                width: 180,
                child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/006/793/369/original/gamer-anime-boy-with-character-with-rock-hand-sign-mascot-esport-logo-free-vector.jpg"),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  controller: txtname,
                  decoration: InputDecoration(
                    hintText: " Your Name",
                    filled: true,
                    fillColor: Color(0xfff6f6f6),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff6f6f6)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: TextFormField(
                  controller: txtemail,
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Color(0xfff6f6f6),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff6f6f6)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: TextFormField(
                  obscureText: true,
                  controller: txtpassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Color(0xfff6f6f6),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xfff6f6f6)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Color(0xffdee1e6),
                              elevation: 10,
                              backgroundColor: Color(0xfffa7914),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () async {
                            String msg =
                                await singUp(txtemail.text, txtpassword.text);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("${msg}"),
                            ));

                            if (msg == "Success") {
                              Get.offNamed('/');
                            }
                          },
                          child: Text("Sign Up")))),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text("Already have an account?"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Color(0xfffa7914)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
