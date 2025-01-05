import 'package:currency_converter/provider/idr_to_usd_converter.dart';
import 'package:currency_converter/provider/usd_to_idr_converter.dart';
import 'package:currency_converter/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IDRToUSDConverter()),
        ChangeNotifierProvider(create: (_) => USDToIDRConverter()),
      ],
      child: const CurrencyConverterApp(),
    ),
  );
}

class CurrencyConverterApp extends StatelessWidget {
  const CurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
