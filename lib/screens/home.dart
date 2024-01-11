
import 'package:bharat_chat/screens/comments/comments.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List<Map<String, dynamic>> mydata = [
    {"name": "aftab", "imagePath": "", "post": "hi how r u"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    title: Text("aftab"),
                    subtitle: Text("Uploaded on 21-12-2023 20:05:23"),
                    trailing: IconButton(
                      icon: Icon(Icons.warning_rounded),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                title: const Text(
                                  'Report',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                content: Text(
                                  "Do you want to report this post?",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('CANCEL')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('REPORT')),
                                ],
                              );
                            }));
                      },
                    ),
                  ),

                  //Image.asset(""),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 280,
                      color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                        "play My Latest game @Made on Android\nplay on Android check my YouTube channel\n for game link"),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          Text("12")
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => comments()));
                              },
                              icon: Icon(Icons.chat)),
                          Text("9"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                          Text("5"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
