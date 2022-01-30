import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  int _selectedIndex = 0;
  final _userTypes = ['Cash on Delivery', 'Credit Card'];

  changeCurrentIndex(value) {
    setState(() {
      _selectedIndex = int.parse(value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Payment Method',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        Column(
          children: List.generate(
            _userTypes.length,
            (index) => Container(
              decoration: BoxDecoration(
                border: _selectedIndex == index
                    ? Border.all(color: primaryColor)
                    : Border.all(color: Colors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(5),
                // color: Colors.grey.withOpacity(0.2),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              child: RadioListTile(
                value: index.toString(),
                title: Text(_userTypes[index]),
                groupValue: _selectedIndex.toString(),
                onChanged: changeCurrentIndex,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
