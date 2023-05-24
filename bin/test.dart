class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car (this.brand, this.model, this.year,this.milesDriven) {
    milesDriven = 0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2018);
  car1.drive(10000.5);

  Car car2 = Car("Honda", "Civic", 2019);
  car2.drive(7500.2);

  Car car3 = Car("Ford", "Mustang", 2020);
  car3.drive(5000.8);

  print("Car 1 - Brand: ${car1.getBrand()}, Model: ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()}");
  print("Car 2 - Brand: ${car2.getBrand()}, Model: ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()}");
  print("Car 3 - Brand: ${car3.getBrand()}, Model: ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()}");

  print("Total number of cars created: ${Car.numberOfCars}");
}
