import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.only(left: 42, right: 35, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
                size: 17,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.addAddress,
                  style: const TextStyle(
                    color: Color(0xFF010035),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 9),
                Container(
                  height: 37,
                  width: 37,
                  // padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primaryOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      locationIconAsset,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
