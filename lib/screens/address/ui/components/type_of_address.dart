part of '../add_address.dart';

class TypeOfAddress extends StatefulWidget {
  const TypeOfAddress({super.key, this.onTap, this.selectedType});
  final Function(AddressType?)? onTap;
  final AddressType? selectedType;

  @override
  State<TypeOfAddress> createState() => _TypeOfAddressState();
}

class _TypeOfAddressState extends State<TypeOfAddress> {
  AddressType? _selectedType;

  void _setType(AddressType? type) {
    if (widget.onTap != null) {
      if (type == _selectedType) {
        widget.onTap!(null);
        _selectedType = null;
      } else {
        widget.onTap!(type);
        _selectedType = type;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(AppString.typeOfAddress),
        ),
        Wrap(
          spacing: paddingDefault / 2,
          children: [
            AddressTypeWidget(
              type: AddressType.home,
              selectedType: widget.selectedType,
              onTap: _setType,
            ),
            AddressTypeWidget(
              type: AddressType.work,
              selectedType: widget.selectedType,
              onTap: _setType,
            ),
            AddressTypeWidget(
              type: AddressType.others,
              selectedType: widget.selectedType,
              onTap: _setType,
            ),
          ],
        )
      ],
    );
  }
}
