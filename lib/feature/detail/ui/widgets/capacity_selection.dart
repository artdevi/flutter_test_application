import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';

class CapacitySelection extends StatefulWidget {
  final List<String> capacityOptions;

  const CapacitySelection(this.capacityOptions, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _CapacitySelectionState(capacityOptions);

}

class _CapacitySelectionState extends State<CapacitySelection> {
  final List<String> capacityOptions;

  _CapacitySelectionState(this.capacityOptions);

  String? selectedCapacity;

  @override
  void initState() {
    selectedCapacity = capacityOptions[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (var capacity in capacityOptions)
          _capacityContainer(
            capacity,
            selectedCapacity == capacity, 
            () { 
              setState(() {
                selectedCapacity = capacity;
              });
            }
        ),
      ],
    );
  }

  Widget _capacityContainer(String capacity, bool selected, void Function() callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected ? AppColors.primaryOrange : Colors.transparent,
        ),
        child: Text(
          capacity,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xFF8D8D8D),
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}