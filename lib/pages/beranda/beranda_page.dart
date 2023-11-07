import 'package:clone_ui_gojek/shared/widget/card_minimarket.dart';
import 'package:clone_ui_gojek/shared/widget/card_slider_widget.dart';
import 'package:clone_ui_gojek/shared/widget/card_title.dart';
import 'package:clone_ui_gojek/pages/beranda/widget/category_widget.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:clone_ui_gojek/shared/widget/title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        toolbarHeight: 68,
        title: Container(
          height: 44,
          decoration: BoxDecoration(
            color: black3Color.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              hintText: "Cari layanan, makanan, & tujuan",
              hintStyle: TextStyle(fontSize: 14),
              prefixIcon: Icon(Icons.search_outlined),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: black3Color.withOpacity(0.3),
            child: Icon(
              Icons.person_2_rounded,
              color: greenColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 56),
                  decoration: BoxDecoration(
                    color: black3Color.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Makan Siang Nasi\nKebuli Hanya 25ribu*",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            const Row(
                              children: [
                                Text("Lebih hemat pakai disc s.d 35%"),
                                SizedBox(width: 6.0),
                                Icon(
                                  Icons.arrow_circle_right,
                                  size: 16,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: black3Color,
                                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Text(
                                    "Ad",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  "S&K Berlaku",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: black2Color,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2023/07/12/20/40/ai-generated-8123329_1280.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -35,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: blueColor.withOpacity(0.15),
                            child: SvgPicture.asset(
                              "assets/icons/wallet-icon.svg",
                              height: 16,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rp 2.291",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      "0 coins",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: black2Color,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 8.0),
                                Icon(
                                  Icons.add_circle_outline,
                                  color: greenColor,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: blue2Color,
                                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_upward_outlined,
                                    size: 16,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "Bayar",
                                style: TextStyle(
                                  color: black2Color,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 12.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: blue2Color,
                                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.history_outlined,
                                    size: 16,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 2.0),
                              Text(
                                "Riwayat",
                                style: TextStyle(
                                  color: black2Color,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blue2Color,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 16,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "Lainnya",
                                style: TextStyle(
                                  color: black2Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 56.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Builder(builder: (context) {
                List dataCategory = [
                  {"title": "GoRide", "icon": "assets/icons/goride.svg"},
                  {"title": "GoCar", "icon": "assets/icons/gocar.svg"},
                  {"title": "GoFood", "icon": "assets/icons/gofood.svg"},
                  {"title": "GoSend", "icon": "assets/icons/gosend.svg"},
                  {"title": "GoMart", "icon": "assets/icons/gomart.svg"},
                  {"title": "GoPulsa", "icon": "assets/icons/gotagihan.svg"},
                  {"title": "GoClub", "icon": "assets/icons/goclub.svg"},
                  {"title": "More", "icon": "assets/icons/more.svg"},
                ];
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 4,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: dataCategory.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = dataCategory[index];
                    return CategoryWidget(
                      icon: item["icon"],
                      title: item["title"],
                    );
                  },
                );
              }),
            ),
            const SizedBox(height: 16.0),

            ///
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Logo-Tokopedia.png/1200px-Logo-Tokopedia.png",
              title: "Belanja makin hemat",
              subtitle: "Dapetin diskon harga spesialnya di Tokopedia sekarang sebelum kehabisan",
            ),
            const SizedBox(height: 16.0),

            ///
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CardSlider(
                image: "https://lelogama.go-jek.com/cache/94/74/94749552d23542a043d7f224e8efc81d.jpg",
              ),
            ),
            const SizedBox(height: 16.0),

            ///
            Builder(
              builder: (context) {
                List dataCard = [
                  {
                    "image": "https://lelogama.go-jek.com/post_thumbnail/New-KV_Gocar-Comfort_1456x818px_2.jpg",
                    "title": "Layanan baru! GoCar comfort",
                    "subTitle": "Biar kamu selalu nyaman di perjalanan",
                  },
                  {
                    "image": "https://lelogama.go-jek.com/cache/3b/58/3b58cab4c408267e2519ce10db7c9376.jpg",
                    "title": "Butuh belanja apa hari ini?",
                    "subTitle": "Di GoMart, solusi belanja sat set tanpa antri dan keluar rumah, klik!",
                  },
                  {
                    "image": "https://lelogama.go-jek.com/post_featured_image/promo-pengguna-baru-banner-new.jpg",
                    "title": "DISKON GoFood 40% buat kamu!",
                    "subTitle": "Khusus buat kamu, order GoFood sekarang & dapetin DISKON s.d. 40%! Klik!",
                  },
                  {
                    "image": "https://lelogama.go-jek.com/post_thumbnail/GoMart-PastiAda24Jam.jpg",
                    "title": "Butuh belanja apa?",
                    "subTitle": "GoMart siap 24 jam untuk belanjain kebutuhan dadakan kamu. Klik!s",
                  },
                ];
                return Column(
                  children: dataCard.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: CardTitle(
                        image: item["image"],
                        title: item["title"],
                        subTitle: item["subTitle"],
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            ///
            const SizedBox(height: 20.0),
            const TitleSubtitleWidget(
              title: "Kode GOBANDARA diskon s.d 140RB!",
              subtitle: "Pulang pergi bandara jadi hemat banget! Klik",
            ),

            ///
            const SizedBox(height: 16.0),
            SizedBox(
              height: 180,
              child: Builder(builder: (context) {
                List dataGobandara = [
                  {"image": "https://lelogama.go-jek.com/post_thumbnail/KV-Airport-Revisual_Shuffle-Cards-GoCar_1200x600.jpg"},
                  {"image": "https://lelogama.go-jek.com/post_thumbnail/KV-Airport-Revisual_Shuffle-Cards-GoCar_1456-x-818_1.jpg"},
                ];
                return ListView(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  children: dataGobandara.map((item) {
                    return Container(
                      padding: const EdgeInsets.only(right: 12),
                      child: CardSlider(
                        image: item["image"],
                      ),
                    );
                  }).toList(),
                );
              }),
            ),

            ///
            const SizedBox(height: 28.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Hemat belanja ini itu~",
              subtitle: "Banyak cashback buat kamu belanja di Alfamart sampai Indomart. Cek di sini!",
            ),

            ///
            const SizedBox(height: 16.0),
            Builder(
              builder: (context) {
                List dataMinimarket = [
                  {
                    "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ALFAMART_LOGO_BARU.png/1200px-ALFAMART_LOGO_BARU.png",
                    "title": "Alfamart",
                  },
                  {
                    "logo": "https://static.wikia.nocookie.net/logopedia/images/0/03/Alfagift_logo_new.png/revision/latest?cb=20220326125336",
                    "title": "Alfagift",
                  },
                  {
                    "logo": "https://alfamidiku.com/assets/images/logo.png",
                    "title": "Alfamidi",
                  },
                  {
                    "logo": "https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png",
                    "title": "Indomart",
                  },
                  {
                    "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Tokopedia.svg/2560px-Tokopedia.svg.png",
                    "title": "Tokopedia",
                  },
                  {
                    "logo": "https://www.awanapps.com/wp-content/uploads/2022/10/MyTelkomsel.png",
                    "title": "My Telkomsel",
                  },
                ];
                return SizedBox(
                  height: 180,
                  child: ListView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: dataMinimarket
                        .map(
                          (item) => Container(
                            margin: const EdgeInsets.only(right: 20.0),
                            child: CardMiniMarket(
                              logo: item["logo"],
                              title: item["title"],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            ),

            ///
            const SizedBox(height: 28.0),
            const CardTitle(
              image: "https://d2v6npc8wmnkqk.cloudfront.net/storage/tinymce/bnLN21HlH8hDxksAn57VuKKeNEdwX33jXpW4fp7m.jpg",
              title: "Burger King HEMAT 50%",
              subTitle: "Sikat promo gajiannya & nikmati CASHBACK 50% buat makan burger favoritmu!",
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
