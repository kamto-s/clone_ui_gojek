import 'package:clone_ui_gojek/pages/pesanan/widget/riwayat_widget.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:clone_ui_gojek/shared/widget/button_outline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),

            ///
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 36,
              child: const Row(
                children: [
                  ButtonOutlineWidget(title: "GoTransit"),
                  SizedBox(width: 8.0),
                  ButtonOutlineWidget(title: "GoRide"),
                  SizedBox(width: 8.0),
                  ButtonOutlineWidget(title: "GoRide"),
                  SizedBox(width: 8.0),
                  ButtonOutlineWidget(title: "Status"),
                ],
              ),
            ),

            ///
            const SizedBox(height: 16.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 0,
                color: black3Color.withOpacity(0.1),
                child: ListTile(
                  leading: SvgPicture.asset(
                    "assets/icons/wallet-icon.svg",
                    width: 20,
                  ),
                  title: Text(
                    "Transaksi GoPay",
                    style: TextStyle(
                      color: black2Color,
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              ),
            ),

            ///
            const SizedBox(height: 16.0),
            SizedBox(
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const RiwayatWidget();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 20,
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
