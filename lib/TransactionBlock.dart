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
class TransactionBlock extends StatelessWidget {
  var result;
  bool plus;
  bool isready;

  TransactionBlock(
      this.isready,
      this.plus,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2.0, color: Color(0xFFEFEFF5),
        ),
      ),
//      padding: EdgeInsets.only(bottom: 15, top:15),
      margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: Column(
        children: [
          Container(
            decoration: DottedDecoration(
              shape: Shape.line,
              linePosition: LinePosition.bottom
            ),
              padding: EdgeInsets.only(right: 15, bottom: 10, left: 15, top: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('23 квітня 2020 р.', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color:  Color(0xFF8E8E93), fontSize: 13)),
            isready ? Container(
               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
               decoration: BoxDecoration(
                 color: Color.fromRGBO(52, 199, 89, 0.1),
                 borderRadius: BorderRadius.circular(5)
               ),
               child: Text('ВИКОНАНО', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Color(0xFF34C759), fontSize: 13)),)
                :
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: Color(0xFFEFEFF5),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text('В РОБОТІ', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Color(0xFF66666B), fontSize: 13)),)
            ],
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                 plus? get : send,
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child:Text('Отправлено',
                      style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600,
                          color:  Colors.black, fontSize: 15))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFEFEFF5),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('ETN', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Color(0xFF151519), fontSize: 13)),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0.23243', textAlign: TextAlign.start,style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Colors.black, fontSize: 17)),
                  Text('\$ 232', textAlign: TextAlign.end,style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color: Color(0xFF8E8E93), fontSize: 15)),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}

