import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment_example/favorurite_controller.dart';

class HomeScreenFour extends StatefulWidget {
  const HomeScreenFour({super.key});

  @override
  State<HomeScreenFour> createState() => _HomeScreenFourState();
}

class _HomeScreenFourState extends State<HomeScreenFour> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('getx'),
      ),
      body: ListView.builder(
          itemCount: controller.fruitst.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (controller.tempFruitList
                        .contains(controller.fruitst[index].toString())) {
                      controller.removeFromFavourite(
                          controller.fruitst[index].toString());
                    } else {
                      controller
                          .addToFavourite(controller.fruitst[index].toString());
                    }
                  },
                  title: Text(controller.fruitst[index].toString()),
                  trailing: Obx(
                    () => Icon(Icons.favorite,
                        color: controller.tempFruitList
                                .contains(controller.fruitst[index].toString())
                            ? Colors.red
                            : Colors.white),
                  )),
            );
          }),
    );
  }
}
