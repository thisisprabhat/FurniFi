import 'package:flutter/material.dart';
import 'package:furnifi/constants/strings.dart';

import '../../notification/ui/notification.dart';
import '/constants/style.dart';

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
        padding: const EdgeInsets.all(paddingDefault),
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
                onTap: () {},
              ),
              AccountPageItem(
                title: AppString.address,
                icon: Icons.home_work_outlined,
                onTap: () {},
              ),
            ],
          ),
          AccountsPageCard(
            items: [
              AccountPageItem(
                title: AppString.orders,
                icon: Icons.line_style_rounded,
                onTap: () {},
              ),
              AccountPageItem(
                title: AppString.favourites,
                icon: Icons.favorite_border_rounded,
                onTap: () {},
              ),
              AccountPageItem(
                title: AppString.cart,
                icon: Icons.shopping_cart_outlined,
                onTap: () {},
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
