import 'package:first_project/classes/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantryDetailsScreen extends StatelessWidget {

  final List<Products> product = [
    Products('Britania', 'assets/britaniaCake.jpeg'),
    Products('GoodDay', 'assets/goodDay.jpg'),
    Products('Namkeen', 'assets/tabletennis.jpg'),
    Products('kodbule', 'assets/man.png'),
    Products('Akshay', 'assets/man.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantry Details'),
      ),
      // body: Column(
      //     children: [
      //       Expanded(
      //           child: ListView.builder(
      //             itemCount: product.length,
      //               itemBuilder: (context, index)
      //           {
      //             return ListTile(
      //               leading: Image.asset(product[index].image),
      //               title: Text(product[index].name),
      //               trailing: ElevatedButton(
      //                 onPressed: (){
      //  
      //                 },
      //                 child: Text('Add'),
      //               ),
      //             );
      //           }),
      //       ),
      //     ],
      //   ),
      body: GridView.builder(
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
                    title: Text(product[index].name),
                    trailing: ElevatedButton(
                      onPressed: (){

                        },
                      child: Text('Add'),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}