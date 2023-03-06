import 'dart:convert';
import 'package:demoapp/modal/ApiModal.dart';
import 'package:demoapp/modal/DetailModel.dart';
import 'package:get/get.dart';


import 'package:http/http.dart' as http;

class homeController extends GetxController {
  Future<ApiModal> apiCalling() async {
    String Apilink = "https://api.jikan.moe/v4/anime";

    var jsonString = await http.get(Uri.parse(Apilink));
    var json = jsonDecode(jsonString.body);

    return ApiModal.fromJson(json);
  }


  Future<DetailModel> Detailapicalling(String a1)
  async {
    String apiLink = "https://api.jikan.moe/v4/anime/$a1/full";

     var jsonstring = await http.get(Uri.parse(apiLink));
     var json = jsonDecode(jsonstring.body);

     return DetailModel.fromJson(json);
  }


}
