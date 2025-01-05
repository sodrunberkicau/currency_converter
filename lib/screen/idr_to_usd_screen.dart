import 'package:currency_converter/provider/idr_to_usd_converter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IDRtoUSDScreen extends StatefulWidget {
  const IDRtoUSDScreen({super.key});

  @override
  State<IDRtoUSDScreen> createState() => _IDRtoUSDScreenState();
}

class _IDRtoUSDScreenState extends State<IDRtoUSDScreen> {
  final TextEditingController idrController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    idrController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IDRToUSDConverter>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Konversi IDR Ke USD',
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextFormField(
                  controller: idrController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<IDRToUSDConverter>().convertToUsd(
                          double.parse(idrController.text),
                        );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_exchange_rounded),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Konversi'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                    'Hasil Konversi IDR ke USD: \$ ${value.usdAmount.toStringAsFixed(2)} ')
              ],
            ),
          ),
        );
      },
    );
  }
}
