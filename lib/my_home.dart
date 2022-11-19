import 'package:flutter/material.dart';
import 'package:mp1/TABS/tab_one.dart';
import 'package:mp1/TABS/tab_two.dart';
import 'package:mp1/VALUES/my_info.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;



  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();

  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Midterm Practice One"),
         bottom: TabBar(
           controller: tabController,
             tabs: const [
               Tab(
                 child: Text("Tab One"),
               ),
               Tab(
                 child: Icon(Icons.accessible),
               )
             ]
         ),
      ),
      body: TabBarView(
        controller: tabController,
          children: const [
            TabOne(),
            TabTwo()
          ]
      ),
    );
  }
}
