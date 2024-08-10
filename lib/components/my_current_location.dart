import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void OpenLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your Location'),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search address"),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Deliver Now'),
          GestureDetector(
            onTap: () => OpenLocationSearchBox(context),
            child: const Row(
              children: [
                Text('70101 Hollywood Blv'),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
