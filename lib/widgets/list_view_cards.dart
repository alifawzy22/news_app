import 'package:flutter/material.dart';
import 'package:new_app/models/list_view_card_item_model.dart';
import 'package:new_app/widgets/list_view_card_item.dart';

class ListViewCards extends StatelessWidget {
  ListViewCards({
    super.key,
  });

  final List<ListViewCardItemModel> viewCardItemList = [
    ListViewCardItemModel(
      image: 'assets/images/general.jpg',
      imageCardItemName: 'General',
    ),
    ListViewCardItemModel(
      image: 'assets/images/Sports.jpg',
      imageCardItemName: 'Sports',
    ),
    ListViewCardItemModel(
      image: 'assets/images/science.jpg',
      imageCardItemName: 'Science',
    ),
    ListViewCardItemModel(
      image: 'assets/images/Business.jpg',
      imageCardItemName: 'Business',
    ),
    ListViewCardItemModel(
      image: 'assets/images/Entertainment.jpg',
      imageCardItemName: 'Entertainment',
    ),
    ListViewCardItemModel(
      image: 'assets/images/tecnology.jpg',
      imageCardItemName: 'Technology',
    ),
    ListViewCardItemModel(
      image: 'assets/images/health.png',
      imageCardItemName: 'Health',
    ),
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
