import 'package:flutter/material.dart';

class CheckoutContainer extends StatelessWidget {
  const CheckoutContainer({
    super.key,
    required this.inputContainer,
    this.hight,
  });
  final Widget inputContainer;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      width: double.infinity,
      height: hight,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Color(0xff73B9BB), width: 1.3),
      ),
      child: inputContainer,
    );
  }
}
