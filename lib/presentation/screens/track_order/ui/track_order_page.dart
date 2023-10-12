import 'package:flutter/material.dart';
import '/core/constants/assets.dart';
import '/core/constants/strings.dart';
import '/core/constants/style.dart';

import 'components/order_tracker.dart';

part 'components/track_order_product_info.dart';

List<TextDto> _orderList = [
  TextDto("Your order has been placed", "Fri, 15th Sept '23 - 10:47pm"),
  TextDto("Seller ha processed your order", "Sun, 17th Sept '23 - 10:19am"),
  TextDto("Your item has been picked up by courier partner.",
      "Tue, 19th Sept '23 - 5:00pm"),
];

List<TextDto> _shippedList = [
  TextDto("Your order has been shipped", "Tue, 26th Sept '23 - 5:04pm"),
  TextDto("Your item has been received in the nearest hub to you.", null),
];

List<TextDto> _outOfDeliveryList = [
  TextDto("Your order is out for delivery", "Thu, 27th Sept '23 - 2:27pm"),
];

List<TextDto> _deliveredList = [
  TextDto("Your order will be delivered by", "Thu, 29th Sept '23 - 3:58pm"),
];

class TrackOrderPage extends StatelessWidget {
  //TODO:Make the values dynamic
  const TrackOrderPage({super.key});
  static const route = 'track-order';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.trackOrder),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {}, //TODO: Navigate to cart
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: paddingDefault,
          right: paddingDefault,
          top: paddingDefault,
        ),
        children: [
          const TrackOrderProductInfo(),
          Divider(height: 3 * paddingDefault, color: colorScheme.outline),
          _infoTile(
            context,
            title: AppString.orderId,
            value: 'OD3498U92234234KT',
          ),
          _infoTile(
            context,
            title: AppString.orderedOn,
            value: '05:28 PM,  15th Sept 2023',
          ),
          _infoTile(
            context,
            title: AppString.orderStatus,
            value: 'Delivered',
          ),
          const SizedBox(height: paddingDefault),
          OrderTracker(
            status: Status.shipped,
            activeColor: colorScheme.primary,
            inActiveColor: colorScheme.surfaceTint,
            subDateTextStyle: TextStyle(color: colorScheme.primaryContainer),
            orderTitleAndDateList: _orderList,
            shippedTitleAndDateList: _shippedList,
            // outForDeliveryTitleAndDateList: _outOfDeliveryList,
            deliveredTitleAndDateList: _deliveredList,
            orderPlacedDateAndTime: "Fri, 25th Sept '23",
            shippedDateAndTime: "Fri, 26th Sept '23",
            outForDeliveryDateAndTime: '',
            deliveredDateAndTime: '',
          ),
          const SizedBox(height: paddingDefault * 2)
        ],
      ),
    );
  }

  Container _infoTile(
    context, {
    required String title,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(paddingDefault),
      margin: const EdgeInsets.only(bottom: paddingDefault / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: borderRadiusSmall,
      ),
      child: Row(
        children: [
          Text(
            "$title :  ",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Expanded(child: Text(value))
        ],
      ),
    );
  }
}
