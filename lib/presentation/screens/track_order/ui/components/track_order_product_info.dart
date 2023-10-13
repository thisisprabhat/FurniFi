part of '../track_order_page.dart';

class TrackOrderProductInfo extends StatelessWidget {
  const TrackOrderProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: 120,
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: borderRadiusMedium,
            border: Border.all(
              color: colorScheme.outline,
            ),
            image: const DecorationImage(
              image: NetworkImage(
                Assets.sofaNetwork1,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: paddingDefault / 2,
              left: paddingDefault,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '2-seat sofa, beige',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'GAMMALBYN',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: colorScheme.primaryContainer,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '₹ 20,990',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
