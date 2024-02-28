import 'package:first_project/classes/equipments.dart';
import 'package:first_project/side_bar.dart';
import 'package:flutter/material.dart';

class EquipmentsDetailsPage extends StatefulWidget {
  const EquipmentsDetailsPage({super.key});
  @override
  State<EquipmentsDetailsPage> createState(){
    return _EquipmentsDetailsPage();
  }
}

class _EquipmentsDetailsPage extends State<EquipmentsDetailsPage>{

  final List<Equipments> equipments = const [
    Equipments('TT_Bat', ''),
    Equipments('TT_Ball', ''),
    Equipments('Chess_board', ''),
    Equipments('Chess_pawns', ''),
    Equipments('FoosBall', ''),
    Equipments('Carrom_Board_pawns', ''),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const navBar(),
      appBar: AppBar(
        title: const Text('Equipment Details'),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,),iconSize: 35,),
              //CircleAvatar()
            ],
          )
        ],
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 45.0
      ),
       itemCount: equipments.length,
       itemBuilder: (context, index) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(equipments[index].image),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(equipments[index].name),
                    ElevatedButton(onPressed: (){}, child: const Text('Add')),
                  ],
                  
                ),
              )
            ],
          ),
        );
       }
      )
    );
  }
}
  
