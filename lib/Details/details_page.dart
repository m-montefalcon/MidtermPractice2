import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mp1/TABS/tab_one.dart';
import 'package:mp1/VALUES/my_info.dart';

class DetailsMyInfo extends StatelessWidget {
  final MyInfo myInfo_value;
  const DetailsMyInfo({Key? key, required this.myInfo_value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details form"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("First name"),
            trailing: Text("${myInfo_value.firstName}"),
          ),
          ListTile(
            title: Text("Last name"),
            trailing: Text("${myInfo_value.lastName}"),
          ),
          ListTile(
              title: Text("Age"),
              trailing: Text("${myInfo_value.age.toString()}"),
          ),
          ListTile(
            title: Text("Gender"),
            trailing: Text("${myInfo_value.gender}"),
          ),
        ],
      ),
    );
  }
}
