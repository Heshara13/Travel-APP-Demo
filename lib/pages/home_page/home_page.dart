import 'package:flutter/material.dart';
import 'package:third_app/pages/home_page/widgets/search_bar.dart';
import 'package:third_app/widgets/app_bar/app_bar.dart';
import 'package:third_app/widgets/reusable/home%20page/product_card.dart';
import 'package:third_app/widgets/reusable/home%20page/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: [appBarActions],
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              Text(
                "Explore Categories",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxcolor: Color(0xff9E00FF),
                    smallBoxcolor: Color(0xff06FFA5),
                    titleColor: Color(0xffffffff),
                    descripcolor: Color(0xffC3C3C3),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxcolor: Color(0xff9E00FF),
                    smallBoxcolor: Color(0xff06FFA5),
                    titleColor: Color(0xffffffff),
                    descripcolor: Color(0xffC3C3C3),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    mainBoxcolor: Color(0xffFFE500),
                    smallBoxcolor: Color(0xffFF9900),
                    titleColor: Color(0xff3B3636),
                    descripcolor: Color(0xff686060),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    mainBoxcolor: Color(0xffFFE500),
                    smallBoxcolor: Color(0xffFF9900),
                    titleColor: Color(0xff3B3636),
                    descripcolor: Color(0xff686060),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "For sale and Low cost",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceCard(
                      title: "Washing Liquid",
                      amount: 220,
                      price: 230,
                      unit: "ml"),
                  ProductPriceCard(
                      title: "Coffee and Tea",
                      amount: 100,
                      price: 30,
                      unit: "g")
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
