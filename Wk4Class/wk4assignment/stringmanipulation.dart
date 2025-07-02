void main() {
  // Original strings
  String str1 = 'Hello';
  String str2 = 'World';

  // String Concatenation
  String concatenated = str1 + ' ' + str2;
  print('Concatenated String: $concatenated');

  // String Interpolation
  String greeting = 'Greeting: $str1, $str2!';
  print(greeting);

  // Substring Extraction
  String substring = concatenated.substring(0, 5); // 'Hello'
  print('Substring (0-5): $substring');

  // Case Conversion
  String upperCase = concatenated.toUpperCase();
  String lowerCase = concatenated.toLowerCase();
  print('Uppercase: $upperCase');
  print('Lowercase: $lowerCase');

  // Reverse a String
  String reversed = reverseString(concatenated);
  print('Reversed String: $reversed');

  // Count Length
  int length = concatenated.length;
  print('Length of String: $length');
}

// Function to reverse a string
String reverseString(String input) {
  return input.split('').reversed.join();
}
