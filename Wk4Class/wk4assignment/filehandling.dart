import 'dart:io';

void main() async {
  // Specify input and output file paths
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';

  try {
    // Read content from input file
    String content = await File(inputFilePath).readAsString();
    print('Content of $inputFilePath:');
    print(content);

    // Write new data into output file
    String newData = 'This is some new data written to the output file.\n';
    await File(outputFilePath).writeAsString(newData);
    print('Data successfully written to $outputFilePath.');
  } catch (e) {
    // Handle errors (e.g., file not found, permission issues)
    print('Error during file operation: $e');
  }
}
