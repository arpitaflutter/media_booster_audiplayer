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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 60,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 15,),
                      Text("Search",style: TextStyle(fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("New Music Alert",style: TextStyle(color: Colors.white,fontSize: 20)),
                ],
              ),
              ListView.builder(itemBuilder: (context, index) {

              },
                itemCount: ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
