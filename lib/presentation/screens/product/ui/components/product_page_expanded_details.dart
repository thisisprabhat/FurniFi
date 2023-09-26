part of '../product_details_page.dart';

class ProductPageExpandedDetails extends StatefulWidget {
  const ProductPageExpandedDetails({
    super.key,
    required this.title,
    required this.details,
  });
  final String title;
  final String details;

  @override
  State<ProductPageExpandedDetails> createState() =>
      _ProductPageExpandedDetailsState();
}

class _ProductPageExpandedDetailsState
    extends State<ProductPageExpandedDetails> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AnimatedSize(
      alignment: Alignment.topCenter,
      curve: Curves.linearToEaseOut,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 300),
      child: Container(
        margin: const EdgeInsets.only(
          top: paddingDefault / 2,
          left: paddingDefault,
          right: paddingDefault,
        ),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: borderRadiusMedium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => setState(() => _isExpanded = !_isExpanded),
              borderRadius: borderRadiusMedium,
              child: Container(
                padding: const EdgeInsets.all(paddingDefault),
                decoration: BoxDecoration(
                  color: _isExpanded ? colorScheme.surfaceVariant : null,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            _isExpanded ? FontWeight.w500 : FontWeight.w400,
                      ),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                    )
                  ],
                ),
              ),
            ),
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.all(paddingDefault),
                child: Text(widget.details),
              ),
          ],
        ),
      ),
    );
  }
}
