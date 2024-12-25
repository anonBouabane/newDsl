import 'package:flutter/material.dart';
import 'package:newdsl/data/controller/customer_controller.dart';
import 'package:newdsl/view/screen/widget/topbarwidgetscreen.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colrs.appBarColors,
        title: Text(
          'customerList',
          style: txtTitlewnormal,
        ),
        actions: [
          IconButton(
              onPressed: () {
                navService.pushNamed('searchCustomer');
              },
              icon: const Icon(Icons.search)),
          const AppBarscreen()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<CustomerController>(
              builder: (context,value,child) {
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: value.customer.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(title: Text(
                                  value.customer[index].shopName.toString()),
                                  // subtitle: Text(
                                  //     '${customerController.village.toString()}'
                                  //     '\n${customerController.district.toString()}'),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
