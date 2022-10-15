import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BookController extends GetxController {

  var selectedValue="".obs;
  var language = <String>['English', 'Hindi','Espanol'].obs;
  void onSelected(String value) {
    selectedValue.value = value;
    update();
  }
}