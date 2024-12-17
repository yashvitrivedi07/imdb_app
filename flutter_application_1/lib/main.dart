import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/imdb_provider.dart';
import 'package:flutter_application_1/screens/detail/views/detail_page.dart';
import 'package:flutter_application_1/screens/home/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ImdbProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.white),
      routes: {
        '/': (context) => const HomePage(),
        'details': (context) => const DetailPage()
      },
    );
  }
}
