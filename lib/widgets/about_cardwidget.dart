import 'package:flutter/material.dart';

Widget aboutCard(String title, String subtitle, Color color, IconData icon) {
  return Card(
    elevation: 3,
    child: ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Icon(icon as IconData?, color: Colors.white),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.open_in_new),
    ),
  );
}
