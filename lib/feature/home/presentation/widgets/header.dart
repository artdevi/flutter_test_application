import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_application_1/feature/home/presentation/pages/map_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

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
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapPage(),
                  ),
                );
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    locationIconAsset,
                    color: AppColors.primaryOrange,
                  ),
                  const SizedBox(width: 11),
                  Text(
                    AppLocalizations.of(context)!.selectLocation,
                    style: const TextStyle(
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
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onFilterTap,
              child: SvgPicture.asset(filterIconSvg),
            ),
          )
        ],
      ),
    );
  }
}
