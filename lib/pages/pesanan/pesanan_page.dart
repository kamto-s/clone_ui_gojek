import 'package:clone_ui_gojek/pages/pesanan/dalam_proses_page.dart';
import 'package:clone_ui_gojek/pages/pesanan/riwayat_page.dart';
import 'package:clone_ui_gojek/pages/pesanan/terjadwal_page.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PesananPage extends StatefulWidget {
  final String titleApp;
  const PesananPage({super.key, required this.titleApp});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      color: whiteColor,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteColor,
            title: Text(
              widget.titleApp,
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  isScrollable: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  labelColor: blackColor,
                  unselectedLabelColor: black2Color,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
                  indicatorWeight: 0,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.5, color: greenColor),
                  ),
                  tabs: const [
                    Tab(text: ("Riwayat")),
                    Tab(text: ("Dalam Proses")),
                    Tab(text: ("Terjadwal")),
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              RiwayatPage(),
              DalamProsesPage(),
              TerjadwalPage(),
            ],
          ),
        ),
      ),
    );
  }
}
