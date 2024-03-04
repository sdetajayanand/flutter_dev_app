import 'package:first_project/pages/PantryDetailsScreen.dart';
import 'package:first_project/pages/checkoutScreen.dart';
import 'package:flutter/material.dart';

import '../classes/Products.dart';

PantryDetailsScreen pantryDetailsScreen = const PantryDetailsScreen();


class cart extends StatefulWidget {
  const cart ({super.key});  //accept total as an argument
  @override
  State<cart> createState() {
    return _cartDetail();
  }
}

class _cartDetail extends State<cart> {

  int total = 0;
  PantryDetailsScreen totVar = const PantryDetailsScreen();

  //List<Products> cartPro = Products.getList();
  static Map<Products, int> cartProMap = Products.getList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Details'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: cartProMap.length,
                  itemBuilder: (context, index) {
                    var productEntry = cartProMap.entries.elementAt(index);
                    var product = productEntry.key;
                    var quantity = productEntry.value;
                    return ListTile(
                      leading: Image.asset(product.image),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(product.name),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  cartProMap.remove(product);
                                });
                              }, child: const Text("Remove"),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Qty -- $quantity'),
                              const SizedBox(width: 5,),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  //cartProMap.update(product, (value) => quantity++);
                                  Products.addItem(product);
                                  //productEntry.value++;
                                });
                              }, child: const Text("+"),),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  if(quantity == 1)
                                    {
                                      cartProMap.remove(product);
                                    }
                                  Products.reduceItem(product);
                                });
                              }, child: const Text("-"),),
                              Text('Price ${product.price * quantity}'),
                              const SizedBox(width: 10,),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                        ],
                      ),
                    );
                  },
              ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(Products.getTotal().toString(),
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          InkWell(

            onTap: () {
              // Navigate to PantryDetailsScreen when clicked
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(),
                ),
              );
            },

            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue[250],
              ),
              padding: const EdgeInsets.all(16.0),
              //color: Colors.blue[300],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Checkout',
                    style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
