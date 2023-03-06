import 'package:demoapp/modal/DetailModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/HomeController.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  homeController controller = Get.put(homeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String a1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffffe0cc),
      body:FutureBuilder(
          future: controller.Detailapicalling(a1),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Text("${snapshot.hasError}");
            } else if (snapshot.hasData) {
              DetailModel detailModel = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.blue,


                    child:  Image.network(
                      "${detailModel.data!.trailer!.images!.largeImageUrl}",fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),


                    // child: Image.network("${detailModel.data!.trailer!.images!.largeImageUrl}",fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "${detailModel.data!.title}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                          style: TextStyle(
                              color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "${detailModel.data!.synopsis}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 8,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            navigator?.pushNamed("web",arguments:"${detailModel.data!.url}");
                          },
                          child: const Text(
                              'View Website'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfffa7914),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),// trying to move to the bottom
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          }),


    ));
  }
}
