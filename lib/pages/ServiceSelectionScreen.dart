import 'package:fds2/pages/ComingSoon.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';
import 'List_of_Restaurants.dart';
import 'home_page.dart';

class ServiceSelectionScreen extends StatelessWidget {
  const ServiceSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 150,
            color: kPrimary,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FDS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FAST ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'DELIVERY SERVICES',
                        style: TextStyle(
                            fontWeight: FontWeight.w200, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantListScreen(),
                      ),
                    );
                  },
                  child: const HomePageCard(
                      cardTitle: 'Food',
                      imagePath: 'images/ServicesIcons/icon_food.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComingSoon(),
                      ),
                    );
                  },
                  child: const HomePageCard(
                      cardTitle: 'General',
                      imagePath: 'images/ServicesIcons/icon_general.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ComingSoon(),
                      ),
                    );
                  },
                  child: const HomePageCard(
                      cardTitle: 'Sawari',
                      imagePath: 'images/ServicesIcons/icon_sawari.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
