import 'package:flutter/rendering.dart';
import 'package:payment_alpha/models/paymentMethod.dart';
import 'package:payment_alpha/screens/home/store/homeStore.dart';
import 'package:flutter/material.dart';
import 'package:payment_alpha/screens/home/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<homeStore>(
      create: (context) => homeStore(),
      child: Scaffold(
        // appBar: HomeAppBar(
        //   height: MediaQuery.of(context).size.height,
        // ),
        // bottomNavigationBar: BottomBar(),
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 64),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: PaymentMethodPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}