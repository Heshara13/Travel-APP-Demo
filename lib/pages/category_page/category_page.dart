import 'package:flutter/material.dart';
import 'package:third_app/pages/category_page/widgets/selected_item.dart';
import 'package:third_app/widgets/reusable/category%20page/category_card.dart';
import 'package:third_app/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: const Icon(Icons.arrow_back),
          centerTitle: true, // title property
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NotificationCard(),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "All Categories",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CategoryCard(
                          title: "Vegetable & \nFruits",
                          description: "20+ more",
                          circleColor: const Color(0xff0E00AC),
                          mainCategorycolor:
                              const Color(0xff0057FF).withOpacity(0.29),
                          categoryBordercolor: const Color(0xff0094FF),
                        ),
                        CategoryCard(
                          title: "Cooking &\nElements",
                          description: "10+ more",
                          circleColor: const Color(0xff10C0F8),
                          mainCategorycolor:
                              const Color(0xff00E0FF).withOpacity(0.29),
                          categoryBordercolor: const Color(0xff00F0FF),
                        ),
                        CategoryCard(
                          title: "Vegetable & \nFruits",
                          description: "20+ more",
                          circleColor: const Color(0xffE56C6C),
                          mainCategorycolor:
                              const Color(0xffFF3D00).withOpacity(0.29),
                          categoryBordercolor: const Color(0xffFFA800),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CategoryCard(
                          title: "Bites &\nDrinks",
                          description: "53+ more",
                          circleColor: const Color(0xff06FFA5),
                          mainCategorycolor:
                              const Color(0xff70FF00).withOpacity(0.29),
                          categoryBordercolor: const Color(0xff00FF29),
                        ),
                        CategoryCard(
                          title: "Chicken &\nBeef",
                          description: "10+ more",
                          circleColor: const Color(0xffFF9900),
                          mainCategorycolor:
                              const Color(0xffFFF500).withOpacity(0.29),
                          categoryBordercolor: const Color(0xffFFB800),
                        ),
                        CategoryCard(
                          title: "Transport & \nVehicles",
                          description: "20+ more",
                          circleColor: const Color(0xffDB00FF),
                          mainCategorycolor:
                              const Color(0xffCC00FF).withOpacity(0.29),
                          categoryBordercolor: const Color(0xffCC00FF),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Selected Items",
                  style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SelectedItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
