import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 37),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 34,
              child: TextField(
                style: const TextStyle(
                  fontSize: 12,
                ),
                maxLines: 1,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: AppColors.inputHintText.withOpacity(0.5),
                    fontSize: 12,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 18, top: 9, bottom: 9),
                    child: SvgPicture.asset(
                      'assets/icons/search/search.svg',
                      color: AppColors.primaryOrange,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          Container(
            width: 34,
            height: 34,
            margin: const EdgeInsets.only(left: 15),
            padding: const EdgeInsets.all(9),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryOrange,
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  offset: Offset.zero,
                  blurRadius: 0,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child: SvgPicture.asset(
              'assets/icons/search/qr.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
