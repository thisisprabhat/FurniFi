part of '../homepage.dart';

class HomepageScrollableImages extends StatefulWidget {
  const HomepageScrollableImages({super.key});

  @override
  State<HomepageScrollableImages> createState() =>
      _HomepageScrollableImagesState();
}

class _HomepageScrollableImagesState extends State<HomepageScrollableImages>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
