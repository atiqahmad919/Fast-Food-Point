import 'package:collection/collection.dart';
import 'package:fds2/models/cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burgers
    Food(
      name: 'Classic Cheese Burger',
      description:
          ('A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle'),
      imagePath: 'images/burgers/burger_1.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Fat Burger',
      description:
          ('A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle'),
      imagePath: 'images/burgers/burger_2.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Virgin Creamy Burger',
      description:
          ('A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle'),
      imagePath: 'images/burgers/burger_3.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Onion Clean Burger',
      description:
          ('A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle'),
      imagePath: 'images/burgers/burger_4.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Veg Green Burger',
      description:
          ('A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle'),
      imagePath: 'images/burgers/burger_5.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),

    //Desserts
    Food(
      name: 'Crane Berries with Cream',
      description: ('Crane Berries rolled in cream with love'),
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: "Cinnamon Spice", price: 2.99)
      ],
    ),
    Food(
      name: 'BlueBerries Pie',
      description: ('Backed with cream and bread with love'),
      imagePath: 'images/desserts/dessert_2.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: "Cinnamon Spice", price: 2.99)
      ],
    ),
    Food(
      name: 'Vanilla Ice Cream',
      description: ('Ice cream with handmade biscuit'),
      imagePath: 'images/desserts/dessert_3.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: "Cinnamon Spice", price: 2.99)
      ],
    ),
    Food(
      name: 'Cup Cakes with Sprinkles',
      description: ('Delicious Cup cakes loaded with unhealthy sugar'),
      imagePath: 'images/desserts/dessert_4.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: "Cinnamon Spice", price: 2.99)
      ],
    ),
    Food(
      name: 'Pink Ice Cream (Not Vanilla)',
      description: ('It looks sweet but be careful it has sugar'),
      imagePath: 'images/desserts/dessert_5.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: "Cinnamon Spice", price: 2.99)
      ],
    ),

    //Drinks
    Food(
      name: 'Coca Cola',
      description: ('Ice Chilled Coca Colla, or Diet Coke'),
      imagePath: 'images/drinks/drinks_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Sprite',
      description: ('Ice Chilled Sprite, or Diet'),
      imagePath: 'images/drinks/drinks_2.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Bang',
      description: ('Ice Chilled Bang, or Diete'),
      imagePath: 'images/drinks/drinks_3.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Mint Margarita',
      description: ('Ice Chilled Mint Margarita'),
      imagePath: 'images/drinks/drinks_4.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),
    Food(
      name: 'Cherry Shots',
      description: ('Ice Chilled natural drink with chubby cherries'),
      imagePath: 'images/drinks/drinks_5.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Steak', price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ],
    ),

    //Salads
    Food(
      name: 'South West Chicken Salad',
      description:
          ('This colorful salad combines the zesty flavors of the Southwest. It\'s loaded with mixed'),
      imagePath: 'images/salads/salad_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.99),
        Addon(name: "Guacamole", price: 2.99)
      ],
    ),
    Food(
      name: 'American Fresh Salad',
      description:
          ('This colorful salad combines the zesty flavors of the Southwest. It\'s loaded with mixed'),
      imagePath: 'images/salads/salad_2.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.99),
        Addon(name: "Guacamole", price: 2.99)
      ],
    ),
    Food(
      name: 'Russian Salad',
      description:
          ('This colorful salad combines the zesty flavors of the Southwest. It\'s loaded with mixed vegies'),
      imagePath: 'images/salads/salad_3.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.99),
        Addon(name: "Guacamole", price: 2.99)
      ],
    ),
    Food(
      name: 'Serbian Mixed Salad',
      description:
          ('This colorful salad combines the zesty flavors of the Southwest. It\'s loaded with mixed'),
      imagePath: 'images/salads/salad_4.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.99),
        Addon(name: "Guacamole", price: 2.99)
      ],
    ),
    Food(
      name: 'Australian Chicken Salad',
      description:
          ('This colorful salad combines the zesty flavors of the Southwest. It\'s loaded with mixed'),
      imagePath: 'images/salads/salad_5.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.99),
        Addon(name: "Guacamole", price: 2.99)
      ],
    ),

    //sides
    Food(
      name: 'Sweet Potato Fries',
      description: ('Crispy sweet potato fries with a touch of salt.'),
      imagePath: 'images/sides/sides_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.99),
        Addon(name: 'Cajun Spice', price: 2.99),
      ],
    ),
    Food(
      name: 'Chilli Cheese Fries',
      description: ('Crispy sweet potato fries with a touch of salt.'),
      imagePath: 'images/sides/sides_2.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.99),
        Addon(name: 'Cajun Spice', price: 2.99),
      ],
    ),
    Food(
      name: 'Potato curls',
      description: ('Crispy sweet potato fries with a touch of salt.'),
      imagePath: 'images/sides/sides_3.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.99),
        Addon(name: 'Cajun Spice', price: 2.99),
      ],
    ),
    Food(
      name: 'Potato Snakes',
      description: ('Crispy sweet potato fries with a touch of salt.'),
      imagePath: 'images/sides/sides_4.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.99),
        Addon(name: 'Cajun Spice', price: 2.99),
      ],
    ),
    Food(
      name: 'Potato Cheese Cake',
      description: ('Crispy sweet potato fries with a touch of salt.'),
      imagePath: 'images/sides/sides_5.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.99),
        Addon(name: 'Cajun Spice', price: 2.99),
      ],
    ),
  ];

  // Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

// Operations
  // user cart
  List<CartItem> _cart = [];

  // Add to Cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise add a new cart Item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of the items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// Helpers
  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.write('Here is your receipt.');
    receipt.writeln();
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }

  // format double value into money
  // format list of addons
}
