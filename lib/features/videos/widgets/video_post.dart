import 'package:flutter/material.dart';

class VideoPost extends StatefulWidget {
  const VideoPost({super.key});

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {

final VideoPlayerController _videoPlayerController =
  
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          color: Colors.teal,
        ),),
      ],
    );
  }
}
