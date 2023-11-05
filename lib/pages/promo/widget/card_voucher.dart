import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardVoucher extends StatelessWidget {
  final String title;
  final String list1;
  final String list2;
  final String harga;
  final String hargaCoret;

  const CardVoucher({
    super.key,
    required this.title,
    required this.list1,
    required this.list2,
    required this.harga,
    required this.hargaCoret,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
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
      child: Stack(
        children: [
          Positioned(
            top: -10,
            right: -5,
            child: Image.asset(
              "assets/images/pattern.png",
              fit: BoxFit.contain,
              color: redColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    SvgPicture.asset("assets/icons/GoFood-icon.svg", width: 24),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 8.0, color: blackColor),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            list1,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 8.0, color: blackColor),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            list2,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 1, color: black3Color),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          harga,
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          hargaCoret,
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        foregroundColor: greenColor,
                        side: BorderSide(color: greenColor, width: 1),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Lebih lanjut",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
