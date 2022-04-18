import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import '/utils/index.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/utils/common_widgets/common_loading.dart';
import 'package:green_tiger/utils/validations/shipping_address_validation.dart';
import '../../../constraints/styles.dart';

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
    return CommonLoadingOverlay(
      loading: controller.isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment & Shipping Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Country or Region'),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<Country>(
                    validator: ShippingAddressValidations.dropdownValidation,
                    value: controller.countries.isEmpty ||
                            controller.country.name == null ||
                            controller.shippingAddress.firstName == null
                        ? null
                        : controller.country,
                    decoration: textInputDecoration,
                    isDense: true,
                    items: List.generate(
                        controller.countries.length,
                        (index) => DropdownMenuItem(
                              child:
                                  Text("${controller.countries[index].name}"),
                              value: controller.countries[index],
                            )),
                    onChanged: controller.setCountry,
                  ),
                  const SizedBox(height: 10),
                  const Text('First Name'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: firstNameController
                      ..text = controller.shippingAddress.firstName ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.firstNameValidate,
                  ),
                  const SizedBox(height: 10),
                  const Text('Last Name'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: lastNameController
                      ..text = controller.shippingAddress.lastName ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.lastNameValidate,
                  ),
                  const SizedBox(height: 10),
                  const Text('Street Address'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: street1Controller
                      ..text = controller.shippingAddress.streetAddress1 ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress1Validate,
                  ),
                  const SizedBox(height: 10),
                  const Text('Street Address 2'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: street2Controller
                      ..text = controller.shippingAddress.streetAddress2 ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator:
                        ShippingAddressValidations.streetAddress2Validate,
                  ),
                  const SizedBox(height: 10),
                  const Text('City'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: cityController
                      ..text = controller.shippingAddress.city ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.cityValidation,
                  ),
                  const SizedBox(height: 10),
                  const Text('State/Province/Region'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: stateController
                      ..text = controller.shippingAddress.state ?? '',
                    decoration: textInputDecoration,
                    textCapitalization: TextCapitalization.words,
                    validator: ShippingAddressValidations.stateValidation,
                  ),
                  const SizedBox(height: 10),
                  const Text('Zip/Postal Code'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: zipController
                      ..text = controller.shippingAddress.zipCode ?? '',
                    decoration: textInputDecoration,
                    keyboardType: TextInputType.number,
                    validator: ShippingAddressValidations.zipCodeValidation,
                  ),
                  const SizedBox(height: 10),
                  const Text('Phone Number'),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: phoneController
                      ..text = controller.shippingAddress.phone ?? '',
                    decoration: textInputDecoration,
                    keyboardType: TextInputType.number,
                    validator: ShippingAddressValidations.phoneValidation,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
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
                          );
                          // print(shippingAddress.toJson());
                          await controller.saveAddress(shippingAddress);
                          Get.back();
                        }
                      },
                      child: const Text('Save'),
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
