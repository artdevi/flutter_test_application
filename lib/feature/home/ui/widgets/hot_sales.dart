import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/detail/ui/pages/detail_page.dart';
import 'package:flutter_application_1/feature/home/data/models/home_data.dart';

class HotSalesWidget extends StatelessWidget {
  final List<HotSale> data;
  const HotSalesWidget({required this.data, Key? key}) : super(key: key);
  
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
                "Hot Sales",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColors.primaryBlue,
                ),
              ),
              Text(
                "see more",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.primaryOrange,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: 180,
          width: double.infinity,
          child: CarouselSlider(
            items: [
              for (var product in data) 
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  DetailsPage(),
                    ),
                  );
                },
                child: productCard(product)
              ) 
            ], 
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: false,
              viewportFraction: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget productCard(HotSale product) {
    return Container(
      width: 380,
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset.zero,
            blurRadius: 5,
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius:  BorderRadius.circular(15),
              child: Image.network(
                product.pictureURL, 
                fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 59,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                product.title == 'Samsung Galaxy A71' 
                ? const SizedBox(height: 40)
                : Text(
                    product.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                const SizedBox(height: 5),
                Text(
                  product.subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 25,
            bottom: 25,
            child: Container(
              alignment: Alignment.center,
              height: 23,
              width: 98,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              child: const Text(
                "Buy now!",
                style: TextStyle(
                  color: AppColors.primaryBlue,
                  fontFamily: 'SF Pro Display',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          if (product.isNew != null) Positioned(
            top: 14,
            left: 25,
            child: Container(
              alignment: Alignment.center,
              height: 27,
              width: 27,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryOrange
              ),
              child: const Text(
                "New",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}