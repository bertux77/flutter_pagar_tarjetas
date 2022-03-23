import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoCompletoPage extends StatelessWidget {
  const PagoCompletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Pago Realizado!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff284879),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              FontAwesomeIcons.star,
              color: Colors.white54,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pago realizado correctamente',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
