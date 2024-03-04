
import 'package:first_project/classes/Products.dart';
import 'package:first_project/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class OrderSummary extends StatefulWidget{

  final uuid = const Uuid();

  OrderSummary({required this.name, required this.address, required this.phoneNumber, required this.emailAddress, super.key}) : id = const Uuid().v4().substring(0,4);

  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  final String emailAddress;

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
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  title: Text('Hey ${widget.name}, Thanks For Shopping with us' ,style: TextStyle(fontSize: 17),),
                ),
              ),
              //const SizedBox(height: 10,),
          
              Card(
                child: ListTile(
                  title: Text('Your Order ID is ${widget.id}', style: TextStyle(fontSize: 18),),
                ),
              ),
              //const SizedBox(height: 10,),
              const Divider(color: Colors.black,),
              Card(
                child: ListTile(
                  title: const Text('Email ID'),
                  subtitle: Text(widget.emailAddress),
                  trailing: const Icon(Icons.email_outlined),
                ),
              ),
              //const SizedBox(height: 10,),
          
              Card(
                child: ListTile(
                  title: const Text('Shipping Address'),
                  subtitle: Text(widget.address, style: const TextStyle(color: Color.fromARGB(255, 245, 22, 100), fontSize: 14,),),
                  trailing: const Icon(Icons.location_on),
                ),
              ),
          
              //const SizedBox(height: 10,),   //using widget to acces properties of state class
              Card(
                child: ListTile(
                  title: const Text('Your Contact Number'),
                  subtitle: Text(widget.phoneNumber),
                  trailing: const Icon(Icons.phone),
                ),
              ),
              
              //const SizedBox(height: 10,),
              const Divider(color: Colors.black,),
              Card(
                child: ListTile(
                  title: Text('Your Total bill is \$${Products.getTotal()}' , style: const TextStyle(color: Color.fromARGB(255, 143, 73, 243), fontSize: 21,),),
                  trailing: Icon(Icons.attach_money),
                ),
              ),
              
              const SizedBox(height: 30,),
              const Text('THANK YOU!!', textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
              // for(int i=0;i<productCart.entries;i++)
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const TvHome()));
              }, child: const Text('Back To Shopping', style: TextStyle(fontSize: 24),)),
            ],
          ),
        ),
      ),
    );
  }
}