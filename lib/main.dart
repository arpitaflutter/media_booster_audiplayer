import 'package:flutter/material.dart';
import 'package:media_booster_audiplayer/screens/audioList/provider/audio_provider.dart';
import 'package:media_booster_audiplayer/screens/audioList/view/audio_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => audio_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => audio_screen(),
        },
      ),
    ),
  );
}