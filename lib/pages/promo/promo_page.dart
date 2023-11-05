import 'package:clone_ui_gojek/pages/promo/widget/card_promo_title.dart';
import 'package:clone_ui_gojek/pages/promo/widget/card_voucher.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:clone_ui_gojek/shared/widget/button_outline.dart';
import 'package:clone_ui_gojek/shared/widget/card_minimarket.dart';
import 'package:clone_ui_gojek/shared/widget/card_product_horizontal_widget.dart';
import 'package:clone_ui_gojek/shared/widget/card_product_vertical_widget.dart';
import 'package:clone_ui_gojek/shared/widget/card_slider_widget.dart';
import 'package:clone_ui_gojek/shared/widget/card_title.dart';
import 'package:clone_ui_gojek/shared/widget/title_subtitle_widget.dart';
import 'package:clone_ui_gojek/shared/widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoPage extends StatefulWidget {
  final String titleAppbar;
  const PromoPage({super.key, required this.titleAppbar});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          widget.titleAppbar,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: black3Color,
            height: 0.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),

            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Builder(builder: (context) {
                List dataPromoTitle = [
                  {
                    "jumlah": "30",
                    "keterangan": "Vouchers",
                    "status": "30 Akan hangus",
                    "color": Colors.orange,
                  },
                  {
                    "jumlah": "0",
                    "keterangan": "Langganan",
                    "status": "Lagi aktif",
                    "color": Colors.pink,
                  },
                  {
                    "jumlah": "0",
                    "keterangan": "Missions",
                    "status": "Lagi berjalan",
                    "color": Colors.blue,
                  },
                ];
                return Row(
                  children: dataPromoTitle.map((item) {
                    return CardPromoTitle(
                      jumlah: item["jumlah"],
                      keterangan: item["keterangan"],
                      status: item["status"],
                      color: item["color"],
                    );
                  }).toList(),
                );
              }),
            ),

            ///
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    color: black3Color.withOpacity(0.4),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/promos-icon2.svg",
                      width: 20,
                      colorFilter: ColorFilter.mode(Colors.orange[800]!, BlendMode.srcIn),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Text(
                      "Masukkan kode promo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: black2Color,
                    ),
                  ],
                ),
              ),
            ),

            ///
            const SizedBox(height: 16.0),
            const TitleWidget(title: 'Promo menarik buat kamu'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 32,
              child: Builder(builder: (context) {
                List dataCategory = [
                  {"title": "Apa aja"},
                  {"title": "Gocar"},
                  {"title": "GoFood"},
                  {"title": "GoPay"},
                  {"title": "Promo"},
                ];
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  children: dataCategory.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(right: 6),
                      child: ButtonOutlineWidget(
                        title: item["title"],
                      ),
                    );
                  }).toList(),
                );
              }),
            ),

            ///
            const SizedBox(height: 16.0),
            const TitleWidget(title: "Biar makin hemat"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 180,
              child: Builder(
                builder: (context) {
                  List dataSlider = [
                    {"image": "https://lelogama.go-jek.com/post_thumbnail/In-Apps---Blog-Banner---MFP---1456x818.jpg"},
                    {"image": "https://lelogama.go-jek.com/cache/62/33/62330ecc5bb70f7d811ab6695c4c6bbb.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/76/94/7694b8a4c4dc372ee0323e0145e525e0.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/91/c1/91c18ac02bcd26fcf71eef655b6ba38c.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/d2/e6/d2e612aa684ee3697d99613a473f2a8d.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/ec/46/ec46f6ec002a92783efa563d57f739a5.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/4a/2f/4a2f9471e2bf24862e13ff655f83c218.webp"},
                    {"image": "https://lelogama.go-jek.com/cache/d6/17/d6179091908aa6f0c4cd8555c7dbb642.webp"},
                  ];
                  return ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    children: dataSlider.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CardSlider(image: item["image"]),
                      );
                    }).toList(),
                  );
                },
              ),
            ),

            ///
            const SizedBox(height: 16.0),
            const TitleSubtitleWidget(
              title: "Resto dengan rating jempolan",
              subtitle: "Disponsori",
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 270,
              child: Builder(builder: (context) {
                List dataProduct = [
                  {
                    "jarak": "0.2",
                    "imgUrl": "https://images.tokopedia.net/img/yVUmjg/2022/9/8/184ee608-f586-436d-899a-65c235ca1b38.jpg",
                    "title": "Frozen Food N Snack Naza",
                    "rating": "4.8",
                    "disc": "40",
                  },
                  {
                    "jarak": "0.7",
                    "imgUrl":
                        "https://asset.kompas.com/crops/Jas8ijelhlTuBD-pSQ2T3B-EiMo=/0x0:698x465/1200x800/data/photo/2021/04/22/60813ec0aa4a3.jpg",
                    "title": "Es Teler 77, Transmart Yasmin Bogor",
                    "rating": "4.7",
                    "disc": "27",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/09/25/1135829852.jpg",
                    "title": "Es Teh Indonesia, Jalan Baru",
                    "rating": "4.8",
                    "disc": "60",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/06/30/3631330245.png",
                    "title": "Kedai Sate, Soto, dan Sop Bang Dewa, Bogor",
                    "rating": "4.8",
                    "disc": "43",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://megumi-resto.com/images/WATERMARK/202004/70/tori-jaga-bento-20103117053.png",
                    "title": "Tori Bento Soleh Iskandar",
                    "rating": "4.8",
                    "disc": "32",
                  },
                ];
                return ListView.builder(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: dataProduct.length,
                  itemBuilder: (context, index) {
                    var item = dataProduct[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      child: CardProductVertical(
                        jarak: item["jarak"],
                        imgUrl: item["imgUrl"],
                        title: item["title"],
                        rating: item["rating"],
                        disc: item["disc"],
                      ),
                    );
                  },
                );
              }),
            ),

            ///
            const SizedBox(height: 16.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Promo menarik dari brand populer",
              subtitle: "Buat rileks atau produktif, kamu yang tentuin!",
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 180,
                clipBehavior: Clip.none,
                child: Builder(builder: (context) {
                  List dataMinimarket = [
                    {
                      "logo":
                          "https://tdwcontent.telkomsel.com//sites/default/files/images/pages/assets/Telkomsel_Products%2BServices_MyTelkomsel_Red_RGB%20%281%29.png",
                      "title": "MyTelkomsel",
                      "cashback": "Cashback 30%",
                    },
                    {
                      "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Logo-Tokopedia.png/1200px-Logo-Tokopedia.png",
                      "title": "Tokopedia",
                      "cashback": "Cashback s.d. 300rb",
                    },
                    {
                      "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ALFAMART_LOGO_BARU.png/1200px-ALFAMART_LOGO_BARU.png",
                      "title": "Alfamart",
                      "cashback": "Diskon s.d. 38%",
                    },
                    {
                      "logo": "https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png",
                      "title": "Indomart",
                      "cashback": "Diskon s.d. 38%",
                    },
                  ];
                  return ListView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    children: dataMinimarket.map((item) {
                      return Container(
                        margin: const EdgeInsets.only(right: 12),
                        child: CardMiniMarket(
                          logo: item["logo"],
                          title: item["title"],
                          cashback: item["cashback"],
                        ),
                      );
                    }).toList(),
                  );
                }),
              ),
            ),

            ///
            const SizedBox(height: 24.0),
            const TitleWidget(
              title: "Kiri kanan, kulihat diskon~",
              lihatSemua: "Lihat semua",
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 270,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Builder(builder: (context) {
                List dataProduct = [
                  {
                    "jarak": "0.2",
                    "imgUrl": "https://images.tokopedia.net/img/yVUmjg/2022/9/8/184ee608-f586-436d-899a-65c235ca1b38.jpg",
                    "title": "Frozen Food N Snack Naza",
                    "rating": "4.8",
                    "disc": "40",
                  },
                  {
                    "jarak": "0.7",
                    "imgUrl":
                        "https://asset.kompas.com/crops/Jas8ijelhlTuBD-pSQ2T3B-EiMo=/0x0:698x465/1200x800/data/photo/2021/04/22/60813ec0aa4a3.jpg",
                    "title": "Es Teler 77, Transmart Yasmin Bogor",
                    "rating": "4.7",
                    "disc": "27",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/09/25/1135829852.jpg",
                    "title": "Es Teh Indonesia, Jalan Baru",
                    "rating": "4.8",
                    "disc": "60",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2023/06/30/3631330245.png",
                    "title": "Kedai Sate, Soto, dan Sop Bang Dewa, Bogor",
                    "rating": "4.8",
                    "disc": "43",
                  },
                  {
                    "jarak": "2.3",
                    "imgUrl": "https://megumi-resto.com/images/WATERMARK/202004/70/tori-jaga-bento-20103117053.png",
                    "title": "Tori Bento Soleh Iskandar",
                    "rating": "4.8",
                    "disc": "32",
                  },
                ];
                return ListView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: dataProduct.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: CardProductVertical(
                        imgUrl: item["imgUrl"],
                        jarak: item["jarak"],
                        title: item["title"],
                        rating: item["rating"],
                      ),
                    );
                  }).toList(),
                );
              }),
            ),

            ///
            const SizedBox(height: 24.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Gofood_logo.svg/1280px-Gofood_logo.svg.png",
              title: "Lebih hemat dengan Gofood Plus",
            ),
            const SizedBox(height: 12.0),
            Container(
              height: 235,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardVoucher(
                    title: '90 hari gratis ongkir di resto favorit di kotamu',
                    list1: 'Gratis ongkir dari resto paling top dengan badge GoFood PLUS',
                    list2: 'Bebas tarif free',
                    harga: 'Rp18.900 per 90 hari',
                    hargaCoret: 'Rp150.000',
                  ),
                  SizedBox(width: 16.0),
                  CardVoucher(
                    title: '30 hari gratis ongkir di resto favorit di kotamu',
                    list1: 'Gratis ongkir dari resto paling top dengan badge GoFood PLUS',
                    list2: 'Bebas tarif free',
                    harga: 'Rp18.900 per 90 hari',
                    hargaCoret: 'Rp150.000',
                  ),
                  SizedBox(width: 16.0),
                  CardVoucher(
                    title: '14 hari gratis ongkir di resto favorit di kotamu',
                    list1: 'Gratis ongkir dari resto paling top dengan badge GoFood PLUS',
                    list2: 'Bebas tarif free',
                    harga: 'Rp18.900 per 90 hari',
                    hargaCoret: 'Rp150.000',
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 20.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Cashback nggak habis-habis",
              subtitle: "Cashback nggak habis-habis dan dimana-mana dengan pembayaran dengan GoPay, Cek sekarang!",
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 180,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                children: const [
                  CardSlider(
                    image: "https://lelogama.go-jek.com/post_featured_image/Blog-Recreational.png",
                  ),
                  SizedBox(width: 12.0),
                  CardSlider(
                    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjF9XOvxCJnnLD_nDw9GqL8zecQsLEtqiTAQ&usqp=CAU",
                  ),
                  SizedBox(width: 12.0),
                  CardSlider(
                    image: "https://d2v6npc8wmnkqk.cloudfront.net/storage/2070/conversions/header-blog-promo-new-gopay-website-medium.jpg",
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 20.0),
            const TitleWidget(
              title: "Takasimuraaa!",
              lihatSemua: "Lihat semua",
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 120,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children: const [
                  CardProductHorizontal(
                    imgUrl:
                        'https://asset.kompas.com/crops/7IdRwZpcpYsImnHe2nB5pZrPTgM=/0x0:1000x667/750x500/data/photo/2020/08/05/5f2a43ad5bd07.jpg',
                    jarak: '0.15 km • 24 min',
                    title: '3 Pcs Tahu Bakso',
                    subTitle: 'Bakso Malang Cak Yuy, Pesona Cilebut',
                    harga: '6.800',
                    hargaCoret: '7.500',
                  ),
                  SizedBox(width: 12.0),
                  CardProductHorizontal(
                    imgUrl: 'https://www.dapurkobe.co.id/wp-content/uploads/lele-goreng-kremes.jpg',
                    jarak: '0.21 km • 25 min',
                    title: 'Lele Goreng Kremes + Nasi + Es Teh Manis',
                    subTitle: 'Frozen Food N Snack naza',
                    harga: '28.000',
                    hargaCoret: '35.000',
                  ),
                  SizedBox(width: 12.0),
                  CardProductHorizontal(
                    imgUrl: 'https://cdn.idntimes.com/content-images/post/20180909/ce82604102e49675f84fbb3f347c564c.jpg',
                    jarak: '0.22 km • 32 min',
                    title: 'Kupat Tahu + Telur Dadar',
                    subTitle: 'Sate Barokah Family, Cilebut',
                    harga: '18.000',
                    hargaCoret: '22.000',
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 20.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Borong kebutuhan harian",
              subtitle: "Gak usah takut kantong bolong gak karuan",
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 180,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ALFAMART_LOGO_BARU.png/1200px-ALFAMART_LOGO_BARU.png",
                    title: "Alfamart JSM - Cashback 2rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png",
                    title: "Indomart Product of The Week - Cashback 2rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ALFAMART_LOGO_BARU.png/1200px-ALFAMART_LOGO_BARU.png",
                    title: "Alfamart PSM - Cashback 2rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png",
                    title: "Indomart Promosi Bulan ini - Cashback 2rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/ALFAMART_LOGO_BARU.png/1200px-ALFAMART_LOGO_BARU.png",
                    title: "Alfamart Serba Gratis - Cashback 2rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Indomaret.png",
                    title: "Indomart Semarak Minyak - Cashback 3rb",
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 20.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Tetap terhubung sama orang terdekat",
              subtitle: "Top up dulu biar bisa saling kabar-kabaran.",
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 180,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Telkomsel_2021_icon.svg/1200px-Telkomsel_2021_icon.svg.png",
                    title: "Mytelkomsel - Cashback maks. 5rb",
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Telkomsel_2021_icon.svg/1200px-Telkomsel_2021_icon.svg.png",
                    title: "Mytelkomsel - Cashback maks. 5rb",
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CardMiniMarket(
                    logo: "https://static.wikia.nocookie.net/logopedia/images/6/67/LOGO-XL-PRIO.png/revision/latest?cb=20180228051634",
                    title: "XL Prio - Cashback maks. 25rb",
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 28.0),
            const TitleSubtitleWidget(
              logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Gopay_logo.svg/1280px-Gopay_logo.svg.png",
              title: "Mau bepergian hari ini?",
              subtitle: "Pakai GoPay jalan-jalan jadi lebih irit",
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 180,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  CardMiniMarket(
                    logo: "https://seeklogo.com/images/S/shell-logo-3138057E7A-seeklogo.com.png",
                    title: "Shell - Cashback 5rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://parkee.app/static/Logo_PARKEE_Red-5cb53d34b151d2f4ae6d2e76518fde28.png",
                    title: "Parkee - Cashback 5rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://play-lh.googleusercontent.com/uwVzjYWLzGt0a3IhZA8-UdspnRwl_CqAOYsFV8z9Ng5sgP_F8Qpik5aiUPw1nxjUoc8",
                    title: "Sky Parking - Cashback 5rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://upload.wikimedia.org/wikipedia/commons/7/7f/Logo_Bluebird.png",
                    title: "Bluebird QRIS - Cashback maks. 5rb",
                  ),
                  SizedBox(width: 12.0),
                  CardMiniMarket(
                    logo: "https://seekvectorlogo.com/wp-content/uploads/2018/03/secure-parking-vector-logo.png",
                    title: "Secure Parking - Cashback 3rb",
                  ),
                ],
              ),
            ),

            ///
            const SizedBox(height: 20.0),
            const CardTitle(
              image: "https://lelogama.go-jek.com/post_thumbnail/KV-Airport-Revisual_Shuffle-Cards-GoCar_1200x600.jpg",
              title: "Kode GOBANDARA diskon s.d 140RB!",
              subTitle: "Pulang pergi bandara jadi hemat banget! Klik",
            ),

            ///
            const SizedBox(height: 20.0),
            const CardTitle(
              image: "https://radarlebong.disway.id/upload/00e2522d47baaf21330a73278d4f6f61.jpeg",
              title: "Kode GOCARAJA & GORIDEAJA diskon s.d 60RB!",
              subTitle: "Pulang pergi kerja jadi hemat banget! Klik",
            ),

            ///
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
