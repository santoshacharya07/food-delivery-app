import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("loading state " + Get.find<AuthController>().isLoading.toString());
    return Center(
      child: Container(
        height: Dimensions.font20 * 5,
        width: Dimensions.font20 * 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20 * 5 / 2),
          color: AppColors.mainColor,
        ),
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
