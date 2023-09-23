part of '../orders_page.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard(
      {super.key, this.deliveryStatus, this.productName, this.productImageUrl});
  final String? deliveryStatus;
  final String? productName;
  final String? productImageUrl;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, TrackOrderPage.route);
      }, //TODO implement onTap action
      borderRadius: borderRadiusMedium,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: paddingDefault / 4),
        padding: const EdgeInsets.all(paddingDefault / 2),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: borderRadiusMedium,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: colorScheme.surfaceVariant,
                borderRadius: borderRadiusMedium,
                image: DecorationImage(
                  image: NetworkImage(productImageUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: paddingDefault),
            Expanded(
              child: SizedBox(
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deliveryStatus ?? 'N/A',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      productName ?? 'N/A',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: colorScheme.outlineVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Icon(Icons.keyboard_arrow_right_rounded),
            const SizedBox(width: paddingDefault)
          ],
        ),
      ),
    );
  }
}
