import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_statemanagment_example/example_two.dart';

class HomeSecond extends StatefulWidget {
  const HomeSecond({super.key});

  @override
  State<HomeSecond> createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(exampleTwoController.opacity.value),
              )),
          Obx(() =>
              Slider(value: exampleTwoController.opacity.value, onChanged:(value){
                  exampleTwoController.setOpacity(value);
              })),
        ],
      ),
    );
  }
}
