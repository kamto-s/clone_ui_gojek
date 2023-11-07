import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subTitle;
  final String date;
  final bool? verified;

  const ChatWidget({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.date,
    this.verified,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              imgUrl,
            ),
          ),
          if (verified != false) ...[
            Positioned(
              bottom: -8,
              left: 0,
              right: 0,
              child: Icon(
                Icons.verified_sharp,
                color: greenColor,
                size: 24.0,
              ),
            ),
          ]
        ],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 14,
          color: black2Color,
        ),
      ),
      trailing: Text(
        date,
        style: TextStyle(
          fontSize: 14,
          color: black2Color,
        ),
      ),
    );
  }
}
