import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoStoreHomePage(),
      //不显示右上角‘debug’标识
      debugShowCheckedModeBanner: false,
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: const Icon(
              IconData(62415,
                  fontFamily: CupertinoIcons.iconFont,
                  fontPackage: CupertinoIcons.iconFontPackage,
                  matchTextDirection: true),
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            middle: const Text('联系我们',
                style: const TextStyle(
                    fontSize: 16, color: Color.fromRGBO(44, 44, 44, 1))),
            backgroundColor: Colors.white,
            border: null),
        child: Container(
          child: new Column(
            children: <Widget>[
              new Container(

                child: Image.asset(
                  "images/ic_customer_service.png",
                  width: 73,
                  height: 73,
                ),
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 70)
              ),
              getRowWidget(
                  '客服热线', '400-0988-9877', Color.fromRGBO(60, 89, 255, 1)),
              getRowWidget('客服服务时间', '周一至周日 0:00-24:00',
                  Color.fromRGBO(153, 153, 153, 1)),
            ],
          ),
        ));
  }
}

Widget getRowWidget(String title, String subTitle, Color subTitleColor) {
  return new Container(
    padding: new EdgeInsets.fromLTRB(21, 19, 24, 18),
    decoration: myBoxDecoration(),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Text(
          title,
          style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 15),
        )),
        new Text(
          subTitle,
          style: TextStyle(color: subTitleColor, fontSize: 15),
        ),
      ],
    ),
  );
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
      border: Border(
    bottom: BorderSide(
      color: Color.fromRGBO(215, 221, 231, 1),
      width: 0.3,
    ),
  ));
}
