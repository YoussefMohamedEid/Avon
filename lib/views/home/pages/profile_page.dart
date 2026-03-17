import 'package:cosmetics/core/designs/icons.dart';
import 'package:cosmetics/core/designs/images.dart';
import 'package:cosmetics/core/logic/adaptive_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.profileCover,
          width: double.infinity,

          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "اسم المستخدم",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "البريد الإلكتروني",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              SizedBox(height: 30),
              ListTile(
                leading: SvgPicture.asset(AppIcons.editInfo),
                title: Text("Edit Info", style: TextStyles.smallDarkBlue),
                trailing: SvgPicture.asset(AppIcons.rightArrow),
                onTap: () {
                  // Handle settings tap
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: SvgPicture.asset(AppIcons.orderHistory),
                title: Text("Order History", style: TextStyles.smallDarkBlue),
                trailing: SvgPicture.asset(AppIcons.rightArrow),
                onTap: () {
                  // Handle settings tap
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: SvgPicture.asset(AppIcons.wallet),
                title: Text("Wallet", style: TextStyles.smallDarkBlue),
                trailing: SvgPicture.asset(AppIcons.rightArrow),
                onTap: () {
                  // Handle settings tap
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: SvgPicture.asset(AppIcons.settings),
                title: Text("Settings", style: TextStyles.smallDarkBlue),
                trailing: SvgPicture.asset(AppIcons.rightArrow),
                onTap: () {
                  // Handle settings tap
                },
              ),
              SizedBox(height: 10),
              ListTile(
                leading: SvgPicture.asset(AppIcons.voucher),
                title: Text("Voucher", style: TextStyles.smallDarkBlue),
                trailing: SvgPicture.asset(AppIcons.rightArrow),
                onTap: () {
                  // Handle settings tap
                },
              ),
              SizedBox(height: 20),
              ListTile(
                leading: SvgPicture.asset(AppIcons.logout),
                title: Text(
                  "Logout",
                  style: TextStyles.smallDarkBlue.copyWith(color: Colors.red),
                ),

                onTap: () {
                  // Handle settings tap
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
