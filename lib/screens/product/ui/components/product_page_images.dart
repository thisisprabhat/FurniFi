part of '../product_details_page.dart';

class ProductPageImages extends StatefulWidget {
  const ProductPageImages({super.key});

  @override
  State<ProductPageImages> createState() => _ProductPageImagesState();
}

class _ProductPageImagesState extends State<ProductPageImages> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            onPageChanged: (val) => setState(() => _currentIndex = val),
            itemCount: 10,
            itemBuilder: (_, index) {
              return Image.network(
                Assets.sofaNetwork1,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: paddingDefault / 2,
            horizontal: paddingDefault,
          ),
          child: ScrollablePill(
            width: 150,
            thickness: 6,
            currentIndex: _currentIndex,
            lengthOfItems: 10,
          ),
        ),
      ],
    );
  }
}
