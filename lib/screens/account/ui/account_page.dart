import 'package:flutter/material.dart';
import 'package:furnifi/screens/cart/ui/cart_page.dart';
import 'package:furnifi/screens/feedback/ui/feedback_page.dart';

import '/constants/strings.dart';
import '/constants/style.dart';
import '/widgets/profile_image.dart';
import '/screens/address/ui/change_address.dart';
import '/screens/profile/ui/profile_page.dart';
import '/screens/notification/ui/notification.dart';
import '/screens/favourite/ui/favourites_page.dart';
import '/screens/orders/ui/orders_page.dart';

part 'components/accounts_page_card.dart';
part 'components/accounts_page_item.dart';
part 'components/accounts_header.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorScheme.background,
        title: const Text("Accounts"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () =>
                Navigator.pushNamed(context, NotificationPage.route),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        children: [
          const AccountsHeader(
            name: "Prabhat Kumar",
            email: "thisisprabhatk@gmail.com",
          ),
          AccountsPageCard(
            items: [
              AccountPageItem(
                title: AppString.profile,
                icon: Icons.person_outline_rounded,
                onTap: () => Navigator.pushNamed(context, ProfilePage.route),
              ),
              AccountPageItem(
                title: AppString.address,
                icon: Icons.home_work_outlined,
                onTap: () => Navigator.pushNamed(context, ChangeAddress.route),
              ),
            ],
          ),
          AccountsPageCard(
            items: [
              AccountPageItem(
                title: AppString.orders,
                icon: Icons.line_style_rounded,
                onTap: () => Navigator.pushNamed(context, OrdersPage.route),
              ),
              AccountPageItem(
                title: AppString.favourites,
                icon: Icons.favorite_border_rounded,
                onTap: () => Navigator.pushNamed(context, FavouritesPage.route),
              ),
              AccountPageItem(
                title: AppString.cart,
                icon: Icons.shopping_cart_outlined,
                onTap: () => Navigator.pushNamed(context, CartPage.route),
              ),
            ],
          ),
          AccountsPageCard(
            items: [
              AccountPageItem(
                title: AppString.feedback,
                icon: Icons.feedback_outlined,
                onTap: () => Navigator.pushNamed(context, FeedbackPage.route),
              ),
            ],
          ),
          AccountsPageCard(
            items: [
              AccountPageItem(
                title: AppString.settings,
                icon: Icons.settings_outlined,
                onTap: () {},
              ),
              AccountPageItem(
                title: AppString.logout,
                icon: Icons.login_rounded,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
