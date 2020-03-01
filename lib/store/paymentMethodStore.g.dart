// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethodStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaymentMethodStore on PaymentMethodBase, Store {
  final _$paymentMethodsAtom = Atom(name: 'PaymentMethodBase.paymentMethods');

  @override
  ObservableList<PaymentMethod> get paymentMethods {
    _$paymentMethodsAtom.context.enforceReadPolicy(_$paymentMethodsAtom);
    _$paymentMethodsAtom.reportObserved();
    return super.paymentMethods;
  }

  @override
  set paymentMethods(ObservableList<PaymentMethod> value) {
    _$paymentMethodsAtom.context.conditionallyRunInAction(() {
      super.paymentMethods = value;
      _$paymentMethodsAtom.reportChanged();
    }, _$paymentMethodsAtom, name: '${_$paymentMethodsAtom.name}_set');
  }

  final _$fetchPaymentMethodsAsyncAction = AsyncAction('fetchPaymentMethods');

  @override
  Future<Null> fetchPaymentMethods() {
    return _$fetchPaymentMethodsAsyncAction
        .run(() => super.fetchPaymentMethods());
  }

  final _$PaymentMethodBaseActionController =
      ActionController(name: 'PaymentMethodBase');

  @override
  void initState() {
    final _$actionInfo = _$PaymentMethodBaseActionController.startAction();
    try {
      return super.initState();
    } finally {
      _$PaymentMethodBaseActionController.endAction(_$actionInfo);
    }
  }
}
