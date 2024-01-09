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
          snap:
              true, //snap은 floating과 같이 true를 하면 좋을 거야! 약간 마우스롤 위로 올리면 appbar가 확 내려옴!
          floating: true, //마우스를 위로 올릴 때 appbar가 보이게 하는 역할("hello!")
          pinned: true, //배경 색깔과 title을 보여줌
          stretch: true,
          backgroundColor: Colors.teal,
          collapsedHeight: 80,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.blurBackground,
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
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
            childCount: 50,
            (context, index) => Container(
              color: Colors.amber[100 * (index % 9)],
              child: Align(
                alignment: Alignment.center,
                child: Text("Item $index"),
              ),
            ),
          ),
          itemExtent: 100,
        ),
      ],
    );
  }
}
