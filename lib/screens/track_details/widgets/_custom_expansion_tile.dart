part of '../track_details_screen.dart';

class _CustomExpansionTile extends StatelessWidget {
  final String title;
  final String description;
  const _CustomExpansionTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final dataList = StringUtils.numericSeperation(description);
    
    return Card(
      color: StaticColors.greyTile,
      child: Theme(
        data: Theme.of(context).copyWith(
            dividerColor: Colors.grey[200],
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
                ),
        child: ExpansionTile(
          maintainState: true,
          title: Text(
            title,
            style: AppText.b1!,
          ),
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          children: [
            ...dataList.map((e) {
              return ListTile(
                title: Text(
                  e,
                  style: AppText.l1!,
                ),
                tileColor: Colors.white,
              );
            })
          ],
        ),
      ),
    );
  }
}
