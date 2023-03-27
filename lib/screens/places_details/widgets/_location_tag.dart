part of '../places_details_screen.dart';

class _LocationTag extends StatelessWidget {
  final Place place;
  const _LocationTag({required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.normalize(100),
      height: AppDimensions.normalize(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[400],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.location_pin),
              Text(
                place.location,
                style: AppText.b2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
