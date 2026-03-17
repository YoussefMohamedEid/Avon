import 'package:cosmetics/core/designs/custom_button.dart';
import 'package:cosmetics/core/designs/images.dart';
import 'package:cosmetics/core/logic/adaptive_app_dimentions.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:cosmetics/core/logic/colors.dart';
import 'package:cosmetics/core/logic/go_to.dart';
import 'package:cosmetics/views/home/home_view.dart';
import 'package:cosmetics/views/register/widgets/password.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: AppDimensions.screenHeight * 0.08),
                Image.asset(
                  AppImages.logo,
                  height: AppDimensions.screenHeight * 0.12,
                ),
                SizedBox(height: 10),
                Text("Create Account", style: TextStyles.bigDarkBlue),
                const SizedBox(height: 10),
                Text(
                  "The password should have at least 6 characters.",
                  textAlign: TextAlign.center,
                  style: TextStyles.smallLightBlue,
                ),
                SizedBox(height: 50),
                PasswordWidget(
                  hintText: "Create Your password",
                  controller: pass1,
                ),
                SizedBox(height: 20),
                PasswordWidget(hintText: "Confirm password", controller: pass2),
            
                SizedBox(height: 70),
                CustomMainButton(
                  text: "Confirm",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      if (pass1.text == pass2.text) {
                        GoTo.to(context, HomeView());
                        SnackBar(
                          backgroundColor: kPrimaryMov,
                          content: Text(
                            "Password changed",
                            style: TextStyles.smallWhite,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              "please confirm password",
                              style: TextStyles.smallWhite,
                            ),
                          ),
                        );
                      }
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
