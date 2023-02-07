import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/provider/providerclass.dart';

import 'cart.dart';
class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {

  final List<String> items = <String>[
    'Milk',
    'Butter',
    'Salt',
    'Pepper',
    'Sugar',
    'Vanilla',
    'Cookies',
    'Chips',
    'Nuts',
    'Soap',
    'Cleaner',
    'Shampoo',
    'Toothpaste'
  ];
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Providerclass>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Grocery Items")),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
                padding: const EdgeInsets.all(8.0),
            child: ListTile(
            title: Text(items[index],
            style: TextStyle(
            fontSize: 20,color: Colors.black),
            ),
            trailing: Checkbox(
            activeColor: Colors.blueAccent,
            checkColor: Colors.white,
            value: object.check(items[index]),
            onChanged: (bool? value){
              object.favitems(items[index]);
            })),
            );
          }
          ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
          },
        child: Icon(Icons.shopping_cart,
        color: Colors.red,),

      ),
    );
  }
}
