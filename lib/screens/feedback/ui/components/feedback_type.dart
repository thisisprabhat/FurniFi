part of '../feedback_page.dart';

enum FeedbackType {
  query,
  suggestion,
  complaint,
  complement,
}

class FeedbackTypeWidget extends StatefulWidget {
  const FeedbackTypeWidget({
    super.key,
    this.onTap,
  });
  final Function(FeedbackType?)? onTap;

  @override
  State<FeedbackTypeWidget> createState() => _FeedbackTypeWidgetState();
}

class _FeedbackTypeWidgetState extends State<FeedbackTypeWidget> {
  FeedbackType? selectedType;

  String _getFeedbackTypeText(FeedbackType type) {
    switch (type) {
      case FeedbackType.query:
        return AppString.query;
      case FeedbackType.suggestion:
        return AppString.suggestion;
      case FeedbackType.complaint:
        return AppString.complaint;
      case FeedbackType.complement:
        return AppString.complement;
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppString.feedbackType,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Wrap(
          runSpacing: paddingDefault / 2,
          spacing: paddingDefault / 2,
          children: List.generate(
            FeedbackType.values.length,
            (index) {
              final FeedbackType type = FeedbackType.values[index];
              bool isSelected = type == selectedType;
              return InkWell(
                borderRadius: borderRadiusSmaller,
                onTap: () {
                  setState(() {
                    if (selectedType == type) {
                      selectedType = null;
                    } else {
                      selectedType = type;
                    }
                  });
                  if (widget.onTap != null) {
                    widget.onTap!(selectedType);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: borderRadiusSmall,
                    border: Border.all(
                      width: isSelected ? 2 : 1,
                      color: isSelected
                          ? colorScheme.primary
                          : colorScheme.outline,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    // child: Text(type.name.toUpperCase()),
                    child: Text(_getFeedbackTypeText(type)),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
