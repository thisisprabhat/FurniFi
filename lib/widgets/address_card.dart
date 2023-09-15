import 'package:flutter/material.dart';

import '/constants/style.dart';
import 'address_type.dart';

export 'address_type.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    this.name,
    this.address,
    this.phone,
    this.type,
    this.isSelected = false,
    this.onTap,
  });
  final String? name;
  final String? address;
  final String? phone;
  final AddressType? type;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(paddingDefault),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: borderRadiusSmall,
          border: Border.all(
            color: isSelected ? colorScheme.primary : Colors.transparent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? 'N/A',
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                address ?? 'N/A',
                style: TextStyle(color: colorScheme.outlineVariant),
              ),
            ),
            Text(
              phone ?? 'N/A',
              style: const TextStyle(fontSize: 18),
            ),
            AddressTypeWidget(type: type ?? AddressType.others)
          ],
        ),
      ),
    );
  }
}
