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

  String _getCategoryImageIcon(Category? category) {
    switch (category) {
      case Category.popular:
        return Assets.popular;
      case Category.chair:
        return Assets.chair;
      case Category.table:
        return Assets.table;
      case Category.sofa:
        return Assets.sofa;
      case Category.bed:
        return Assets.bed;
      case Category.bookSelf:
        return Assets.bookSelf;
      case Category.cabinetDrawer:
        return Assets.cabinetDrawer;
      case Category.lamp:
        return Assets.lamp;
      default:
        return '';
    }
  }

  String _getCategoryText(Category? category) {
    switch (category) {
      case Category.popular:
        return AppString.popular;
      case Category.chair:
        return AppString.chair;
      case Category.table:
        return AppString.table;
      case Category.sofa:
        return AppString.sofa;
      case Category.bed:
        return AppString.bed;
      case Category.bookSelf:
        return AppString.bookSelf;
      case Category.cabinetDrawer:
        return AppString.cabinet;
      case Category.lamp:
        return AppString.lamp;
      default:
        return 'not defined';
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
                return Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                        borderRadius: borderRadiusMedium,
                        child: Container(
                          margin: const EdgeInsets.all(paddingDefault / 4),
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: borderRadiusMedium,
                            color: isSelected
                                ? colorScheme.primary
                                : colorScheme.surface,
                          ),
                          child: Center(
                            child: Image.asset(
                              _getCategoryImageIcon(category),
                              height: 40,
                              width: 40,
                              color: isSelected
                                  ? colorScheme.onPrimary
                                  : colorScheme.outlineVariant,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      _getCategoryText(category),
                      style: TextStyle(
                        color: isSelected
                            ? colorScheme.primary
                            : colorScheme.outlineVariant,
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
