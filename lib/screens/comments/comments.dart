import 'package:flutter/material.dart';

class comments extends StatefulWidget {
  const comments({super.key});

  @override
  State<comments> createState() => _commentsState();
}

class _commentsState extends State<comments> {
  @override
  Widget build(BuildContext context) {
    void showCommentSheet() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Expanded(
                child: Container(
              width: double.infinity,
              height: 200,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                child: Column(children: [
                  Text("More Info.",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Row(
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("REPORT", style: TextStyle(fontSize: 18))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.copy,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Copy", style: TextStyle(fontSize: 18))
                    ],
                  ),
                ]),
              ),
            ));
          });
    }

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "Replying on Mohd Sami's Post.",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green),
              ),
              title: Text(
                "Aftab Ahmad",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Waiting",
                style: TextStyle(fontSize: 16),
              ),
              trailing: IconButton(
                  onPressed: () {
                    showCommentSheet();
                  },
                  icon: Icon(Icons.more_vert)),
            );
          }))
        ]),
      ),
    );
  }
}
