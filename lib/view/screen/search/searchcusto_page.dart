import 'package:flutter/material.dart';

class SearchcustoPage extends StatefulWidget {
  const SearchcustoPage({super.key});

  @override
  State<SearchcustoPage> createState() => _SearchcustoPageState();
}

class _SearchcustoPageState extends State<SearchcustoPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 238, 238),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            autofocus: true,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 4),
                border: InputBorder.none,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.clear,
                    )),
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                    ))),
          ),
        ),
      )),
    );
  }
}