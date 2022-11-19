import 'package:flutter/material.dart';
import 'package:mp1/Details/details_page.dart';
import 'package:mp1/FORMS/my_info_form.dart';
import 'package:mp1/VALUES/my_info.dart';



class TabOne extends StatefulWidget {
  const TabOne({Key? key}) : super(key: key);
  @override
  State<TabOne> createState() => _TabOneState();
}
List <MyInfo> myInfo_value = [
  MyInfo(
      firstName: "Meinardz",
      lastName: "Montefalcon",
      age: 21,
      gender: "Male"
  )
];
var passMyinfo;
var newMyInfo;
class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myInfo_value.length,
          itemBuilder: (context, index){
            return Dismissible(
                key: UniqueKey(),
                child: ListTile(
                  title: Text(myInfo_value[index].firstName),
                  subtitle: Text(myInfo_value[index].lastName),
                  onTap: (){
                   passMyinfo = Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder:
                           (context) => DetailsMyInfo(myInfo_value: myInfo_value[index])
                       )
                   );


                  },
                ),

            );

    }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            newMyInfo = await Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => MyInfoForm()
                ));
            if (newMyInfo == null){
              return;
            }
            else {
              setState(() {
                myInfo_value.add(newMyInfo);
              });
            }
          },
          child: Icon(Icons.add_reaction_sharp)
      ),
    );
  }
}
