import 'package:cafe_ui_test1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CupSize extends StatelessWidget {
  final String cupImage;
  final bool isSelected;
  // final Function onPress;
  final void Function() onPress;
  const CupSize({
    Key? key,
    required this.cupImage,
    required this.isSelected,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      // onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Opacity(
              opacity: isSelected ? 1 : 0.5,
              child: Container(
                child: SvgPicture.asset(cupImage),
              ),
            ),
            Opacity(
              opacity: isSelected ? 1 : 0,
              child: Container(
                margin: EdgeInsets.only(top: 12),
                height: 4,
                width: 12,
                color: kSecondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
