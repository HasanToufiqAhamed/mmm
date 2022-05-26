import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mmm/app/domain/global_controller/theme_controller.dart';
import 'package:mmm/app/modules/edit_cost.page/views/edit_cost_page_view.dart';
import 'package:mmm/app/routes/app_page_routing_helper.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.adjust,
                color: Colors.transparent,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 15),
                  Text(
                    'Shopping',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '1500.00\$',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, i) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditCostPageView(tagIcon: 'icon_hero_$i'),
                      ),
                    );
                  },
                  leading: Hero(
                    tag: 'icon_hero_$i',
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
                  title: Row(
                    children: const [
                      Text(
                        'Shopping',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        ' 1500.00\$',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  subtitle: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 4,
                      color: Colors.lightBlueAccent,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Container(
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
