import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Text(
              "Message History",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green),
            ),
            title: Text(
              "Kpk chat",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "Recently Done messaging",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
