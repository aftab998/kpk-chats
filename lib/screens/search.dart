import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                //maxLines: 1,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.search, size: 30)),
                    suffixIconColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter the user UID",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
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
                      "Kpk chat",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "Recently Done messaging",
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
