import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  final void Function() onFilterTap;

  const HomeHeader({Key? key, required this.onFilterTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 35),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Center(
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/geo_pin.svg',
                  color: AppColors.primaryOrange,
                ),
                const SizedBox(width: 11),
                const Text(
                  'Zihuatanejo, Gro',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.grey,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onFilterTap,
              child: SvgPicture.asset('assets/icons/filter.svg'),
            ),
          )
        ],
      ),
    );
  }
}