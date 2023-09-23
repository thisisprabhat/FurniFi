import 'package:flutter/material.dart';

import '/constants/strings.dart';
import '/constants/assets.dart';
import '/constants/style.dart';
import '/widgets/scroll_pill.dart';

part 'components/product_page_images.dart';
part 'components/product_page_info.dart';
part 'components/product_page_expanded_details.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});
  static const route = 'product';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sofa'), //TODO:dynamic!
        actions: [
          IconButton(
            onPressed: () {}, //TODO: navigate to search
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {}, //TODO: navigate to shopping cart
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          //TODO: make all these dynamic
          const ProductPageImages(),
          const ProductPageInfo(),
          const ProductPageExpandedDetails(
            title: 'Details',
            details: '''MRP Rs.29,386 (incl. tax)

Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up.

Back cushions filled with polyester fibres for soft comfort.''',
          ),
          const ProductPageExpandedDetails(
            title: 'Material',
            details: '''MRP Rs.29,386 (incl. tax)

Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up.

Back cushions filled with polyester fibres for soft comfort.''',
          ),
          const ProductPageExpandedDetails(
            title: 'Care',
            details: '''MRP Rs.29,386 (incl. tax)

Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up.

Back cushions filled with polyester fibres for soft comfort.''',
          ),
          const ProductPageExpandedDetails(
            title: 'Safety & Compliance',
            details: '''MRP Rs.29,386 (incl. tax)

Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up.

Back cushions filled with polyester fibres for soft comfort.''',
          ),
          const ProductPageExpandedDetails(
            title: 'Measurement',
            details: '''MRP Rs.29,386 (incl. tax)

Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up.

Back cushions filled with polyester fibres for soft comfort.''',
          ),
          Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.surface,
                    foregroundColor: colorScheme.primary,
                  ),
                  child: const Icon(Icons.favorite_border_rounded),
                ),
                const SizedBox(width: paddingDefault / 2),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(AppString.addToCart),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
