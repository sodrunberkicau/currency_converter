import 'package:currency_converter/provider/usd_to_idr_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "should return correct value when convert USD to IDR",
    () {
      // arrange
      USDToIDRConverter usdToIDRConverter = USDToIDRConverter();
      double usdAmount = 5;

      // act
      usdToIDRConverter.convertToIDR(usdAmount);
      double idrAmount = usdToIDRConverter.idrAmount;

      //assert
      expect(idrAmount, equals(81.145));
    },
  );

  test(
    "should not return 0 when convert USD to IDR",
    () {
      // arrange
      USDToIDRConverter usdToIDRConverter = USDToIDRConverter();
      double usdAmount = 5;

      // act
      usdToIDRConverter.convertToIDR(usdAmount);
      double idrAmount = usdToIDRConverter.idrAmount;

      //assert
      expect(idrAmount, isNot(equals(0)));
    },
  );
}
