class Vehicle {
  final String make;
  final String model;
  double charge240;
  dynamic fescore;
  double barrels08;
  double barrelsa08;
  double charge120;




  Vehicle({this.make = '', this.model = '', this.charge240 = 0, this.fescore ='', this.barrelsa08 = 0, this.barrels08 = 0, this.charge120 = 0, });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      make: json['make'] ,
      model: json['model'],
      charge240: json['charge240'],
      fescore: json['fescore'],
      barrelsa08 : json['barrels08'],
      barrels08 : json['barrels08'],
      charge120: json['charge120'],


    );
  }
}
/*
   int city08;
  int city08U;
  int citya08;
  int citya08U;

     city08: json['city08'],
      city08U: json['city08U'],
      citya08: json['citya08'],
      citya08U: json['citya08U'],

      this.city08 = 0, this.city08U = 0, this.citya08 = 0, this.citya08U = 0
    */