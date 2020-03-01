import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:payment_alpha/store/paymentMethodStore.dart';
import 'package:provider/provider.dart';
import 'package:payment_alpha/models/paymentMethod.dart';
import 'package:payment_alpha/screens/home/widgets/paymentMethod/paymentMethodCard.dart';


class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text(
            "Payment Method List",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        PaymentMethodList(),
      ],
    );
  }
}

class PaymentMethodList extends StatefulWidget {
  @override
  _PaymentMethodListState createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends State<PaymentMethodList> {
  ScrollController controller;
  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void scrollToStart(ScrollController controller) {
    if (controller.hasClients) {
      controller.animateTo(
        0,
        curve: Curves.decelerate,
        duration: Duration(milliseconds: 200),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final PaymentMethodStore store = Provider.of(context);
    return Observer(
        builder: (context) {
          scrollToStart(controller);
          return SizedBox(
            height: 250,
            child: ListView(
              padding: const EdgeInsets.only(left: 32.0),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: store.paymentMethods.map((PaymentMethod paymentMethod) {
                return Provider<PaymentMethod>.value(
                  value: paymentMethod,
                  child: PaymentMethodCard(),
                );
              }).toList(),
            ),
          );
        });
  }
}
