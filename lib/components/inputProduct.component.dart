import 'package:flutter/material.dart';

class InputProducts extends StatelessWidget {
  const InputProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:const BorderSide( color: Colors.transparent)),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 5),
            child:Icon(Icons.search, color: Color.fromARGB(186, 158, 158, 158),)
          ),
          hintText: "Search for restaurants, food etc",
          hintStyle: Theme.of(context).textTheme.bodyText2
        ),
      ),
    );
  }
}
