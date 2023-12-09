import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';

class MeScreen extends StatelessWidget {
  MeScreen({super.key});

  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _streetAddressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: ListView(
        children: [
          // Factories Finance Text
          const Text(
            AppStrings.factoriesFinance,
            style: TextStyle(
              color: ColorManager.primary,
              fontSize: AppSize.s20
            ),
            textAlign: TextAlign.center,
          ),
          Form(
              key: _formState,
              child: Column(
                children: [
                  // First Name
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _firstNameController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppStrings.firstName,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.firstNameInvalid;
                      },
                    ),
                  ),

                  // Middle Name
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _middleNameController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppStrings.middleName,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.middleNameInvalid;
                      },
                    ),
                  ),

                  // Last Name
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _lastNameController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppStrings.lastName,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.lastNameInvalid;
                      },
                    ),
                  ),

                  // Email
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: AppStrings.email,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.emailInvalid;
                      },
                    ),
                  ),

                  // Phone Number
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _phoneNumberController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: AppStrings.phoneNumber,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.phoneNumberInvalid;
                      },
                    ),
                  ),

                  // Street Address
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _streetAddressController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppStrings.streetAddress,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.streetAddressInvalid;
                      },
                    ),
                  ),

                  // City
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: TextFormField(
                      controller: _cityController,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppStrings.city,
                        hintStyle: const TextStyle(color: ColorManager.lightPrimary),
                        enabledBorder: _getBorderStyle(),
                        focusedBorder: _getBorderStyle(),
                        border: _getBorderStyle(),
                        errorBorder: _getBorderStyle(color: ColorManager.error),
                      ),
                      validator: (val) {
                        if (val.toString().isNotEmpty) { return null; }
                        return AppStrings.cityInvalid;
                      },
                    ),
                  ),
                ],
              ),
          ),
          // Button
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: ElevatedButton(
                onPressed: () {
                  var formData = _formState.currentState;
                  if (formData!.validate()) {
                    formData.save();
                  }
                },
                child: const Text("Enter")
            ),
          )
        ],
      ),
    );
  }
}

OutlineInputBorder _getBorderStyle({Color color = ColorManager.lightPrimary}) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: AppSize.s2,
    ),
  );