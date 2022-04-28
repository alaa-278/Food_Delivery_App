import 'package:flutter/material.dart';

import '../widgets/constants.dart';
import '../widgets/card_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: List.generate(
                    7,
                    (index) => MealItem(
                          index,
                          check: false,
                        )),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Total Items are: ',
                      style: KBigStyle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 55),
                    child: Text('1',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.red)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Total Cost is: ', style: KBigStyle),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text('300\$',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.red)),
                  ),
                ],
              ),
              SizedBox(
                width: width(context),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Card Number',
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                width: 1, color: Colors.red),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 1,
                                                  color: Colors.grey))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: 'SSV',
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                width: 1, color: Colors.red),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 1,
                                                  color: Colors.grey))),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Center(
                                        child: Text('Pay',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.red),
                                    ),
                                  )
                                ],
                              ));
                    },
                    child: const Text(
                      'Check Out',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
