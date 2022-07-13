import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:sistem_antrian/pages/profile_page/components/popup_menu_profile.dart';

import '../../../styles/constrans.dart';

class PopupProfil extends StatelessWidget {
  const PopupProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> share() async {
      await FlutterShare.share(
          text: 'Share Link',
          title: 'Share Link',
          linkUrl: 'https://stigeit.com/',
          chooserTitle: 'Pilih Bagikan');
    }

    return MenuProfil(
      menuList: [
        PopupMenuItem(
            child: ListTile(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: kgrey,
              )),
          title: Text('Tentang'),
        )),
        PopupMenuItem(
            child: ListTile(
          leading: IconButton(
              onPressed: share,
              icon: Icon(
                Icons.share,
                color: kgrey,
              )),
          title: Text('Share'),
        )),
        PopupMenuItem(
            child: ListTile(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: kgrey,
              )),
          title: Text('Logout'),
        )),
      ],
      icons: Icon(
        Icons.settings,
        color: kgrey,
      ),
    );
  }
}
