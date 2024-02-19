import 'package:first_project/classes/Products.dart';
import 'package:flutter/material.dart';

class DrinksScreen extends StatelessWidget{

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
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Drinks Screen'),

      ),
      body: Center(
        child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 45.0,
                      ),
                      itemCount: product.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            title: Text(product[index].name),
                            leading: Image.asset(product[index].image),
                            subtitle: const Text('Add'),
                          ),
                        );
                      },
                    ),
      ),
    );
  }
}