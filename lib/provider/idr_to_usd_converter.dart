import 'package:currency_converter/constant/exchange_rate.dart';
import 'package:flutter/material.dart';

class IDRToUSDConverter extends ChangeNotifier {
  double usdAmount = 0;

  void convertToUsd(double idrAmount) {
    usdAmount = idrAmount / exchangeRate;
    debugPrint('USD Amount From IDR: $usdAmount');
    notifyListeners();
  }
}
