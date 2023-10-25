import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterController extends GetxController {
  final _sharedPreferences = Get.find<SharedPreferences>();

  RxInt counterValue = 0.obs;

  void increment() {
    counterValue++;
    _saveCounterValue();
  }

  void _saveCounterValue() {
    _sharedPreferences.setInt("counterValue", counterValue.value);
  }

  int getCounterValue() => _sharedPreferences.getInt("counterValue")?.toInt() ?? 0;
}
