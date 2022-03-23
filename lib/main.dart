import 'package:flutter/material.dart';
import 'package:flutter_pagar_tarjetas/pages/home.dart';
import 'package:flutter_pagar_tarjetas/pages/pago_completado.dart';
import 'package:flutter_pagar_tarjetas/pages/tarjeta_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagar con tarjetas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeTarjetasPage(),
        'pago_completado': (_) => PagoCompletoPage(),
        'tarjeta': (_) => TarjetaPage(),
      },
    );
  }
}
