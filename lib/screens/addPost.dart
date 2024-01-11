import 'package:flutter/material.dart';

class addPost extends StatefulWidget {
  const addPost({super.key});

  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Post",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Upload your moments fere which anyone can\n see that and they can give you suggestions.!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: "Write your moment here.",
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text(
                    "Add Attachment",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        size: 120,
                        color: Colors.black,
                      )),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple),
                    child: Center(
                      child: Text(
                        "UPLOAD",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
