import 'package:flutter/material.dart';
import 'package:movies/core/screens/basic_screen.dart';

import '../../../../core/widgets/sliver_custom_app_bar/sliver_custom_app_bar.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  late final ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  scrollToTop(){
    _controller.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
           SliverCustomAppBar(onUpPressed: scrollToTop,)
        ],
      ),
    );
  }
}

