import 'package:first_project/classes/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    Products('Britania', 'assets/food/britaniaCake.jpeg'),
    Products('GoodDay', 'assets/food/goodDay.jpg'),
    Products('Bhujia Sev', 'assets/food/bhujia.jpg'),
    Products('Chips', 'assets/food/chips.jpg'),
    Products('Peanuts', 'assets/food/coatedpeanuts.png'),
    Products('Moong Dal', 'assets/food/moongDal.png'),
  ];

  final List<Products> drinkProducts = [
    Products('Appi Fizz', 'assets/drinks/appifizz.png'),
    Products('ButterMilk', 'assets/drinks/buttermilk.png'),
    Products('Coco Cola', 'assets/drinks/cococola.png'),
    Products('Maaza', 'assets/drinks/maaza.png'),
    Products('PaperBoat', 'assets/drinks/paperboat.jpg'),
    Products('Tropicana', 'assets/drinks/tropicana.jpg'),
  ];


  List<Products> get displayedProducts {
  return selectedCategory == 'Foods' ? foodProducts : drinkProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(displayedProducts[index].name),
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