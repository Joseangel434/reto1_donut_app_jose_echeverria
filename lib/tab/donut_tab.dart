import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // List of donuts
  final List donutsOnSale = [
// [donutFlavor, donutPrice, donutColor, imageName]
  ["Ice Cream", "36" , Colors.blue, "lib/images/icecream_donut.png"],
  ["Strawberry", "45" , Colors.red, "lib/images/strawberry_donut.png"],
  ["Grape ape", "84" , Colors.purple, "lib/images/grape_donut.png"],
  ["Choco", "95" , Colors.brown, "lib/images/chocolate_donut.png", "En tu boca marco  "],
   ["Ice Cream", "36" , Colors.blue, "lib/images/icecream_donut.png"],
  ["Strawberry", "45" , Colors.red, "lib/images/strawberry_donut.png"],
  ["Grape ape", "84" , Colors.purple, "lib/images/grape_donut.png"],
  ["Choco", "95" , Colors.brown, "lib/images/chocolate_donut.png", "En tu boca marco  "],
  ]
  
  ;
  

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length, //longitud de los elementos
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, childAspectRatio: 1 / 1.5), // Dos columnas
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
        }
    );
}
}