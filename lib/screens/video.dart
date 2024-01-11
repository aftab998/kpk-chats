import 'package:flutter/material.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: Container(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text(
              "VIDEO FORMATE EXCEPTION",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
             Icon(Icons.settings,size:40),
            Text("This videos are not supportable for this device"),
              ] ,             
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Center(
            child: Text(
              "Videos can not be converted into\nR.drawable location",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(height: 250,),
          IconButton(
              onPressed: () {
                _showBottomSheet();
              },
              icon: Icon(Icons.arrow_circle_up))
        ],
      ),
    );
  }
}
