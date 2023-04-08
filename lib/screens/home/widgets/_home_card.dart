part of '../home_screen.dart';

class _HomeCard extends StatelessWidget {
  const _HomeCard();

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
              "Room Allocation",
              style: AppText.h3b!.copyWith(color: Colors.white),
            ),
            Space.y!,
            GestureDetector(
              onTap: (){
                UrlUtils.launchTheUrl(AppConstants.viewPdfUrl);
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
                    "View PDF",
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
