import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/cart_repo.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
import '../controllers/recomended_product_controller.dart';
import '../data/repository/popular_product_repo.dart';
import '../data/repository/recommended_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //for repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  //cart controller repo
  Get.lazyPut(() => CartRepo());
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}

//As an alternative to all those dimensions defined in dimensions.dart, I created this function: scaledHeight(double height) => screenHeight / originalScreenHeight / height, where screenHeight comes from the GetX context, originalScreenHeight is the height of the screen you are designing on (in this case, 844 for the iPhone 12 Pro), and height is the height passed in. So anywhere you need to scale your heigh, just use scaledHeight([height-value])//