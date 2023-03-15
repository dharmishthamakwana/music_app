import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/musicProvider.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  MusicProvider? musicProviderTrue;
  MusicProvider? musicProviderFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<MusicProvider>(context, listen: false).initMusic();
  }

  @override
  Widget build(BuildContext context) {
    musicProviderFalse = Provider.of(context, listen: false);
    musicProviderTrue = Provider.of(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/music/kesariya.jpg",
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black54),

            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/music/ke.jpg",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        musicProviderFalse!.startMusic();
                      },
                      icon: Icon(
                        Icons.play_circle ,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        musicProviderFalse!.pauseMusic();
                      },
                      icon: Icon(
                        Icons.pause_circle,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        musicProviderFalse!.pauseMusic();
                      },
                      icon: Icon(
                        Icons.volume_mute,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Slider(value: double.infinity, onChanged: (){})
          ],
        ),
      ),
    );
  }
}
