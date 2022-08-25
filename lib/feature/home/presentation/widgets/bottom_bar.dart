import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/cart/presentation/pages/cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 66,
          ),
          GestureDetector(
            child: Row(
              children: const [
                Text(
                  '●',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  'Explorer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: SvgPicture.asset(
              'assets/icons/bag.svg',
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
          GestureDetector(
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              color: Colors.white,
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: SvgPicture.asset(
              'assets/icons/person.svg',
              color: Colors.white,
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 66,
          ),
        ],
      ),
    );
  }
}
