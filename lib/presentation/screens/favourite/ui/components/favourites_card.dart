part of '../favourites_page.dart';

class FavouritesCard extends StatelessWidget {
  const FavouritesCard({
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
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: paddingDefault / 4, horizontal: paddingDefault),
      padding: const EdgeInsets.all(paddingDefault / 2),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: borderRadiusMedium,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: colorScheme.surfaceTint,
                  borderRadius: borderRadiusMedium,
                  image: DecorationImage(
                      image: NetworkImage(imageUrl ?? ""), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.surfaceVariant,
                    foregroundColor: colorScheme.outlineVariant,
                    shadowColor: Colors.black38,
                    elevation: 2,
                  ),
                  icon: const Icon(Icons.more_vert_rounded),
                  onPressed: () {}, //TODO: Remove from cart function
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: RatingPill(
                  rating: rating,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? 'N/A',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        description ?? 'N/A',
                        style: TextStyle(
                            color: colorScheme.outlineVariant, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            "${discountPercentage?.truncate()}% off",
                            style: const TextStyle(color: successColor),
                          ),
                          Text(
                            "  ₹ ${price?.truncate()}  ",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: colorScheme.outlineVariant,
                            ),
                          ),
                          Text(
                            "₹ $discountPrice",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
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
            ),
          )
        ],
      ),
    );
  }
}
