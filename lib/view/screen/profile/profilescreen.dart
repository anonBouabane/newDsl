import 'package:flutter/material.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colrs.appBarColors,
          title: Text(
            'profilescreen',
            style: txtTitlewnormal,
          ),
        ),
        body: Stack(
          children: [
            secondAppbar(height),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height / 10),
                    child: Container(
                      height: height,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            nameMethod(),
                            phoneMethod(),
                            departMethod(),
                            roleMethod(),
                            const SizedBox(
                              height: 20,
                            ),
                            inkWelMethod(context)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Container secondAppbar(double height) {
    return Container(
      height: height / 5,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colrs.appBarColors),
    );
  }

  InkWell inkWelMethod(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          "ອອກຈາກລະບົບ",
          style: txtRegular,
        )),
      ),
    );
  }

  SizedBox roleMethod() {
    return SizedBox(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "role",
                  style: txtRegularBold,
                ),
                Text(
                  'admin',
                  style: txtSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  SizedBox departMethod() {
    return SizedBox(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "depart",
                  style: txtRegularBold,
                ),
                Text(
                  'it',
                  style: txtSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  SizedBox phoneMethod() {
    return SizedBox(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "phone",
                  style: txtRegularBold,
                ),
                Text(
                  '77995400',
                  style: txtSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  SizedBox nameMethod() {
    return SizedBox(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "name",
                  style: txtRegularBold,
                ),
                Text(
                  'anon',
                  style: txtSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  // InkWell signOutmethod(BuildContext context) {
  //   return InkWell(
  //     onTap: () {},
  //     child: Container(
  //       width: MediaQuery.of(context).size.width / 1.3,
  //       height: 50,
  //       decoration: BoxDecoration(
  //           border: Border.all(),
  //           borderRadius: const BorderRadius.all(Radius.circular(10))),
  //       child: Center(
  //           child: Text(
  //         "ອອກຈາກລະບົບ",
  //         style: txtRegular,
  //       )),
  //     ),
  //   );
  // }

  // SizedBox roleMethod() {
  //   return const SizedBox(
  //       child: Card(
  //     child: Padding(
  //       padding: EdgeInsets.all(8.0),
  //       child: Row(
  //         children: [
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "ສິດ  ",
  //               ),
  //               Text('ແອດມິນ')
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   ));
  // }

  // SizedBox departMethod() {
  //   return const SizedBox(
  //       child: Card(
  //     child: Padding(
  //       padding: EdgeInsets.all(8.0),
  //       child: Row(
  //         children: [
  //           Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "ພະແນກ  ",
  //               ),
  //               Text('it')
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   ));
  // }

  // SizedBox methodName() {
  //   return const SizedBox(
  //     child: Card(
  //       child: Padding(
  //         padding: EdgeInsets.all(8.0),
  //         child: Row(
  //           children: [
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,

  //               children: [
  //                 Text(
  //                   "Name",
  //                 ),
  //                 Text('anio')
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
