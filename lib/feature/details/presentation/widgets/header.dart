import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/cart/presentation/pages/cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 42, right: 35, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Button
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

          // Title
          const Text(
            'Product Details',
            style: TextStyle(
              color: Color(0xFF010035),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          // Right button
          GestureDetector(
            child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: AppColors.primaryOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/bag.svg',
                  color: Colors.white,
                ),
              ),
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
        ],
      ),
    );
  }
}
