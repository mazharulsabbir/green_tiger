import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../controller/user/shipping_address_controller.dart';

class ShippingAddresses extends GetView<ShippingAddressController> {
  const ShippingAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Addresses')),
      body: LoadingOverlay(
        isLoading: controller.isLoading,
        child: ListView.builder(
          itemCount: controller.shippingAddress.length,
          itemBuilder: (context, index) {
            final shippingAddress = controller.shippingAddresses[index];
            return ListTile(
              title: Text(shippingAddress.firstName),
              subtitle: Text(shippingAddress.lastName),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => controller.deleteShippingAddress(
                  shippingAddress.id,
                  index,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
