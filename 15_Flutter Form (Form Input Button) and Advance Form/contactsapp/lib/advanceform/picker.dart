import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';

class pickerApps extends StatefulWidget {
  const pickerApps({super.key});

  @override
  State<pickerApps> createState() => _pickerAppsState();
}

class _pickerAppsState extends State<pickerApps> {
  DateTime duesDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.blue[300]!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: currentColor,
        )
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Advanced Forms'),
          ),
          body: Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  buildDateCalendar(context),
                  const SizedBox(height: 30,),
                  colorPickers(context),
                  const SizedBox(height: 30,),
                  fileChooser(context)
                ],
              ))),
    );
  }

  Widget buildDateCalendar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Current Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(DateTime.now().year + 5),
                );
                setState(() {
                  if (selectDate != null) {
                    duesDate = selectDate;
                  }
                });
              },
              child: Text('Select Date', style: TextStyle(color: currentColor)),
            )
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(duesDate),
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget colorPickers(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Current Color Scheme'),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: currentColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 7,
                offset: const Offset(3, 0), // changes position of shadow
              ),
            ],
          ),
          height: 120,
          width: double.infinity,
        ),
        const SizedBox(height: 20,),
        Center(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(currentColor),
              ),
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Choose Color'),
                      content: BlockPicker(
                        pickerColor: currentColor, 
                        onColorChanged: (color) {
                          setState(() {
                            currentColor = color;
                          });
                        },
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, 
                          child: const Text('Save')
                        ),
                      ],
                    );
                  }
                );
              },
              child: const Text('Choose Color')),
        )
      ],
    );
  }

  Widget fileChooser(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('File Chooser'),
        const SizedBox(height: 10,),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(currentColor),
          ),
          onPressed: () {
            chooseFile();
          },
          child: const Text('Open File')
        )
      ],
    );
  }

  void chooseFile() async {
    final result = await FilePicker.platform.pickFiles();
    if ( result == null) return;

    final file = result.files.first;
    openFile(file);
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

}
