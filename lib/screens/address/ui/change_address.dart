import 'package:flutter/material.dart';
import 'package:furnifi/constants/style.dart';

import '/widgets/address_card.dart';
import '/screens/address/ui/add_address.dart';
import '/constants/strings.dart';

class ChangeAddress extends StatefulWidget {
  const ChangeAddress({super.key});
  static const route = 'changeAddress';

  @override
  State<ChangeAddress> createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
  List<Map<String, dynamic>> _addresses = [
    {
      "name": 'Prabhat Kumar',
      "address":
          "B-12 Kali Tower, Lalpur, Ranchi, kali Tower Ranchi, Jharkhand - 834001",
      "phone": "830*****23",
      "type": AddressType.work,
    },
    {
      "name": 'Rahul Kumar',
      "address":
          "82989 Street 11, Sector 4, Bokaro Steel City, Bokaro, Jharkhand - 834001",
      "phone": "943*****86",
      "type": AddressType.home,
    },
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.changeAddress),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: paddingDefault,
                right: paddingDefault,
                top: paddingDefault,
              ),
              itemCount: _addresses.length,
              itemBuilder: (_, index) {
                final address = _addresses[index];
                return Column(
                  children: [
                    AddressCard(
                      name: address['name'],
                      isSelected: index == _selectedIndex,
                      address: address['address'],
                      type: address['type'],
                      phone: address["phone"],
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                    const SizedBox(height: paddingDefault / 2)
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: paddingDefault, right: paddingDefault, bottom: 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.maxFinite),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, AddAddress.route),
                child: const Text(AppString.addAddress),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
