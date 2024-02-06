import 'package:first_project/classes/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantryDetailsScreen extends StatelessWidget {

  final List<Products> product = [
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
        title: Text('Pantry Details'),
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
        child: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 45.0,
              ),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset(product[index].image)),
                      ListTile(

                        title:Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child: Text(product[index].name),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            child: Text('Add'),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}