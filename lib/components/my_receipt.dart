import 'package:fds2/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyReceipt extends StatefulWidget {
  const MyReceipt({super.key});

  @override
  State<MyReceipt> createState() => _MyReceiptState();
}

class _MyReceiptState extends State<MyReceipt> {
  String receiptText = '';

  void _launcheURL(Uri uri, bool inApp) async {
    try {
      if (await canLaunchUrl(uri)) {
        if (inApp) {
          await launchUrl(
            uri,
            mode: LaunchMode.inAppWebView,
          );
        } else {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Thank You for choosing FDS!'),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    receiptText = restaurant.displayCartReceipt().toString();
                    return Text(receiptText);
                  },
                ),
              ),
              const SizedBox(height: 25),
              const Text('Your order will be delivered shortly.'),
              const SizedBox(height: 35),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => _launcheURL(
                      Uri.parse(
                          'https://wa.me/+923209046755?text=Dear FDS Rider,\nPlease deliver the following order\n\n $receiptText'),
                      false),
                  child: const Text('Confirm Order')),
            ],
          ),
        ),
      ),
    );
  }
}
