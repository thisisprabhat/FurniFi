part of '../account_page.dart';

class AccountPageItem extends StatelessWidget {
  const AccountPageItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(icon, color: colorScheme.outlineVariant),
      title: Text(title),
      onTap: onTap,
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colorScheme.outlineVariant,
      ),
    );
    ;
  }
}
