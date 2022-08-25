import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _TabsState();

}

class _TabsState extends State<Tabs> {
  final List<String> tabs = [
    'Shop',
    'Details',
    'Features',
  ];

  String? selectedTab;

  @override
  void initState() {
    selectedTab = tabs[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var tab in tabs) 
          _tab(tab, selectedTab == tab, () {
            setState(() {
              selectedTab = tab;
            });
          })
      ],
    );
  }

  Widget _tab(String title, bool selected, void Function() callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: selected ? const Border(
            bottom: BorderSide(
              width: 2,
              color: AppColors.primaryOrange,
            ),
          ) : const Border(),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: selected ? AppColors.primaryBlue : Colors.black.withOpacity(0.5),
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}