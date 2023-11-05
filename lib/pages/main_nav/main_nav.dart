import 'package:clone_ui_gojek/pages/beranda/beranda_page.dart';
import 'package:clone_ui_gojek/pages/promo/promo_page.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const BerandaPage(),
            const PromoPage(
              titleAppbar: 'Promo',
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteColor,
          currentIndex: selectedIndex,
          selectedItemColor: greenColor,
          selectedIconTheme: IconThemeData(color: greenColor),
          onTap: (newIndex) => updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home-icon.svg",
                width: 22,
                colorFilter: ColorFilter.mode(selectedIndex == 0 ? greenColor : black3Color, BlendMode.srcIn),
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/promos-icon2.svg",
                width: 22,
                colorFilter: ColorFilter.mode(selectedIndex == 1 ? greenColor : black3Color, BlendMode.srcIn),
              ),
              label: "Promo",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/orders-icon.svg",
                width: 22,
                colorFilter: ColorFilter.mode(selectedIndex == 2 ? greenColor : black3Color, BlendMode.srcIn),
              ),
              label: "Pesanan",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    "assets/icons/chat-icon2.svg",
                    width: 22,
                    colorFilter: ColorFilter.mode(selectedIndex == 3 ? greenColor : black3Color, BlendMode.srcIn),
                  ),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: CircleAvatar(
                      radius: 5.0,
                      backgroundColor: redColor,
                    ),
                  ),
                ],
              ),
              label: "Chat",
            ),
          ],
        ),
      ),
    );
  }
}
