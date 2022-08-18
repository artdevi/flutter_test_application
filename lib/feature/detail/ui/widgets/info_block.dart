import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/detail/data/models/details_data.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/color_selection.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/capacity_selection.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/info_tabs_selection.dart';
import 'package:flutter_application_1/feature/detail/ui/widgets/info_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfoBlock extends StatelessWidget {
  final DetailsData data;
  
  const ProductInfoBlock(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InfoTitle(title: data.title, isFavorites: data.isFavorites, rating: data.rating),
          const Spacer(),
          const Tabs(),
          const SizedBox(height: 33),
          _characteristics(),
          const SizedBox(height: 29,),
          _selectColorAndCapacity(),
          _addToCartButton(),
        ],
      ),
    );
  }

  Widget _characteristics() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SvgPicture.asset('assets/icons/details/cpu.svg'),
            const SizedBox(height: 9),
            Text(
              data.cpu,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB7B7B7),
              ),
            ),
          ]
        ),
        Column(
          children: [
            SvgPicture.asset('assets/icons/details/camera.svg'),
            const SizedBox(height: 9),
            Text(
              data.camera,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB7B7B7),
              ),
            ),
          ]
        ),
        Column(
          children: [
            SvgPicture.asset('assets/icons/details/ram.svg'),
            const SizedBox(height: 9),
            Text(
              data.ssd,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB7B7B7),
              ),
            ),
          ]
        ),
        Column(
          children: [
            SvgPicture.asset('assets/icons/details/memory.svg'),
            const SizedBox(height: 9),
            Text(
              data.sd,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB7B7B7),
              ),
            ),
          ]
        ),
      ],
    );
  }

  Widget _selectColorAndCapacity() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Select color and capacity',
              style: TextStyle(
                color: Color(0xFF010035),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            ColorSelection(data.color),
            const Spacer(),
            CapacitySelection(data.capacity),
            const Spacer(),
          ],
        ),
      ],
    );
  }

  Widget _addToCartButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 54,
        width: 326,
        padding: const EdgeInsets.only(left: 45, right: 38),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 27),
        decoration: BoxDecoration(
          color: AppColors.primaryOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '\$${data.price.toDouble().toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}