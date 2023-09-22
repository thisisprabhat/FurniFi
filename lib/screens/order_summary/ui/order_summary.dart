import 'package:flutter/material.dart';

import '/constants/style.dart';
import '/widgets/address_card.dart';
import '/screens/address/ui/change_address.dart';
import '/constants/strings.dart';

part 'components/order_summary_card.dart';
part 'components/order_price_details_card.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});
  static const route = 'order_summary';
  static const List<Map<String, dynamic>> _itemList = [
    {
      'productName': "Danderyd Chair",
      'productDescription': "Durable metal springs in the seat give the sofa",
      'productImageUrl':
          'https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
      'price': 2200.0,
      'discountPercentage': 8.0
    },
    {
      'productName': "Maxican Sofa",
      'productDescription': "Durable metal springs in the seat give the sofa",
      'productImageUrl':
          "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      'price': 23200.0,
      'discountPercentage': 10.0
    },
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.orderSummary),
      ),
      body: ListView(
        padding: const EdgeInsets.all(paddingDefault),
        children: [
          ...List.generate(_itemList.length, (index) {
            final item = _itemList[index];
            return OrderSummaryCard(
              productName: item['productName'],
              productDescription: item['productDescription'],
              productImageUrl: item['productImageUrl'],
              price: item['price'],
              discountPercentage: item['discountPercentage'],
            );
          }),
          Divider(color: colorScheme.outline),
          const SizedBox(height: paddingDefault / 2),
          const OrderPriceDetailsCard(
            //TODO: Make it dynamic
            price: 27900,
            discount: 2500,
            deliveryCharge: 1500,
            total: 27400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.deliveryAddress,
                style: TextStyle(
                  color: colorScheme.outlineVariant,
                ),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ChangeAddress.route),
                child: const Text(AppString.change),
              ),
            ],
          ),
          const AddressCard(
            //TODO: make it dynamic
            name: 'Prabhat Kumar',
            address:
                "B-12 Kali Tower, Lalpur, Ranchi, kali Tower Ranchi, Jharkhand - 834001",
            phone: "830*****23",
            type: AddressType.home,
          ),
          Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.total,
                  style: TextStyle(
                    color: colorScheme.outlineVariant,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '₹ 27400', //TODO: Make it dynamic
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.maxFinite),
            child: ElevatedButton(
              onPressed: () {}, //TODO: implement onContinuePressed action
              child: const Text(AppString.continueString),
            ),
          ),
        ],
      ),
    );
  }
}
