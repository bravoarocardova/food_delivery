import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        title: const Text(
          'History',
          style: TextStyle(fontFamily: 'SFProTextSemibold'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 150,
                    color: Color(0xFFC7C7C7),
                  ),
                ),
                const Text(
                  'No history yet',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'SFProtextSemibold',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Hit the orange button down\nbelow to Create an order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 14,
                    fontFamily: 'SFProtext',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(20),
              ),
              child: const Text(
                'Start odering',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SFProtextSemibold',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
