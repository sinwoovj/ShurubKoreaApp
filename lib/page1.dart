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
      body: SafeArea(child: header()),
    );
  }

  Widget header() {
    return Container(
      width: double.maxFinite,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        color: Colors.purple,
      ),
      child: Column(
        children: [
          Row(
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
          // SizedBox(
          //   width: double.infinity,
          //   height: double.infinity,
          //   child: Container(child: bg()),
          // )
        ],
      ),
    );
  }

  Widget logo() {
    return Image.asset('assets/images/Product/Logo.png', width: 100, height: 35);
  }

  Widget bg() {
    return Image.asset('assets/images/Product/BG.png');
  }
}
