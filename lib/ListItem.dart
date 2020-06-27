import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Widget send = SvgPicture.asset(
  'assets/images/send.svg',
);
final Widget get = SvgPicture.asset(
  'assets/images/get.svg',
);
class ListItem extends StatelessWidget {
  var title;
  var subtitle;
  var icon;

  ListItem(
      this.title,
      this.subtitle,
      this.icon,
      );

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text(title, style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
          SizedBox(height: 5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color:  Color(0xFF151519),
                  fontWeight: FontWeight.w600,
                )),
               Icon(icon, color: Color(0xFFAEAEB4),)
            ],
            ),)
        ],
      ),
    );
  }
}

