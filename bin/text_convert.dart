import 'dart:io';


Future<void> main(List<String> arguments) async {
  print('started');
  var inputFile = File('C:\\FlutterProjects\\text_convert\\bin\\input.csv');
  var outputFile = File('C:\\FlutterProjects\\text_convert\\bin\\links.dart');

  // Read the file contents
  try {
    //List<String> lines = await inputFile.readAsLines();
  String lines= await inputFile.readAsString();
   print(lines);
    // Process the lines (you can modify as needed)
    print("number of lines found ${lines.length}");


    var formattedLines = lines.split(',').toList();
    // var formattedLines = lines
    //     .map((line) => line.split(','))
    //     .toList();


    print("number of formatted lines found ${formattedLines.length}");

    // Write to another file

  if(await outputFile.exists())
  { await outputFile.delete();}

    String outputLine="[";
    for(int i=0;i<formattedLines.length;i++){
      outputLine=outputLine+"'"+formattedLines[i]+"'"+',';
    }
  outputLine=outputLine+'];';
  await outputFile.writeAsString(outputLine);

  } catch (e) {
print(e);
  }


}
