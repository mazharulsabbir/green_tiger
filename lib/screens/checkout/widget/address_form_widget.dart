import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/checkout_controller.dart';
import 'package:green_tiger/data/model/country/country.dart';

import '../../../constraints/styles.dart';

class AddressFormWidget extends GetView<CheckoutController> {
  const AddressFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment & Shipping Details'),
      ),
      body: controller.obx(
        (state) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Country or Region'),
              const SizedBox(height: 10),
              DropdownButtonFormField<Country>(
                items: List.generate(
                    controller.countries.length,
                    (index) => DropdownMenuItem(
                          child: Text("${controller.countries[index].name}"),
                          value: controller.countries[index],
                        )),
                onChanged: (value) {
                  debugPrint('$value');
                },
              ),
              const SizedBox(height: 10),
              const Text('First Name'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('Last Name'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('Street Address'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('Street Address 2'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('City'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('State/Province/Region'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 10),
              const Text('Zip/Postal Code'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              const Text('Phone Number'),
              const SizedBox(height: 10),
              TextFormField(
                decoration: textInputDecoration,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        onError: (error) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
