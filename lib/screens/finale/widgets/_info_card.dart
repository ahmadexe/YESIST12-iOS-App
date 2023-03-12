part of '../finale_screen.dart';

class _InfoCard extends StatelessWidget {
  final String title;
  final String subtext;
  final bool underlined;
  const _InfoCard(
      {required this.title, required this.subtext, this.underlined = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * .081,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: StaticColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppText.b1b!.copyWith(color: Colors.white),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                subtext,
                style: AppText.l2!.copyWith(
                  color: Colors.white,
                  decoration: underlined? TextDecoration.underline : TextDecoration.none,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
