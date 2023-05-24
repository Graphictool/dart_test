void main(){
  Car car = Car();
  print(car.numberOfSeat);

  ElectricCar myTesla = ElectricCar();
//   This is method from Car class that we extends
  myTesla.drive();
//   this is method of his own class
  print(myTesla.batteryLevel);
}

class Car{
  int numberOfSeat = 5;

  void drive(){
    print('wheels turn.');
  }
}

class ElectricCar extends Car {
  int batteryLevel = 100;
  String name = 'tesla';

  void recharge(){
    batteryLevel = 100;
    //print(batteryLevel);
  }
}

class vehicle extends ElectricCar
{
  late String model;



}