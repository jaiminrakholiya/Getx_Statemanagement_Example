import 'package:get/get.dart';

class ExampleController extends GetxController{

  RxBool notifications = false.obs;

  setNotification(bool value){

    notifications.value = value;
  }


}