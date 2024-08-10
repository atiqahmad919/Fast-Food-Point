import 'package:fds2/pages/home_page.dart';
import 'package:fds2/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
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
      // home: const LoginOrRegister(),
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
