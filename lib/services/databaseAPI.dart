import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseAPI {
  Firestore _fs = Firestore.instance;

  Future<QuerySnapshot> fetchPaymentMethod(){
    return _fs
      .collection('paymentMethod')
      .where('active',isEqualTo: true)
      .getDocuments();
  }
}