import 'package:cosmetics/core/designs/custom_button.dart';
import 'package:cosmetics/core/designs/images.dart';
import 'package:cosmetics/core/logic/adaptive_app_dimentions.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/go_to.dart';
import 'package:cosmetics/views/register/otp_view.dart';

import 'package:cosmetics/views/register/widgets/phone_number.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final TextEditingController phoneController = TextEditingController();
  @override
   void dispose() {
    phoneController.dispose(); // التخلص
    super.dispose();
  }
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                SizedBox(height: AppDimensions.screenHeight * 0.08),
                Image.asset(
                  AppImages.logo,
                  height: AppDimensions.screenHeight * 0.12,
                ),
                SizedBox(height: 10),
                Text("Forget Password", style: TextStyles.bigDarkBlue),

                SizedBox(height: 40),
                Text(
                  "Please enter your phone number below to recovery your password.",
                  style: TextStyles.smallLightBlue,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 40),
                PhoneNumberWidget(
                  phoneController: phoneController,
                ),
                SizedBox(height: 55),
                CustomMainButton(
                  text: "Next",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                       GoTo.to(context,  OtpView(
                        isEmail: false,
                        checkThe: phoneController.text,
                       ));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
