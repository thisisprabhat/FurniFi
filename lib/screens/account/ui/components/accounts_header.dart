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
          Container(
            height: 140,
            width: 140,
            foregroundDecoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(""), //TODO: Add image here
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.surface,
              border: Border.all(color: colorScheme.outline, width: 2),
            ),
            child: Icon(
              Icons.person_rounded,
              color: colorScheme.primaryContainer,
              size: 80,
            ),
          ),
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
