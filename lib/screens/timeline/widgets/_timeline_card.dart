part of '../timeline_screen.dart';

class _TimelineCard extends StatelessWidget {
  final TimelineModel timeline;
  const _TimelineCard({required this.timeline});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1 / 7,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    timeline.date.day.toString(),
                    style: AppText.h1b!.copyWith(color: Colors.grey[700]),
                  ),
                  Text(
                    DateFormat('EEEE').format(timeline.date).toString(),
                    style: AppText.b2!.copyWith(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Card(
                color: Colors.grey[200],
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateFormat("hh:mm a").format(timeline.startTime),
                            style:
                                AppText.l2b!.copyWith(color: Colors.blue[900]),
                          ),
                          Container(
                            height: 20,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "Completed",
                                style: AppText.l2b!
                                    .copyWith(color: Colors.blue[900]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Space.y!,
                      Text(
                        timeline.title,
                        style: AppText.b1!.w(6),
                      ),
                      Space.y!,
                      Row(
                        children: [
                          timeline.eventUrl.trim().isEmpty
                              ? const SizedBox()
                              : Container(
                                  height: 25,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Completed",
                                      style: AppText.l2b!
                                          .copyWith(color: Colors.blue[900]),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                          Space.x!,
                          Container(
                            height: 25,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            child: Center(
                              child: Text(
                                "About",
                                style: AppText.l2b!
                                    .copyWith(color: Colors.grey[700]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
