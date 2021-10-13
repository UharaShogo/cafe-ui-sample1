import 'package:cafe_ui_test1/constants.dart';
import 'package:cafe_ui_test1/screens/order_page/components/add_to_cart_button.dart';
import 'package:cafe_ui_test1/screens/order_page/components/cup_size.dart';
import 'package:cafe_ui_test1/screens/order_page/components/cup_size_container.dart';
import 'package:cafe_ui_test1/screens/order_page/components/price_container.dart';
import 'package:cafe_ui_test1/screens/order_page/components/sugar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../product.dart';
import 'components/product_container.dart';

int itemCount = 1;





class OrderPage extends StatefulWidget {
  final Product product;
  const OrderPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ProductContainer(product: widget.product,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  PriceContainer(product: widget.product),
                  CupSizeContainer(),
                  SugarContainer(),
                  AddToCartButton(),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}

