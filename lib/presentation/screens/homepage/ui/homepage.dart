import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/core/constants/style.dart';
import '/presentation/widgets/rating_pill.dart';
import '/presentation/widgets/scroll_pill.dart';
import '/core/constants/assets.dart';
import '/core/constants/strings.dart';
import '/presentation/screens/notification/ui/notification.dart';
import '/presentation/screens/product/ui/product_details_page.dart';

part 'components/homepage_card.dart';
part 'components/homepage_scrollable_images.dart';
part 'components/homepage_explore.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.background,
      //   leading: Image.asset(
      //       height: 20,
      //       width: 20,
      //       Assets.iconForeground,
      //       color: Theme.of(context).brightness == Brightness.light
      //           ? Colors.black87
      //           : null),
      //   centerTitle: true,
      //   title: Text(
      //     AppString.furnifi,
      //     style: GoogleFonts.wendyOne(fontSize: 26),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.notifications_none_rounded),
      //       onPressed: () =>
      //           Navigator.pushNamed(context, NotificationPage.route),
      //     )
      //   ],
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            snap: true,
            pinned: false,
            floating: true,
            centerTitle: true,
            title: Text(
              AppString.furnifi,
              style: GoogleFonts.wendyOne(fontSize: 26),
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            leading: Image.asset(
              height: 20,
              width: 20,
              Assets.iconForeground,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black87
                  : null,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none_rounded),
                onPressed: () =>
                    Navigator.pushNamed(context, NotificationPage.route),
              )
            ],
          ),
          SliverList.list(
            children: const [
              HomepageScrollableImages(),
              HomePageExplore(),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(paddingDefault),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 4.4,
                crossAxisCount: 2,
                crossAxisSpacing: paddingDefault / 2,
                mainAxisSpacing: paddingDefault / 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const HomePageCard(
                    name: "Maxican Sofa",
                    price: 23500,
                    discountPercentage: 26,
                    rating: 4.2,
                    description:
                        'Durable metal springs in the seat give the sofa a springy comfort, allowing you to sit, relax and enjoy it for many years.',
                    imageUrl:
                        "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
