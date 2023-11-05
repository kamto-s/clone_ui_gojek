import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.icon, required this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          icon,
          width: 52,
        ),
        const SizedBox(height: 4.0),
        Text(
          title,
          style: TextStyle(
            color: black2Color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
