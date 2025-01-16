import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;


  RxBool loading = false.obs;

  void loginApi() async {
    RxBool loading = true.obs;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });

      var data = jsonDecode(response.body);


      if (response.statusCode == 200) {
        RxBool loading = false.obs;
        Get.snackbar('Login Sucessfull','Congras');
      } else {
        RxBool loading = false.obs;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      RxBool loading = false.obs;
          Get.snackbar('Exception',e.toString());
    }
  }
}
