import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import 'package:payment_alpha/models/paymentMethod.dart';
import 'package:payment_alpha/services/databaseAPI.dart';
part 'paymentMethodStore.g.dart';

DatabaseAPI _api = DatabaseAPI();

class PaymentMethodStore = PaymentMethodBase with _$PaymentMethodStore;

abstract class PaymentMethodBase with Store {
    @observable
  ObservableList<PaymentMethod> paymentMethods = ObservableList<PaymentMethod>.of([]);

    @action
    Future<Null> fetchPaymentMethods() async {
      QuerySnapshot query = await _api.fetchPaymentMethod();
      paymentMethods = ObservableList.of(
        query.documents
            .map((DocumentSnapshot doc) => PaymentMethod.fromJson(doc.data))
            .toList(),
      );
    }

    @action
    void initState() {
      fetchPaymentMethods();
    }
}
