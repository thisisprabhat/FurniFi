import 'package:flutter/material.dart';

import '/constants/strings.dart';
import '/constants/style.dart';

part 'components/orders_card.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});
  static const route = 'orders';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.orders),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(
          top: paddingDefault / 2,
          left: paddingDefault,
          right: paddingDefault,
        ),
        itemCount: 10,
        itemBuilder: (_, index) {
          return OrdersCard(
            productName: "Danderyd Chair",
            deliveryStatus: "Delivery ExpectedBy sept 22",
            productImageUrl:
                'https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
          );
        },
      ),
    );
  }
}
