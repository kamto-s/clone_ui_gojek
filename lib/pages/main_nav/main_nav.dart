import 'package:clone_ui_gojek/pages/beranda/beranda_page.dart';
import 'package:clone_ui_gojek/pages/chat/chat_page.dart';
import 'package:clone_ui_gojek/pages/pesanan/pesanan_page.dart';
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
          children: const [
            BerandaPage(),
            PromoPage(titleAppbar: "Promo"),
            PesananPage(titleApp: "Pesanan"),
            ChatPage(titleApp: 'Chat'),
          ],
        ),

        ///
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: whiteColor,
          currentIndex: selectedIndex,
          selectedItemColor: greenColor,
          selectedIconTheme: IconThemeData(color: greenColor),
          showSelectedLabels: true,
          showUnselectedLabels: true,
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
                    right: -4,
                    top: -12,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: redColor,
                        border: Border.all(width: 0.7, color: whiteColor),
                      ),
                      child: Center(
                        child: Text(
                          "•",
                          style: TextStyle(
                            color: whiteColor,
                          ),
                        ),
                      ),
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
