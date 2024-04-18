import 'package:crud_exam/view/homescreen/updateasset.dart';
import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
  AssetCard(
      {required this.type,
      required this.name,
      required this.description,
      required this.serialno,
      this.onDeletepress,
      this.onEditPress});

  final String type;
  final String name;
  final String description;
  final String serialno;
  final void Function()? onDeletepress;
  final void Function()? onEditPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.green[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Type:$type"),
              Text("Name:$name"),
              Text("Description:$description")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Serial No:$serialno"),
              // Text("Status:"),
              // Text("Availability:")
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UpdateAsset()));
                  },
                  icon: Icon(Icons.edit)),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    onDeletepress;
                  },
                  icon: Icon(Icons.delete)),
            ],
          )
        ],
      ),
    );
  }
}
