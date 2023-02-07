import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/provider/providerclass.dart';

import 'homepage.dart';
 void main()=>runApp(
     ChangeNotifierProvider(
         create: (context)=>Providerclass(),
         child: MaterialApp
           (debugShowCheckedModeBanner: false,
             home: MyApp1())));


