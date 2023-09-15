part of '../account_page.dart';

class AccountsHeader extends StatelessWidget {
  const AccountsHeader({
    super.key,
    this.imageUrl,
    this.name,
    this.email,
  });
  final String? imageUrl;
  final String? name;
  final String? email;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(),
          const SizedBox(height: 4),
          Text(
            name ?? "N/A",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(email ?? "N/A")
        ],
      ),
    );
  }
}
