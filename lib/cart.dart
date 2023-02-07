import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/provider/providerclass.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Providerclass>(context);
    List store=object.favorite;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(fontSize:20,color: Colors.white),
    )
      ),
          body: ListView.builder(
            itemCount: store.length,
        itemBuilder: (context,index){
              return ListTile(
                title: Text(store[index],
                style: TextStyle(fontSize:20,color: Colors.black),),
              );
        }),
    );
  }
}