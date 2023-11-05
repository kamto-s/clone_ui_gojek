import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: black3Color,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
