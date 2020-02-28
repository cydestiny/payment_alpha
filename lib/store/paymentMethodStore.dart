import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import 'package:payment_alpha/models/paymentMethod.dart';
import 'package:payment_alpha/services/databaseAPI.dart';
part 'paymentMethodStore.g.dart';

DatabaseAPI _api = DatabaseAPI();

class paymentMethodStore = paymentMethodBase with _$paymentMethodStore;

abstract class paymentMethodBase with Store {
    @observable
  ObservableList<PaymentMethod> paymentMethods = ObservableList<PaymentMethod>.of([]);

    @action
    Future<Null> fetchProducts(String categoryUid) async {
      QuerySnapshot query = await _api.fetchPaymentMethod();
      paymentMethods = ObservableList.of(
        query.documents
            .map((DocumentSnapshot doc) => PaymentMethod.fromJson(doc.data))
            .toList(),
      );
    }
}