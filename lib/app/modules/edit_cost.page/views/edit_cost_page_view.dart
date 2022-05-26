import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_cost_page_controller.dart';

class EditCostPageView extends StatefulWidget {

  final String tagIcon;

  EditCostPageView({
    required this.tagIcon,
  });

  @override
  State<EditCostPageView> createState() => _EditCostPageViewState();
}

class _EditCostPageViewState extends State<EditCostPageView> {
  // EditCostPageController controller =Get.find<EditCostPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditCostPageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(

            leading: Hero(
              tag: widget.tagIcon,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(1000),
                ),
                padding: const EdgeInsets.all(6),
                child: const Icon(
                  Icons.adjust,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              'Shopping',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}
