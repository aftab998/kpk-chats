import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    void showinfoSheet() {
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
                  Text("More Info",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("ACTIVITIES", style: TextStyle(fontSize: 18))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.warning_rounded,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("REPORT", style: TextStyle(fontSize: 18))
                    ],
                  ),
                ]),
              ),
            ));
          });
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                showinfoSheet();
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.0),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(children: [
                      Row(
                        children: [
                          Text(
                            "IAmAftab",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 24),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "3",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "50",
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Stars",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Follow",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Message",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: ListView(
                    children: [
                      Text(
                        "hi i am aftab",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
