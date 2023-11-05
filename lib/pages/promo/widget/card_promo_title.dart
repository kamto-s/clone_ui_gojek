import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class CardPromoTitle extends StatelessWidget {
  const CardPromoTitle({
    super.key,
    required this.jumlah,
    required this.keterangan,
    required this.status,
    required this.color,
  });

  final String jumlah;
  final String keterangan;
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    jumlah,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 20.0,
                  color: black2Color,
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Text(
              keterangan,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: black2Color,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              status,
              style: TextStyle(
                fontSize: 12,
                color: black2Color,
              ),
            ),
            const SizedBox(height: 3.0),
            Container(
              height: 3.0,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
