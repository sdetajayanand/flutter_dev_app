
import 'package:first_project/pages/orderSummaryScreen.dart';
import 'package:first_project/side_bar.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {  //make this a statefulwidget 

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CheckoutScreen({super.key});
  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();

  // @override
  // void dispose(){
  //   nameController.dispose();
  //   addressController.dispose();
  //   phoneNumberController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: const navBar(),
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(key: _formKey, child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(color: Colors.black, child: const Text('Please fill out these details', style: TextStyle(fontSize: 22,),)),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                keyboardType: TextInputType.name,
                controller: nameController,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please enter Your Name';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 25,),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email',),
                keyboardType: TextInputType.emailAddress,
                controller: emailAddressController,
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Your Email ID';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9._%+-]+@gmail.com$').hasMatch(value)) {
                    return 'Please Enter a valid Gmail address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25,), 
              TextFormField(
                decoration: const InputDecoration(labelText: 'Shipping Address',),
                keyboardType: TextInputType.emailAddress,
                controller: addressController,
              ),
              const SizedBox(height: 25,),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                controller: phoneNumberController,
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Your Phone Number';
                  }
                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please Enter a Valid phone number';
                  }
                    return null;
                },
              ),
              const SizedBox(height: 45,),
              ElevatedButton.icon(onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSummary(name: nameController.text, address: addressController.text, phoneNumber: phoneNumberController.text, emailAddress: emailAddressController.text,)));
                }
              }, icon: const Icon(Icons.arrow_forward_sharp), label: const Text('Checkout'),)
            ],
          )),
          ),
      ),
        
    );
  }
}