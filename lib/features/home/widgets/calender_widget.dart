import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedday) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "NOVEMBER",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
          ),
        ),
        const Text(
          "2022",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
          ),
        ),
        const Container(
          child: TableCalendar(
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
        ),
      ],
    );
  }
}
