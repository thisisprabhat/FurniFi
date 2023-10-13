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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(imageUrl: imageUrl),
          const SizedBox(height: 4),
          Text(
            name ?? 'N/A',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(email ?? 'N/A')
        ],
      ),
    );
  }
}
