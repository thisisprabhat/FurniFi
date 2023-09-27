import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    this.isEditable = false,
    this.onEditPressed,
    this.imageUrl,
    this.imagePath,
  });
  final VoidCallback? onEditPressed;
  final String? imageUrl;
  final String? imagePath;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Stack(
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
            //TODO: we can also add image inside child too
            child: Icon(
              Icons.person_rounded,
              color: colorScheme.primaryContainer,
              size: 80,
            ),
          ),
          if (isEditable)
            Positioned(
              bottom: 10,
              right: 0,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primary,
                  border: Border.all(
                    color: colorScheme.onPrimary,
                    width: 2,
                  ),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                    color: colorScheme.onPrimary,
                  ),
                  onPressed: onEditPressed,
                ),
              ),
            )
        ],
      ),
    );
  }
}
