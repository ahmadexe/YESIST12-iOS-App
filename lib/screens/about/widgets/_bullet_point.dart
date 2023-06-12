part of '../about_screen.dart';

class _BulletPoint extends StatelessWidget {
  final String text;
  const _BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "• ",
          style: AppText.h2,
        ),
        Expanded(
          child: Text(
            text,
            style: AppText.l1,
          ),
        ),
      ],
    );
  }
}
