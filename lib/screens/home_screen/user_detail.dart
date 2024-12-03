import 'package:flutter/material.dart';
import 'package:pronounce_go/responsive/responsive.dart';
import 'package:pronounce_go/screens/home_screen/user_detail_card.dart';

class DetailModel {
  final String icon;
  final String value;
  final String title;
  const DetailModel(
      {required this.icon, required this.value, required this.title});
}

class UserDetail extends StatelessWidget {
  const UserDetail({super.key});

  static const DetailData = [
    DetailModel(
        icon: 'assets/images/app_icon.png',
        value: '10',
        title: 'Bí kíp của tôi'),
    DetailModel(
        icon: 'assets/images/app_icon.png', value: '5', title: 'Đang học'),
    DetailModel(
        icon: 'assets/images/app_icon.png', value: '6', title: 'Đã học xong'),
    DetailModel(
        icon: 'assets/images/app_icon.png',
        value: '100',
        title: 'Số lượt thích'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: DetailData.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 12.0),
        itemBuilder: (context, index) => UserDetailCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    DetailData[index].icon,
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 4),
                    child: Text(
                      DetailData[index].value,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    DetailData[index].title,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ));
  }
}
