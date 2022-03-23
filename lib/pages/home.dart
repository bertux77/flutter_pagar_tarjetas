import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_pagar_tarjetas/data/tarjetas.dart';
import 'package:flutter_pagar_tarjetas/pages/tarjeta_page.dart';

import '../helpers/mostrar_alerta.dart';
import '../helpers/navegar_fadein.dart';
import '../widgets/total_pay_button.dart';

class HomeTarjetasPage extends StatelessWidget {
  const HomeTarjetasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pagar',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff284879),
          actions: [
            IconButton(
              onPressed: () async {
                // mostrarLoading(context);

                // await Future.delayed(Duration(seconds: 2));
                // Navigator.pop(context);
                mostrarAlerta(context, 'titulo', 'mensaje');
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              width: size.width,
              height: size.height,
              top: 200,
              child: PageView.builder(
                  controller: PageController(viewportFraction: 0.85),
                  physics: const BouncingScrollPhysics(),
                  itemCount: tarjetas.length,
                  itemBuilder: (_, i) {
                    final tarjeta = tarjetas[i];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            navegarFadeIn(context, const TarjetaPage()));
                      },
                      child: Hero(
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
                    );
                  }),
            ),
            Positioned(bottom: 0, child: TotalPayButton()),
          ],
        ));
  }
}
