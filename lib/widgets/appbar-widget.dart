import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/utils/responsive.utils.dart';

class AppbarWidget extends StatefulWidget {
  final AnimationController controller;

  const AppbarWidget({Key key, this.controller}) : super(key: key);
  @override
  _AppbarWidgetState createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget>
    with TickerProviderStateMixin {
  bool active = false;

  Future<void> _showProfile() async {
    if (!active) {
      await widget.controller.forward();
      setState(() {
        active = true;
      });
    } else {
      await widget.controller.reverse();
      setState(() {
        active = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Material(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.03),
            height: 60,
            width: constraints.maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset("logo.svg", width: 41, height: 29),
                      SizedBox(
                        width: constraints.maxWidth * 0.01,
                      ),
                      Container(
                        child: Text("Tweeter",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                !ResponsiveUtils.isSmallScreen(context)
                    ? ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: 400, minWidth: 200),
                        child: TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.grey),
                          tabs: [
                            Tab(
                              text: "Home",
                            ),
                            Tab(
                              text: "Explore",
                            ),
                            Tab(
                              text: "Bookmarks",
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 32,
                        height: 36.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image:
                                    NetworkImage("https://picsum.photos/200"))),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.01,
                      ),
                      !ResponsiveUtils.isSmallScreen(context)
                          ? Text(
                              "Username",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.black),
                            )
                          : SizedBox(),
                      !ResponsiveUtils.isSmallScreen(context)
                          ? Container(
                              margin: EdgeInsets.only(
                                left: constraints.maxWidth * 0.01,
                              ),
                              child: InkWell(
                                  onTap: () {
                                    _showProfile();
                                  },
                                  child: Icon(Icons.arrow_drop_down)),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
