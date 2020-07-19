import 'package:flutter/material.dart';

class CompanyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        // RiasedButton을 등록
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: () {
            // 버튼이 눌렸을 때 처리
            Navigator.pop(context); // 현재 라우트를 pop하여 제거함
          },
        ),
      ),
    );
  }
}
