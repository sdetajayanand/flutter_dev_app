
import 'package:first_project/pages/orderSummaryScreen.dart';
import 'package:first_project/side_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  CheckoutScreen({super.key});
  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

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
      drawer: const navBar(),
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(key: _formKey, child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              decoration: const InputDecoration(labelText: 'Address',),
              keyboardType: TextInputType.emailAddress,
              controller: addressController,
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please Enter Your Valid Address';
                }else{
                  return null;
                }
              },
            ),
            const SizedBox(height: 25,),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
              controller: phoneNumberController,
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please Enter Your Valid Phone Number';
                }else{
                  return null;
                }
              },
            ),
            const SizedBox(height: 25,),
            ElevatedButton.icon(onPressed: (){
              if(_formKey.currentState!.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSummary(name: nameController.text, address: addressController.text, phoneNumber: phoneNumberController.text)));
              }
            }, icon: const Icon(Icons.arrow_forward_sharp), label: const Text('Checkout'),)
          ],
        )),
        ),
        
    );
  }
}