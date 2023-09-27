import 'package:flutter/material.dart';

import '/constants/style.dart';

class RatingPill extends StatelessWidget {
  const RatingPill({super.key, this.rating});
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return rating == null
        ? const SizedBox.shrink()
        : Container(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              color: successColor,
              borderRadius: borderRadiusMedium,
            ),
            child: Wrap(
              children: [
                Text(
                  "$rating",
                  style: const TextStyle(
                    color: onSuccessColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.star_rounded,
                  color: onSuccessColor,
                  size: 18,
                )
              ],
            ),
          );
  }
}
