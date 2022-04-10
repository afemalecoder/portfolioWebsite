import 'package:flutter/material.dart';
import 'package:portfolio_website/core/helpers/layout_helper.dart';
import 'package:portfolio_website/core/models/drawer_items.dart';
import 'package:portfolio_website/widgets/drawer/drawer_items_list.dart';
import 'package:portfolio_website/widgets/drawer/drawers_items.dart';
import 'package:provider/provider.dart';

class ItemsColum extends StatelessWidget {
  const ItemsColum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: drawerItems
              .map((DrawerItemModel item) => DrawerItemList(
                    label: item.label,
                    onTap: () {
                      Navigator.of(context).pop();
                      return context.read<LayoutHelper>().updateScreen(
                            item.screen,
                            item.label,
                          );
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
