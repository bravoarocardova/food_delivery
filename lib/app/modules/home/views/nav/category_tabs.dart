import 'package:flutter/material.dart';
import 'package:food_delivery/app/data/models/item_model.dart';
import 'package:food_delivery/app/widgets/item_widget.dart';

class CategoriTabs extends StatelessWidget {
  const CategoriTabs({Key? key, required this.item}) : super(key: key);
  final List<ItemMenu> item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: const EdgeInsets.only(right: 20, top: 10),
            child: TextButton(
              onPressed: () => {},
              child: const Text('see more'),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Flexible(
          child: SizedBox(
            height: 280,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: item.length,
                itemBuilder: (context, index) => ItemWidget(
                  id: item[index].id!,
                  image: item[index].image!,
                  name: item[index].name!,
                  price: item[index].price!,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
