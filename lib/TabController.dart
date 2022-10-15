import 'package:get/get.dart';

class TabControllerApp extends GetxController
{
  var _x=0;
  int get x=>_x;

  RxInt _y=0.obs;
  RxInt _z=0.obs;
  RxInt get z=>_z;
  RxInt get y=>_y;
  void add()
  {
    _z.value=x+_y.value;
    update();
  }
  void increase()
  {
    _x++;
    update();

  }
  void decrease()
  {
    _x--;
    update();

  }

  void increaseY()
  {
    _y.value++;
  }
  void decreaseY()
  {
    _y.value--;
  }
}