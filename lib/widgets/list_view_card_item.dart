import 'package:flutter/material.dart';
import 'package:new_app/models/list_view_card_item_model.dart';

class ListViewCardItem extends StatelessWidget {
  final ListViewCardItemModel listViewCardItemModel;
  const ListViewCardItem({
    super.key,
    required this.listViewCardItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              listViewCardItemModel.image,
            ),
          ),
        ),
        child: Center(
          child: Text(
            listViewCardItemModel.imageCardItemName,
            style: const TextStyle(
              backgroundColor: Colors.black,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
