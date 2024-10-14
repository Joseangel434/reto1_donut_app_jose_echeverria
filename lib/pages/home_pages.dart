import 'package:flutter/material.dart';
import 'package:reto1_donut_app_jose_echeverria/tab/burger_tab.dart';
import 'package:reto1_donut_app_jose_echeverria/tab/donut_tab.dart';
import 'package:reto1_donut_app_jose_echeverria/tab/panCake_tab.dart';
import 'package:reto1_donut_app_jose_echeverria/tab/pizza_tab.dart';
import 'package:reto1_donut_app_jose_echeverria/tab/smoothie_tab.dart';
import 'package:reto1_donut_app_jose_echeverria/utils/my_tab.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {

  List <Widget> mytabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png',),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png',),
    // smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png',),
    // panCake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png',),
    // pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png',),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
                print("hola mundo");
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //Texto I want to eat
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text("EAT",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            TabBar(tabs: mytabs),

          Expanded(child: TabBarView(children:[
              //donut
              DonutTab(),
              //burger
              BurgerTab(),
              //smoothie
              SmoothieTab(),
              //panCake
              PancakeTab(),
              //pizza
              PizzaTab(),
            ]))
          ],
       ),
      ),
    );
}
}