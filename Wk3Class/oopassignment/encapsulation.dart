class Shoes {
  String _brand; //private variable
  int _size; //private variable
  String? _ssn; //private sensitive data

  //constructor
  Shoes(this._brand, this._size);

  //getter for brand
  String get brand => _brand;
  //setter for brand
  set brand(String brand) {
    _brand = brand;
  }

  //getter for size
  int get size => _size;
  //setter for size
  set size(int size) {
    if (size > 0) {
      _size = size;
    } else {
      print("Size must be above 0");
    }
  }

  //getter for ssn
  String? get ssn {
    if (_ssn != null) {
      print("Access of SSN is restricted");
      return _ssn;
    } else {
      print("SSN is not set");
      return null;
    }
  }

  //method to update SSN
  void updateSSN(String newSSN) {
    if (newSSN.isNotEmpty) {
      _ssn = newSSN;
    } else {
      print("Invalid SSN. SSn must not be empty!");
    }
  }
}

void main() {
  var shoes = Shoes("airforce", 4);

  print("Brand:${shoes.brand}");
  shoes.brand = "Adidas";
  print("Brand: ${shoes.brand}");

  print("Size: ${shoes.size}");
  shoes.size = 40;
  print("Size: ${shoes.size}");

  shoes.updateSSN('4809-65');
  print("SSN: ${shoes.ssn}");
}
