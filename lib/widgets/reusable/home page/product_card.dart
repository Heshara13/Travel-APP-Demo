import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final Color titleColor;
  final Color descripcolor;
  final Color mainBoxcolor;
  final Color smallBoxcolor;

  const ProductCard(
      {super.key,
      required this.title,
      required this.description,
      required this.titleColor,
      required this.descripcolor,
      required this.mainBoxcolor,
      required this.smallBoxcolor});

  final double cardWidth = 190;
  final double cardHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainBoxcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: titleColor),
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: descripcolor),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 180,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: smallBoxcolor),
            )
          ],
        ),
      ),
    );
  }
}
