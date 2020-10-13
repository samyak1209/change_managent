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
    video = VideoPlayerController.network("https://github.com/samyak1209/change_managent/blob/master/TcsVideo.mp4?raw=true");
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
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);*/
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/tcslogo.png'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromRGBO(99,194,157,1),
                    Color.fromRGBO(61,133,198,1)
                  ])
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.search,color: Colors.white,),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.add_alert,color: Colors.white,),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.account_circle,color: Colors.white,),
                  onPressed: null),
            ],
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 150,),
          FutureBuilder(
            future: initialiseVideo,
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.done){
                return AspectRatio(
                  aspectRatio: video.value.aspectRatio,
                  //aspectRatio: 0.9,
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
