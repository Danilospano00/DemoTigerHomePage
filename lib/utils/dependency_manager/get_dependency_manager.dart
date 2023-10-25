import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetDependencyManager {
  static Future<void> initializeDependencies() async {
    /// Save SharedPreferences instance in GetX dependency injection
    /// io order to make it accessible synchronously
    await Get.putAsync(() {
      return SharedPreferences.getInstance();
    });
  }
}
