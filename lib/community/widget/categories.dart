import 'package:flutter/material.dart';
import 'package:growhub/community/model/group_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
    required this.context,
  });

  final TextTheme txtTheme;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list(context) ?? [];
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.headline6?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded( // Wrap the content with Expanded
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible( // Wrap each Text with Flexible
                        child: Text(
                          list[index].heading,
                          style: txtTheme.headline6,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible( // Wrap each Text with Flexible
                        child: Text(
                          list[index].subHeading,
                          style: txtTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
