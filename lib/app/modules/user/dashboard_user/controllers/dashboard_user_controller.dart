import 'package:get/get.dart';
import 'package:smart_manager/app/controllers/auth_controller.dart';
import 'package:smart_manager/app/controllers/data_controller.dart';

class DashboardUserController extends GetxController {
  final authC = Get.find<AuthController>();
  final dataC = Get.find<DataController>();

  String text = 'Dashboard Will Be Here';
}
