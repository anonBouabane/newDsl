import 'dart:io';

import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:flutter/material.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';

class PayMentScreen extends StatefulWidget {
  const PayMentScreen({super.key});

  @override
  State<PayMentScreen> createState() => _PayMentScreenState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
TextEditingController dropdowncontroller = TextEditingController();
SuggestionsBoxController suggestionBoxcontroller = SuggestionsBoxController();

class _PayMentScreenState extends State<PayMentScreen> {
  String? _selectValue;
  List<String> data = [
    'ຮ້ານເຈ້ອື່ມ',
    'ຮ້ານເສ່ຍນົນ',
    'ຮ້ານເຈ້ທິບ',
  ];
  List<String> getsugGestion(String query) {
    List<String> mapdata = <String>[];
    mapdata.addAll(data);
    mapdata.retainWhere(
        (result) => result.toLowerCase().contains(query.toLowerCase()));
    return mapdata;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        suggestionBoxcontroller.close();
      },
      child: Stack(
        children: [
          Container(
            height: height * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colrs.darkGreenCustomize),
          ),
          // ClipRRect(
          //   borderRadius: const BorderRadius.only(
          //       bottomLeft: Radius.elliptical(700, 400),
          //       bottomRight: Radius.elliptical(400, 300)),
          //   child: Container(
          //     height: height / 5,
          //     width: double.infinity,
          //     decoration: const BoxDecoration(
          //         color:Colrs.greenCustomize),

          //     // color: Colrs.appBarColors
          //   ),
          // ),
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Form(
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.2),
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
                            vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Payment',
                              style: txtTitleBold,
                            ),
                            DropDownSearchFormField(
                              textFieldConfiguration: TextFieldConfiguration(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 10),
                                    label: Text('select shopname'),
                                  ),
                                  controller: dropdowncontroller),
                              suggestionsCallback: (pattern) {
                                return getsugGestion(pattern);
                              },
                              onSuggestionSelected: (String suggestion) {
                                dropdowncontroller.text = suggestion;
                                setState(() {
                                  _selectValue = suggestion;
                                });
                              },
                              itemBuilder: (context, String suggestion) {
                                return ListTile(
                                  title: Text(suggestion),
                                );
                              },
                              transitionBuilder:
                                  (context, suggestion, controller) {
                                return suggestion;
                              },
                              suggestionsBoxController: suggestionBoxcontroller,
                              validator: (value) =>
                                  value!.isEmpty ? 'please select ' : null,
                              onSaved: (value) => _selectValue = value,
                              displayAllSuggestionWhenTap: true,
                            ),
                            ListTile(
                              title: Text(
                                'ຮ້ານ',
                                style: txtSmall,
                              ),
                              subtitle: Text(
                                _selectValue.toString(),
                                style: txtRegular,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                'vat',
                                style: txtSmall,
                              ),
                              subtitle: Text(
                                '7%',
                                style: txtRegular,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                'ໂປຮໂມຊັ່ນສ່ວນຫລຸດ',
                                style: txtSmall,
                              ),
                              subtitle: Text(
                                '0',
                                style: txtRegular,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                'ລວມ',
                                style: txtSmall,
                              ),
                              subtitle: Text(
                                '120.000.000 kip',
                                style: txtRegularBold,
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    )),
              ]),
            ),
          ),
          Positioned(
              top: 30,
              left: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Platform.isAndroid
                      ? Icons.arrow_back
                      : Icons.arrow_back_ios_new_outlined))),
          Positioned(
              bottom: 20,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colrs.darkGreenCustomize,
                    // border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                height: 50,
                width: width,
                child: InkWell(
                  child: Center(
                      child: Text(
                    'print bill',
                    style: txtRegularWhite,
                  )),
                ),
              )),
        ],
      ),
    ));
  }
}
