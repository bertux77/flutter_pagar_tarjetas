import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../models/tarjeta_credito.dart';
import '../widgets/total_pay_button.dart';

class TarjetaPage extends StatelessWidget {
  const TarjetaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tarjeta = TarjetaCredito(
        cardNumberHidden: '3782',
        cardNumber: '378282246310005',
        brand: 'american express',
        cvv: '2134',
        expiracyDate: '01/25',
        cardHolderName: 'Eduardo Rios');
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'Pagar',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff284879),
        ),
        body: Stack(
          children: [
            Container(),
            Hero(
              tag: tarjeta.cardNumber,
              child: CreditCardWidget(
                cardNumber: tarjeta.cardNumberHidden,
                expiryDate: tarjeta.expiracyDate,
                cardHolderName: tarjeta.cardHolderName,
                cvvCode: tarjeta.cvv,
                showBackView: false,
                onCreditCardWidgetChange: (CreditCardBrand) {},
              ),
            ),
            Positioned(bottom: 0, child: TotalPayButton())
          ],
        ));
  }
}
