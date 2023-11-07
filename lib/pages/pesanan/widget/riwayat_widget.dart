import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class RiwayatWidget extends StatelessWidget {
  const RiwayatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "19 Oct, 17:58",
                style: TextStyle(
                  color: black2Color,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/GO_bus_symbol.svg/1024px-GO_bus_symbol.svg.png",
                width: 46.0,
                height: 46.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stasiun Cilebut",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 18.0,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      "Perjalanan selesai",
                      style: TextStyle(
                        fontSize: 12,
                        color: black2Color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "Rp3.000",
            style: TextStyle(
              color: black2Color,
            ),
          ),
        ],
      ),
    );
  }
}
