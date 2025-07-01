// Superclass
class Shoe {
  String brand;
  String size;

  Shoe(this.brand, this.size);

  void wear() {
    print('Wearing the $brand shoe.');
  }
}

// Subclass
class Sneaker extends Shoe {
  String style;

  Sneaker(String brand, String size, this.style) : super(brand, size);

  // Override the wear method
  @override
  void wear() {
    print('Wearing the $style sneaker from $brand, size $size.');
  }

  void displayStyle() {
    print('This sneaker is a $style style.');
  }
}

void main() {
  // Create an instance of Sneaker
  Sneaker mySneaker = Sneaker('Nike', '10', 'Running');

  // Call methods
  mySneaker.wear(); // Output: Wearing the Running sneaker from Nike, size 10.
  mySneaker.displayStyle(); // Output: This sneaker is a Running style.
}
