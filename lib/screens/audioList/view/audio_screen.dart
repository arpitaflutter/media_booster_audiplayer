import 'package:flutter/material.dart';

class audio_screen extends StatefulWidget {
  const audio_screen({Key? key}) : super(key: key);

  @override
  State<audio_screen> createState() => _audio_screenState();
}

class _audio_screenState extends State<audio_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 60,width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 15,),
                  Text("Search")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
