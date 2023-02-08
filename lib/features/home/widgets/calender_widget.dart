import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();
  final formatted = DateFormat("MMMM");
  void _onDaySelected(DateTime day, DateTime focusedday) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              DateFormat('MMMM').format(DateTime(0, today.month)).toString(),
              style: GoogleFonts.anton(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          today.year.toString(),
          style: GoogleFonts.anton(
            color: Colors.white,
            fontSize: 35,
          ),
        ),
        TableCalendar(
          locale: "en_US",
          headerStyle: const HeaderStyle(
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: today,
          onDaySelected: _onDaySelected,
        ),
      ],
    );
  }
}
