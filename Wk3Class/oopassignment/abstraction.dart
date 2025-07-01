// Abstract class
abstract class Shoe {
  String brand;
  String size;

  Shoe(this.brand, this.size);

  // Abstract method - must be implemented by subclasses
  void wear();

  // You can also have concrete methods
  void describe() {
    print('This is a shoe from $brand, size $size.');
  }
}

// Subclass: Sneaker
class Sneaker extends Shoe {
  String style;

  Sneaker(String brand, String size, this.style) : super(brand, size);

  @override
  void wear() {
    print('Wearing my $style sneaker from $brand, size $size.');
  }
}

// Subclass: FormalShoe
class FormalShoe extends Shoe {
  String occasion;

  FormalShoe(String brand, String size, this.occasion) : super(brand, size);

  @override
  void wear() {
    print(
        'Wearing formal shoes suitable for $occasion from $brand, size $size.');
  }
}

void main() {
  // Cannot instantiate abstract class directly
  // var myShoe = Shoe('Generic', '9'); // This will cause an error

  // Instantiate subclasses
  Sneaker mySneaker = Sneaker('Nike', '10', 'Running');
  FormalShoe myFormalShoe = FormalShoe('Clarks', '11', 'Wedding');

  // Use methods
  mySneaker.describe(); // Output: This is a shoe from Nike, size 10.
  mySneaker.wear(); // Output: Wearing my Running sneaker from Nike, size 10.

  myFormalShoe.describe(); // Output: This is a shoe from Clarks, size 11.
  myFormalShoe
      .wear(); // Output: Wearing formal shoes suitable for Wedding from Clarks, size 11.
}
