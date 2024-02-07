// TODO Implement this library.
// ignore_for_file: file_names

import 'package:first_project/classes/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantryDetailsScreen extends StatelessWidget {
  const PantryDetailsScreen({super.key});

  final List<Products> product = const [
    Products('Britania', 'assets/britaniaCake.jpeg'),
    Products('GoodDay', 'assets/goodDay.jpg'),
    Products('Namkeen', 'assets/tabletennis.jpg'),
    Products('kodbule', 'assets/man.png'),
    Products('Akshay', 'assets/man.png'),
    Products('Akshay', 'assets/man.png'),
    Products('Akshay', 'assets/man.png'),
    Products('Akshay', 'assets/man.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantry Details'),
      ),
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 8.0,
      //       mainAxisSpacing: 45.0,
      //     ),
      //     itemCount: product.length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         child: Column(
      //           children: [
      //             Expanded(child: Image.asset(product[index].image)),
      //             ListTile(
      //               title: Text(product[index].name),
      //               trailing: ElevatedButton(
      //                 onPressed: (){
      //
      //                   },
      //                 child: Text('Add'),
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     }
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 45.0,
            ),
            itemCount: product.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(product[index].image),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product[index].name),
                          ElevatedButton(
                            onPressed: () {
                              // Add button onPressed logic
                            },
                            child: const Text('Add'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}