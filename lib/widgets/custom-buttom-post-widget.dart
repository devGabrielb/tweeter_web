import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/utils/responsive.utils.dart';

enum Typebuttom { Comment, Retweet, Like, Save }

class CustomButtomPostWidget extends StatefulWidget {
  final Typebuttom type;
  final double width;
  final double height;
  final Function onTap;

  final double radius;
  const CustomButtomPostWidget({
    Key key,
    this.width = 164,
    this.height = 42,
    this.onTap,
    this.radius = 5,
    this.type = Typebuttom.Comment,
  }) : super(key: key);

  @override
  _CustomButtomPostWidgetState createState() => _CustomButtomPostWidgetState();
}

class _CustomButtomPostWidgetState extends State<CustomButtomPostWidget> {
  bool colorTextIcons = false;
  Color color = Colors.white;

  Widget _returnButton() {
    switch (this.widget.type) {
      case Typebuttom.Comment:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mode_comment_outlined,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                this.widget.type.toString().split(".").last,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black54),
              ),
            ],
          ),
        );
        break;
      case Typebuttom.Like:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                colorTextIcons ? Icons.favorite : Icons.favorite_border,
                color: colorTextIcons ? Colors.red : Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                this.widget.type.toString().split(".").last,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: colorTextIcons ? Colors.red : Colors.black54),
              ),
            ],
          ),
        );
        break;
      case Typebuttom.Retweet:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sync_outlined,
                color: colorTextIcons ? Colors.green : Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                this.widget.type.toString().split(".").last,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: colorTextIcons ? Colors.green : Colors.black54),
              ),
            ],
          ),
        );
        break;
      case Typebuttom.Save:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.save_alt_outlined,
                color: colorTextIcons ? Colors.blue : Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                this.widget.type.toString().split(".").last,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: colorTextIcons ? Colors.blue : Colors.black54),
              ),
            ],
          ),
        );
        break;
      default:
        return Container();
    }
  }

  Widget _returnSmallButton() {
    switch (this.widget.type) {
      case Typebuttom.Comment:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Center(
            child: Icon(
              Icons.mode_comment_outlined,
              color: Colors.black54,
            ),
          ),
        );
        break;
      case Typebuttom.Like:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Center(
            child: Icon(
              colorTextIcons ? Icons.favorite : Icons.favorite_border,
              color: colorTextIcons ? Colors.red : Colors.black54,
            ),
          ),
        );
        break;
      case Typebuttom.Retweet:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Center(
            child: Icon(
              Icons.sync_outlined,
              color: colorTextIcons ? Colors.green : Colors.black54,
            ),
          ),
        );
        break;
      case Typebuttom.Save:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(this.widget.radius),
          ),
          child: Center(
            child: Icon(
              Icons.save_alt_outlined,
              color: colorTextIcons ? Colors.blue : Colors.black54,
            ),
          ),
        );
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: this.color,
        child: InkWell(
          onHover: (bool hover) {
            if (hover) {
              setState(() {
                this.color = Colors.grey[200];
              });
            } else {
              setState(() {
                this.color = Colors.white;
              });
            }
          },
          onTap: () {
            setState(() {
              colorTextIcons = !colorTextIcons;
            });
            if (this.widget.onTap != null) {
              this.widget.onTap();
            }
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: this.widget.width),
            child: ResponsiveUtils.isLargeScreen(context) ||
                    ResponsiveUtils.isMediumScreen(context)
                ? _returnButton()
                : _returnSmallButton(),
          ),
        ),
      ),
    );
  }
}
