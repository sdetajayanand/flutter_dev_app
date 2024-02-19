// TODO Implement this library.
// ignore_for_file: file_names

import 'package:first_project/classes/Products.dart';
import 'package:first_project/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantryDetailsScreen extends StatefulWidget {
  @override
  State<PantryDetailsScreen> createState(){
    return _pantryDetails();
  }
  const PantryDetailsScreen({super.key});
}
class _pantryDetails extends State<PantryDetailsScreen>{

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

  var cartItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navBar(),
      appBar: AppBar(
        title: const Text('Pantry Details'),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),iconSize: 35,),
              cartItem!=0 ? Positioned(right:8, top: 8, child: CircleAvatar(backgroundColor: Colors.redAccent,radius: 10, child: Text(cartItem.toString(), style: TextStyle(color: Colors.white),))) : SizedBox(), 
            ],
          )
        ],
      ),
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
                              setState(() {
                                cartItem++;
                              });
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