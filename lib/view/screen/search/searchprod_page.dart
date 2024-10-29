import 'package:flutter/material.dart';

class SearchprodPage extends StatefulWidget {
  const SearchprodPage({super.key});

  @override
  State<SearchprodPage> createState() => _SearchprodPageState();
}

class _SearchprodPageState extends State<SearchprodPage> {
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
                color: const Color.fromARGB(255, 242, 236, 236),
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
        ),
      ),
    );
  }
}
