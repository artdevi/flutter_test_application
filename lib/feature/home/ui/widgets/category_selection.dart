// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategorySelectionState();

}

class _CategorySelectionState extends State<CategorySelection> {
  var categories = [
    {
      "title": 'Phones',
      "icon": 'assets/icons/categories/phone.svg',
    },
    {
      "title": 'Computer',
      "icon": 'assets/icons/categories/computer.svg',
    },
    {
      "title": 'Health',
      "icon": 'assets/icons/categories/heart.svg',
    },
    {
      "title": 'Books',
      "icon": 'assets/icons/categories/books.svg',
    },
  ];

  String? selectedCategory = 'Phones';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17, right: 33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Select Category",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.primaryBlue,
                ),
              ),
              Text(
                "view all",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryOrange,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24,),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 23,),
              for (var category in categories) 
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: categoryItem(
                  category['title'], 
                  category['icon'], 
                  () {
                    setState(() {
                      selectedCategory = category['title'];
                    });
                  }
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget categoryItem(String? title, String? assetIcon, void Function()? callback) => 
    GestureDetector(
      onTap: callback,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selectedCategory == title ? AppColors.primaryOrange :Colors.white,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.shadow,
                  offset: Offset.zero,
                  blurRadius: 0,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.normal,
                ),
              ]
            ),
            height: 71,
            width: 71,
            child: SvgPicture.asset(
              assetIcon != null ? assetIcon : '',
              color: selectedCategory == title ? Colors.white : Colors.grey,
            )
          ),
          const SizedBox(height: 7,),
          Text(
            title != null ? title : '',
            style: TextStyle(
              color: selectedCategory == title ? AppColors.primaryOrange : AppColors.primaryBlue,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
    ),
  );
}