import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          floating: true,
          stretch: true,
          pinned: true,
          backgroundColor: Colors.teal,
          collapsedHeight: 80,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.blurBackground,
              StretchMode.zoomBackground,
            ],
            background: Image.asset(
              "C:\\Users\\Administrator\\Documents\\tiktok_clone\\lib\\features\\assets\\images\\siha_test.jpg",
              fit: BoxFit.cover,
            ),
            title: const Text("Hello!"), //타이틀을 여기다 놓으면 배경안에 있는 제목이 됨!!
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(),
          ),
          itemExtent: 100,
        ),
      ],
    );
  }
}
