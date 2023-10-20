import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/colors.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/pages/book_list_page/widgets/book_grid_view.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                  child: Text("종합",
                      style: TextStyle(
                          fontSize: font_small, fontWeight: FontWeight.bold))),
              Tab(
                  child: Text("에세이",
                      style: TextStyle(
                          fontSize: font_small, fontWeight: FontWeight.bold))),
              Tab(
                  child: Text("시",
                      style: TextStyle(
                          fontSize: font_small, fontWeight: FontWeight.bold))),
              Tab(
                  child: Text("소설",
                      style: TextStyle(
                          fontSize: font_small, fontWeight: FontWeight.bold))),
            ],
            labelColor: kFontBlack,
            unselectedLabelColor: kFontBlack,
          ),
          Expanded(
              child: Stack(
            children: [
              TabBarView(controller: _tabController, children: [
                BookGridView(),
                Center(
                  child: Text("에세이"),
                ),
                Center(
                  child: Text("시"),
                ),
                Center(
                  child: Text("소설"),
                ),
              ])
            ],
          ))
        ],
      ),
    );
  }
}
