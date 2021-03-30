import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/pages/home-page.dart';
import 'package:twitter_clone/utils/responsive.utils.dart';
import 'package:twitter_clone/widgets/appbar-widget.dart';
import 'package:twitter_clone/widgets/profile-apBar-widget.dart';

class InitalPage extends StatefulWidget {
  @override
  _InitalPageState createState() => _InitalPageState();
}

class _InitalPageState extends State<InitalPage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: Container(
        width: size.width,
        child: Scaffold(
            backgroundColor: Color(0xFFF2F2F2),
            appBar: PreferredSize(
              preferredSize: Size(size.width, 1000),
              child: AppbarWidget(
                controller: _controller,
              ),
            ),
            bottomNavigationBar: ResponsiveUtils.isSmallScreen(context)
                ? TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.explore_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.bookmark_border_outlined),
                      ),
                    ],
                  )
                : null,
            body: Stack(
              children: [
                TabBarView(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height,
                      child: HomePage(),
                    ),
                    Container(
                      width: size.width,
                      height: size.height,
                    ),
                    Container(
                      width: size.width,
                      height: size.height,
                    ),
                  ],
                ),
                Positioned(
                    top: 0,
                    right: size.width * 0.03,
                    child: ProfileApbarWidget(
                      controller: _controller.view,
                    )),
              ],
            )),
      ),
    );
  }
}
