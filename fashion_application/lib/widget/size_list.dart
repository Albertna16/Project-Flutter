import 'package:flutter/material.dart';

class sizeList extends StatefulWidget {
  const sizeList({Key? key}) : super(key: key);
  _sizeListState createState() => _sizeListState();
}

class _sizeListState extends State<sizeList> {
  final List<String> listSize = ["S", "M", "L", "XL", "XXL"];
  var currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (() {
            setState(() {
              currentSelected = index;
            });
          }),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: currentSelected == index
                  ? Color(0xffff4779) // Theme.of(context).colorScheme.secondary
                  : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.withOpacity(0.9), width: 2),
            ),
            child: Text(
              listSize[index],
              style: TextStyle(
                color: currentSelected == index ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: listSize.length,
      ),
    );
  }
}
