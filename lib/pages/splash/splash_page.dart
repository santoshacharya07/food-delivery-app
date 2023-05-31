import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../controllers/popular_product_controller.dart';
import '../../controllers/recomended_product_controller.dart';

class SplashScrenn extends StatefulWidget {
  const SplashScrenn({Key? key}) : super(key: key);

  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  
  Future<void> _loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }

  @override
  void initState() {
    super.initState();
    _loadResource();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
    // controller = controller.forward();
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    );
    Timer(Duration(seconds: 3), () => Get.offNamed(RouteHelper.getInitial()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Image.asset(
                "assets/image/logo part 1.png",
                width: Dimensions.splashImg,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/image/logo part 2.png",
              width: Dimensions.splashImg,
            ),
          ),
        ],
      ),
    );
  }
}
