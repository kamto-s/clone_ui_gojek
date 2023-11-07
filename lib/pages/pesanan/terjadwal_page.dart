import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class TerjadwalPage extends StatelessWidget {
  const TerjadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(
                  "https://digitalbisa.id/uploads/articles/gojek-sebuah-inovasi-digital-bidang-transportasi-bjqxlvgspF.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Jadwalin pesananmu, Yuk!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            "Biar nanti nggak repot, jadwalin aja.",
            style: TextStyle(
              fontSize: 16,
              color: black2Color,
            ),
          ),
        ],
      ),
    );
  }
}
