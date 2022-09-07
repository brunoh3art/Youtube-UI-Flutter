import 'package:flutter/material.dart';
import 'package:flutter_app/data.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).canvasColor,
      floating: true,
      leadingWidth: 100.0,
      leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset("assets/yt_logo_dark.png")),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(
            onPressed: () {},
            iconSize: 24.0,
            icon: CircleAvatar(
              foregroundImage: NetworkImage(currentUser.avatar),
              child: const Text('BM'),
            ))
      ],
    );
  }
}
