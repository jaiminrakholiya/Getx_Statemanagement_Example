import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment_example/image_picker_controller.dart';

class HomeScreenFive extends StatefulWidget {
  const HomeScreenFive({super.key});

  @override
  State<HomeScreenFive> createState() => _HomeScreenFiveState();
}

class _HomeScreenFiveState extends State<HomeScreenFive> {

  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body:Obx((){
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: controller.imagePath.isNotEmpty ?
                      FileImage(File(controller.imagePath.toString())):
                      null,
                    ),
                  ),
              TextButton(
                  onPressed: (){
                    controller.getImage();
                  } ,
                  child: Text('image picker'))
            ],
          );
      }),
    );
  }
}
