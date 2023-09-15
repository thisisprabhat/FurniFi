import 'package:flutter/material.dart';
import 'package:furnifi/constants/style.dart';
import 'package:furnifi/widgets/address_card.dart';

import '/utils/input_validation.dart';
import '/constants/strings.dart';

part 'components/type_of_address.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});
  static const route = 'addAddress';

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _pinCode = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _line1 = TextEditingController();
  final TextEditingController _line2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AddressType? _addressType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.addAddress),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: paddingDefault,
                  right: paddingDefault,
                  top: paddingDefault,
                ),
                children: [
                  TextFormField(
                    controller: _firstName,
                    keyboardType: TextInputType.name,
                    validator: InputValidator.name,
                    decoration: const InputDecoration(
                      label: Text(AppString.firstname),
                      hintText: AppString.firstNameHint,
                    ),
                  ),
                  TextFormField(
                    controller: _lastName,
                    keyboardType: TextInputType.name,
                    validator: InputValidator.name,
                    decoration: const InputDecoration(
                      label: Text(AppString.lastName),
                      hintText: AppString.lastNameHint,
                    ),
                  ),
                  TextFormField(
                    controller: _phone,
                    keyboardType: TextInputType.phone,
                    validator: InputValidator.phone,
                    decoration: const InputDecoration(
                      label: Text(AppString.phone),
                      hintText: AppString.enterPhone,
                    ),
                  ),
                  TextFormField(
                    controller: _pinCode,
                    keyboardType: TextInputType.number,
                    validator: InputValidator.phone,
                    decoration: const InputDecoration(
                      label: Text(AppString.pinCode),
                      hintText: AppString.pinCodeHint,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _city,
                          validator: InputValidator.email,
                          decoration: const InputDecoration(
                            label: Text(AppString.city),
                            hintText: AppString.cityHint,
                          ),
                        ),
                      ),
                      const SizedBox(width: paddingDefault),
                      Expanded(
                        child: TextFormField(
                          controller: _state,
                          validator: InputValidator.email,
                          decoration: const InputDecoration(
                            label: Text(AppString.state),
                            hintText: AppString.stateHint,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _line1,
                    validator: InputValidator.email,
                    decoration: const InputDecoration(
                      label: Text(AppString.addressLine1),
                      hintText: AppString.addressLine1Hint,
                    ),
                  ),
                  TextFormField(
                    controller: _line2,
                    validator: InputValidator.email,
                    decoration: const InputDecoration(
                      label: Text(AppString.addressLine2),
                      hintText: AppString.addressLine2Hint,
                    ),
                  ),
                  TypeOfAddress(
                    selectedType: _addressType,
                    onTap: (v) {
                      setState(() {
                        _addressType = v;
                      });
                    },
                  ),
                  const SizedBox(height: paddingDefault * 2),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: paddingDefault, right: paddingDefault, bottom: 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.maxFinite),
              child: ElevatedButton(
                onPressed: () {}, //TODO: Implement signup button action
                child: const Text(AppString.submit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
