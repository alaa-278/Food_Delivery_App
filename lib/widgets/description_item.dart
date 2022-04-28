import 'package:flutter/material.dart';

import 'constants.dart';
class DescriptionItem extends StatelessWidget {
  DescriptionItem(this.title,this.description, {
    Key? key,
  }) : super(key: key);
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(title,style: KBigStyle,),
            Text(description,style: KBigStyle2,)
          ],
        ),
      ),
    );
  }
}