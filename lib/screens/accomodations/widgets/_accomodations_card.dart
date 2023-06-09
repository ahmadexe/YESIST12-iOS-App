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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Container(
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
              ),
              Expanded(
                child: Text(
                  accomodation.name,
                  style: AppText.b1b,
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: AppDimensions.normalize(60),
                  child: ElevatedButton(
                    onPressed: () {
                      UrlUtils.launchTheUrl(accomodation.goLink);
                    },
                    child: const Text("Know more"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
