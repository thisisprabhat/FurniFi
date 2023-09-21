part of '../homepage.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    this.name,
    this.description,
    this.discountPercentage,
    this.price,
    this.imageUrl,
    this.rating,
  });
  final String? name;
  final String? description;
  final String? imageUrl;
  final double? discountPercentage;
  final double? price;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final discountPrice =
        ((price ?? 0) - (price ?? 0) * ((discountPercentage ?? 0) / 100))
            .truncate();
    return InkWell(
      onTap: () {}, //TODO: Implement onTap property in homepage card
      borderRadius: borderRadiusMedium,
      child: Container(
        padding: const EdgeInsets.all(paddingDefault / 2),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: borderRadiusMedium,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: colorScheme.surfaceTint,
                  borderRadius: borderRadiusMedium,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl ?? ""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? 'N/A',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    description ?? 'N/A',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: colorScheme.outlineVariant, fontSize: 10),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            " ₹${price?.truncate()}  ",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                              color: colorScheme.outlineVariant,
                            ),
                          ),
                          Text(
                            "₹$discountPrice",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      RatingPill(
                        rating: rating,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                      backgroundColor: colorScheme.surfaceVariant,
                      elevation: 2,
                      shadowColor: Colors.black38),
                  onPressed: () {}, //TODO: Add to cart function
                  icon: const Icon(Icons.shopping_cart_outlined),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
