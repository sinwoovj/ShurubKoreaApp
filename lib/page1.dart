import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [body(), header()],
      )),
    );
  }

  Widget header() {
    return Stack(
      children: [
        nav(),
        Container(
          width: double.maxFinite,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            color: Colors.purple,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              logo(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '소개',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Jalnan'),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '제품',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Jalnan'),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '미디어',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Jalnan'),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'SNS',
                    style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Jalnan'),
                  )),
            ],
          ),
        ),
      ],
    );
  }

  Widget nav() {
    return Column(
      children: [
        SizedBox(
          height: 55,
        ),
        Container(
          width: double.maxFinite,
          height: 250,
          padding: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            color: Color.fromARGB(179, 240, 200, 255),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 100),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox.shrink(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '멤버',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '비젼',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '연혁',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '정보',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '  Gather\nTogether',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Repaqto',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '뉴스',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '축제',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '커뮤니티',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '인스타그램',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '블로그',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '이메일',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        '유튜브',
                        style: TextStyle(color: Colors.purple, fontSize: 11, fontFamily: 'Jalnan'),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: bg(),
    );
  }

  Widget logo() {
    return Image.asset('assets/images/Product/Logo.png', width: 100, height: 35);
  }

  Widget bg() {
    return Image.asset(
      'assets/images/BG.png',
      fit: BoxFit.cover,
    );
  }
}
