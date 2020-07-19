// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.
import 'package:app/screen/company_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Safe!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      routes: <String, WidgetBuilder>{
        '/companys': (BuildContext context) => new CompanyView(),
      },
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'scan',
          onPressed: () {},
          child: const Icon(Icons.camera_alt),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(8.0),
            child: Builder(
              builder: (context) => RaisedButton(
                onPressed: () => Navigator.of(context).pushNamed('/companys'),
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('구매금액 : 20,000원'),
              ),
            )),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: 2 / 0.85,
      children: bulidGridCards(context),
    );
  }
}

List<Card> bulidGridCards(BuildContext context) {
  List<Card> result = [];
  const sampleStr = "가격 : 4,000\n"
      "유통기한 : 2020-08-30\n"
      "비선호 성분 : 문제 없음";

  for (var i = 0; i < 5; i++) {
    result.add(Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.turned_in),
            title: Text('CU 만능 비빔간장'),
            subtitle: Text(sampleStr),
          ),
          ButtonBar(
            children: <Widget>[
              // FlatButton(
              //   child: const Text('BUY TICKETS'),
              //   onPressed: () {/* ... */},
              // ),
              FlatButton(
                child: const Text('제거하기'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    ));
  }
  return result;
}
