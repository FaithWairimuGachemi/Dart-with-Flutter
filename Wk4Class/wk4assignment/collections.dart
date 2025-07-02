void main() {
  // -------- List Demo --------
  // Suitable when order matters and duplicates are allowed
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('Initial List: $fruits');

  // Adding items
  fruits.add('Date');
  print('After adding: $fruits');

  // Removing items
  fruits.remove('Banana');
  print('After removing Banana: $fruits');

  // Iterating over list
  print('Iterating over List:');
  for (var fruit in fruits) {
    print('- $fruit');
  }

  // -------- Set Demo --------
  // Suitable when uniqueness is required, order is not important
  Set<int> uniqueNumbers = {1, 2, 3};
  print('\nInitial Set: $uniqueNumbers');

  // Adding items
  uniqueNumbers.add(4);
  uniqueNumbers.add(2); // Duplicate, won't be added
  print('After adding 4 and duplicate 2: $uniqueNumbers');

  // Removing items
  uniqueNumbers.remove(1);
  print('After removing 1: $uniqueNumbers');

  // Iterating over set
  print('Iterating over Set:');
  for (var number in uniqueNumbers) {
    print('- $number');
  }

  // -------- Map Demo --------
  // Suitable when key-value pairs are needed
  Map<String, String> countryCapitals = {
    'USA': 'Washington D.C.',
    'France': 'Paris',
    'Japan': 'Tokyo'
  };
  print('\nInitial Map: $countryCapitals');

  // Adding a new key-value pair
  countryCapitals['Germany'] = 'Berlin';
  print('After adding Germany: $countryCapitals');

  // Removing a key
  countryCapitals.remove('France');
  print('After removing France: $countryCapitals');

  // Accessing values
  String capitalOfJapan = countryCapitals['Japan'] ?? 'Unknown';
  print('Capital of Japan: $capitalOfJapan');

  // Iterating over map
  print('Iterating over Map:');
  countryCapitals.forEach((country, capital) {
    print('- $country: $capital');
  });
}
