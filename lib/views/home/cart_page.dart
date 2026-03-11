import 'package:cosmetics/core/designs/icons.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Spacer(),
            Text('My Cart', style: TextStyles.bigDarkBlue),
            Spacer(),
            Align(child: SvgPicture.asset(AppIcons.cartCheckout)),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'You have 4 products in your cart',
          style: TextStyles.smallLightBlue,
        ),
      ],
    );
  }
}
