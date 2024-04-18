import 'package:crud_exam/controller/Homescreencontroller.dart';
import 'package:crud_exam/view/screenone/screen1.dart';
import 'package:flutter/material.dart';

class AddAsset extends StatefulWidget {
  const AddAsset({super.key});

  @override
  State<AddAsset> createState() => _AddAssetState();
}

class _AddAssetState extends State<AddAsset> {
  TextEditingController assetypeController = TextEditingController();
  TextEditingController assetnameController = TextEditingController();

  TextEditingController assetdescriptionController = TextEditingController();

  TextEditingController assetsnoController = TextEditingController();
  @override
  void initState() {
    HomeScreenController.getInitKeys();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Asset"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: assetypeController,
                decoration: InputDecoration(
                    labelText: 'Asset Type',
                    hintText: 'Enter Asset Type(motor vehicle, laptop)',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: assetnameController,
                decoration: InputDecoration(
                    labelText: 'Asset Name',
                    hintText: 'Enter Asset name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: assetdescriptionController,
                decoration: InputDecoration(
                    labelText: 'Asset Description',
                    hintText: 'Enter Asset Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: assetsnoController,
                decoration: InputDecoration(
                    labelText: 'Asset Serial Number',
                    hintText: 'Enter Asset Serial Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  HomeScreenController.addAsset(
                      name: assetnameController.text,
                      description: assetdescriptionController.text,
                      type: assetypeController.text,
                      serialno: assetsnoController.text);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                      (route) => false);
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
