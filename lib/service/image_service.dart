import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;


class ImageService{
  
  Future<String>  callBackend() async{
    final url = Uri.parse("http://192.168.100.35:8080/api/predict");
    final response = await http.post(url);

    if(response.statusCode == 200){
      print(response.body);
    }
    return "";

  }
  
}
