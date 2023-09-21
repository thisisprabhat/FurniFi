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
  int _currentIndex = 0;

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
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            onPageChanged: (val) => setState(() => _currentIndex = val),
            itemCount: 10,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: Image.asset(Assets.homePageImage1),
              );
            },
          ),
        ),
        ScrollablePill(
          pillColor: Theme.of(context).colorScheme.outlineVariant,
          currentIndex: _currentIndex,
          lengthOfItems: 10,
        ),
      ],
    );
  }
}
