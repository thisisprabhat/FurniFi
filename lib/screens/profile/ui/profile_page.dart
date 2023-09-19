import 'package:flutter/material.dart';

import '/screens/address/ui/change_address.dart';
import '/widgets/address_card.dart';
import '/constants/strings.dart';
import '/constants/style.dart';
import '/widgets/profile_image.dart';
import '/utils/input_validation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const route = 'profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool edit = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(edit ? AppString.editProfile : AppString.profile),
        backgroundColor: colorScheme.background,
        actions: [
          TextButton(
              onPressed: () => setState(() => edit = !edit),
              child: Text(edit ? AppString.cancel : AppString.edit))
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ProfileImage(
                isEditable: edit,
                onEditPressed: () {},
              ),
            ),
            TextFormField(
              controller: _firstNameController,
              keyboardType: TextInputType.name,
              validator: InputValidator.name,
              readOnly: !edit,
              decoration: const InputDecoration(
                label: Text(AppString.firstname),
                hintText: AppString.firstNameHint,
              ),
            ),
            TextFormField(
              controller: _lastNameController,
              keyboardType: TextInputType.name,
              readOnly: !edit,
              validator: InputValidator.name,
              decoration: const InputDecoration(
                label: Text(AppString.lastName),
                hintText: AppString.lastNameHint,
              ),
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              readOnly: !edit,
              validator: InputValidator.email,
              decoration: const InputDecoration(
                label: Text(AppString.email),
                hintText: AppString.enterEmail,
              ),
            ),
            TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              readOnly: !edit,
              validator: InputValidator.phone,
              decoration: const InputDecoration(
                label: Text(AppString.phone),
                hintText: AppString.enterPhone,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      AppString.address,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, ChangeAddress.route),
                      child: const Text(AppString.change),
                    ),
                  ],
                ),
                const AddressCard(
                  name: 'Prabhat Kumar',
                  address:
                      "B-12 Kali Tower, Lalpur, Ranchi, kali Tower Ranchi, Jharkhand - 834001",
                  phone: "830*****23",
                  type: AddressType.home,
                ),
                const SizedBox(height: paddingDefault),
                AnimatedSize(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linearToEaseOut,
                  reverseDuration: const Duration(milliseconds: 500),
                  child: !edit
                      ? const SizedBox.shrink()
                      : ConstrainedBox(
                          constraints:
                              const BoxConstraints(minWidth: double.maxFinite),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(AppString.submit),
                          ),
                        ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
