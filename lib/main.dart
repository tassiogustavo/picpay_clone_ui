import 'package:flutter/material.dart';
import 'package:recriando_picpay/pages/picpay_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recriando PicPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PicPayPage(),
    );
  }
}