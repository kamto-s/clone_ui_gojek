import 'package:clone_ui_gojek/pages/chat/widget/chat_widget.dart';
import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String titleApp;
  const ChatPage({super.key, required this.titleApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleApp,
          style: TextStyle(
            color: blackColor,
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///
              const SizedBox(height: 12.0),
              Text(
                "Pilihan fitur",
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orange[800],
                            radius: 20,
                            child: Icon(
                              Icons.mail,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                          Positioned(
                            right: -4,
                            top: -4,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: redColor,
                                border: Border.all(color: whiteColor),
                              ),
                              child: Center(
                                child: Text(
                                  "3",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      const Text("Inbox"),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 20,
                        child: Icon(
                          Icons.contact_support,
                          color: whiteColor,
                          size: 24.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      const Text("Bantuan"),
                    ],
                  ),
                ],
              ),

              ///
              const SizedBox(height: 28.0),
              Text(
                "Chat kamu",
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              SizedBox(
                child: Builder(builder: (context) {
                  List dataChat = [
                    {
                      "imgUrl": "https://www.pointstar-consulting.com/wp-content/uploads/2022/02/gopay-integration.png",
                      "title": "GoPay Later",
                      "subTitle": "Jadi reminder spesial buat kamu...",
                      "date": "17/9",
                      "verified": true,
                    },
                    {
                      "imgUrl": "https://lelogama.go-jek.com/component/factsheet/icon/Flexibility.jpg",
                      "title": "Jeklin",
                      "subTitle": "Kamu punya pesan",
                      "date": "24/2",
                      "verified": true,
                    },
                    {
                      "imgUrl":
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Eo_circle_green_white_letter-h.svg/2048px-Eo_circle_green_white_letter-h.svg.png",
                      "title": "Hibyy",
                      "subTitle": "Kamu lagi dimana?",
                      "date": "27/12  ",
                      "verified": false,
                    },
                  ];
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: dataChat.length,
                    itemBuilder: (context, index) {
                      var item = dataChat[index];
                      return ChatWidget(
                        imgUrl: item["imgUrl"],
                        title: item["title"],
                        subTitle: item["subTitle"],
                        date: item["date"],
                        verified: item["verified"],
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
