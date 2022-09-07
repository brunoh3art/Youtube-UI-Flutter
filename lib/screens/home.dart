import 'package:flutter/material.dart';
import 'package:flutter_app/data.dart';
import 'package:flutter_app/components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HeaderComponent(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
