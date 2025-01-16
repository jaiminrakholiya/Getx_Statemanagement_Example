import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitst = ['Orange', 'Apple', 'Mangoes', 'Bannana'].obs;
  RxList tempFruitList = [].obs;

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitList.remove(value);
  }
}
