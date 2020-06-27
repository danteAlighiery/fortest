import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CryptoWalletBlock extends StatelessWidget {
  String _title;
  String _imageurl;
  var balance;
  bool plus;
  var change;

  CryptoWalletBlock(
      this._imageurl,
      this._title,
      this.balance,
      this.plus,
      this.change
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
        ),
      ),
      padding: EdgeInsets.only(bottom: 15, top:15),
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child:Image.asset(_imageurl, height: 45, width: 45, fit: BoxFit.cover,)),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_title, textAlign: TextAlign.start,style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color: Colors.black, fontSize: 17)),
                  RichText(
                    textAlign: TextAlign.center,
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: '1 BTC = \$0.0232 | ', style:
                        TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.35),
                          fontWeight: FontWeight.normal,
                        )),
                        new TextSpan(text: change,style:
                        TextStyle(
                          fontSize: 16,
                          color: plus? Color(0xFF34C759) : Color(0xFFFF2D55),
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('0.23243', textAlign: TextAlign.start,style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Colors.black, fontSize: 17)),
                Text('\$ $balance', textAlign: TextAlign.end,style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color: Color(0xFF8E8E93), fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
