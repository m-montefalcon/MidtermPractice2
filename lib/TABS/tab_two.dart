import 'package:flutter/material.dart';
import 'package:mp1/TABS/tab_one.dart';
import 'package:mp1/VALUES/my_info.dart';
import 'package:mp1/VALUES/my_stats.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  State<TabTwo> createState() => _TabTwoState();
}

List <MyStats> myStats_value = [
 MyStats(
     hobbies: "Gaming",
     likes: "Sleeping"
 )
];

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myStats_value.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(myStats_value[index].hobbies),
              subtitle: Text(myStats_value[index].likes),

            );
       }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){}, 
          child: Icon(Icons.group_add_outlined),
      ),

    );
  }
}
