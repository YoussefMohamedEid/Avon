import 'package:cosmetics/core/designs/icons.dart';
import 'package:cosmetics/core/designs/images.dart';

import 'package:cosmetics/core/logic/adaptive_text.dart';

import 'package:cosmetics/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Categories', style: TextStyles.bigDarkBlue),
        SizedBox(height: 10),
        SearchTextField(),
        //  SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return CategoryItem();
            },
            separatorBuilder: (context, index) {
              return Divider(color: Colors.grey[400], height: 0);
            },
            itemCount: 10, // Adjust the item count as needed
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle category tap
          },
          child: Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: AssetImage(AppImages.ads),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                'Skincare',
                style: TextStyles.smallLightBlue.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              SvgPicture.asset(AppIcons.rightArrow),
            ],
          ),
        ),
      ),
    );
  }
}
