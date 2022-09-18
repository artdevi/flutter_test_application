// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  String? selectedCategory = 'Phones';

  @override
  Widget build(BuildContext context) {
    var categories = [
      {
        "title": AppLocalizations.of(context)!.phones,
        "icon": phoneIconAsset,
      },
      {
        "title": AppLocalizations.of(context)!.computer,
        "icon": computerIconAsset,
      },
      {
        "title": AppLocalizations.of(context)!.health,
        "icon": healthIconSvg,
      },
      {
        "title": AppLocalizations.of(context)!.books,
        "icon": booksIconSvg,
      },
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17, right: 33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.selectCategory,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.primaryBlue,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.viewAll,
                style: const TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryOrange,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 23,
              ),
              for (var category in categories)
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: categoryItem(category['title'], category['icon'], () {
                    setState(() {
                      selectedCategory = category['title'];
                    });
                  }),
                ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget categoryItem(
          String? title, String? assetIcon, void Function()? callback) =>
      GestureDetector(
        onTap: callback,
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: selectedCategory == title
                        ? AppColors.primaryOrange
                        : Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.shadow,
                        offset: Offset.zero,
                        blurRadius: 0,
                        spreadRadius: 0,
                        blurStyle: BlurStyle.normal,
                      ),
                    ]),
                height: 71,
                width: 71,
                child: SvgPicture.asset(
                  assetIcon != null ? assetIcon : '',
                  color: selectedCategory == title ? Colors.white : Colors.grey,
                )),
            const SizedBox(
              height: 7,
            ),
            Text(
              title != null ? title : '',
              style: TextStyle(
                color: selectedCategory == title
                    ? AppColors.primaryOrange
                    : AppColors.primaryBlue,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
}
