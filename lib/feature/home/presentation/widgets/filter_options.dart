// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

class FilterOptions extends StatefulWidget {
  final void Function() close;

  const FilterOptions({super.key, required this.close});

  @override
  State<StatefulWidget> createState() => _FilterOptions(close: close);
}

class _FilterOptions extends State<FilterOptions> {
  final void Function() close;

  List<String> brands = const [
    'Samsung',
    'Apple',
    'Xiaomi',
  ];

  List<String> prices = [
    '\$300 - \$500',
    '\$500 - \$1000',
    '\$1000+',
  ];

  List<String> sizes = [
    '4.5" - 5.5"',
    '5.5" - 6.5"',
    '6.5"+',
  ];

  String brand = 'Samsung';
  String price = '\$300 - \$500';
  String size = '4.5" - 5.5"';

  _FilterOptions({required this.close});

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryBlue,
    );

    return Container(
      height: 375,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 15),
          ]),
      child: Column(
        children: [
          _header(context, close),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 46, right: 31, bottom: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.brand, style: textStyle),
                const SizedBox(height: 8),
                _dropDown(
                    items: brands,
                    value: brand,
                    callback: (value) {
                      setState(() {
                        brand = value.toString();
                      });
                    }),
                const SizedBox(height: 12),
                Text(AppLocalizations.of(context)!.price, style: textStyle),
                const SizedBox(height: 8),
                _dropDown(
                  items: prices,
                  value: price,
                  callback: (value) {
                    setState(() {
                      price = value.toString();
                    });
                  },
                ),
                const SizedBox(height: 12),
                Text(AppLocalizations.of(context)!.size, style: textStyle),
                const SizedBox(height: 8),
                _dropDown(
                    items: sizes,
                    value: size,
                    callback: (value) {
                      setState(() {
                        size = value.toString();
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context, void Function() close) {
    return Container(
      margin: const EdgeInsets.only(left: 44, right: 20, top: 24),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left Button
            GestureDetector(
              onTap: close,
              child: Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  color: AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.close_outlined,
                  color: Colors.white,
                  size: 17,
                ),
              ),
            ),

            // Right button
            GestureDetector(
              onTap: close,
              child: Container(
                height: 37,
                width: 86,
                decoration: BoxDecoration(
                  color: AppColors.primaryOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.done,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        // Title
        SizedBox(
          height: 37,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.filterOptions,
              style: const TextStyle(
                color: Color(0xFF010035),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _dropDown(
      {required List<String> items,
      required String value,
      required void Function(String?)? callback}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
      height: 37,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            color: const Color(0xFFDCDCDC),
            width: 1,
          )),
      child: DropdownButton(
        underline: const SizedBox(),
        isExpanded: true,
        value: value,
        items: items
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ),
            )
            .toList(),
        onChanged: callback,
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
