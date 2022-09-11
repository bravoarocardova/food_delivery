import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Information',
          style: TextStyle(
            fontFamily: 'SFProTextSemibold',
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/images/image2.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              // const Spacer(),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
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
                    Text(
                      'Dosamarvis@gmail.com',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'No 15 uti street off ovie palace road effurun delta state',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
