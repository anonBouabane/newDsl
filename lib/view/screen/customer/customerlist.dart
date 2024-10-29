import 'package:flutter/material.dart';
import 'package:newdsl/view/screen/widget/topbarwidgetscreen.dart';
import 'package:newdsl/view/util/styles/colors.dart';
import 'package:newdsl/view/util/styles/textstyles.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colrs.appBarColors,
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
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    
                    horizontal: 10,
                  ),
                  child: SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        // Handle customer detail navigation here
                      },
                      child: const Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              'shop_name',
                            ),
                            subtitle: Text('Address: No Address' '\n77995490'),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
