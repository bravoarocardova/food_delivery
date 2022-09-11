import 'package:flutter/material.dart';

class AddressDetail extends StatelessWidget {
  const AddressDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Address details',
              style: TextStyle(fontFamily: 'SFProTextSemibold'),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text('change'),
            ),
          ],
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Marvis Ighedosa',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'SFProTextSemibold',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Km 5 refinery road oppsite republic road, effurun, delta state',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SFProText',
                    color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '+234 9011039271',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'SFProText',
                    color: Colors.black.withOpacity(0.5)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
