import 'package:flutter/material.dart';
import '../components/constants.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: const IconThemeData(color: kWhite),
          backgroundColor: kPrimary,
          title: const Text(
            'Stay Tuned',
            style: TextStyle(color: kWhite),
          ),
        ),
        backgroundColor: kSecondary,
        body: Center(
          child: Text(
            'This Service is Coming Soon',
            style: cardStyle_1,
          ),
        ),
      ),
    );
  }
}
