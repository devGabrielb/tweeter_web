import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/widgets/custom-buttom.dart';

class TweeterBoxInputWidget extends StatelessWidget {
  final Size size;

  const TweeterBoxInputWidget({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: 5),
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("Tweet something",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.black)),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: size.width * 0.01,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: InputDecoration(
                            hintText: "What’s happening?",
                            hintStyle: GoogleFonts.notoSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: size.width * 0.025, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 180),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.image_outlined,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.language,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Everyone can reply",
                                    style: GoogleFonts.notoSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      CustomButtom(
                        height: 32,
                        width: 81,
                        radius: 5,
                        onTap: () {},
                        textWidget: Text("Tweet",
                            style: GoogleFonts.notoSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
