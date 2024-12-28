class Vehicle {
  final String make;
  final String model;
  int charge240;
  dynamic fescore;



  Vehicle({this.make = '', this.model = '', this.charge240 = 0, this.fescore =''});

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      make: json['make'] ,
      model: json['model'],
      charge240: json['charge240'],
      fescore: json['fescore'],
    );
  }
}
