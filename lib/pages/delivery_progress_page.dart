import 'package:fds2/components/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: MyReceipt(),
    );
  }
}
