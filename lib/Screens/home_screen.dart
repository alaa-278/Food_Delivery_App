import 'package:flutter/material.dart';
import 'package:task5/Screens/pay_screen.dart';

import '../widgets/card_item.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   double  width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
                    }, icon: const Icon(Icons.shop)),
                    Positioned(
                      left: 25,
                      top: 30,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Colors.amber
                        ),
                        child: const Center(child: Text("5",style: TextStyle(color: Colors.black),)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    const Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Here',
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                    )),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.search))
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: List.generate(7, (index) => MealItem(index))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


