import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class TitleSubtitleWidget extends StatelessWidget {
  final String? logoUrl;
  final String title;
  final String? subtitle;

  const TitleSubtitleWidget({
    super.key,
    this.logoUrl,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (logoUrl != null) ...[
            Image.network(
              logoUrl.toString(),
              height: 14,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8.0),
          ],
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: blackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (subtitle != null) ...[
            Text(
              "$subtitle",
              style: TextStyle(
                color: black2Color,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
