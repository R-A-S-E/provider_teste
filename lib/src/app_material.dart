import 'package:flutter/material.dart';
import 'package:flutter_application_3/src/ui/home/home_page.dart';
import 'package:flutter_application_3/src/ui/transaction/transaction_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/transaction': (context) => const TransActionPage(),
      },
    );
  }
}
