import 'package:flutter/material.dart';

Widget cardWidget(
  Icon icon,
  String title,
  String subtitle,
  VoidCallback onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: ListTile(
          leading: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 196, 225, 249),
                  const Color.fromARGB(255, 244, 222, 231),
                ],
                begin: Alignment(0, -.8),
              ),
            ),
            child: icon,
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(subtitle, style: TextStyle(color: Colors.blueGrey)),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    ),
  );
}

Widget dot(Color color) {
  return Container(
    height: 8,
    width: 5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3),
      color: color,
    ),
  );
}
