import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Firebase/Firebase.dart';
import '../Controller/HomeController.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({Key? key}) : super(key: key);

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {

  homeController Controller = Get.put(homeController());
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: txtPassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(
                        Icons.lock,
                        size: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      String msg = await singUp(txtEmail.text, txtPassword.text);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("${msg}"),
                      ));

                      if (msg == "Success") {
                        Get.offNamed('login');
                      }
                    },
                    style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: Colors.green),
                    child: Icon(
                      Icons.navigate_next_rounded,
                      size: 60,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
