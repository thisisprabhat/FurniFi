part of '../notification.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    this.read = false,
    this.title,
    this.message,
    this.imageUrl,
    this.onTap,
  });
  final bool read;
  final String? title;
  final String? message;
  final String? imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: paddingDefault / 4),
        padding: const EdgeInsets.all(paddingDefault),
        decoration: BoxDecoration(
          borderRadius: borderRadiusSmall,
          color: read ? null : colorScheme.surface,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(right: paddingDefault),
                decoration: BoxDecoration(
                  borderRadius: borderRadiusSmall,
                  color: colorScheme.surfaceVariant,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl ?? ""),
                  ),
                ),
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? 'N/A',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    message ?? 'N/A',
                    style: TextStyle(fontSize: 12),
                    maxLines: 3,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
