
import 'package:first_project/classes/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/pages/cart.dart';

class OrderSummary extends StatefulWidget{

  const OrderSummary({required this.name, required this.address, required this.phoneNumber, super.key});
  final String name;
  final String address;
  final String phoneNumber;

  @override
  State<OrderSummary> createState(){
    return _OrderSummary();
  }
}

class _OrderSummary extends State<OrderSummary>{

  Map<Products, int> productCart = Products.getList();

  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Order Summary'),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text('Hey ${widget.name}, Thanks For Shopping with us' ,),
              ),
            ),
            const SizedBox(height: 10,),
            //const Divider(color: Colors.black,),

            Card(
              child: ListTile(
                title: Text('Address'),
                subtitle: Text('${widget.address}', style: const TextStyle(color: Color.fromARGB(255, 245, 22, 100), fontSize: 14,),),
                trailing: Icon(Icons.location_on),
              ),
            ),

            const SizedBox(height: 10,),   //using widget to acces properties of state class
            Card(
              child: ListTile(
                title: Text('Phno'),
                subtitle: Text('${widget.phoneNumber}'),
                trailing: Icon(Icons.phone),
              ),
            ),
            
            const SizedBox(height: 10,),
            Card(
              child: ListTile(
                title: Text('Your Total bill is \$${Products.getTotal()}' , style: const TextStyle(color: Color.fromARGB(255, 143, 73, 243), fontSize: 21,),),
              ),
            ),
            
            const SizedBox(height: 30,),
            const Text('THANK YOU!!', textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            // for(int i=0;i<productCart.entries;i++)
            // Text()
          ],
        ),
      ),
    );
  }
}