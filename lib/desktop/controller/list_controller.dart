import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/list_model.dart';

class ListModelController extends GetxController {
  var  _isSelected=false;
  var _mainSelectedIndex=0;
  int get mainSelectedIndex=>_mainSelectedIndex;

  bool get isSelected =>_isSelected;
  void selectedColor(bool check)
  {
    update();
    _isSelected=check;
  }
  void mainSelectedColor(int check)
  {
    update();
    _mainSelectedIndex=check;
  }


  RxList listModel = <ListModel>[].obs;
  final _hashMap = RxMap();
  RxList get listModel1 => listModel;
  var _dropdownValue = "".obs;
  RxString _date="".obs;
  RxString get date=>_date;
  RxString get dropdownValue=>_dropdownValue;
  RxMap<dynamic,dynamic> get hashMap => _hashMap;
  void setDate(String data)
  {
    print(data);
    _date=data as RxString;
  }
  @override
  void onInit() {
    super.onInit();
    addData();
  }
  void addData() {
    Map<dynamic,dynamic> hash={0:false,1:false,2:false,3:false} as Map<dynamic, dynamic>;
    hashMap.addAll(hash);
    var listModel1 = new ListModel(false, "Home");
    var listModel2 = new ListModel(false, "C Management");
    var listModel3 = new ListModel(true, "Master Data");
    var listModel4 = new ListModel(false, "User Management");
    listModel.add(listModel1);
    listModel.add(listModel2);
    listModel.add(listModel3);
    listModel.add(listModel4);
  }
  void updateData(var check,var data,var pos)
  {
    var listModel4 = new ListModel(check, data);
    listModel.add(listModel4);
  }
}
