import 'package:flutter/material.dart';
import 'package:furnifi/constants/strings.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: AppString.search,
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, //TODO:Implement onSearch action
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: GestureDetector(
        child: const Scaffold(),
      ),
    );
  }
}
