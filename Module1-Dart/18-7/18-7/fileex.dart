import 'dart:io';

void main()async
{
  File file = File("E://xyz.txt");
  // file.writeAsString('Hello World!\n');
  // file.writeAsString('tops!\n');
   file.writeAsString('Appended line.', mode: FileMode.append);
  file.writeAsString('Appended line.', mode: FileMode.append);

  if(await file.exists())
  {
    String contents =  await file.readAsString();
    print(contents);
  }
}