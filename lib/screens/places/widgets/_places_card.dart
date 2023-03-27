part of '../places_screen.dart';

class _PlacesCard extends StatelessWidget {
  final Place place;
  const _PlacesCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PlacesDetailsScreen(place: place),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            elevation: 4,
            child: Container(
              height: AppDimensions.normalize(70),
              width: AppDimensions.normalize(70),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: place.image1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: AppDimensions.normalize(55),
            child: Text(
              place.name,
              style: AppText.b1b!.w(5).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
