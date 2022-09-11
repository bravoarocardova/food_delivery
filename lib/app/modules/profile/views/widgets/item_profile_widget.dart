import 'package:flutter/material.dart';

class ItemProfileWidget extends StatelessWidget {
  const ItemProfileWidget({
    Key? key,
    required this.title,
    this.ontap,
  }) : super(key: key);

  final String title;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        onTap: ontap,
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'SFProTextSemibold',
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
