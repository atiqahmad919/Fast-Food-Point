import 'package:fds2/components/my_button.dart';
import 'package:fds2/components/my_cart_tile.dart';
import 'package:fds2/models/restaurant.dart';
import 'package:fds2/pages/delivery_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;
      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text(
                              'Are you SURE you want to clear the cart?',
                              style: TextStyle(fontSize: 16),
                            ),
                            actions: [
                              //cancel button
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    'Cancel',
                                    // style: TextStyle(color: Colors.red),
                                  )), // Yes button
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: const Text(
                                    'Yes',
                                    // style: TextStyle(color: Colors.green),
                                  )),
                            ],
                          ));
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ))
          ],
        ),
        body: Column(
          children: [
            userCart.isEmpty
                ? Expanded(
                    child: Center(
                        child: Text(
                    'Cart is empty 😒',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  )))
                : Expanded(
                    child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return MyCartTile(cartItem: cartItem);
                        }),
                  ),
            MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeliveryProgressPage())),
                text: 'Go to checkout'),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      );
    });
  }
}
