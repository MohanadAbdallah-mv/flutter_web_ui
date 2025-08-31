import 'package:flutter/material.dart';
import 'package:flutter_task/util/app_colors.dart';
import 'package:flutter_task/util/app_constants.dart';
import 'package:flutter_task/util/app_theme.dart';

class ImageHeads extends StatelessWidget {
  final List<int> list;
  const ImageHeads({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 150,
        maxHeight: 25,
      ),
      child: Stack(
        children: _buildStackChildren(list),
      ),
    );
  }
}

List<Widget> _buildStackChildren(List list) {
  List<Widget> stackChildren = [];
  for (int index = 0; index < list.length; index++) {
    stackChildren.add(
      index < 3
          ? Positioned(
              left: (index * 13), // Calculate left position with overlap
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300], // Placeholder color
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    AppConstants.listNames[list[index] - 1], //  placeholder
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : Positioned(
              left: (index * 13), // Calculate left position with overlap
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.appBarBottomLineBorderColor),
                child: Text(
                  "+${list.length - 3}",
                  style: AppTheme.medium8_4Orange,
                ),
              ),
            ),
    );
    if (index == 3) {
      return stackChildren;
    }
  }
  return stackChildren;
}
