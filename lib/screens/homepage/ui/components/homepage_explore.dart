part of '../homepage.dart';

enum Category {
  popular,
  chair,
  table,
  sofa,
  bed,
  bookSelf,
  cabinetDrawer,
  lamp,
}

class HomePageExplore extends StatefulWidget {
  const HomePageExplore({super.key});

  @override
  State<HomePageExplore> createState() => _HomePageExploreState();
}

class _HomePageExploreState extends State<HomePageExplore> {
  Category selectedCategory = Category.popular;

  String _getImageIcon(Category? category) {
    if (category != null) {
      return '${Assets.baseImages}${category.toString().split('.').last}.png';
    } else {
      return Assets.popular;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: paddingDefault,
        top: paddingDefault,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppString.explore,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              // color: colorScheme.outlineVariant,
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Category.values.length,
              itemBuilder: (_, index) {
                final category = Category.values[index];
                bool isSelected = selectedCategory == category;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                  borderRadius: borderRadiusSmall,
                  child: Container(
                    margin: const EdgeInsets.all(paddingDefault / 4),
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: borderRadiusSmall,
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.surface,
                    ),
                    child: Center(
                      child: Image.asset(
                        _getImageIcon(category),
                        height: 40,
                        width: 40,
                        color: isSelected
                            ? colorScheme.onPrimary
                            : colorScheme.outlineVariant,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
