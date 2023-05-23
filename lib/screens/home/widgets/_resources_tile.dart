part of '../home_screen.dart';

class _ResoucesTile extends StatelessWidget {
  final String title;
  final String description;
  const _ResoucesTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: StaticColors.primaryColor,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.grey[200]),
        child: ExpansionTile(
          maintainState: true,
          title: Row(
            children: [
              Image.asset("assets/images/tile_vector.png",
                  height: 28,
                  width: MediaQuery.of(context).size.width * 0.06,
                  fit: BoxFit.fill),
              Text(
                "  $title",
                style: AppText.b1!.copyWith(color: Colors.white),
              ),
            ],
          ),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          children: [
            ListTile(
              tileColor: Colors.grey[200],
              onTap: () {},
              dense: true,
              contentPadding: const EdgeInsets.all(8),
              visualDensity: VisualDensity.compact,
              minLeadingWidth: 10,
              title: Text(
                description,
                style: AppText.b2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
