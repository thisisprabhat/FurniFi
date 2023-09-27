import 'package:flutter/material.dart';
import 'package:furnifi/constants/style.dart';

import '/presentation/widgets/rating_pill.dart';
import '/constants/strings.dart';

part 'components/favourites_card.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});
  static const route = 'favourites';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.favourites),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (_, index) => const FavouritesCard(
          name: "Maxican Sofa",
          description:
              'Durable metal springs in the seat give the sofa a springy comfort, allowing you to sit, relax and enjoy it for many years.',
          price: 23500,
          discountPercentage: 26,
          imageUrl:
              "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
          rating: 4.3,
        ),
      ),
    );
  }
}
