import 'package:flutter/material.dart';

import '../Screens/description_screen.dart';

class MealItem extends StatelessWidget {
  MealItem(this.index, {this.check=true,Key? key,}) : super(key: key);
  int index;
  final bool check;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: InkWell(
          onTap: (check)?()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen('assets/images/Humberger_Photo.jpg',
              'Hamburger','meal$index'))):null,
          child: Stack(
            children:[
              Card(
                color: Colors.amber,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(tag: "meal$index",child: Image.asset('assets/images/Humberger_Photo.jpg')),
                    const SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hamburger',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(height: 5,),
                          Text('Meat,Lettuce,Union,Mushroom',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 71,
                left: MediaQuery.of(context).size.width-66,
                child: Container(
                  width: 30,
                  height: 25,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ),
                    color: Colors.red,
                  ),
                  child: const Center(child: Text("+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),)),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
