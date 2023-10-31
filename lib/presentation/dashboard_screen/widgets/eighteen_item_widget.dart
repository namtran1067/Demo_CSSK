import '../models/eighteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:namtran1067_s_application1/core/app_export.dart';
import 'package:namtran1067_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  EighteenItemWidget(
    this.eighteenItemModelObj, {
    Key? key,
    this.onTapBtnUser,
  }) : super(
          key: key,
        );

  EighteenItemModel eighteenItemModelObj;

  VoidCallback? onTapBtnUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: CustomIconButton(
        height: 71.adaptSize,
        width: 71.adaptSize,
        padding: EdgeInsets.all(16.h),
        decoration: IconButtonStyleHelper.fillCyan,
        onTap: () {
          onTapBtnUser!.call();
        },
        child: CustomImageView(
          imagePath: eighteenItemModelObj?.user,
        ),
      ),
    );
  }
}
