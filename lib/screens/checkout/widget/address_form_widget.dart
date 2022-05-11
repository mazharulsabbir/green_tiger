import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import 'package:green_tiger/utils/common_widgets/common_loading.dart';
import 'package:green_tiger/utils/custom_field/my_textfield.dart';
import 'package:green_tiger/utils/validations/shipping_address_validation.dart';
import '../../../constraints/styles.dart';
import '../../../controller/home_controller.dart';

class AddressFormWidget extends GetView<ShippingAddressController> {
  AddressFormWidget({Key? key}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController street1Controller = TextEditingController();
  final TextEditingController street2Controller = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CommonLoadingOverlay(
        loading: controller.isLoading,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Add Address',
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: HomeController.to.removeLastWidget,
            ),
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Country or Region',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<Country>(
                    validator: ShippingAddressValidations.dropdownValidation,
                    value: controller.countries.isEmpty ||
                            controller.country.name == null ||
                            controller.defaultAddress?.firstName == null
                        ? null
                        : controller.country,
                    decoration: textInputDecoration,
                    isExpanded: true,
                    isDense: true,
                    items: List.generate(
                        controller.countries.length,
                        (index) => DropdownMenuItem(
                              child: Text(
                                "${controller.countries[index].name}",
                                overflow: TextOverflow.fade,
                              ),
                              value: controller.countries[index],
                            )),
                    onChanged: controller.setCountry,
                  ),
                  const Gap(),
                  Text(
                    'First Name',
                    style: formTitleTextStyle,
                  ),
                  const Gap(),
                  TextFormField(
                    controller: firstNameController
                      ..text = controller.defaultAddress?.firstName ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.firstNameValidate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Last Name',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: lastNameController
                      ..text = controller.defaultAddress?.lastName ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.lastNameValidate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Street Address',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: street1Controller
                      ..text = controller.defaultAddress?.streetAddress1 ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress1Validate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Street Address 2',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: street2Controller
                      ..text = controller.defaultAddress?.streetAddress2 ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress2Validate,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'City',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: cityController
                      ..text = controller.defaultAddress?.city ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.cityValidation,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'State/Province/Region',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: stateController
                      ..text = controller.defaultAddress?.state ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.stateValidation,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Zip/Postal Code',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: zipController
                      ..text = controller.defaultAddress?.zipCode ?? '',
                    decoration: textInputDecoration,
                    keyboardType: TextInputType.number,
                    validator: ShippingAddressValidations.zipCodeValidation,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Phone Number',
                    style: formTitleTextStyle,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: phoneController
                      ..text = controller.defaultAddress?.phone ?? '',
                    decoration: textInputDecoration,
                    keyboardType: TextInputType.number,
                    validator: ShippingAddressValidations.phoneValidation,
                  ),
                  const Gap(
                    times: 2,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            double.infinity,
                            50,
                          ),
                          primary: primaryColor),
                      onPressed: () async {
                        if ((_formKey.currentState != null) &&
                            (_formKey.currentState!.validate())) {
                          ShippingAddress shippingAddress = ShippingAddress(
                              lastName: lastNameController.text,
                              firstName: firstNameController.text,
                              streetAddress1: street1Controller.text,
                              streetAddress2: street2Controller.text,
                              state: stateController.text,
                              country: controller.country.name,
                              zipCode: zipController.text,
                              city: cityController.text,
                              phone: phoneController.text,
                              isDefault: true);
                          // print(shippingAddress.toJson());
                          await controller.saveDefaultAddress(shippingAddress);
                          Get.back();
                        }
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
