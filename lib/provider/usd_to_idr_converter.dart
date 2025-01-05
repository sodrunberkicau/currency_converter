import 'package:currency_converter/constant/exchange_rate.dart';
import 'package:flutter/material.dart';

class USDToIDRConverter extends ChangeNotifier {
  double idrAmount = 0;

  void convertToIDR(double usdAmount) {
    idrAmount = usdAmount * exchangeRate;
    debugPrint("IDR Amount from USD: $idrAmount");
    notifyListeners();
  }
}
