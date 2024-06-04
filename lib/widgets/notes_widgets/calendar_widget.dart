import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/default_colors.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 3),
                blurRadius: 4,
                spreadRadius: 0)
          ]),
      child: CalendarControllerProvider(
        controller: EventController(),
        child: SizedBox(
          width: double.infinity,
          height: 350,
          child: MonthView(
            useAvailableVerticalSpace: true,
            headerStringBuilder: (date, {secondaryDate}) =>
                DateFormat("MMMM yyyy").format(date),
            headerStyle: const HeaderStyle(
              decoration: BoxDecoration(color: Colors.white),
              headerTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            showBorder: false,
            weekDayBuilder: (day) {
              const List<String> days = [
                "Mon",
                "Tue",
                "Wed",
                "Thu",
                "Fri",
                "Sat",
                "Sun"
              ];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Text(days[day],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                    textAlign: TextAlign.center),
              );
            },
            startDay: WeekDays.sunday,
            cellBuilder: (date, event, isToday, isInMonth) {
              return CircleAvatar(
                radius: 50,
                backgroundColor: isToday ? pink : Colors.transparent,
                child: Text(
                  date.day.toString(),
                  style: TextStyle(
                      color: isInMonth ? Colors.black87 : Colors.black26),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
