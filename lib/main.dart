import 'package:flutter/material.dart';
import 'package:music_app/screen/musicScreen/provider/musicProvider.dart';
import 'package:music_app/screen/musicScreen/view/music_screen.dart';

import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MusicProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => MusicScreen(),
        },
      ),
    ),
  );
}