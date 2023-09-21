import 'package:flutter/material.dart';
import 'package:furnifi/constants/assets.dart';
import 'package:rive/rive.dart';

import '/constants/style.dart';
import '/constants/strings.dart';

part 'components/feedback_type.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});
  static const route = 'feedback';

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final List<String> emojies = [
    'Smiling',
    'Happy',
    'Winking',
    'Crying',
    'Laughing',
    'Surprise',
  ];

  FeedbackType? feedbackType;

  String get _getArtBoard {
    switch (feedbackType) {
      case FeedbackType.query:
        return 'Surprise';
      case FeedbackType.suggestion:
        return 'Winking';
      case FeedbackType.complaint:
        return 'Crying';
      case FeedbackType.complement:
        return 'Happy';
      default:
        return "Smiling";
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.feedback),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              children: [
                SizedBox(
                  height: 200,
                  child: RiveAnimation.asset(
                    Assets.emojies,
                    artboard: _getArtBoard,
                  ),
                ),
                FeedbackTypeWidget(
                  onTap: (value) {
                    setState(() {
                      feedbackType = value;
                    });
                  }, //TODO: On tap on feedback type
                ),
                const SizedBox(height: paddingDefault),
                const Text(
                  AppString.feedback,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                TextField(
                  maxLines: 5,
                  onChanged: (value) {}, //TODO: OnChanged feedback textfield
                  decoration: InputDecoration(
                    hintText: AppString.feedbackHint,
                    fillColor: colorScheme.surface,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: borderRadiusMedium,
                        borderSide: BorderSide.none),
                  ),
                ),
                const SizedBox(height: paddingDefault),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: double.maxFinite,
              ),
              child: ElevatedButton(
                onPressed: () {}, //TODO: On submit feedback
                child: const Text(AppString.submit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
