import 'package:flutter/material.dart';
import '../models/food.dart';
import '../models/restaurant.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDeccrement;
  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDeccrement});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      // decoration: BoxDecoration(
      //   color: Theme.of(context).colorScheme.surface,
      //   borderRadius: BorderRadius.circular(4),
      // ),
      // padding: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add_circle,
              size: 35,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: onDeccrement,
            child: Icon(
              Icons.remove_circle_outline,
              size: 35,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
