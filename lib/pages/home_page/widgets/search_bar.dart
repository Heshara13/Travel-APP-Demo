import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff000000).withOpacity(0.2),
              width: 2,
            ),
            color: const Color(0xffD9D9D9).withOpacity(0.5),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.search,
                color: const Color(0xff000000).withOpacity(0.5),
              ),
            ),
            const Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 9),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
