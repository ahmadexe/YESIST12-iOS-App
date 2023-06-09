part of '../finale_screen.dart';

class _SecondaryInfoTile extends StatelessWidget {
  final String title;
  final bool isMap;
  const _SecondaryInfoTile({this.isMap = false, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isMap) {
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const AccomodationsScreen(),
            ),
          );
        }
      },
      child: Card(
        color: StaticColors.secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.055,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: StaticColors.secondaryColor),
          child: Center(
            child: Text(
              title,
              style: AppText.b1!.w(5).copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
