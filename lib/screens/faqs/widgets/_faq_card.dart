part of '../faqs_screen.dart';

class _FaqCard extends StatelessWidget {
  final Map<String, dynamic> faqTrack;
  const _FaqCard({required this.faqTrack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const FaqAnswersScreen(),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.normalize(5),
          ),
        ),
        elevation: 4,
        child: Container(
          height: AppDimensions.normalize(75),
          width: MediaQuery.of(context).size.width * 0.43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimensions.normalize(5),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppDimensions.normalize(5),
                  ),
                  topRight: Radius.circular(
                    AppDimensions.normalize(5),
                  ),
                ),
                child: Image.asset(
                  faqTrack['img'],
                  height: AppDimensions.normalize(50),
                  fit: BoxFit.fill,
                ),
              ),
              Space.y!,
              Text(
                faqTrack['name'],
                style: AppText.l1!.copyWith(
                  color: AppTheme.c!.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
