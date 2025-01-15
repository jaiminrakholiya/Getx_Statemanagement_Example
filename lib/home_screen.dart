import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment_example/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CounterController controller = Get.put(CounterController());



  // int x = 0;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Timer.periodic(Duration(seconds: 1), (timer){
  //     x++;
  //     setState(() {
  //
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Center(
        child: Obx((){
              return  Text(controller.counter.toString(),style: TextStyle(fontSize: 40),);
            })
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
            controller.incrementCounter();
      }),
    );
  }
}
