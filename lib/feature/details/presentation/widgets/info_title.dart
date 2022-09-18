import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoTitle extends StatelessWidget {
  final String title;
  final bool isFavorites;
  final double rating;
  const InfoTitle(
      {required this.title,
      required this.isFavorites,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF010035),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            _rating(rating),
          ],
        ),
        _favoriteButton(isFavorites, () {}),
      ],
    );
  }

  Widget _rating(double rating) {
    return Row(
      children: [
        Row(
          children: [
            for (var i = 0; i < rating.round(); i++)
              SvgPicture.asset(starIconAsset),
            const SizedBox(width: 9),
          ],
        ),
      ],
    );
  }

  Widget _favoriteButton(bool isFavorites, void Function() callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 33,
        width: 37,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primaryBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          isFavorites ? filledHeartIconAsset : heartIconAsset,
          color: Colors.white,
          height: 14,
          width: 14,
        ),
      ),
    );
  }
}
