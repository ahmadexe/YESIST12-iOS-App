part of '../finale_screen.dart';

class _AddressCard extends StatelessWidget {
  const _AddressCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: AppDimensions.normalize(171),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: StaticColors.primaryColor,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: AppDimensions.normalize(67),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: StaticColors.secondaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Address",
                    style: AppText.b1b!.copyWith(color: Colors.white)),
                Text(
                  "Arab Academy for Science, Technology & Maritime Transport (AASTMT), Abou Kir, Alexandria - Egypt P.O. Box 1029",
                  maxLines: 3,
                  style: AppText.l2!.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Navigate now ->  ",
                      style: AppText.b1!.w(5).copyWith(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: lauchMap,
                      child: CircleAvatar(
                        radius: AppDimensions.normalize(11),
                        backgroundColor: StaticColors.primaryColor,
                        child: const Icon(
                          CupertinoIcons.location_fill,
                          color: StaticColors.secondaryColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Space.y!,
          const _InfoCard(
              title: "Telephone", subtext: "+919731226262", underlined: true),
          Space.y!,
          const _InfoCard(
            title: "Website",
            subtext: "https://aast.edu/en/colleges/coe/alex/",
            underlined: true,
          ),
          Space.y!,
          const _InfoCard(
            title: "3D-Tour",
            subtext: "Click here",
            isTour: true,
          )
        ],
      ),
    );
  }

  void lauchMap() async {
    final availableMaps = await MapLauncher.installedMaps;
    await availableMaps.first.showMarker(
      coords: Coords(AppConstants.finaleVenueLat, AppConstants.finaleVenueLong),
      title:
          "Arab Academy for Science, Technology & Maritime Transport (AASTMT), Abou Kir, Alexandria - Egypt",
    );
  }
}
