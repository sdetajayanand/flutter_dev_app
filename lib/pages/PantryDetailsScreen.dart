import 'package:first_project/classes/Products.dart';
import 'package:first_project/pages/cart.dart';
import 'package:first_project/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logOut.dart';

class PantryDetailsScreen extends StatefulWidget {
  const PantryDetailsScreen({super.key});
  @override
  State<PantryDetailsScreen> createState() {
    return _pantryDetails();
  }
}

class _pantryDetails extends State<PantryDetailsScreen> {

  String selectedCategory = 'Foods';

  final List<Products> foodProducts = [
    Products('Britania', 'assets/food/britaniaCake.jpeg', 12),
    Products('GoodDay', 'assets/food/goodDay.jpg', 10),
    Products('Bhujia Sev', 'assets/food/bhujia.jpg', 14),
    Products('Chips', 'assets/food/chips.jpg', 20),
    Products('Peanuts', 'assets/food/coatedpeanuts.png', 48),
    Products('Moong Dal', 'assets/food/moongDal.png', 27),
  ];

  final List<Products> drinkProducts = [
    Products('Appi Fizz', 'assets/drinks/appifizz.png', 32),
    Products('ButterMilk', 'assets/drinks/buttermilk.png', 9),
    Products('Coco Cola', 'assets/drinks/cococola.png', 23),
    Products('Maaza', 'assets/drinks/maaza.png', 67),
    Products('PaperBoat', 'assets/drinks/paperboat.jpg', 54),
    Products('Tropicana', 'assets/drinks/tropicana.jpg', 19),
  ];


  List<Products> get displayedProducts {
  return selectedCategory == 'Foods' ? foodProducts : drinkProducts;
  }

  List<Products> cartProduct = [];
  static int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const navBar(),
      appBar: AppBar(
        title: const Text('Pantry Details'),
      ),
      body: Column(
        children: [
          // Category selection row
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCategoryButton('Foods'),
                buildCategoryButton('Drinks'),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => cart(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          // Displayed products
          Expanded(
          child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 45.0,
                ),
                itemCount: displayedProducts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(displayedProducts[index].image),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(displayedProducts[index].name),
                              Text('\$ ${displayedProducts[index].price}'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: ElevatedButton(
                            onPressed: () {
                              total += displayedProducts[index].price;
                              // Add button onPressed logic
                              Products.addItem(displayedProducts[index]);
                            },
                            child: const Text('Add'),
                          ),
                        ),
                      ],
                    ),
                  );
                }
          ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Column(
        children: [
          Image.asset(
            category == 'Foods' ? 'assets/food.jpg' : 'assets/drinks.png',
            width: 50.0,
            height: 50.0,
          ),
          SizedBox(height: 8.0),
          Text(category),
        ],
      ),
    );
  }
}