import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment_example/login_controller.dart';

class HomeScreenSix extends StatefulWidget {
  const HomeScreenSix({super.key});

  @override
  State<HomeScreenSix> createState() => _HomeScreenSixState();
}

class _HomeScreenSixState extends State<HomeScreenSix> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 50,),
            Obx(() => InkWell(
              onTap: (){
                controller.loginApi();
              },
              child: controller.loading.value ? CircularProgressIndicator(): Container(
                height: 45,
                color: Colors.grey,
                child: Center(
                  child: Text('LOGIN'),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
