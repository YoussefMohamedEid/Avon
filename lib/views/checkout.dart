import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/colors.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkout", style: TextStyles.mediumDarkBlue),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: kChekout,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          children: [Text("Delivery to", style: TextStyles.mediumDarkBlue)],
        ),
      ),
    );
  }
}
