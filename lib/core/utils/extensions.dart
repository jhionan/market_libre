import 'package:intl/intl.dart';

extension MoneyEx on double {
  String toMoneyFormat([String? currency]) {
    NumberFormat money = NumberFormat('#,##0.00', currency);
    return money.format(this);
  }
}
