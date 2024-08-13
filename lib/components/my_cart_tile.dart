import 'package:fds2/components/my_quantity_selector.dart';
import 'package:fds2/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_item.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(cartItem.food.imagePath,
                        height: 70, width: 70),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text('\$${cartItem.food.price}'),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            QuantitySelector(
                quantity: cartItem.quantity,
                food: cartItem.food,
                onIncrement: () {
                  restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                },
                onDeccrement: () {
                  restaurant.removeFromCart(cartItem);
                }),
          ],
        ),
      ),
    );
  }
}
