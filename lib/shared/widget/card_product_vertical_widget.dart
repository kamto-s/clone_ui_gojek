import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class CardProductVertical extends StatelessWidget {
  final String imgUrl;
  final String jarak;
  final String title;
  final String rating;
  final String? disc;
  const CardProductVertical({
    super.key,
    required this.imgUrl,
    required this.jarak,
    required this.title,
    required this.rating,
    this.disc,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.network(
                  imgUrl,
                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$jarak km",
                      style: TextStyle(
                        color: black3Color,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.orange[400],
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          rating,
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (disc != null) ...[
          Positioned(
            top: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Text(
                "$disc% off",
                style: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ]
      ],
    );
  }
}
