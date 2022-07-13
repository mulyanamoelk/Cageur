import 'package:flutter/material.dart';
import 'package:sistem_antrian/styles/constrans.dart';
import 'package:sistem_antrian/widget/custom_button.dart';
import 'package:sistem_antrian/widget/custom_form_suf.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kgrey,
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            Form(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: InkWell(
                    onTap: (() {}),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/jhon.png'),
                      radius: 60,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Custom_Form_Suf(
                    hintText: 'NIK',
                    icon: Icon(
                      Icons.tag,
                      color: kgreen,
                    ),
                    typeInput: TextInputType.number,
                    textValue: 'Isi NIK'),
                Custom_Form_Suf(
                    hintText: 'Nama',
                    icon: Icon(
                      Icons.person,
                      color: kgreen,
                    ),
                    typeInput: TextInputType.name,
                    textValue: 'Isi nama'),
                Custom_Form_Suf(
                    hintText: 'Email',
                    icon: Icon(
                      Icons.mail,
                      color: kgreen,
                    ),
                    typeInput: TextInputType.name,
                    textValue: 'Isi email'),
                Custom_Form_Suf(
                    hintText: 'Nomor',
                    icon: Icon(
                      Icons.phone,
                      color: kgreen,
                    ),
                    typeInput: TextInputType.name,
                    textValue: 'Isi Nomor'),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: custom_button(
                      text: 'Update', onPressed: () {}, warna: kgreen),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
