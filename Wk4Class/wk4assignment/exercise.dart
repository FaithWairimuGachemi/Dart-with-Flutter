import 'dart:io';

void main() async {
  List<Map<String, String>> entries = [];

  // Simulate user input
  print('Enter some text (type "exit" to finish):');

  while (true) {
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      break;
    }

    // String manipulation: convert to uppercase and trim
    String manipulated = input.trim().toUpperCase();

    // Log timestamp
    String timestamp = _getFormattedDateTime();

    // Store in collection
    entries.add({
      'original': input,
      'manipulated': manipulated,
      'timestamp': timestamp,
    });

    print('Stored entry at $timestamp.');
    print('Enter more text or type "exit" to finish:');
  }

  // Save to file
  String filePath = 'log.txt';

  try {
    final sink = File(filePath).openWrite(mode: FileMode.write);

    for (var entry in entries) {
      sink.writeln('Timestamp: ${entry['timestamp']}');
      sink.writeln('Original: ${entry['original']}');
      sink.writeln('Manipulated: ${entry['manipulated']}');
      sink.writeln('---');
    }

    await sink.close();
    print('All entries saved to $filePath.');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

// Utility to get formatted current date and time
String _getFormattedDateTime() {
  DateTime now = DateTime.now();
  return '${now.year}-${_twoDigits(now.month)}-${_twoDigits(now.day)} '
      '${_twoDigits(now.hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)}';
}

String _twoDigits(int n) => n.toString().padLeft(2, '0');
