import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class CardProductHorizontal extends StatelessWidget {
  final String imgUrl;
  final String jarak;
  final String title;
  final String subTitle;
  final String harga;
  final String hargaCoret;

  const CardProductHorizontal({
    super.key,
    required this.imgUrl,
    required this.jarak,
    required this.title,
    required this.subTitle,
    required this.harga,
    required this.hargaCoret,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 270,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.network(
                  imgUrl,
                  width: 120.0,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 150,
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jarak,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: black2Color,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: black2Color,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          harga,
                          style: TextStyle(
                            color: black2Color,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          hargaCoret,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: black2Color,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Text(
                "Promo",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
