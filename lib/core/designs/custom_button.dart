import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/colors.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    this.onPressed,
    required this.text,
    this.buttonColor = kPrimaryMov,
    this.width = double.infinity,
    this.paddingHorizontal = 20,
    this.paddingVertical = 12,
  });

  final void Function()? onPressed;
  final String text;
  final Color buttonColor;
  final double width;
  final double paddingHorizontal;
  final double paddingVertical;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: paddingVertical,
          ),
          backgroundColor: buttonColor, // Button color
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyles.smallSemiWhite),
      ),
    );
  }
}
