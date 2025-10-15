import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {'name': 'Islamabad', 'desc': 'The beautiful capital city surrounded by hills.'},
    {'name': 'Lahore', 'desc': 'The heart of Pakistan, rich in culture and food.'},
    {'name': 'Karachi', 'desc': 'The city of lights and Pakistan’s economic hub.'},
    {'name': 'Peshawar', 'desc': 'The gateway to the Khyber Pass with deep history.'},
    {'name': 'Quetta', 'desc': 'Known as the fruit garden of Pakistan.'},
    {'name': 'Multan', 'desc': 'The city of saints and ancient heritage.'},
    {'name': 'Faisalabad', 'desc': 'Pakistan’s textile and industrial center.'},
    {'name': 'Murree', 'desc': 'A popular hill station with scenic beauty.'},
    {'name': 'Hunza', 'desc': 'A valley of mountains and breathtaking views.'},
    {'name': 'Skardu', 'desc': 'Gateway to the world’s highest peaks.'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(Icons.location_on, color: Colors.teal),
            title: Text(destinations[index]['name']!),
            subtitle: Text(destinations[index]['desc']!),
          ),
        );
      },
    );
  }
}
