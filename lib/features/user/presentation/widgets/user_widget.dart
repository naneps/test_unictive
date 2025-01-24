import 'package:flutter/material.dart';
import 'package:test_unictive/app/config/app_router.dart';
import 'package:test_unictive/app/constants/paddings.dart';
import 'package:test_unictive/features/user/domain/entities/user_entity.dart';

class UserWidget extends StatelessWidget {
  final UserEntity user;
  final bool showButtonDetail;
  const UserWidget({
    super.key,
    required this.user,
    this.showButtonDetail = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: AppPaddings().allPaddingLarge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  backgroundImage: NetworkImage(user.avatar!),
                ),
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            if (showButtonDetail)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRouter.userDetailRoute,
                    arguments: {'id': user.id.toInt()},
                  );
                },
                child: const Text("Detail"),
              ),
          ],
        ),
      ),
    );
  }
}
