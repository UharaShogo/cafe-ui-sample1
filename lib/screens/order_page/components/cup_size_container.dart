import 'package:cafe_ui_test1/constants.dart';
import 'package:cafe_ui_test1/screens/order_page/components/cup_size.dart';
import 'package:flutter/material.dart';

enum sizeType{
  small, medium, large
}
sizeType selectedSize = sizeType.medium;


class CupSizeContainer extends StatefulWidget {
  const CupSizeContainer({Key? key}) : super(key: key);

  @override
  State<CupSizeContainer> createState() => _CupSizeContainerState();
}

class _CupSizeContainerState extends State<CupSizeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: kProductNameStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CupSize(
                    cupImage: 'assets/images/size_small.svg',
                    isSelected: selectedSize == sizeType.small,
                    onPress: (){
                      setState(() {
                        selectedSize = sizeType.small;
                      });
                    }
                ),
                CupSize(
                    cupImage: 'assets/images/size_medium.svg',
                    isSelected: selectedSize == sizeType.medium,
                    onPress: (){
                      setState(() {
                        selectedSize = sizeType.medium;
                      });
                    }
                ),
                CupSize(
                    cupImage: 'assets/images/size_large.svg',
                    isSelected: selectedSize == sizeType.large,
                    onPress: (){
                      setState(() {
                        selectedSize = sizeType.large;
                      });
                    }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

