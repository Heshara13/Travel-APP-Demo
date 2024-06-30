import 'package:flutter/material.dart';
import 'package:third_app/pages/category_page/widgets/item_desc_card.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffE0DCD6).withOpacity(0.29),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffE0DCD6).withOpacity(0.5),
          )),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3B3636)),
            ),
            SizedBox(
              height: 20,
            ),
            ItemDescCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 1,
            ),
            ItemDescCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 2,
            ),
            ItemDescCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 3,
            ),
            ItemDescCard(
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
              number: 4,
            ),
          ],
        ),
      ),
    );
  }
}
