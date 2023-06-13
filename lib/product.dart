import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shurubkorea/config/app_colors.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: product()),
    );
  }

  Widget product() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(child: Image.asset('assets/images/Mobile/Mobile-Product.png')),
    );
  }
  // return Column(
  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //   children: [
  //     Center(
  //         child: Text('슈룹코리아',
  //             style: Theme.of(context)
  //                 .textTheme
  //                 .headlineLarge
  //                 ?.copyWith(color: AppColors.blue, fontFamily: 'Pretendard'))),
  //     Center(
  //       child: Text(
  //         '어서오세요',
  //         style: Theme.of(context).textTheme.headlineLarge,
  //       ),
  //     )
  //   ],
  // );
}
