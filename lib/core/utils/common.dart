import 'package:flutter/material.dart';
import 'package:furnifi/core/constants/style.dart';

snackBar(context,
    {required String message, bool error = false, bool success = false}) {
  final colorScheme = Theme.of(context).colorScheme;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
            color: error || success
                ? colorScheme.onError
                : colorScheme.background),
      ),
      backgroundColor: success
          ? successColor
          : error
              ? colorScheme.error
              : colorScheme.onBackground,
    ),
  );
}
