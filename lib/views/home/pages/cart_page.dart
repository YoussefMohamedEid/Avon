import 'package:cosmetics/core/designs/icons.dart';
import 'package:cosmetics/core/designs/images.dart';
import 'package:cosmetics/core/logic/adaptive_app_dimentions.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/go_to.dart';
import 'package:cosmetics/views/checkout/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
            Align(child: GestureDetector(
              onTap: (){
                GoTo.to(context, CheckoutView());
              
              },
              child: SvgPicture.asset(AppIcons.cartCheckout))),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'You have 4 products in your cart',
          style: TextStyles.smallLightBlue,
        ),

        Expanded(
          child: ListView.separated(
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: cartItem(),
                ),
            itemCount: 10,
            separatorBuilder:
                (context, index) => Divider(color: Colors.grey[400], height: 0),
          ),
        ),
      ],
    );
  }
}

class cartItem extends StatefulWidget {
  const cartItem({super.key});

  @override
  State<cartItem> createState() => _cartItemState();
}

int numberOfProducts = 4;

// مثال: عدد المنتجات في السلة
class _cartItemState extends State<cartItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: AppDimensions.imageWidth(0.32),
              height: AppDimensions.imageHeight(0.18),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(AppImages.addMakeUp),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(Icons.delete, size: 30, color: Colors.red[400]),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Note Cosmetics', style: TextStyles.mediumDarkBlue),
            SizedBox(height: 6),
            Text('Bronzer', style: TextStyles.mediumLightBlue),
            SizedBox(height: 6),
            Text('19.99 EGP', style: TextStyles.smallDarkBlue),
            SizedBox(height: 12),
            Container(
              width: 160,
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[400]!),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if (numberOfProducts > 1) {
                        numberOfProducts--;
                        setState(() {}); // تحديث الواجهة لعرض العدد الجديد
                      } else {
                        //    dialog(context, 'Are you sure you want to remove this item from the cart?');
                        print("delete item......");
                      }
                    },
                    iconSize: 24,
                  ),

                  Text('$numberOfProducts', style: TextStyles.smallDarkBlue),

                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      numberOfProducts++;
                      setState(() {}); // تحديث الواجهة لعرض العدد الجديد
                    },
                    iconSize: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
