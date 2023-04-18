import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yesist_ios_app/configs/app_dimensions.dart';
import 'package:yesist_ios_app/configs/app_typography.dart';
import 'package:yesist_ios_app/configs/static_colors.dart';
import 'package:yesist_ios_app/models/notification.dart';

class NotificationsCard extends StatelessWidget {
  final NotificationModel notification;
  const NotificationsCard({required this.notification, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.normalize(65),
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.normalize(5),
        ),
        border: Border.all(color: StaticColors.primaryColor),
        color: StaticColors.notificationsGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  notification.title,
                  style: AppText.h3,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset('assets/svgs/rocket.svg'),
            ],
          ),
          Text(
            notification.body,
            style: AppText.l1,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
