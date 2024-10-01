import 'package:fds2/pages/cart_page.dart';
import 'package:fds2/models/restaurant.dart'; // Import the Restaurant class
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider for state management

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartPage()));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartPage()));
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                ),
                // Badge overlay
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    int itemCount = restaurant
                        .getTotalItemCount(); // Get the cart item count
                    return itemCount > 0
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 15,
                                minHeight: 15,
                              ),
                              child: Text(
                                '$itemCount',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        : const SizedBox(); // Show nothing if no items in cart
                  },
                ),
              ],
            ),
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Fast Delivery Service'),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}

// import 'package:fds2/pages/cart_page.dart';
// import 'package:flutter/material.dart';
//
// class MySliverAppBar extends StatelessWidget {
//   final Widget child;
//   final Widget title;
//   const MySliverAppBar({super.key, required this.child, required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: 340,
//       collapsedHeight: 120,
//       floating: false,
//       pinned: true,
//       actions: [
//         IconButton(
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const CartPage()));
//           },
//           icon: const Icon(Icons.shopping_cart),
//         ),
//       ],
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//       title: const Text('Fast Delivery Service'),
//       flexibleSpace: FlexibleSpaceBar(
//         background: Padding(
//           padding: const EdgeInsets.only(bottom: 50.0),
//           child: child,
//         ),
//         title: title,
//         centerTitle: true,
//         titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
//         expandedTitleScale: 1,
//       ),
//     );
//   }
// }
