import 'package:get/get.dart';

class ListController extends GetxController{
  RxList _rxList=[].obs;
  RxList get rxList=>_rxList;
  RxString _strData="".obs;
  RxString get strData=>_strData;
  void setValue(int a)
  {
    _rxList.add(a);
    print(_rxList);
  }
  void updateValue(String data)
  {
    _strData=data as RxString;
  }
}