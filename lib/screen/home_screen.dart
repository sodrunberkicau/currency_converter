import 'package:currency_converter/screen/idr_to_usd_screen.dart';
import 'package:currency_converter/screen/usd_to_idr_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Converter')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => IDRtoUSDScreen(),
                  ),
                );
              },
              child: const Text("Konversi IDR ke USD"),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const USDtoIDRScreen(),
                  ),
                );
              },
              child: const Text("Konversi USD ke IDR"),
            ),
          ),
        ],
      ),
    );
  }
}
