import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class DateCalendar extends StatefulWidget {
  const DateCalendar({super.key});

  @override
  State<DateCalendar> createState() => _DateCalendarState();
}

class _DateCalendarState extends State<DateCalendar> {
  DateTime duesDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.blue[300]!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Advance Forms'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              buildDateCalendar(context),
              const SizedBox(height: 30,),
              colorPickers(context),
            
            ],
          )
        )
      ),
    );
  }

  Widget buildDateCalendar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Current Date'),
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
              child: Text('Select Date'),
            )
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(duesDate), style: TextStyle(fontSize: 20),),
      ],
    );
  }

  Widget colorPickers(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Current Color'),
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
            onPressed: () {}, 
            child: const Text('Choose Color')
          ),
        )
      ],
    );
  }

/*   Widget fileChooser(BuildContext context) {

  } */
}

