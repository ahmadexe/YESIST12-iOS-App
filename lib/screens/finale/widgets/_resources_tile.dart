part of '../finale_screen.dart';

class _ResoucesTile extends StatelessWidget {
  final String title;
  final List<Widget> descWidgets;
  const _ResoucesTile({required this.title, required this.descWidgets});

  @override
  Widget build(BuildContext context) {
    final app = AppProvider.state(context);
    return Card(
      color: StaticColors.primaryColor,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.grey[200]),
        child: ExpansionTile(
          // key: Key(category.key.toString()),
          maintainState: true,
          title: Row(
            children: [
              Image.asset("assets/images/tile_vector.png",
                  height: 28,
                  width: MediaQuery.of(context).size.width * 0.06,
                  fit: BoxFit.fill),
              // generateIcon(category.key),
              // Space.xf(2),
              Text(
                "  $title",
                style: AppText.b1!.copyWith(color: Colors.white),
              ),
            ],
          ),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          children: descWidgets,
        ),
      ),
    );
  }
}
