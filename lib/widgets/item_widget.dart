// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quick_store/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  //const ItemWidget({super.key});
  final Item item;

  const ItemWidget({super.key, required this.item});
  // const ItemWidget({required Key key, required this.item})
  //     : super(key: key);

  // const ItemWidget({super.key, required this.item});

  // const ItemWidget({required Key key, required this.item})
  //     : assert(item != null),
  //       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
