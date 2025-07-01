// Superclass
class Shoe {
  String brand;
  String size;

  Shoe(this.brand, this.size);

  // Common method to be overridden
  void wear() {
    print('Wearing a shoe from $brand, size $size.');
  }
}

// Subclass: Sneaker
class Sneaker extends Shoe {
  String style;

  Sneaker(String brand, String size, this.style) : super(brand, size);

  @override
  void wear() {
    print('Putting on my $style sneaker from $brand, size $size.');
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

// Subclass: Boot
class Boot extends Shoe {
  String terrain;

  Boot(String brand, String size, this.terrain) : super(brand, size);

  @override
  void wear() {
    print(
        'Wearing boots suitable for $terrain terrain from $brand, size $size.');
  }
}

void main() {
  // Create instances of different shoe types
  Shoe mySneaker = Sneaker('Nike', '9', 'Running');
  Shoe myFormalShoe = FormalShoe('Clarks', '10', 'Business Meeting');
  Shoe myBoot = Boot('Timberland', '11', 'Mountain');

  // Call the common method; each subclass has its own implementation
  mySneaker.wear(); // Output: Putting on my Running sneaker from Nike, size 9.
  myFormalShoe
      .wear(); // Output: Wearing formal shoes suitable for Business Meeting from Clarks, size 10.
  myBoot
      .wear(); // Output: Wearing boots suitable for Mountain terrain from Timberland, size 11.
}
