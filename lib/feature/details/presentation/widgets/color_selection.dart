import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/hex_color.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorSelection extends StatefulWidget {
  final List<String> colors;

  const ColorSelection(this.colors, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _ColorSelectionState(colors);
}

class _ColorSelectionState extends State<ColorSelection> {
  final List<String> colors;

  _ColorSelectionState(this.colors);

  String? selectedColor;

  @override
  void initState() {
    selectedColor = colors[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var color in colors)
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: _colorContainer(color, selectedColor == color, () {
              setState(() {
                selectedColor = color;
              });
            }),
          )
      ],
    );
  }

  Widget _colorContainer(
      String hexColor, bool selected, void Function() callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: HexColor.fromHex(hexColor),
        ),
        child:
            selected ? SvgPicture.asset(checkMarkIconAsset) : const SizedBox(),
      ),
    );
  }
}
