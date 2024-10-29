import 'package:flutter/material.dart';
import 'package:newdsl/view/screen/widget/forminput.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';

class Registercustomer extends StatefulWidget {
  const Registercustomer({super.key});

  @override
  State<Registercustomer> createState() => _RegistercustomerState();
}

class _RegistercustomerState extends State<Registercustomer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colrs.appBarColors,
              title: Text(
                'registercusto',
                style: txtTitlewnormal,
              ),
            ),
            body: Stack(
              children: [
                secondAppBar(height),
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
                                fullNameAndShopnameMeThod(width),
                                phoneAndage(),
                                nickNameAndVillage(width),
                                districtAndProvince(width),
                                location(width),
                                districtProvinceShop(width),
                                submit(width)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }

  Padding submit(double width) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
          height: 50,
          width: width / 1.2,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(12)),
          child: InkWell(
            child: Center(
              child: Text(
                'record',
                style: txtRegular,
              ),
            ),
          )),
    );
  }

  Row districtProvinceShop(double width) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              lable: const Text('district'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 2,
          child: FormfeildScreen(
            lable: const Text('province'),
          ),
        ),
      ],
    );
  }

  Row location(double width) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              suffixicon: const Icon(Icons.home_outlined),
              lable: const Text('shopLocation'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 5,
          child: FormfeildScreen(
            lable: const Text('unit'),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 5,
          child: FormfeildScreen(
            lable: const Text('road'),
          ),
        ),
      ],
    );
  }

  Row districtAndProvince(double width) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              lable: const Text('district(dropdown)'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 2,
          child: FormfeildScreen(
            lable: const Text('province(dropdown)'),
          ),
        ),
      ],
    );
  }

  Row nickNameAndVillage(double width) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              suffixicon: const Icon(Icons.info_outline_rounded),
              lable: const Text('nickName'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 2,
          child: FormfeildScreen(
            suffixicon: const Icon(Icons.home_outlined),
            lable: const Text('village'),
          ),
        ),
      ],
    );
  }

  Row phoneAndage() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              suffixicon: const Icon(Icons.call_outlined),
              lable: const Text('phone'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: 120,
          child: FormfeildScreen(
            lable: const Text('age'),
          ),
        ),
      ],
    );
  }

  Row fullNameAndShopnameMeThod(double width) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FormfeildScreen(
              suffixicon: const Icon(Icons.info_outline_rounded),
              lable: const Text('fullname'),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: width / 2,
          child: FormfeildScreen(
            suffixicon: const Icon(Icons.info_outline_rounded),
            lable: const Text('shopname'),
          ),
        ),
      ],
    );
  }

  Container secondAppBar(double height) {
    return Container(
      height: height / 5,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colrs.appBarColors),
    );
  }
}
