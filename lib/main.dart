import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:payment_alpha/screens/home/homeScreen.dart';
import 'package:payment_alpha/store/paymentMethodStore.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(PaymentAlpha());

class PaymentAlpha extends StatefulWidget {
   @override
  _PaymentAlphaState createState() => _PaymentAlphaState();
}

class _PaymentAlphaState extends State<PaymentAlpha> {
  PaymentMethodStore store;

  @override
  void initState() {
    store = PaymentMethodStore();
    store.initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<PaymentMethodStore>.value(
      value: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
