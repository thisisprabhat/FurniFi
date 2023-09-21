import 'package:flutter/material.dart';

import '/constants/strings.dart';
import '/constants/style.dart';

enum AddressType { home, work, others }

Map<AddressType, dynamic> _addressType = {
  AddressType.home: {
    "title": AppString.home,
    "icon": Icons.home_rounded,
  },
  AddressType.work: {
    "title": AppString.work,
    "icon": Icons.maps_home_work_rounded,
  },
  AddressType.others: {
    "title": AppString.others,
    "icon": Icons.category_rounded,
  },
};

class AddressTypeWidget extends StatelessWidget {
  const AddressTypeWidget({
    super.key,
    required this.type,
    this.selectedType,
    this.onTap,
  });
  final AddressType type;
  final AddressType? selectedType;
  final Function(AddressType?)? onTap;

  @override
  Widget build(BuildContext context) {
    bool isSelected = type == selectedType;
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: borderRadiusSmaller,
      onTap: () {
        if (onTap != null) {
          onTap!(type);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: borderRadiusSmall,
          border: Border.all(
            width: isSelected ? 2 : 1,
            color: isSelected ? colorScheme.primary : colorScheme.outline,
          ),
        ),
        child: Wrap(
          children: [
            Icon(
              _addressType[type]['icon'],
              color: colorScheme.outlineVariant,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(_addressType[type]['title']),
            ),
          ],
        ),
      ),
    );
  }
}
