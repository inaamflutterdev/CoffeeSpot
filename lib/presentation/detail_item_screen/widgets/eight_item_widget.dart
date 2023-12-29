import '../models/eight_item_model.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EightItemWidget extends StatelessWidget {
  EightItemWidget(
    this.eightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightItemModel eightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 12.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          eightItemModelObj.s!.value,
          style: TextStyle(
            color: (eightItemModelObj.isSelected?.value ?? false)
                ? theme.colorScheme.primary
                : appTheme.blueGray90001,
            fontSize: 14.fSize,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (eightItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.onErrorContainer,
        selectedColor: appTheme.red50,
        shape: (eightItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray30001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
        onSelected: (value) {
          eightItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
