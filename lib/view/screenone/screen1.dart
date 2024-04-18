import 'package:crud_exam/controller/Homescreencontroller.dart';
import 'package:crud_exam/view/homescreen/addAsset.dart';
import 'package:crud_exam/view/screenone/widget/assetcard.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset management Application"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddAsset()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: HomeScreenController.assetlistkeys.length,
        itemBuilder: (context, index) {
          final currentKey = HomeScreenController.assetlistkeys[index];
          final currentelement = HomeScreenController.mybox.get(currentKey);
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: AssetCard(
                type: currentelement['type'],
                name: currentelement['name'],
                description: currentelement['description'],
                serialno: currentelement['serialno'],
                onDeletepress: () async {
                  await HomeScreenController.deleteasset(currentKey);
                },
              ));
        },
      ),
    );
  }
}
