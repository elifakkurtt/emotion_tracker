

import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String greenText;

  const GreenButton({required this.greenText,super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
                  width: w / 1.8,
                  height: h / 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 130, 205, 169),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 167, 223, 169),
                  ),
                  child:  Center(
                    child: Text(
                      greenText,
                      style:const  TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                );
                //green
  }
}