part of '../order_summary.dart';

class OrderPriceDetailsCard extends StatelessWidget {
  const OrderPriceDetailsCard(
      {super.key, this.price, this.discount, this.deliveryCharge, this.total});
  final num? price;
  final num? discount;
  final num? deliveryCharge;
  final num? total;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(paddingDefault),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: borderRadiusMedium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Price Details',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Divider(color: colorScheme.outline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Price( 8 items)'),
              Text('₹${(price ?? 0).truncate()}')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Discount'),
              Text(
                '- ₹${(discount ?? 0).truncate()}',
                style: const TextStyle(color: successColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Delivery Charge'),
              Text('₹${(deliveryCharge ?? 0).truncate()}')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '₹${(total ?? 0).truncate()}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
