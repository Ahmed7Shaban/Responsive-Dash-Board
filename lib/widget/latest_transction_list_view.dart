import 'package:flutter/material.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import 'user_info_lit_title.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoLitTitle(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
// return ListView.builder(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// itemCount: items.length,
// itemBuilder: (context, index) {
// return UserInfoLitTitle(userInfoModel: items[index]);
// },
// );
