part of '../faq_answers_screen.dart';

class _QnATile extends StatelessWidget {
  final String title;
  final String description;
  const _QnATile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.grey[200],
          unselectedWidgetColor: Colors.grey[200],
          colorScheme: ColorScheme.light(
            primary: Colors.grey[200]!,
          ),
        ),
        child: ExpansionTile(
          maintainState: true,
          title: Text(
            "  $title",
            style: AppText.b1!.copyWith(color: Colors.blue),
          ),
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          children: [
            ListTile(
              tileColor: Colors.grey[200],
              onTap: () {},
              dense: true,
              contentPadding: const EdgeInsets.all(8),
              visualDensity: VisualDensity.compact,
              minLeadingWidth: 10,
              title: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.normalize(7),
                ),
                child: Text(
                  description,
                  style: AppText.b2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
