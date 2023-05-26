import 'package:food_delivery/data/api/api_client.dart';
import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
import '../data/repository/popular_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://127.0.0.1:8000"));
  //for repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
