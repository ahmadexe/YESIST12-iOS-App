part of '../finale_screen.dart';

class _InfoCard extends StatelessWidget {
  final String title;
  final String subtext;
  final bool underlined;
  final bool isTour;
  const _InfoCard(
      {this.isTour = false,
      required this.title,
      required this.subtext,
      this.underlined = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: AppDimensions.normalize(29),
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
          Center(
            child: GestureDetector(
              onTap: () {
                if (isTour) {
                  UrlUtils.launchTheUrl(AppConstants.tourUrl);
                  return;
                }
                UrlUtils.launchTheUrl(subtext);
              },
              child: Text(
                subtext,
                style: AppText.l2!.copyWith(
                  color: Colors.white,
                  decoration: underlined
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
