import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconMenu {
  final String title;
  final IconData iconData;

  IconMenu({required this.title, required this.iconData});

}


// 샘플 데이터 만들기
List<IconMenu> iconMenu1 = [
  IconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.mapMarkedAlt),
  IconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.cableCar),
  IconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.landmarkDome),
  IconMenu(title: '모아보기', iconData: FontAwesomeIcons.addressBook)
];
