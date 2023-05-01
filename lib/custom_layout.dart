library custom_layout;

import 'package:flutter/material.dart';

class CustomColumn extends Column {
  CustomColumn({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    final List<Widget>? children,
    final double gap = 8.0,
  }) : super(
            children: children?.map((e) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: e != children.first ? gap : 0.0,
                    ),
                    child: e,
                  );
                }).toList() ??
                []);
}
