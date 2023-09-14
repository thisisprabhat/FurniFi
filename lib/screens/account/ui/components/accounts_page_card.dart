part of '../account_page.dart';

class AccountsPageCard extends StatelessWidget {
  const AccountsPageCard({super.key, this.items});
  final List<Widget>? items;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: paddingDefault / 3),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: borderRadiusSmall,
      ),
      child: Column(
        children: [
          if (items != null)
            ...List.generate(
              items!.length,
              (index) => Column(
                children: [
                  items![index],
                  if (items!.length > 1 && index != items!.length - 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: paddingDefault * 2,
                      ),
                      child: Divider(
                        height: 2,
                        thickness: 2,
                        color: colorScheme.surfaceVariant,
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
