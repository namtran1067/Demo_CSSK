import '../models/dates_item_model.dart';
import 'package:flutter/material.dart';
import 'package:namtran1067_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DatesItemWidget extends StatelessWidget {
  DatesItemWidget(
    this.datesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatesItemModel datesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 46.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(
                datesItemModelObj.mon!,
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  datesItemModelObj.date!,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
