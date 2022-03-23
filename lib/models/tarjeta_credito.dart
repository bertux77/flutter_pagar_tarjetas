import 'package:meta/meta.dart';

class TarjetaCredito {
  final String cardNumberHidden;
  final String cardNumber;
  final String brand;
  final String cvv;
  final String expiracyDate;
  final String cardHolderName;

  TarjetaCredito({
    required this.cardNumberHidden,
    required this.cardNumber,
    required this.brand,
    required this.cvv,
    required this.expiracyDate,
    required this.cardHolderName,
  });

  copyWith({
    String? cardNumberHidden,
    String? cardNumber,
    String? brand,
    String? cvv,
    String? expiracyDate,
    String? cardHolderName,
  }) =>
      TarjetaCredito(
        cardNumberHidden: cardNumberHidden ?? this.cardNumberHidden,
        cardNumber: cardNumber ?? this.cardNumber,
        brand: brand ?? this.brand,
        cvv: cvv ?? this.cvv,
        expiracyDate: expiracyDate ?? this.expiracyDate,
        cardHolderName: cardHolderName ?? this.cardHolderName,
      );
}
