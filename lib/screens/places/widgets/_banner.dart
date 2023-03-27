part of '../places_screen.dart';

class _Banner extends StatelessWidget {
  const _Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: AppDimensions.normalize(70),
          child: CachedNetworkImage(
              imageUrl:
                  'https://res.klook.com/image/upload/Mobile/City/szhx3ytpgfnhpbmsngk0.jpg',
              fit: BoxFit.fill),
        ),
        Positioned(
          top: AppDimensions.normalize(40),
          left: 5,
          child: Text(
            "Places to visit",
            style: AppText.h1b!.w(5).copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
