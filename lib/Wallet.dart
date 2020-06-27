import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortest/CryptoWalletBlock.dart';
import 'package:fortest/ListItem.dart';
import 'package:fortest/TransactionBlock.dart';
import 'package:fortest/testapp_icons.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

var textStyle = TextStyle(
    fontSize: 32.0,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontFamily: 'Rubik');

class Wallet extends StatefulWidget {

  Wallet({Key key, }) : super(key: key);

  @override
  createState() => new WalletState();
}

class WalletState extends State<Wallet> {
  SheetController _sheetController;

  _openTelegram() async {
    const url = 'https://telegram.me/dante_alighiery';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void showAsBottomSheet() async {
    final result = await showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
              elevation: 2,
              controller: _sheetController,
              cornerRadius: 15,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [1.0, 1.0, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              builder: (context, state) {
                return Material(
                    type: MaterialType.transparency,
                    child:Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.width*1.73,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
                          ),
                        ),
                        padding: EdgeInsets.only(top: 15, left:15, right:15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text('Статус', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
                            SizedBox(height: 5,),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 199, 89, 0.1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text('ВИКОНАНО', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Color(0xFF34C759), fontSize: 13)),)
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical:15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text('Сумма получения', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
                            SizedBox(height: 5,),
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
                                  new TextSpan(text: '+2 BTC ', style:
                                  TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.normal,
                                  )),
                                  new TextSpan(text: '| \$323 343',style:
                                  TextStyle(
                                    fontSize: 16,
                                    color:  Color(0xFF151519),
                                    fontWeight: FontWeight.w600,
                                  )),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text('Время', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
                            SizedBox(height: 5,),
                            Container(
                              child: Text('24 марта, 2020 | 12:02:13', style:TextStyle(
                                fontSize: 16,
                                color:  Color(0xFF151519),
                                fontWeight: FontWeight.w600,
                              )),)
                          ],
                        ),
                      ),
                      ListItem('ID транзакции', '3abkjsdbkj...sdfsdf',Feather.copy ), // SizedBox(height: 18)
                      ListItem('Детальная информация', 'etherscan.io',Testapp.arrow_square_up_right ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Color(0xFFEFEFF5)),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text('Количество подтверждений', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
                            SizedBox(height: 5,),
                            Container(
                              child: Text('+10', style:TextStyle(
                                fontSize: 16,
                                color:  Color(0xFF151519),
                                fontWeight: FontWeight.w600,
                              )),)
                          ],
                        ),
                      ),
                      ListItem('Адрес отправителя', '3asvdb...dfvdfvd',Feather.copy ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text('Проверка адреса', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w500, color:  Color(0xFF66666B), fontSize: 12)),),
                            SizedBox(height: 5,),
                            Container(
                              child: Text('???', style:TextStyle(
                                fontSize: 16,
                                color:  Color(0xFF151519),
                                fontWeight: FontWeight.w600,
                              )),)
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: _openTelegram,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFECE2E),
                          ),
                          child: Text('Связаться с тех.поддержкой', textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Colors.black, fontSize: 17)),
                        ),
                      ),
                      SizedBox(height: 20,)// SizedBox(height: 18)
                    ],
                  ),
                ));},
              headerBuilder: (context, state) {
            return Material(child:Container(
              padding: EdgeInsets.only(top: 10),
              height: 72,
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: Column( children: [
                Center(child: Image.asset('assets/images/line.png', height: 20, width: 35,),),
                 Container(
                     margin: EdgeInsets.symmetric(horizontal: 15),
                     child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Container(),
                   Container(
                     child: Row(
                       children: [
                        Container(child: Image.asset('assets/images/circle-right.png', height: 21, width: 21,)),
                         Container(
                           margin: EdgeInsets.only(left: 12),
                           child: Text('Отримано BTC', style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color:  Colors.black, fontSize: 17)),)
                       ],
                     ),
                   ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                     child:Container(
                     decoration: BoxDecoration(
                         color: Color(0xFFEFEFF5),
                         borderRadius: BorderRadius.circular(5)
                     ),
                     child: Container(
                         margin: EdgeInsets.only(bottom: 2),
                         child:Icon(Feather.x, color: Color(0xFF231F20),size: 30,)),
                   ),),
                 ],))
              ],)
            ));
          },
                );});
  }

  @override
  void initState() {
    _sheetController = SheetController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverPersistentHeader(
          delegate: MySliverAppBar(expandedHeight: 160,
              ),
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.7, 0.5],
                  colors: [
                    Color(0xFFFCE326),
                    Color(0xFFFCE326),
                    Color(0xFFFEB432),
                    Color(0xFFFEB432),
                  ],
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                    ),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Мои активы',style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color: Color(0xFF8E8E93), fontSize: 12),),
                          Icon(Testapp.plus, size: 25, color: Color(0xFFAEAEB4),)
                        ],
                      ),
                    ),
                    CryptoWalletBlock('assets/images/BTC.png','Bitcoin','32 232', false,'-1.05↓'),
                    CryptoWalletBlock('assets/images/ETH.png','Ethereum','43', true,'+12.94↑'),
                    CryptoWalletBlock('assets/images/XRP.png','Name','3.03', false,'-1.05↓'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Мои транзакции',style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color: Color(0xFF8E8E93), fontSize: 12),),
                        Container(
                            margin:EdgeInsets.only(right: 5),child:Icon(Testapp.eye, size: 20, color: Color(0xFFAEAEB4),))
                      ],
                    ),),
                    InkWell(
                      onTap: (){
                        showAsBottomSheet();
                      }, child:TransactionBlock(false, false)),
    InkWell(
    onTap: (){
    showAsBottomSheet();
    }, child:TransactionBlock(true, true)),
    InkWell(
    onTap: (){
    showAsBottomSheet();
    }, child:TransactionBlock(false, true)),
                    InkWell(
                        onTap: (){
                          showAsBottomSheet();
                        }, child: TransactionBlock(true, false)),
                    SizedBox(height: 25,)
                  ],
                ),
              ),
            )
            ],
          ),
        ),

      ]),
    );
  }


}




class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight, });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        GradientAppBar(
          gradient: LinearGradient(colors: [Color(0xFFFCE326), Color(0xFFFEB432)]),
          bottomOpacity: 0,
          elevation: 0,
          centerTitle: true,
          leading: Icon(Testapp.bar_chart,color: Colors.black, size: 35,),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Testapp.bell, color: Colors.black, size: 35),) ,
            IconButton(
                icon: const Icon(Testapp.message_circle, color: Colors.black, size: 35),)
          ],
          title: Text('Название кошелька',  style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color: Colors.black, fontSize: 17),),
        ),
        Positioned(
          top: expandedHeight * 0.55 - shrinkOffset * 1.2,
          left: 10,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: SizedBox(
//                height: expandedHeight/2,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight * 0.3 - shrinkOffset * 2.19,
          left: 20,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 33,),
                Text('Ваш баланс', textAlign: TextAlign.start,
                    style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.normal, color: Colors.black, fontSize: 12)),
                Text('\$ 1374.04 ',
                    style: TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w600, color: Colors.black, fontSize: 30)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 25;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
