import 'package:currency_converter/provider/idr_to_usd_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "Should return correct value when convert IDR to USD",
    () {
      // arrange
      IDRToUSDConverter idrToUSDConverter = IDRToUSDConverter();
      double idrAmount = 32000;

      // act
      idrToUSDConverter.convertToUsd(idrAmount);
      double usdAmount = idrToUSDConverter.usdAmount;

      // assert
      expect(usdAmount, equals(1971.7789142892354));
    },
  );

  test(
    "Should not return 0 when convert IDR TO USD",
    () {
      // arrange
      IDRToUSDConverter idrToUSDConverter = IDRToUSDConverter();
      double idrAmount = 32000;

      // act
      idrToUSDConverter.convertToUsd(idrAmount);
      double usdAmount = idrToUSDConverter.usdAmount;

      // assert
      expect(usdAmount, isNot(equals(0)));
    },
  );
}
