import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuProfil extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icons;
  const MenuProfil({Key? key, required this.menuList, this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: ((context) => menuList),
      icon: icons,
    );
  }
}
