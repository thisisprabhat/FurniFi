part of '../product_details_page.dart';

class ProductPageInfo extends StatelessWidget {
  const ProductPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
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
                    const Text(
                      "2-seat sofa, beige",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "GAMMALBYN",
                      style: TextStyle(
                        // fontSize: ,
                        color: colorScheme.primaryContainer,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Wrap(
                    children: [
                      ...List.generate(5, (index) {
                        return Icon(
                          Icons.star_rounded,
                          color: index <= 3
                              ? colorScheme.primary
                              : colorScheme.surfaceTint,
                          size: 15,
                        );
                      })
                    ],
                  ),
                  Text(
                    "(50 reviews)",
                    style: TextStyle(
                        color: colorScheme.primaryContainer, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: paddingDefault / 2),
          Row(
            children: [
              const Text(
                "₹ 20,990",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: paddingDefault / 2),
                child: Text(
                  "₹ 23,500",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: colorScheme.outlineVariant,
                  ),
                ),
              ),
              const Text(
                "10% off",
                style:
                    TextStyle(color: successColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: paddingDefault),
          Text(
            "Durable metal springs in the seat give the sofa a springy comfort, allowing you to sit, relax and enjoy it for many years.",
            style: TextStyle(color: colorScheme.primaryContainer),
          ),
        ],
      ),
    );
  }
}
