import 'package:flutter/material.dart';

import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Momo",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    child: const ExpandableTextWidget(
                        text:
                            "We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves.We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves.We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselvesthings, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves. We crave for new sensations but soon become indifferent to them. The wonders of yesterday are today common occurrences.Of all things, I liked books best.Most persons are so absorbed in the contemplation of the outside world that they are wholly oblivious to what is passing on within themselves"),
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height20,
              bottom: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove),
              BigText(
                text: "\$12.88m " " X " " 0 ",
                color: AppColors.mainBlackColor,
                size: Dimensions.font26,
              ),
              AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add),
            ],
          ),
        ),
        Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  Dimensions.radius20 * 2,
                ),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
              color: AppColors.buttonBackgroundColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: const Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
                child: BigText(
                  text: "\$10 | Add to cart",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
