import 'package:fds2/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';

class RestaurantListScreen extends StatelessWidget {
  // Dummy data for restaurants
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Restaurant 1',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_1.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 2',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_2.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 3',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_3.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 4',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_4.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 5',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_5.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 6',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_6.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
    {
      'name': 'Restaurant 7',
      'imageUrl': 'images/ServicesIcons/icon_Restaurant_7.png',
      'menuCategories': [
        'Appetizers',
        'Main Course',
        'Desserts',
        'Beverages',
        'Burgers',
        'Pizzas'
      ]
    },
  ];

  RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: kWhite),
        backgroundColor: kPrimary,
        // backgroundColor: kWhite,
        title: const Text(
          'Restaurants',
          style: TextStyle(color: kWhite),
        ),
      ),
      body: ListView.builder(
        // itemExtent: 180,
        // shrinkWrap: true,
        // padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 6, right: 6),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(
                        // imageUrl: restaurant['imageUrl'],
                        // name: restaurant['name'],
                        // menuCategories:
                        //     List<String>.from(restaurant['menuCategories']),
                        ),
                  ),
                );
              },
              child: Card(
                color: kWhite,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  height: 130,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            restaurant['imageUrl'],
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                restaurant['name'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Description of ${restaurant['name']}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
