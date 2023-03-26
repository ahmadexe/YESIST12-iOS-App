part of '../accomodations_screen.dart';

class AccomodationsCard extends StatelessWidget {
  final Accomodation accomodation;
  const AccomodationsCard({required this.accomodation, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: double.infinity,
        height: AppDimensions.normalize(150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: AppDimensions.normalize(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: CachedNetworkImage(
                imageUrl: accomodation.image,
                fit: BoxFit.fill,
              ),
            ),
            Space.y!,
            Text(
              accomodation.name,
              style: AppText.h3b,
            ),
            SizedBox(
              width: AppDimensions.normalize(60),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Know more"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
