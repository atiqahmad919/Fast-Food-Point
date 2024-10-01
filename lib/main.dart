import 'package:fds2/models/restaurant.dart';
import 'package:fds2/pages/ServiceSelectionScreen.dart';
import 'package:fds2/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const LoginOrRegister(),
      home: const ServiceSelectionScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
