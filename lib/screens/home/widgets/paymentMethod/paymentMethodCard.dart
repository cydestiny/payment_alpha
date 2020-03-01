import 'package:flutter/material.dart';
import 'package:payment_alpha/models/paymentMethod.dart';
import 'package:provider/provider.dart';


class PaymentMethodCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final PaymentMethod paymentMethod = Provider.of(context);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 65,
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Text(
              paymentMethod.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 115,
            width: 130,
            alignment: Alignment.topCenter,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 12),
            height: 30,         
            ),          
        ],
      ),
    );
  }
}
