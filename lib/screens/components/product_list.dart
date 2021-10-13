import 'package:cafe_ui_test1/screens/order_page/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../product.dart';

class ProductList extends StatelessWidget {
  final Product product;
  // final Function onPress;
  final void Function() onPress;
  const ProductList({
    required this.product,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage(product: product,)));
      // },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              width: 60,
              child: SvgPicture.asset(product.image),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              product.name,
              style: kProductNameStyle,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
