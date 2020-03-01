class PaymentMethod {
  final String _name, _merchantID;

  String get name => _name;
  String get merchantID => _merchantID;

  PaymentMethod({
    String name,
    String merchantID,
  }) : _name = name,
       _merchantID = merchantID;

  factory PaymentMethod.fromJson(Map<String, dynamic> json){
    return PaymentMethod(
      name: json['name'],
      merchantID: json['merchantID']
    );
  }
}