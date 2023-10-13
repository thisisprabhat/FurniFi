import 'package:flutter/material.dart';

import '/presentation/screens/order_summary/ui/order_summary.dart';
import '/core/constants/strings.dart';
import '/core/constants/style.dart';

part 'components/cart_page_card.dart';
part 'components/cart_page_bottom.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const route = 'cart';
  static const List<Map<String, dynamic>> _itemList = [
    {
      'productName': 'Danderyd Chair',
      'productDescription': 'Durable metal springs in the seat give the sofa',
      'productImageUrl':
          'https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
      'price': 2200.0,
      'discountPercentage': 8.0
    },
    {
      'productName': 'Maxican Sofa',
      'productDescription': 'Durable metal springs in the seat give the sofa',
      'productImageUrl':
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      'price': 23200.0,
      'discountPercentage': 10.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.cart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: paddingDefault * 1.5,
              right: paddingDefault,
              top: paddingDefault,
            ),
            child: Text(
              '${AppString.productsInTheCart} : ${_itemList.length}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: paddingDefault,
                right: paddingDefault,
                top: paddingDefault,
              ),
              itemCount: _itemList.length,
              itemBuilder: (_, index) {
                final item = _itemList[index];
                return CartPageCard(
                  productName: item['productName'],
                  productDescription: item['productDescription'],
                  productImageUrl: item['productImageUrl'],
                  price: item['price'],
                  discountPercentage: item['discountPercentage'],
                );
              },
            ),
          ),
          CartPageBottom(
            total: '27000',
            promoValue: (value) {},
            onPromoButtonPressed: () {},
            onCheckoutPressed: () =>
                Navigator.pushNamed(context, OrderSummary.route),
          ),
        ],
      ),
    );
  }
}
