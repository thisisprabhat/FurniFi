part of '../cart_page.dart';

class CartPageCard extends StatelessWidget {
  const CartPageCard({
    super.key,
    this.productName,
    this.productDescription,
    this.productImageUrl,
    this.price,
    this.discountPercentage,
  });

  final String? productName;
  final String? productDescription;
  final String? productImageUrl;
  final double? price;
  final double? discountPercentage;

  @override
  Widget build(BuildContext context) {
    final discountPrice =
        ((price ?? 0) - (price ?? 0) * ((discountPercentage ?? 0) / 100))
            .truncate();
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {}, //TODO: Implement onCardTap property
      borderRadius: borderRadiusMedium,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: paddingDefault / 4),
        padding: const EdgeInsets.all(paddingDefault / 2),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: borderRadiusMedium,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: colorScheme.surfaceVariant,
                borderRadius: borderRadiusMedium,
                image: DecorationImage(
                  image: NetworkImage(productImageUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: paddingDefault / 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productName ?? 'N/A',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              productDescription ?? 'N/A',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: colorScheme.outlineVariant,
                              ),
                            ),
                            const SizedBox(height: paddingDefault / 2)
                          ],
                        ),
                      ),
                      IconButton(
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: -4,
                        ),
                        style: IconButton.styleFrom(
                          maximumSize: const Size.fromRadius(20),
                          side: BorderSide(color: colorScheme.outline),
                          backgroundColor: colorScheme.surfaceVariant,
                          foregroundColor: colorScheme.outlineVariant,
                          shadowColor: Colors.black38,
                          elevation: 2,
                        ),
                        icon: const Icon(
                          Icons.close,
                          opticalSize: 9,
                          size: 18,
                        ),
                        onPressed: () {}, //TODO: Remove from cart function
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            ' ₹ ${price?.truncate()}  ',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: colorScheme.outlineVariant,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '₹ $discountPrice',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: colorScheme.surfaceVariant,
                              foregroundColor: colorScheme.outlineVariant,
                            ),
                            icon: const Icon(Icons.remove_rounded),
                            onPressed:
                                () {}, //TODO: Implement decrement function
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('04'), //TODO: implement no. of items
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: colorScheme.surfaceVariant,
                              foregroundColor: colorScheme.outlineVariant,
                            ),
                            icon: const Icon(Icons.add),
                            onPressed:
                                () {}, //TODO: Implement increment function
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
