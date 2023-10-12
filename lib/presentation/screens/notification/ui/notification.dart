import 'package:flutter/material.dart';

import '/core/constants/strings.dart';
import '/core/constants/style.dart';

part 'components/notification_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  static const route = 'notification';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.notification),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            color: colorScheme.background,
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("${AppString.unreadNotifications}: 4"),
                TextButton(
                  onPressed: () {},
                  child: const Text(AppString.markAllAsRead),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        itemBuilder: (_, index) {
          return NotificationTile(
            read: index.isOdd,
            title: "Prabhat $index",
            imageUrl: index % 3 == 0
                ? "https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"
                : null,
            message:
                "Customize your surrounding by choosing from our wide variety of collections",
          );
        },
        separatorBuilder: (_, index) => Divider(color: colorScheme.outline),
        itemCount: 10,
      ),
    );
  }
}
