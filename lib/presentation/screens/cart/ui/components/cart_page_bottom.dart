part of '../cart_page.dart';

class CartPageBottom extends StatelessWidget {
  const CartPageBottom({
    super.key,
    this.total,
    this.onCheckoutPressed,
    this.onPromoButtonPressed,
    this.promoValue,
  });
  final String? total;
  final VoidCallback? onCheckoutPressed;
  final VoidCallback? onPromoButtonPressed;
  final Function(String)? promoValue;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(paddingDefault),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorScheme.background,
              borderRadius: borderRadiusSmall,
              boxShadow: const [
                BoxShadow(
                  blurRadius: paddingDefault / 2,
                  color: Colors.black12,
                  offset: Offset.zero,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: TextField(
                      onChanged: promoValue,
                      decoration: const InputDecoration(
                        hintText: AppString.enterPromoCode,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 60, maxHeight: 60),
                  child: ElevatedButton(
                    onPressed: onPromoButtonPressed,
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.total,
                  style: TextStyle(
                    color: colorScheme.outlineVariant,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '₹ ${total ?? 'N/A'}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: double.maxFinite),
            child: ElevatedButton(
              onPressed: onCheckoutPressed,
              child: const Text(AppString.checkout),
            ),
          ),
        ],
      ),
    );
  }
}
