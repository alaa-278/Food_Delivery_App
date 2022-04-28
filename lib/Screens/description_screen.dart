import 'package:flutter/material.dart';


import '../widgets/constants.dart';
import '../widgets/description_item.dart';
class DescriptionScreen extends StatefulWidget {
   DescriptionScreen(this.imagePath,this.title,this.tag, {Key? key}) : super(key: key);
  final String imagePath,title,tag;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Text(widget.title,style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),),
            Expanded(flex: 1,child: Hero(tag:widget.tag,child: Image.asset(widget.imagePath,height: 20,)),),
            Expanded(flex: 1,child:
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          index++;
                        });

                      }, icon: const Icon(Icons.add)),
                      Text('$index'),
                      IconButton(onPressed: (){
                        setState(() {
                          index--;
                        });
                      }, icon: const Icon(Icons.remove)) ,
                    ],
                  ),
                  width: 150,
                  height: 50,
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Row(
                    children: [
                      DescriptionItem('Size','large'),
                      const  SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          width: 1,
                          thickness: 3,
                        ),
                      ),
                      DescriptionItem('Weight','400 gm'),
                      const  SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          width: 1,
                          thickness: 3,

                        ),
                      ),
                     DescriptionItem('Drinks','Pepsi'),
                    ],
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}


