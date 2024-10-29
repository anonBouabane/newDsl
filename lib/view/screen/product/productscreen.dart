import 'package:flutter/material.dart';
import 'package:newdsl/view/screen/widget/topbarwidgetscreen.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  List<String?> testDropdown = ['item1', 'item2'];
  final List<String?> _dropdown = List.generate(20, (index) => 'ແກັດ');
  void updateDropdown(int index, String? newvalue) {
    setState(() {
      _dropdown[index] = newvalue;
    });
  }

  final List<int> itemCount = List.generate(20, (index) => 1);
  void additem(int index) {
    setState(() {
      itemCount[index]++;
    });
  }

  void removeItemCount(int index) {
    setState(() {
      if (itemCount[index] > 1) {
        itemCount[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colrs.appBarColors,
            title: Text('product', style: txtTitlewnormal),
            actions: [
              IconButton(
                  onPressed: () {
                    navService.pushNamed('searchproduct');
                  },
                  icon: const Icon(Icons.search)),
              const AppBarscreen()
            ],
          ),
          body: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pepsi',
                            style: txtTitleBold,
                          ),
                          const Divider(),
                          Text(
                            'price : 180.000 kip\nຫົວຫນ່ວຍ : ແກັດ',
                            style: txtSmall,
                          ),
                          const Divider(),
                          dropDown(width, index),
                          const SizedBox(
                            height: 8,
                          ),
                          counterAndaddToCart(index, height, width)
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }

  Row counterAndaddToCart(int index, double height, double width) {
    return Row(
      children: [
        Text(
          'ຈຳນວນ',
          style: txtRegularBold,
        ),
        IconButton(
            onPressed: () {
              removeItemCount(index);
            },
            icon: const Icon(Icons.remove)),
        Text(
          '${itemCount[index]}',
          style: txtRegularBold,
        ),
        IconButton(
          onPressed: () {
            additem(index);
          },
          icon: const Icon(Icons.add),
        ),
        const Spacer(),
        SizedBox(
            height: height / 16,
            width: width / 7,
            child: const Card(child: Icon(Icons.add_shopping_cart_outlined)))
      ],
    );
  }

  Row dropDown(double width, int index) {
    return Row(
      children: [
        Container(
          width: width / 3,
          height: 40,
          decoration: BoxDecoration(border: Border.all()),
          child: DropdownButton<String>(underline: Container(height: 2,),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              isExpanded: true,
              value: _dropdown[index],
              items: <String>['ແພັກ', 'ແກັດ', 'ອັນ']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              hint: const Text('ເລືອກຫົວຫນ່ວຍ'),
              onChanged: (String? newvalue) {
                updateDropdown(index, newvalue);
              }),
        ),
      ],
    );
  }
}
