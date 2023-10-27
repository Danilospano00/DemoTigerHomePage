import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tandu_demo_project/view/widgets/counter_button.dart';

/// Controller used to increment the [CounterButton] value and save it in SharedPreferences
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
