import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_app/widgets/body_add_button.dart';
import 'package:netflix_app/widgets/list_view_image.dart';
import 'package:netflix_app/widgets/stack_view_big_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        toolbarHeight: 100,
        title: const Text('For Axel'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_card_rounded, size: 30)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.search, size: 30)),
        ],
      ),
      body: ListView(children: const [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            BodyAddButton(),
            StackViewBigImage(),
            ListViewImage(),
            ListViewImage(),
          ],
        ),
      ]),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_card), label: 'New and Home'),
          BottomNavigationBarItem(icon: Icon(Icons.admin_panel_settings_outlined), label: 'My Netflix'),
        ]),
      ),
    );
  }
}
