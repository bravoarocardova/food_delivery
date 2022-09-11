import 'package:flutter/material.dart';
import 'package:food_delivery/core/utils/number_format.dart';
import 'package:get/get.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/image2.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Veggie tomato mix mix max mix max ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'SFProTextSemibold',
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      CurrencyFormat.convertToIdr(1000, 0),
                      style: TextStyle(
                        fontFamily: 'SFProTextSemibold',
                        fontSize: 14,
                        color: Get.theme.colorScheme.primary,
                      ),
                    ),
                    Container(
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Get.theme.colorScheme.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => {},
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(left: 10),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: 'SFProTextSemibold',
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            "2",
                            style: TextStyle(
                              fontFamily: 'SFProTextSemibold',
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {},
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(right: 5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontFamily: 'SFProTextSemibold',
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
