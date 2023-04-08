part of '../home_screen.dart';

class _HomeCard extends StatelessWidget {
  final HomeBanner homeBanner;
  const _HomeCard({required this.homeBanner});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: AppDimensions.normalize(40),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppTheme.c!.primary,
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              homeBanner.cardHeader,
              style: AppText.h3b!.copyWith(color: Colors.white),
            ),
            Space.y!,
            GestureDetector(
              onTap: (){
                UrlUtils.launchTheUrl(homeBanner.cardBtnUrl);
              },
              child: Container(
                height: AppDimensions.normalize(13),
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white),
                  color: AppTheme.c!.primary,
                ),
                child: Center(
                  child: Text(
                    homeBanner.cardBtnText,
                    style: AppText.l1b!.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
