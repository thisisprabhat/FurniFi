import 'package:flutter/material.dart';

import '/presentation/screens/track_order/ui/track_order_page.dart';
import '/core/constants/assets.dart';
import '/core/constants/strings.dart';
import '/core/constants/style.dart';

part 'components/orders_card.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});
  static const route = 'orders';

  @override
  Widget build(BuildContext context) {
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
          return const OrdersCard(
            productName: 'Danderyd Chair',
            deliveryStatus: 'Delivery ExpectedBy sept 22',
            productImageUrl: Assets.chairNetwork1,
          );
        },
      ),
    );
  }
}
