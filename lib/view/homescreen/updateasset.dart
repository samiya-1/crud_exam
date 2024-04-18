import 'package:crud_exam/controller/Homescreencontroller.dart';
import 'package:flutter/material.dart';

class UpdateAsset extends StatefulWidget {
  const UpdateAsset({super.key});

  @override
  State<UpdateAsset> createState() => _UpdateAssetState();
}

class _UpdateAssetState extends State<UpdateAsset> {
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
        title: Text("Update Asset"),
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
                  HomeScreenController.editasset(
                      currentKey: widget,
                      name: assetnameController.text,
                      description: assetdescriptionController.text,
                      type: assetypeController.text,
                      serialno: assetsnoController.text);
                },
                child: Row(
                  children: [
                    Text("Update"),
                    SizedBox(
                      width: 200,
                    ),
                    Material(
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text("Cancel")))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
