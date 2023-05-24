class A {
  void addition() {
    print(50 + 10);
  }

  void student() {
    int age = 25;
  }

  void data() {
    String name = "Walid";
  }
}

class B extends A {
  @override
  void student() {
    // TODO: implement student
    super.student();

  }

  divide() {
    print(10 * 2);
    return divide();
  }
}

void main() {
  var a = A();

  var b = B();
  

  b.addition();
  b.student();
  b.divide();

  //print (b);
}
