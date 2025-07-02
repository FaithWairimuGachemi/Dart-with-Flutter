void main() {
  // Current date and time
  DateTime now = DateTime.now();
  print('Current date and time: $now');

  // Formatting DateTime to a string
  String formattedDate =
      '${now.year}-${_twoDigits(now.month)}-${_twoDigits(now.day)} '
      '${_twoDigits(now.hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)}';
  print('Formatted date: $formattedDate');

  // Parsing a date string into DateTime
  String dateString = '2024-10-15 14:30:00';
  DateTime parsedDate = DateTime.parse(dateString);
  print('Parsed date: $parsedDate');

  // Adding 5 days
  DateTime futureDate = now.add(Duration(days: 5));
  print('Date after adding 5 days: $futureDate');

  // Subtracting 3 days
  DateTime pastDate = now.subtract(Duration(days: 3));
  print('Date after subtracting 3 days: $pastDate');

  // Calculating difference between two dates
  Duration difference = futureDate.difference(pastDate);
  print('Difference in days: ${difference.inDays}');

  // Additional: Getting just the date part
  DateTime onlyDate = DateTime(now.year, now.month, now.day);
  print('Today\'s date without time: $onlyDate');
}

// Helper function to format with two digits
String _twoDigits(int n) => n.toString().padLeft(2, '0');
