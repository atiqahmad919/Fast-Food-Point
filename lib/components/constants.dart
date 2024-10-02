import 'package:flutter/material.dart';

const kPrimary = Color(0xffEC1C23);
const kSecondary = Color(0xffFDECED);
const kWhite = Colors.white;

const cardStyle_1 = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

class HomePageCard extends StatelessWidget {
  const HomePageCard(
      {super.key, required this.cardTitle, required this.imagePath});

  final String cardTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhite,
      elevation: 5,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagePath,
                ),
                const SizedBox(width: 15),
                Text(
                  cardTitle,
                  style: cardStyle_1,
                ),
              ],
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              size: 40,
              color: kPrimary,
            )
          ],
        ),
      ),
    );
  }
}

class RestCard extends StatelessWidget {
  const RestCard(
      {super.key,
      required this.restDescription,
      required this.cardTitle,
      required this.imagePath});

  final String imagePath;
  final String cardTitle;
  final String restDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10),
            child: Text(
              cardTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Text(
              restDescription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
