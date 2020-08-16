import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  VideoPlayerController video;
  Future<void> initialiseVideo;

  @override
  void initState() {
    video = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //video=VideoPlayerController.asset('images/sampleVideo.mp4');
    initialiseVideo=video.initialize();
    video.setLooping(true);
    video.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    video.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Video'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          FutureBuilder(
            future: initialiseVideo,
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.done){
                return AspectRatio(
                  //aspectRatio: video.value.aspectRatio,
                  aspectRatio: 0.9,
                  child: VideoPlayer(video),
                );
              }
              else {
                return Center(
                  child: new CircularProgressIndicator(),
                );
              }
            },
          ),
          SizedBox(height: 20,),
          IconButton(
            iconSize: 50,
            icon: Icon(video.value.isPlaying?(Icons.pause):(Icons.play_arrow),),
            onPressed: (){
              setState(() {
                if(video.value.isPlaying){
                  video.pause();
                }
                else{video.play();}
              });
            },
          )
        ],
      ),

    );
  }
}
