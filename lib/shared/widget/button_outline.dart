import 'package:clone_ui_gojek/shared/theme/theme_color.dart';
import 'package:flutter/material.dart';

class ButtonOutlineWidget extends StatefulWidget {
  final String title;
  const ButtonOutlineWidget({super.key, required this.title});

  @override
  State<ButtonOutlineWidget> createState() => _ButtonOutlineWidgetState();
}

class _ButtonOutlineWidgetState extends State<ButtonOutlineWidget> {
  bool onPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onPressed = !onPressed;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: onPressed ? greenColor : black3Color.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: onPressed ? greenColor : black3Color.withOpacity(0.4),
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: onPressed ? whiteColor : black2Color,
              fontWeight: onPressed ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
