import 'package:currency_converter/provider/usd_to_idr_converter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class USDtoIDRScreen extends StatefulWidget {
  const USDtoIDRScreen({super.key});

  @override
  State<USDtoIDRScreen> createState() => _USDtoIDRScreenState();
}

class _USDtoIDRScreenState extends State<USDtoIDRScreen> {
  final TextEditingController usdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<USDToIDRConverter>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Konversi USD Ke IDR',
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextFormField(
                  controller: usdController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<USDToIDRConverter>().convertToIDR(
                          double.parse(usdController.text),
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
                Text('Hasil Konversi USD ke IDR: Rp. ${value.idrAmount} ')
              ],
            ),
          ),
        );
      },
    );
  }
}
