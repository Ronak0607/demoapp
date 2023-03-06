import 'package:demoapp/Firebase/Firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtemaillogin = TextEditingController();
  TextEditingController txtpasswordogin = TextEditingController();

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
                padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                child: TextField(
                  controller: txtemaillogin,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: Color(0xff7d7f86),
                    hintText: "Your email  address",
                    hintStyle: TextStyle(color: Color(0xff7d7f86)),
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
                  controller: txtpasswordogin,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    prefixIconColor: Color(0xff7d7f86),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Color(0xff7d7f86)),
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
                          String msg = await logIn(
                              txtemaillogin.text, txtpasswordogin.text);

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("${msg}"),
                          ));

                          if (msg == "Success") {
                            Get.offNamed('home');
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 16),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Color(0xfffa7914),
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(color: Color(0xfffa7914)),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Color(0xff7d7f86)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xfffa7914)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "signup");
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
