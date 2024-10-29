import 'package:flutter/material.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colrs.appBarColors,
        title: const Text('cart'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ສິນຄ້າ : ',
                                  style: txtSmall,
                                ),
                                const Spacer(),
                                Text(
                                  'ຢາສະຫົວ',
                                  style: txtSmall,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'ຫົວຫນ່ວຍ : ',
                                  style: txtSmall,
                                ),
                                const Spacer(),
                                Text(
                                  'ແກັດ',
                                  style: txtSmall,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'ຈຳນວນ : ',
                                  style: txtSmall,
                                ),
                                const Spacer(),
                                Text(
                                  '12',
                                  style: txtSmall,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'ລາຄາ : ',
                                  style: txtSmall,
                                ),
                                const Spacer(),
                                Text(
                                  '120.000',
                                  style: txtSmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Total : 120.200.000  ',
              style: txtSmallBold,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),

                  //====================== tap to payment========================
                  child: TextButton(
                      onPressed: () {
                        navService.pushNamed('paymentScreen');
                      },
                      child: Text(
                        "ຊຳລະ",
                        style: txtRegularWhite,
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
