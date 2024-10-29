import 'package:flutter/material.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class BilListScreen extends StatefulWidget {
  const BilListScreen({super.key});

  @override
  State<BilListScreen> createState() => _BilListScreenState();
}

class _BilListScreenState extends State<BilListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colrs.appBarColors,
        title: Text(
          'BilList',
          style: txtTitlewnormal,
        ),
        actions: [
          IconButton(
              onPressed: () {
                navService.pushNamed('searchBill');
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              'ຮ້ານເຈ້ແຕ້ວ',
                              style: txtRegularBold,
                            ),
                            const Spacer(),
                            Text(
                              '2024-10-24  ',
                              style: txtSmall,
                            ),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        subtitle: Text(
                          'ບ້ານໂພນປາເປົ້າ',
                          style: txtSmall,
                        ),
                      ),
                      const Divider()
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
