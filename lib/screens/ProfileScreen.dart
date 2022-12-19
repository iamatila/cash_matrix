import 'package:cashmatrix/widget/button_widget.dart';
import 'package:cashmatrix/widget/textfiel_widget.dart';
import 'package:cashmatrix/widget/textfield_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../colors/app_colors.dart';
import '../widget/custom_sliver_app_bar.dart';
import '../widget/error_warning_ms.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) {
          //       final video = videos[index];
          //       return VideoCard(video: video);
          //     },
          //     childCount: videos.length,
          //   ),
          // ),
          //   Text(
          //     'Profile Page',
          //     style: TextStyle(color: AppColors.MAIN_COLOR),
          //   )
        ],
      ),
      // );
    );
  }
}
