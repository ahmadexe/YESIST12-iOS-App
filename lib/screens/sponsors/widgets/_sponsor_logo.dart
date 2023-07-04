part of '../sponsors_screen.dart';

class _SponsorLogo extends StatelessWidget {
  const _SponsorLogo();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: AppDimensions.normalize(80),
      width: screenSize.width * 0.45,
      child: Image.network(
        "https://avatars.githubusercontent.com/u/6250754?s=200&v=4",
        fit: BoxFit.fill,
      ),
    );
  }
}
