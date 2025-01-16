import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment_example/example_controller.dart';

class HomeThree extends StatefulWidget {
  const HomeThree({super.key});

  @override
  State<HomeThree> createState() => _HomeThreeState();
}

class _HomeThreeState extends State<HomeThree> {
  ExampleController exampleController = Get.put(ExampleController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Notifications'),
            Obx(() => Switch(
                value: exampleController.notifications.value,
                onChanged: (value) {
                  exampleController.setNotification(value);
                }))
          ])
        ],
      ),
    );
  }
}
