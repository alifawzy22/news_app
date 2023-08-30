import 'package:flutter/material.dart';
import 'package:new_app/models/list_view_card_item_model.dart';
import 'package:new_app/widgets/list_view_card_item.dart';

class ListViewCards extends StatelessWidget {
  ListViewCards({
    super.key,
  });

  final List<ListViewCardItemModel> viewCardItemList = [
    ListViewCardItemModel(
        image: 'assets/images/Sports.jpg', imageCardItemName: 'Sports'),
    ListViewCardItemModel(
        image: 'assets/images/BI.jpeg',
        imageCardItemName: 'Business Intelligence'),
    ListViewCardItemModel(
        image: 'assets/images/Business.jpg', imageCardItemName: 'Business'),
    ListViewCardItemModel(
        image: 'assets/images/Community.png', imageCardItemName: 'Community'),
    ListViewCardItemModel(
        image: 'assets/images/CS.jpg', imageCardItemName: 'CS'),
    ListViewCardItemModel(
        image: 'assets/images/Economy.jpg', imageCardItemName: 'Economy'),
    ListViewCardItemModel(
        image: 'assets/images/Entertainment.jpg',
        imageCardItemName: 'Entertainment'),
    ListViewCardItemModel(
        image: 'assets/images/IS.jpg', imageCardItemName: 'IS'),
    ListViewCardItemModel(
        image: 'assets/images/IT.jpg', imageCardItemName: 'IT'),
    ListViewCardItemModel(
        image: 'assets/images/Management.jpg', imageCardItemName: 'Management'),
    ListViewCardItemModel(
        image: 'assets/images/Politics.jpg', imageCardItemName: 'Politics'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: viewCardItemList.length,
          itemBuilder: (context, index) {
            return ListViewCardItem(
              listViewCardItemModel: viewCardItemList[index],
            );
          }),
    );
  }
}
