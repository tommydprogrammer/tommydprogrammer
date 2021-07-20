import 'package:flutter/material.dart';
import 'package:reminderz/core/navigation_bar.dart';
import 'package:reminderz/core/side_menu.dart';

class Dashboard extends StatelessWidget {
  final Widget child;
  final String activeName;
  final bool isAdmin;
  const Dashboard({this.child, this.activeName, this.isAdmin: false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: SideMenu(
              activeName: activeName,
              isAdmin: isAdmin,
            ),
          ),
          Expanded(
            flex: 5,
            child: NestedScrollView(
              physics: BouncingScrollPhysics(),
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    toolbarHeight: 100.0,
                    snap: true,
                    floating: true,
                    pinned: true,
                    backgroundColor: Colors.transparent,
                    actions: [
                      Expanded(
                        child: NavigationBar(),
                      ),
                    ],
                    stretch: true,
                  ),
                ];
              },
              body: child,

              // slivers: [
              //   SliverList(
              //   delegate: SliverChildListDelegate(
              //     [
              //       child,
              //     ],
              //   ),
              // ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
