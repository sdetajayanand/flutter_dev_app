import 'package:first_project/pages/PantryDetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/Products.dart';

PantryDetailsScreen pantryDetailsScreen = new PantryDetailsScreen();


class cart extends StatefulWidget {
  const cart ({super.key});
  @override
  State<cart> createState() {
    return _cartDetail();
  }
}

class _cartDetail extends State<cart> {

  //List<Products> cartPro = Products.getList();
  Map<Products, int> cartProMap = Products.getList();
  int i = 2;

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
                              Text('Qty -- ${quantity}'),
                              SizedBox(width: 5,),
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
                              SizedBox(width: 40,),
                              Text('Price ${product.price * quantity}'),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                        ],
                      ),
                    );
                  },
              ),
          ),
        ],
      )
    );
  }
}
