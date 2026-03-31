import 'package:cosmetics/core/designs/custom_button.dart';
import 'package:cosmetics/core/designs/icons.dart';
import 'package:cosmetics/core/designs/images.dart';
import 'package:cosmetics/core/logic/adaptive_app_dimentions.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/colors.dart';
import 'package:cosmetics/views/checkout/checkout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        width: double.infinity,
        decoration: BoxDecoration(
          color: kChekout,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery to",
                style: TextStyles.mediumDarkBlue.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 18),
              MapWidget(),
              SizedBox(height: 40),
              Text(
                "Payment method",
                style: TextStyles.mediumDarkBlue.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 18),
              CheckoutContainer(
                hight: 57,
                inputContainer: Row(
                  children: [
                    Image(
                      image: AssetImage(AppImages.meza),
                      width: AppDimensions.imageWidth(0.1),
                      height: AppDimensions.imageHeight(0.035),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        "****  ****  ****  2002",
                        style: TextStyles.smallDarkBlue,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down, color: kPrimaryMov, size: 24),
                  ],
                ),
              ),
              SizedBox(height: 12),
              CheckoutContainer(
                hight: 57,
                inputContainer: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.discountShape,
                      width: AppDimensions.imageWidth(0.1),
                      height: AppDimensions.imageHeight(0.035),
                    ),

                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        "Add vaucher",
                        style: TextStyles.smallDarkBlue,
                      ),
                    ),
                    CustomMainButton(
                      text: "Apply",
                      onPressed: () {},
                      width: AppDimensions.screenWidth * 0.24,
                      paddingVertical: 0,
                      paddingHorizontal: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Text("_ " * 50, style: TextStyles.smallLightBlue, maxLines: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckoutContainer(
      inputContainer: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kPrimaryMov,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(AppImages.mapCheckout),
                fit: BoxFit.cover,
              ),
            ),
            width: AppDimensions.imageWidth(0.3),
            height: AppDimensions.imageHeight(0.09),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home", style: TextStyles.smallDarkBlue),
                Text(
                  "123 Main Street, City, Country",
                  style: TextStyles.smallLightBlue,
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_drop_down, color: kPrimaryMov, size: 24),
        ],
      ),
    );
  }
}
