import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final Color? iconBgColor;
  final String categoryName;

  const CategoryBox({
    super.key,
    required this.iconBgColor,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 84,
      decoration: BoxDecoration(
        color: iconBgColor,
        borderRadius: BorderRadius.circular(18),
      ),
      alignment: Alignment.center,
      child: Text(
        categoryName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
